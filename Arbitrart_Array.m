function varargout = Arbitrart_Array(varargin)
% ARBITRART_ARRAY MATLAB code for Arbitrart_Array.fig
%      ARBITRART_ARRAY, by itself, creates a new ARBITRART_ARRAY or raises the existing
%      singleton*.
%
%      H = ARBITRART_ARRAY returns the handle to a new ARBITRART_ARRAY or the handle to
%      the existing singleton*.
%
%      ARBITRART_ARRAY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ARBITRART_ARRAY.M with the given input arguments.
%
%      ARBITRART_ARRAY('Property','Value',...) creates a new ARBITRART_ARRAY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Arbitrart_Array_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Arbitrart_Array_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Arbitrart_Array

% Last Modified by GUIDE v2.5 14-Apr-2020 01:17:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Arbitrart_Array_OpeningFcn, ...
                   'gui_OutputFcn',  @Arbitrart_Array_OutputFcn, ...
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


% --- Executes just before Arbitrart_Array is made visible.
function Arbitrart_Array_OpeningFcn(hObject, eventdata, handles, varargin)
global a;
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Arbitrart_Array (see VARARGIN)

% Choose default command line output for Arbitrart_Array
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
for i =1:1:256
    a{i}=strcat('handles.radiobutton',num2str(i));
    set(eval(a{i}),'String',num2str(i,'%03d'))
end
% UIWAIT makes Arbitrart_Array wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Arbitrart_Array_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5


% --- Executes on button press in radiobutton6.
function radiobutton6_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton6


% --- Executes on button press in radiobutton7.
function radiobutton7_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton7


% --- Executes on button press in radiobutton8.
function radiobutton8_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton8


% --- Executes on button press in radiobutton9.
function radiobutton9_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton9


% --- Executes on button press in radiobutton10.
function radiobutton10_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton10


% --- Executes on button press in radiobutton11.
function radiobutton11_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton11


% --- Executes on button press in radiobutton12.
function radiobutton12_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton12


% --- Executes on button press in radiobutton13.
function radiobutton13_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton13


% --- Executes on button press in radiobutton14.
function radiobutton14_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton14


% --- Executes on button press in radiobutton15.
function radiobutton15_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton15


% --- Executes on button press in radiobutton16.
function radiobutton16_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton16


% --- Executes on button press in radiobutton17.
function radiobutton17_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton17


% --- Executes on button press in radiobutton18.
function radiobutton18_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton18


% --- Executes on button press in radiobutton19.
function radiobutton19_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton19


% --- Executes on button press in radiobutton20.
function radiobutton20_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton20


% --- Executes on button press in radiobutton21.
function radiobutton21_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton21


% --- Executes on button press in radiobutton22.
function radiobutton22_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton22


% --- Executes on button press in radiobutton23.
function radiobutton23_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton23


% --- Executes on button press in radiobutton24.
function radiobutton24_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton24


% --- Executes on button press in radiobutton25.
function radiobutton25_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton25


% --- Executes on button press in radiobutton26.
function radiobutton26_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton26


% --- Executes on button press in radiobutton27.
function radiobutton27_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton27


% --- Executes on button press in radiobutton28.
function radiobutton28_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton28


% --- Executes on button press in radiobutton29.
function radiobutton29_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton29


% --- Executes on button press in radiobutton30.
function radiobutton30_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton30


% --- Executes on button press in radiobutton31.
function radiobutton31_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton31


% --- Executes on button press in radiobutton32.
function radiobutton32_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton32


% --- Executes on button press in radiobutton33.
function radiobutton33_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton33


% --- Executes on button press in radiobutton34.
function radiobutton34_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton34


% --- Executes on button press in radiobutton35.
function radiobutton35_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton35


% --- Executes on button press in radiobutton36.
function radiobutton36_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton36


% --- Executes on button press in radiobutton37.
function radiobutton37_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton37


% --- Executes on button press in radiobutton38.
function radiobutton38_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton38


% --- Executes on button press in radiobutton39.
function radiobutton39_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton39


