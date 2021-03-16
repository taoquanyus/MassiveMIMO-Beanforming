function varargout = beamforming_with_Butler_Matrix(varargin)
% BEAMFORMING_WITH_BUTLER_MATRIX MATLAB code for beamforming_with_Butler_Matrix.fig
%      BEAMFORMING_WITH_BUTLER_MATRIX, by itself, creates a new BEAMFORMING_WITH_BUTLER_MATRIX or raises the existing
%      singleton*.
%
%      H = BEAMFORMING_WITH_BUTLER_MATRIX returns the handle to a new BEAMFORMING_WITH_BUTLER_MATRIX or the handle to
%      the existing singleton*.
%
%      BEAMFORMING_WITH_BUTLER_MATRIX('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BEAMFORMING_WITH_BUTLER_MATRIX.M with the given input arguments.
%
%      BEAMFORMING_WITH_BUTLER_MATRIX('Property','Value',...) creates a new BEAMFORMING_WITH_BUTLER_MATRIX or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before beamforming_with_Butler_Matrix_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to beamforming_with_Butler_Matrix_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help beamforming_with_Butler_Matrix

% Last Modified by GUIDE v2.5 18-May-2020 19:58:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @beamforming_with_Butler_Matrix_OpeningFcn, ...
                   'gui_OutputFcn',  @beamforming_with_Butler_Matrix_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before beamforming_with_Butler_Matrix is made visible.
function beamforming_with_Butler_Matrix_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to beamforming_with_Butler_Matrix (see VARARGIN)

% Choose default command line output for beamforming_with_Butler_Matrix
global c
c=physconst('lightspeed');

global matrix_sorts
Celllist{1}='8*8Butler Matrix(Normal)';
Celllist{2}='8*8Butler Matrix(Low side-lobe)';
set(handles.codebook_list,'String',Celllist);
matrix_sorts=get(handles.codebook_list,'value');

handles.output = hObject;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes beamforming_with_Butler_Matrix wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = beamforming_with_Butler_Matrix_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function input_expected_angle_Callback(hObject, eventdata, handles)
% hObject    handle to input_expected_angle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_expected_angle as text
%        str2double(get(hObject,'String')) returns contents of input_expected_angle as a double


% --- Executes during object creation, after setting all properties.
function input_expected_angle_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_expected_angle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in start_buttom.
function start_buttom_Callback(hObject, eventdata, handles)
% hObject    handle to start_buttom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global matrix_sorts c frequency2
global expected_angle
matrix_sorts=get(handles.codebook_list,'value');
frequency2=get(handles.input_frequency,'String');
frequency2=str2num(frequency2); 
expected_angle=get(handles.input_expected_angle,'String');
expected_angle=str2num(expected_angle);
lamda=c/frequency2;
d=0.5*lamda;
if matrix_sorts == 1   %butler matrix(normal)
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
    bulter_matrix_beamDirection=[61;39;22;7;-7;-22;-39;-61];
    temp2=bulter_matrix_beamDirection-expected_angle;
    temp2=abs(temp2);
    [m,a]=min(temp2);
    sv=butler_matrix(:,a);
    sv=exp(sv*1i);
    array8_8=phased.ULA;
    array8_8.NumElements=8;
    array8_8.ElementSpacing=d;
    axes(handles.axes1)
    
    pattern(array8_8,frequency2,-180:180,0,'CoordinateSystem','polar', ...
    'PropagationSpeed',c,'Type','power');
    hold on;
    plot(0.9*cos(deg2rad(expected_angle)),0.9*sin(deg2rad(expected_angle)),'ro');
    hold off;
    axes(handles.axes2)
    pattern(array8_8,frequency2,-180:180,0,'CoordinateSystem','polar', ...
    'PropagationSpeed',c,'Type','power','weights',sv);
    hold on;
    plot(0.9*cos(deg2rad(expected_angle)),0.9*sin(deg2rad(expected_angle)),'ro');
    hold off;
    clear temp2;
    
elseif matrix_sorts ==2     %butler matrix(low-sidelobe)
    low_sideLobe_matrix=[0,0,0,0,0,0,0,0;...
                      -123.75 146.25 56.25 -33.75 -123.75 146.25 56.25 -33.75;...
                      -33.75 56.25 146.25 -123.75 -33.75 56.25 146.25 -123.75;...
                      -56.25 -11.25 33.75 78.75 -123.75 168.75 -146.25 -101.25;...
                      -101.25 -146.25 168.75 -123.75 78.75 33.75 -11.25 -56.25;...
                      -33.75 101.25 -123.75 11.25 146.65 -78.75 56.25 -168.75;...
                      -168.75 56.25 -78.75 146.65 11.25 -123.75 -146.25 -33.75];
    low_sideLobe_matrix=low_sideLobe_matrix';
    low_sideLobe_matrix=deg2rad(low_sideLobe_matrix);
    low_sideLobe_matrix=exp(low_sideLobe_matrix*1i);
    const1=[0.138 0.393 0.588 0.693 0.693 0.588 0.393 0.138];
    low_sideLobe_matrix=gmultiply(const1',low_sideLobe_matrix);
    low_sideLobe_direction=[0 -30 30 15.5 -15.5 48.5 -45.5];
    temp3=low_sideLobe_direction-expected_angle;
    temp3=abs(temp3);
    [m,b]=min(temp3);
    sv2=low_sideLobe_matrix(:,b);
    array8_8=phased.ULA;
    array8_8.NumElements=8;
    array8_8.ElementSpacing=d;
    axes(handles.axes1)
    pattern(array8_8,frequency2,-180:180,0,'CoordinateSystem','polar', ...
    'PropagationSpeed',c,'Type','power');
    hold on;
    plot(0.9*cos(deg2rad(expected_angle)),0.9*sin(deg2rad(expected_angle)),'ro');
    hold off;
    axes(handles.axes2)
    pattern(array8_8,frequency2,-180:180,0,'CoordinateSystem','polar', ...
    'PropagationSpeed',c,'Type','power','weights',sv2);
    hold on;
    plot(0.9*cos(deg2rad(expected_angle)),0.9*sin(deg2rad(expected_angle)),'ro');
    hold off;
end



% --- Executes on selection change in codebook_list.
function codebook_list_Callback(hObject, eventdata, handles)
% hObject    handle to codebook_list (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

guidata(hObject,handles);

% Hints: contents = cellstr(get(hObject,'String')) returns codebook_list contents as cell array
%        contents{get(hObject,'Value')} returns selected item from codebook_list


% --- Executes during object creation, after setting all properties.
function codebook_list_CreateFcn(hObject, eventdata, handles)
% hObject    handle to codebook_list (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input_frequency_Callback(hObject, eventdata, handles)
% hObject    handle to input_frequency (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_frequency as text
%        str2double(get(hObject,'String')) returns contents of input_frequency as a double


% --- Executes during object creation, after setting all properties.
function input_frequency_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_frequency (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
