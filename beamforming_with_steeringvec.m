function varargout = beamforming_with_steeringvec(varargin)
% BEAMFORMING_WITH_STEERINGVEC MATLAB code for beamforming_with_steeringvec.fig
%      BEAMFORMING_WITH_STEERINGVEC, by itself, creates a new BEAMFORMING_WITH_STEERINGVEC or raises the existing
%      singleton*.
%
%      H = BEAMFORMING_WITH_STEERINGVEC returns the handle to a new BEAMFORMING_WITH_STEERINGVEC or the handle to
%      the existing singleton*.
%
%      BEAMFORMING_WITH_STEERINGVEC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BEAMFORMING_WITH_STEERINGVEC.M with the given input arguments.
%
%      BEAMFORMING_WITH_STEERINGVEC('Property','Value',...) creates a new BEAMFORMING_WITH_STEERINGVEC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before beamforming_with_steeringvec_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to beamforming_with_steeringvec_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help beamforming_with_steeringvec

% Last Modified by GUIDE v2.5 18-May-2020 04:17:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @beamforming_with_steeringvec_OpeningFcn, ...
                   'gui_OutputFcn',  @beamforming_with_steeringvec_OutputFcn, ...
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


% --- Executes just before beamforming_with_steeringvec is made visible.
function beamforming_with_steeringvec_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to beamforming_with_steeringvec (see VARARGIN)
% Choose default command line output for beamforming_with_steeringvec
global c;
c= physconst('LightSpeed');
handles.output = hObject;
set(handles.axes1,'Visible','on');
set(handles.axes2,'Visible','on');
% Update handles structure
handles.output = hObject;

guidata(hObject, handles);

% UIWAIT makes beamforming_with_steeringvec wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = beamforming_with_steeringvec_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in button_start.
function button_start_Callback(hObject, eventdata, handles)
% hObject    handle to button_start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global array_size1 array_size2 frequency1 spacing_column spacing_row
global azimuth_angle elevation_angle
global c
array_size1=get(handles.input_num_elements1,'string');
array_size1=str2num(array_size1);
array_size2=get(handles.input_num_elements2,'string');
array_size2=str2num(array_size2);
frequency1=get(handles.input_frequency,'string');
frequency1=str2num(frequency1);
spacing_column=get(handles.input_spacing_column,'string');
spacing_column=str2num(spacing_column);
spacing_row=get(handles.input_spacing_row,'string');
spacing_row=str2num(spacing_row);
azimuth_angle=get(handles.input_azimuth,'string');
azimuth_angle=str2num(azimuth_angle);
elevation_angle=get(handles.input_elevation,'string');
elevation_angle=str2num(elevation_angle);

array1 = phased.URA;
array1.Size=[array_size1 array_size2];
array1.ElementSpacing=[spacing_row,spacing_column];
steervec1 = phased.SteeringVector('SensorArray',array1);
sv1=steervec1(frequency1,[azimuth_angle;elevation_angle]);





axes(handles.axes1);
% subplot(211)
pattern(array1,frequency1,-180:180,0,'CoordinateSystem','polar',...
    'PropagationSpeed',c,'Type','efield','Normalize',false);
axes(handles.axes2);
pattern(array1,frequency1,-180:180,0,'CoordinateSystem','polar',...
    'PropagationSpeed',c,'Type','efield','Normalize',false,'weights',sv1);

axes(handles.axes3);
pattern(array1,frequency1,0,-90:90,'CoordinateSystem','polar',...
    'PropagationSpeed',c,'Type','efield','Normalize',false);
axes(handles.axes4);
pattern(array1,frequency1,0,-90:90,'CoordinateSystem','polar',...
    'PropagationSpeed',c,'Type','efield','Normalize',false,'weights',sv1);






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



function input_spacing_column_Callback(hObject, eventdata, handles)
% hObject    handle to input_spacing_column (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_spacing_column as text
%        str2double(get(hObject,'String')) returns contents of input_spacing_column as a double


% --- Executes during object creation, after setting all properties.
function input_spacing_column_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_spacing_column (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input_spacing_row_Callback(hObject, eventdata, handles)
% hObject    handle to input_spacing_row (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_spacing_row as text
%        str2double(get(hObject,'String')) returns contents of input_spacing_row as a double


% --- Executes during object creation, after setting all properties.
function input_spacing_row_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_spacing_row (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input_num_elements1_Callback(hObject, eventdata, handles)
% hObject    handle to input_num_elements1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_num_elements1 as text
%        str2double(get(hObject,'String')) returns contents of input_num_elements1 as a double


% --- Executes during object creation, after setting all properties.
function input_num_elements1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_num_elements1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input_num_elements2_Callback(hObject, eventdata, handles)
% hObject    handle to input_num_elements2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_num_elements2 as text
%        str2double(get(hObject,'String')) returns contents of input_num_elements2 as a double


% --- Executes during object creation, after setting all properties.
function input_num_elements2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_num_elements2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input_azimuth_Callback(hObject, eventdata, handles)
% hObject    handle to input_azimuth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_azimuth as text
%        str2double(get(hObject,'String')) returns contents of input_azimuth as a double


% --- Executes during object creation, after setting all properties.
function input_azimuth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_azimuth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input_elevation_Callback(hObject, eventdata, handles)
% hObject    handle to input_elevation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_elevation as text
%        str2double(get(hObject,'String')) returns contents of input_elevation as a double


% --- Executes during object creation, after setting all properties.
function input_elevation_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_elevation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
