function varargout = Array_antenna(varargin)
% ARRAY_ANTENNA MATLAB code for Array_antenna.fig
%      ARRAY_ANTENNA, by itself, creates a new ARRAY_ANTENNA or raises the existing
%      singleton*.
%
%      H = ARRAY_ANTENNA returns the handle to a new ARRAY_ANTENNA or the handle to
%      the existing singleton*.
%
%      ARRAY_ANTENNA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ARRAY_ANTENNA.M with the given input arguments.
%
%      ARRAY_ANTENNA('Property','Value',...) creates a new ARRAY_ANTENNA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Array_antenna_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Array_antenna_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Array_antenna

% Last Modified by GUIDE v2.5 16-Mar-2020 08:20:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Array_antenna_OpeningFcn, ...
                   'gui_OutputFcn',  @Array_antenna_OutputFcn, ...
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


% --- Executes just before Array_antenna is made visible.
function Array_antenna_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Array_antenna (see VARARGIN)
global N;           %number of antenna
global D;           %distance of each antenna
global frequency;   %frequency of antenna
global alpha;       %phase property

select_array_Callback(handles.select_array, eventdata, handles)
set(handles.text_quantity,'String','NumElements','Fontsize',10);
set(handles.text_distance,'String','ElementSpacing','Fontsize',10);
set(handles.text_wavelength,'String','Frequency','Fontsize',10);
set(handles.text_alpha,'String','PhaseShift','Fontsize',10);
set(handles.text_title,'String','Array Antenna Simulation','Fontsize',25);
set(handles.text_conclusion,'String','please input above parameters!','Fontsize',20);
set(handles.input_array1,'visible','off');
set(handles.input_array2,'visible','off');
set(handles.text_signal1,'visible','off');
set(handles.input_space1,'visible','off');
set(handles.input_space2,'visible','off');
set(handles.text_signal2,'visible','off');
set(handles.text_signal3,'visible','off');
set(handles.button_start,'String','start','fontsize',20);




% Choose default command line output for Array_antenna
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Array_antenna wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Array_antenna_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function input_quantity_Callback(hObject, eventdata, handles)
% hObject    handle to input_quantity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_quantity as text
%        str2double(get(hObject,'String')) returns contents of input_quantity as a double