% --- Executes on button press in radiobutton40.
function radiobutton40_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton40


% --- Executes on button press in radiobutton41.
function radiobutton41_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton41


% --- Executes on button press in radiobutton42.
function radiobutton42_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton42


% --- Executes on button press in radiobutton43.
function radiobutton43_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton43


% --- Executes on button press in radiobutton44.
function radiobutton44_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton44


% --- Executes on button press in radiobutton45.
function radiobutton45_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton45


% --- Executes on button press in radiobutton46.
function radiobutton46_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton46


% --- Executes on button press in radiobutton47.
function radiobutton47_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton47


% --- Executes on button press in radiobutton48.
function radiobutton48_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton48


% --- Executes on button press in radiobutton49.
function radiobutton49_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton49


% --- Executes on button press in radiobutton50.
function radiobutton50_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton50


% --- Executes on button press in radiobutton51.
function radiobutton51_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton51


% --- Executes on button press in radiobutton52.
function radiobutton52_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton52


% --- Executes on button press in radiobutton53.
function radiobutton53_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton53


% --- Executes on button press in radiobutton54.
function radiobutton54_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton54


% --- Executes on button press in radiobutton55.
function radiobutton55_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton55


% --- Executes on button press in radiobutton56.
function radiobutton56_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton56


% --- Executes on button press in radiobutton57.
function radiobutton57_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton57


% --- Executes on button press in radiobutton58.
function radiobutton58_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton58


% --- Executes on button press in radiobutton59.
function radiobutton59_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton59


% --- Executes on button press in radiobutton60.
function radiobutton60_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton60


% --- Executes on button press in radiobutton61.
function radiobutton61_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton61


% --- Executes on button press in radiobutton62.
function radiobutton62_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton62


% --- Executes on button press in radiobutton63.
function radiobutton63_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton63


% --- Executes on button press in radiobutton64.
function radiobutton64_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton64


% --- Executes on button press in radiobutton65.
function radiobutton65_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton65


% --- Executes on button press in radiobutton66.
function radiobutton66_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton66


% --- Executes on button press in radiobutton67.
function radiobutton67_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton67 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton67


% --- Executes on button press in radiobutton68.
function radiobutton68_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton68 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton68


% --- Executes on button press in radiobutton69.
function radiobutton69_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton69 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton69


% --- Executes on button press in radiobutton70.
function radiobutton70_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton70 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton70


% --- Executes on button press in radiobutton71.
function radiobutton71_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton71 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton71


% --- Executes on button press in radiobutton72.
function radiobutton72_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton72 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton72


% --- Executes on button press in radiobutton73.
function radiobutton73_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton73 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton73


% --- Executes on button press in radiobutton74.
function radiobutton74_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton74 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton74


% --- Executes on button press in radiobutton75.
function radiobutton75_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton75 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton75


% --- Executes on button press in radiobutton76.
function radiobutton76_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton76 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton76


% --- Executes on button press in radiobutton77.
function radiobutton77_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton77


% --- Executes on button press in radiobutton78.
function radiobutton78_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton78 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton78


% --- Executes on button press in radiobutton79.
function radiobutton79_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton79 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton79


% --- Executes on button press in radiobutton80.
function radiobutton80_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton80 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton80


% --- Executes on button press in radiobutton81.
function radiobutton81_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton81 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton81


% --- Executes on button press in radiobutton82.
function radiobutton82_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton82 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton82


% --- Executes on button press in radiobutton83.
function radiobutton83_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton83 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton83


% --- Executes on button press in radiobutton84.
function radiobutton84_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton84 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton84


% --- Executes on button press in radiobutton85.
function radiobutton85_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton85 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton85


% --- Executes on button press in radiobutton86.
function radiobutton86_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton86 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton86


% --- Executes on button press in radiobutton87.
function radiobutton87_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton87 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton87


% --- Executes on button press in radiobutton88.
function radiobutton88_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton88 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton88


