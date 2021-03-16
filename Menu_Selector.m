function varargout = Menu_Selector(varargin)
% MENU_SELECTOR MATLAB code for Menu_Selector.fig

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Menu_Selector_OpeningFcn, ...
                   'gui_OutputFcn',  @Menu_Selector_OutputFcn, ...
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


% --- Executes just before Menu_Selector is made visible.
function Menu_Selector_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Menu_Selector (see VARARGIN)

% Choose default command line output for Menu_Selector
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Menu_Selector wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Menu_Selector_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in button_Array_antenna.
function button_Array_antenna_Callback(hObject, eventdata, handles)
% hObject    handle to button_Array_antenna (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run Array_antenna


% --- Executes on button press in button_butler_matrix.
function button_butler_matrix_Callback(hObject, eventdata, handles)
% hObject    handle to button_butler_matrix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run beamforming_with_Butler_Matrix


% --- Executes on button press in button_steeringvec_beam.
function button_steeringvec_beam_Callback(hObject, eventdata, handles)
% hObject    handle to button_steeringvec_beam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run beamforming_with_steeringvec



% --- Executes on button press in button_arbitary_array.
function button_arbitary_array_Callback(hObject, eventdata, handles)
% hObject    handle to button_arbitary_array (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run Arbitrart_Array