% --- Executes during object creation, after setting all properties.
function input_quantity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_quantity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input_wavelength_Callback(hObject, eventdata, handles)
% hObject    handle to input_wavelength (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_wavelength as text
%        str2double(get(hObject,'String')) returns contents of input_wavelength as a double


% --- Executes during object creation, after setting all properties.
function input_wavelength_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_wavelength (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input_distance_Callback(hObject, eventdata, handles)
% hObject    handle to input_distance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_distance as text
%        str2double(get(hObject,'String')) returns contents of input_distance as a double


% --- Executes during object creation, after setting all properties.
function input_distance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_distance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in select_array.
function select_array_Callback(hObject, eventdata, handles)
% hObject    handle to select_array (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns select_array contents as cell array
%        contents{get(hObject,'Value')} returns selected item from select_array
global val;
CellList{1}='LinearArray';
CellList{2}='Rectangular Array';
set(handles.select_array,'String',CellList);
guidata(hObject,handles);
str=get(hObject,'String');
val=get(hObject,'value');%1为线天线阵列，2为面天线阵列
if val==1
    set(handles.input_quantity,'visible','on');
    set(handles.input_distance,'visible','on');
    set(handles.input_array1,'visible','off');
    set(handles.input_array2,'visible','off');
    set(handles.text_signal1,'visible','off');
    set(handles.input_space1,'visible','off');
    set(handles.input_space2,'visible','off');
    set(handles.text_signal2,'visible','off');
    set(handles.text_signal3,'visible','off');
elseif val==2
    set(handles.input_quantity,'visible','off');
    set(handles.input_distance,'visible','off');
    set(handles.input_array1,'visible','on');
    set(handles.input_array2,'visible','on');
    set(handles.text_signal1,'visible','on');
    set(handles.input_space1,'visible','on');
    set(handles.input_space2,'visible','on');
    set(handles.text_signal2,'visible','on');
    set(handles.text_signal3,'visible','on');
end
%此处后期可以再添加一个显示




% --- Executes during object creation, after setting all properties.
function select_array_CreateFcn(hObject, eventdata, handles)
% hObject    handle to select_array (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input_alpha_Callback(hObject, eventdata, handles)
% hObject    handle to input_alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_alpha as text
%        str2double(get(hObject,'String')) returns contents of input_alpha as a double


% --- Executes during object creation, after setting all properties.
function input_alpha_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in button_start.
function button_start_Callback(hObject, eventdata, handles)
% hObject    handle to button_start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global N;
global D;
global frequency;
global alpha;
global val;
global length width;
global space1 space2;
N=get(handles.input_quantity,'String');
N=str2num(N);
D=get(handles.input_distance,'String');
D=str2num(D);
frequency=get(handles.input_wavelength,'String');%这里要注意，把UI界面的tag设置为了wavelength，这里用frequency，为了方便没有再进行更改
frequency=str2num(frequency);
length=get(handles.input_array1,'String');
length=str2num(length);
width=get(handles.input_array2,'String');
width=str2num(width);
space1=get(handles.input_space1,'String');
space1=str2num(space1);
space2=get(handles.input_space2,'String');
space2=str2num(space2);
alpha=get(handles.input_alpha,'String');
alpha=str2num(alpha);

if val==1           %直线阵列
    la=linearArray;
    set(la,'NumElements',N);
    set(la,'ElementSpacing',D);
    set(la,'PhaseShift',alpha);
%     layout(la);
%     show(la);
    f = waitbar(0,'please wait');
    figure(2);
    pattern(la,frequency);
%     title('方向图')
    waitbar(0.33,f,'please wait');
    figure(3);
    patternAzimuth(la,frequency);  
%     title('A面方向图')
    waitbar(0.67,f,'the operation is processing!');
    figure(4);
    patternElevation(la,frequency);
%     title('E面方向图')
    waitbar(0.85,f,'coming soon!');
    figure(5);
    show(la);
%     figure(6);
%     beamwidth(la,frequency,0,1:1:360);
    [Directivity] = pattern(la,frequency,0,90);
    [bw,angles] = beamwidth(la,frequency,0,1:1:360);
    waitbar(1,f,'coming soon!');
    Context_conclusion=['After calculation,the Directivity of linear array is ',num2str(Directivity)];
    set(handles.text_conclusion,'String',Context_conclusion);
    close(f);
    

elseif val==2       %平面阵列
    ra=rectangularArray; %建立平面天线阵
    set(ra,'Size',[length width]);
    set(ra,'RowSpacing',space1);
    set(ra,'ColumnSpacing',space2);
    set(ra,'PhaseShift',alpha);
    f = waitbar(0,'please wait');
    figure(2);
    pattern(ra,frequency);
    figure(3);
    patternAzimuth(ra,frequency);
    waitbar(0.25,f,'please wait');
    figure(4);
    patternElevation(ra,frequency);
    waitbar(0.5,f,'the operation is processing!');
    figure(5);
    show(ra);
%     title('天线分布');
    waitbar(0.75,f,'coming soon!');
%     figure(6)
%     beamwidth(ra,frequency,0,1:1:360);
    [Directivity] = pattern(ra,frequency,0,90);
    [bw,angles] = beamwidth(ra,frequency,0,1:1:360);
    waitbar(1,f,'coming soon!');
    Context_conclusion=['After calculation,the Directivity of linear array is ',num2str(Directivity)];
    set(handles.text_conclusion,'String',Context_conclusion);
    close(f);
    
else
    warning('something wrong')
end



% --- Executes on key press with focus on button_start and none of its controls.
function button_start_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to button_start (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on key press with focus on select_array and none of its controls.
function select_array_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to select_array (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)



function input_array1_Callback(hObject, eventdata, handles)
% hObject    handle to input_array1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_array1 as text
%        str2double(get(hObject,'String')) returns contents of input_array1 as a double


% --- Executes during object creation, after setting all properties.
function input_array1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_array1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input_array2_Callback(hObject, eventdata, handles)
% hObject    handle to input_array2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_array2 as text
%        str2double(get(hObject,'String')) returns contents of input_array2 as a double


% --- Executes during object creation, after setting all properties.
function input_array2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_array2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input_space1_Callback(hObject, eventdata, handles)
% hObject    handle to input_space1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_space1 as text
%        str2double(get(hObject,'String')) returns contents of input_space1 as a double


% --- Executes during object creation, after setting all properties.
function input_space1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_space1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input_space2_Callback(hObject, eventdata, handles)
% hObject    handle to input_space2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_space2 as text
%        str2double(get(hObject,'String')) returns contents of input_space2 as a double


% --- Executes during object creation, after setting all properties.
function input_space2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_space2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end