% --- Executes on button press in radiobutton89.
function radiobutton89_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton89 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton89


% --- Executes on button press in radiobutton90.
function radiobutton90_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton90 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton90


% --- Executes on button press in radiobutton91.
function radiobutton91_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton91 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton91


% --- Executes on button press in radiobutton92.
function radiobutton92_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton92 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton92


% --- Executes on button press in radiobutton93.
function radiobutton93_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton93 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton93


% --- Executes on button press in radiobutton94.
function radiobutton94_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton94 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton94


% --- Executes on button press in radiobutton95.
function radiobutton95_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton95 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton95


% --- Executes on button press in radiobutton96.
function radiobutton96_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton96 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton96


% --- Executes on button press in radiobutton97.
function radiobutton97_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton97 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton97


% --- Executes on button press in radiobutton98.
function radiobutton98_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton98 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton98


% --- Executes on button press in radiobutton99.
function radiobutton99_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton99 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton99


% --- Executes on button press in radiobutton100.
function radiobutton100_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton100 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton100


% --- Executes on button press in radiobutton101.
function radiobutton101_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton101 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton101


% --- Executes on button press in radiobutton102.
function radiobutton102_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton102 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton102


% --- Executes on button press in radiobutton103.
function radiobutton103_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton103 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton103


% --- Executes on button press in radiobutton104.
function radiobutton104_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton104 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton104


% --- Executes on button press in radiobutton105.
function radiobutton105_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton105 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton105


% --- Executes on button press in radiobutton106.
function radiobutton106_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton106 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton106


% --- Executes on button press in radiobutton107.
function radiobutton107_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton107 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton107


% --- Executes on button press in radiobutton108.
function radiobutton108_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton108 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton108


% --- Executes on button press in radiobutton109.
function radiobutton109_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton109 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton109


% --- Executes on button press in radiobutton110.
function radiobutton110_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton110 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton110


% --- Executes on button press in radiobutton111.
function radiobutton111_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton111


% --- Executes on button press in radiobutton112.
function radiobutton112_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton112 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton112


% --- Executes on button press in radiobutton113.
function radiobutton113_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton113 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton113


% --- Executes on button press in radiobutton114.
function radiobutton114_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton114 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton114


% --- Executes on button press in radiobutton115.
function radiobutton115_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton115 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton115


% --- Executes on button press in radiobutton116.
function radiobutton116_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton116 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton116


% --- Executes on button press in radiobutton117.
function radiobutton117_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton117 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton117


% --- Executes on button press in radiobutton118.
function radiobutton118_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton118 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton118


% --- Executes on button press in radiobutton119.
function radiobutton119_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton119 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton119


% --- Executes on button press in radiobutton120.
function radiobutton120_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton120 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton120


% --- Executes on button press in radiobutton121.
function radiobutton121_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton121 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton121


% --- Executes on button press in radiobutton122.
function radiobutton122_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton122 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton122


% --- Executes on button press in radiobutton123.
function radiobutton123_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton123 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton123


% --- Executes on button press in radiobutton124.
function radiobutton124_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton124 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton124


% --- Executes on button press in radiobutton125.
function radiobutton125_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton125 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton125


% --- Executes on button press in radiobutton126.
function radiobutton126_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton126 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton126


% --- Executes on button press in radiobutton127.
function radiobutton127_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton127 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton127


% --- Executes on button press in radiobutton128.
function radiobutton128_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton128 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton128


% --- Executes on button press in radiobutton129.
function radiobutton129_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton129 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton129


% --- Executes on button press in radiobutton130.
function radiobutton130_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton130 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton130


% --- Executes on button press in radiobutton131.
function radiobutton131_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton131 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton131


% --- Executes on button press in radiobutton132.
function radiobutton132_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton132 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton132


% --- Executes on button press in radiobutton133.
function radiobutton133_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton133 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton133


% --- Executes on button press in radiobutton134.
function radiobutton134_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton134 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton134


