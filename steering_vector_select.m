fc = 300e6;
c = physconst('LightSpeed');
array = phased.ULA('NumElements',2);
array = phased.URA;
array2=phased.ULA;
array2.NumElements=8;
array2.ElementSpacing=0.5;
array.Size=[8 8];
array.ElementSpacing=[0.5 0.5];
% sv0=steervec(getElementPosition(array)/1,[30,90;20,20])
steervec = phased.SteeringVector('SensorArray',array,'NumPhaseShifterBits',5);
sv0 = steervec(fc,[15;30]);
% sv2=steervec(fc,[-30;30]);
% sv1= steervec(fc,[60;30]);
% sv3=(sv+sv1+sv2);
% sv3=sv3./abs(sv3);


butler_matrix=[-112.5,45,-157.5,0,157.5,-45,112.5,-90;...
                   -112.5,0,112.5,-135,-22.5,90,-157.5,-45;...
                   -135,-67.5,0,67.5,135,-157.5,-90,-22.5;...
                   -180,-157.5,-135,-112.5,-90,-67.5,-45,-22.5;...
                   -22.5,-45,-67.5,-90,-112.5,-135,-157.5,-180;...
                   -22.5,-90,-157.5,135,67.5,0,-67.5,-135;...
                   -45,-157.5,90,-22.5,-135,112.5,0,-112.5;...
                   -90,112.5,-45,157.5,0,-157.5,45,-112.5];
    butler_matrix=butler_matrix';
    butler_matrix=deg2rad(butler_matrix);
    a=1;
    sv=butler_matrix(:,a);
    sv=exp(sv*1i);
    %下面这个是错的，聪明的你猜猜为什么sv1和sv不等
butler_matrix=[-122.5,45,-157.5,0,157.5,-45,112.5,-90;...
                   -112.5,0,112.5,-135,-22.5,90,-157.5,-45;...
                   -135,-67.5,0,67.5,135,-157.5,-90,-22.5;...
                   -180,-157.5,-135,-112.5,-90,-67.5,-45,-22.5;...
                   -22.5,-45,-67.5,-90,-112.5,-135,-157.5,-180;...
                   -22.5,-90,-157.5,135,67.5,0,-67.5,-135;...
                   -45,-157.5,90,-22.5,-135,112.5,0,-112.5;...
                   -90,112.5,-45,157.5,0,-157.5,45,-112.5];
butler_matrix=deg2rad(butler_matrix);
sv1=exp(butler_matrix(8,:)*1i);
sv1=sv1';


low_sideLobe_matrix=[0,0,0,0,0,0,0,0;...
                      -123.75 146.25 56.25 -33.75 -123.75 146.25 56.25 -33.75;...
                      -33.75 56.25 146.25 -123.75 -33.75 56.25 146.25 -123.75;...
                      -56.25 -11.25 33.75 78.75 -123.75 168.75 -146.25 -101.25;...
                      -101.25 -146.25 168.75 -123.75 78.75 33.75 -11.25 -56.25;...
                      -33.75 101.25 -123.75 11.25 146.65 -78.75 56.25 -168.75;...
                      -168.75 56.25 -78.75 146.65 11.25 -123.75 -146.25 -33.75];
low_sideLobe_matrix=low_sideLobe_matrix';
low_sideLobe_matrix=deg2rad(low_sideLobe_matrix);
sv2=exp(low_sideLobe_matrix*1i);
const1=[0.138 0.393 0.588 0.693 0.693 0.588 0.393 0.138];
sv2=gmultiply(const1',sv2);


%%
% sv = vpa(sv,5);%sv的精度设置

% subplot(211)
pattern(array,fc,-180:180,-90:90,'CoordinateSystem','polar', ...
    'PropagationSpeed',c,'Type','efield','Normalize',true);


% Displayed pattern type, specified as the comma-separated pair consisting of 'Type' and one of
% 'directivity' — directivity pattern measured in dBi.
% 'efield' — field pattern of the sensor or array. For acoustic sensors, the displayed pattern is for the scalar sound field.
% 'power' — power pattern of the sensor or array defined as the square of the field pattern.
% 'powerdb' — power pattern converted to dB.

%type 的类型：
%directivity，efield，power,powerdb
%//
% subplot(211)
% pattern(array,fc,0,-90:90,'CoordinateSystem','polar', ...
%     'PropagationSpeed',c,'Type','powerdb')
% title('Without steering')
% subplot(212)
pattern(array,fc,-180:180,-90:90,'CoordinateSystem','polar', ...
    'PropagationSpeed',c,'Type','power','weights',sv0);



% subplot(212)
% pattern(array,fc,0,-90:90,'CoordinateSystem','polar', ...
%     'PropagationSpeed',c,'Type','powerdb','Weights',sv)
% title('With steering')
% figure()
% pattern(array,fc,-180:180,20,'CoordinateSystem','polar', ...
%     'PropagationSpeed',c,'Type','efield','Normalize',false);
%%
%DIY codebook




