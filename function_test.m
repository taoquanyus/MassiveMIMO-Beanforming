ra=rectangularArray;                    %矩阵天线阵列
la = linearArray;    %线阵列
figure();
layout(ra);
figure();
show(ra);
figure();
pattern(ra,70e6);
figure();
patternAzimuth(ra,70e6);
figure();
patternElevation(ra,70e6);
[Directivity] = pattern(ra,70e6,0,90)
[E,H]=EHfields(ra,70e6,[0;0;1]);
figure();
pattern(ra,70e6,'Polarization','LHCP');
[bw,angles] = beamwidth(ra,70e6,0,1:1:360)  %波束宽度
figure();
impedance(ra,60e6:1e6:70e6);
figure();
correlation(ra,60e6:1e6:70e6,1,2);      %关联系数，思考一下这个有没有使用的必要
%%
infa = infiniteArray('Element',reflector,'ScanAzimuth',90, ...
    'ScanElevation',0);
show(infa)
figure()
layout(infa)
%%
ra=rectangularArray;
set(ra,'size',[2 4])
%%
%牺牲空间换取增益
ra1=rectangularArray;
ra1.Size=[4 4];
ra2=rectangularArray;
ra2.Size=[5 5];
ra3=rectangularArray;
ra3.Size=[5 5];
temp1=[1 0 1 0 1 0 1 0 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1];
ra3.AmplitudeTaper=reshape(temp1,5,5);
ra4=rectangularArray;
ra4.Size=[5 5];
ra4.AmplitudeTaper=[1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 1 0 1 0 1 0 1];
figure
% patternAzimuth(ra1,70e6)
patternElevation(ra1,70e6)
figure
% patternAzimuth(ra2,70e6)
patternElevation(ra2,70e6)
figure
% patternAzimuth(ra3,70e6)
patternElevation(ra3,70e6)
figure
% patternAzimuth(ra4,70e6)
patternElevation(ra4,70e6)
%%
% Initialize system constants
rng(2014);
gc = helperGetDesignSpecsParameters();

% Tunable parameters
tp.txPower = 9;           % watt
tp.txGain = -8;           % dB
tp.mobileRange = 2750;    % m
tp.mobileAngle = 3;       % degrees
tp.interfPower = 1;       % watt
tp.interfGain = -20;      % dB
tp.interfRange = 9000;    % m
tp.interfAngle =   20;    % degrees
tp.numTXElements = 8;
tp.steeringAngle = 0;     % degrees
tp.rxGain = 108.8320 - tp.txGain; % dB

numTx= tp.numTXElements;
%%
for i =1:1:256
    a{i}=strcat('radiobutton',num2str(i))
end
%%
ra=rectangularArray
ra.Size=[4 4]
ra.RowSpacing=5;
ra.ColumnSpacing=5;
for i=29800000:100000:30200000
    figure()
    patternAzimuth(ra,i)
end