% --- Executes on button press in radiobutton135.
function radiobutton135_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton135 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton135


% --- Executes on button press in radiobutton136.
function radiobutton136_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton136 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton136


% --- Executes on button press in radiobutton137.
function radiobutton137_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton137 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton137


% --- Executes on button press in radiobutton138.
function radiobutton138_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton138 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton138


% --- Executes on button press in radiobutton139.
function radiobutton139_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton139 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton139


% --- Executes on button press in radiobutton140.
function radiobutton140_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton140 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton140


% --- Executes on button press in radiobutton141.
function radiobutton141_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton141 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton141


% --- Executes on button press in radiobutton142.
function radiobutton142_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton142 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton142


% --- Executes on button press in radiobutton143.
function radiobutton143_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton143 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton143


% --- Executes on button press in radiobutton144.
function radiobutton144_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton144 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton144


% --- Executes on button press in radiobutton145.
function radiobutton145_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton145 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton145


% --- Executes on button press in radiobutton146.
function radiobutton146_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton146 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton146


% --- Executes on button press in radiobutton147.
function radiobutton147_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton147 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton147


% --- Executes on button press in radiobutton148.
function radiobutton148_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton148 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton148


% --- Executes on button press in radiobutton149.
function radiobutton149_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton149 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton149


% --- Executes on button press in radiobutton150.
function radiobutton150_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton150 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton150


% --- Executes on button press in radiobutton151.
function radiobutton151_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton151 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton151


% --- Executes on button press in radiobutton152.
function radiobutton152_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton152 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton152


% --- Executes on button press in radiobutton153.
function radiobutton153_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton153 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton153


% --- Executes on button press in radiobutton154.
function radiobutton154_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton154 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton154


% --- Executes on button press in radiobutton155.
function radiobutton155_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton155 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton155


% --- Executes on button press in radiobutton156.
function radiobutton156_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton156 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton156


% --- Executes on button press in radiobutton157.
function radiobutton157_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton157 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton157


% --- Executes on button press in radiobutton158.
function radiobutton158_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton158 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton158


% --- Executes on button press in radiobutton159.
function radiobutton159_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton159 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton159


% --- Executes on button press in radiobutton160.
function radiobutton160_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton160 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton160


% --- Executes on button press in radiobutton161.
function radiobutton161_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton161 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton161


% --- Executes on button press in radiobutton162.
function radiobutton162_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton162 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton162


% --- Executes on button press in radiobutton163.
function radiobutton163_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton163 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton163


% --- Executes on button press in radiobutton164.
function radiobutton164_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton164 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton164


% --- Executes on button press in radiobutton165.
function radiobutton165_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton165 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton165


% --- Executes on button press in radiobutton166.
function radiobutton166_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton166 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton166


% --- Executes on button press in radiobutton167.
function radiobutton167_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton167 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton167


% --- Executes on button press in radiobutton168.
function radiobutton168_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton168 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton168


% --- Executes on button press in radiobutton169.
function radiobutton169_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton169 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton169


% --- Executes on button press in radiobutton170.
function radiobutton170_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton170 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton170


% --- Executes on button press in radiobutton171.
function radiobutton171_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton171 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton171


% --- Executes on button press in radiobutton172.
function radiobutton172_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton172 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton172


% --- Executes on button press in radiobutton173.
function radiobutton173_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton173 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton173


% --- Executes on button press in radiobutton174.
function radiobutton174_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton174 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton174


% --- Executes on button press in radiobutton175.
function radiobutton175_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton175 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton175


% --- Executes on button press in radiobutton176.
function radiobutton176_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton176 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton176


% --- Executes on button press in radiobutton177.
function radiobutton177_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton177 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton177


% --- Executes on button press in radiobutton178.
function radiobutton178_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton178 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton178


% --- Executes on button press in radiobutton179.
function radiobutton179_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton179 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton179


% --- Executes on button press in radiobutton180.
function radiobutton180_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton180 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton180


% --- Executes on button press in radiobutton181.
function radiobutton181_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton181 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton181


% --- Executes on button press in radiobutton182.
function radiobutton182_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton182 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton182


% --- Executes on button press in radiobutton183.
function radiobutton183_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton183 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton183


% --- Executes on button press in radiobutton184.
function radiobutton184_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton184 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton184


% --- Executes on button press in radiobutton185.
function radiobutton185_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton185 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton185


% --- Executes on button press in radiobutton186.
function radiobutton186_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton186 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton186


% --- Executes on button press in radiobutton187.
function radiobutton187_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton187 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton187


% --- Executes on button press in radiobutton188.
function radiobutton188_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton188 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton188


% --- Executes on button press in radiobutton189.
function radiobutton189_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton189 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton189


% --- Executes on button press in radiobutton190.
function radiobutton190_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton190 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton190


% --- Executes on button press in radiobutton191.
function radiobutton191_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton191 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton191


% --- Executes on button press in radiobutton192.
function radiobutton192_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton192 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton192


% --- Executes on button press in radiobutton193.
function radiobutton193_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton193 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton193


% --- Executes on button press in radiobutton194.
function radiobutton194_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton194 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton194


% --- Executes on button press in radiobutton195.
function radiobutton195_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton195 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton195


% --- Executes on button press in radiobutton196.
function radiobutton196_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton196 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton196


% --- Executes on button press in radiobutton197.
function radiobutton197_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton197 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton197


% --- Executes on button press in radiobutton198.
function radiobutton198_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton198 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton198


% --- Executes on button press in radiobutton199.
function radiobutton199_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton199 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton199


% --- Executes on button press in radiobutton200.
function radiobutton200_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton200 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton200


% --- Executes on button press in radiobutton201.
function radiobutton201_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton201 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton201


% --- Executes on button press in radiobutton202.
function radiobutton202_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton202 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton202


% --- Executes on button press in radiobutton203.
function radiobutton203_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton203 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton203


% --- Executes on button press in radiobutton204.
function radiobutton204_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton204 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton204


% --- Executes on button press in radiobutton205.
function radiobutton205_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton205 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton205


% --- Executes on button press in radiobutton206.
function radiobutton206_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton206 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton206


% --- Executes on button press in radiobutton207.
function radiobutton207_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton207 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton207


% --- Executes on button press in radiobutton208.
function radiobutton208_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton208 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton208


% --- Executes on button press in radiobutton209.
function radiobutton209_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton209 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton209


% --- Executes on button press in radiobutton210.
function radiobutton210_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton210 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton210


% --- Executes on button press in radiobutton211.
function radiobutton211_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton211 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton211


% --- Executes on button press in radiobutton212.
function radiobutton212_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton212 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton212


% --- Executes on button press in radiobutton213.
function radiobutton213_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton213 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton213


% --- Executes on button press in radiobutton214.
function radiobutton214_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton214 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton214


% --- Executes on button press in radiobutton215.
function radiobutton215_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton215 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton215


% --- Executes on button press in radiobutton216.
function radiobutton216_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton216 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton216


% --- Executes on button press in radiobutton217.
function radiobutton217_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton217 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton217


% --- Executes on button press in radiobutton218.
function radiobutton218_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton218 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton218


% --- Executes on button press in radiobutton219.
function radiobutton219_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton219 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton219


% --- Executes on button press in radiobutton220.
function radiobutton220_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton220 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton220


% --- Executes on button press in radiobutton221.
function radiobutton221_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton221 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton221


% --- Executes on button press in radiobutton222.
function radiobutton222_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton222 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton222


% --- Executes on button press in radiobutton223.
function radiobutton223_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton223 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton223


% --- Executes on button press in radiobutton224.
function radiobutton224_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton224 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton224


% --- Executes on button press in radiobutton225.
function radiobutton225_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton225 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton225


% --- Executes on button press in radiobutton226.
function radiobutton226_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton226 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton226


% --- Executes on button press in radiobutton227.
function radiobutton227_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton227 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton227


% --- Executes on button press in radiobutton228.
function radiobutton228_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton228 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton228


% --- Executes on button press in radiobutton229.
function radiobutton229_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton229 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton229


% --- Executes on button press in radiobutton230.
function radiobutton230_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton230 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton230


% --- Executes on button press in radiobutton231.
function radiobutton231_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton231 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton231


% --- Executes on button press in radiobutton232.
function radiobutton232_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton232 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton232


% --- Executes on button press in radiobutton233.
function radiobutton233_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton233 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton233


% --- Executes on button press in radiobutton234.
function radiobutton234_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton234 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton234


% --- Executes on button press in radiobutton235.
function radiobutton235_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton235 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton235


% --- Executes on button press in radiobutton236.
function radiobutton236_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton236 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton236


% --- Executes on button press in radiobutton237.
function radiobutton237_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton237 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton237


% --- Executes on button press in radiobutton238.
function radiobutton238_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton238 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton238


% --- Executes on button press in radiobutton239.
function radiobutton239_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton239 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton239


% --- Executes on button press in radiobutton240.
function radiobutton240_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton240 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton240


% --- Executes on button press in radiobutton241.
function radiobutton241_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton241 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton241


% --- Executes on button press in radiobutton242.
function radiobutton242_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton242 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton242


% --- Executes on button press in radiobutton243.
function radiobutton243_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton243 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton243


% --- Executes on button press in radiobutton244.
function radiobutton244_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton244 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton244


% --- Executes on button press in radiobutton245.
function radiobutton245_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton245 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton245


% --- Executes on button press in radiobutton246.
function radiobutton246_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton246 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton246


% --- Executes on button press in radiobutton247.
function radiobutton247_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton247 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton247


% --- Executes on button press in radiobutton248.
function radiobutton248_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton248 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton248


% --- Executes on button press in radiobutton249.
function radiobutton249_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton249 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton249


% --- Executes on button press in radiobutton250.
function radiobutton250_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton250 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton250


% --- Executes on button press in radiobutton251.
function radiobutton251_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton251 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton251


% --- Executes on button press in radiobutton252.
function radiobutton252_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton252 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton252


% --- Executes on button press in radiobutton253.
function radiobutton253_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton253 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton253


% --- Executes on button press in radiobutton254.
function radiobutton254_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton254 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton254


% --- Executes on button press in radiobutton255.
function radiobutton255_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton255 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton255


% --- Executes on button press in radiobutton256.
function radiobutton256_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton256 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton256


% --- Executes on button press in start_button.
function start_button_Callback(hObject, eventdata, handles)
% hObject    handle to start_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global frequency
global a;
global array_antenna_value;
global space;%在此设置间隔为半波长
frequency=get(handles.frequency_input,'String');
frequency=str2num(frequency);
space=0.5*3e8/frequency;%半波长设置

for k=1:1:256
    array_antenna_value(k)=get(eval(a{k}),'value');    %toolboy
end
array_antenna_value=reshape(array_antenna_value,16,16);
temp1=array_antenna_value;
temp1=temp1';
temp1=reshape(temp1,1,[]);%because amplitudetaper count from column
ra=rectangularArray;
ra.RowSpace=space;
ra.ColumnSpace=space;
set(ra,'Size',[16 16]);
set(ra,'AmplitudeTaper',temp1);
figure(2)
pattern(ra,frequency)
figure(3)
patternAzimuth(ra,frequency)
figure(4)
patternElevation(ra,frequency)



function frequency_input_Callback(hObject, eventdata, handles)
% hObject    handle to frequency_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of frequency_input as text
%        str2double(get(hObject,'String')) returns contents of frequency_input as a double


% --- Executes during object creation, after setting all properties.
function frequency_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frequency_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
