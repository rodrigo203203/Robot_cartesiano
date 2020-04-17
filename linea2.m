function varargout = linea2(varargin)
% LINEA2 MATLAB code for linea2.fig
%      LINEA2, by itself, creates a new LINEA2 or raises the existing
%      singleton*.
%
%      H = LINEA2 returns the handle to a new LINEA2 or the handle to
%      the existing singleton*.
%
%      LINEA2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LINEA2.M with the given input arguments.
%
%      LINEA2('Property','Value',...) creates a new LINEA2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before linea2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to linea2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help linea2

% Last Modified by GUIDE v2.5 16-Apr-2020 23:10:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @linea2_OpeningFcn, ...
                   'gui_OutputFcn',  @linea2_OutputFcn, ...
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


% --- Executes just before linea2 is made visible.
function linea2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to linea2 (see VARARGIN)

% Choose default command line output for linea2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes linea2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = linea2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function ex1_Callback(hObject, eventdata, handles)
% hObject    handle to ex1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ex1 as text
%        str2double(get(hObject,'String')) returns contents of ex1 as a double


% --- Executes during object creation, after setting all properties.
function ex1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ex1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ey1_Callback(hObject, eventdata, handles)
% hObject    handle to ey1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ey1 as text
%        str2double(get(hObject,'String')) returns contents of ey1 as a double


% --- Executes during object creation, after setting all properties.
function ey1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ey1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ez1_Callback(hObject, eventdata, handles)
% hObject    handle to ez1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ez1 as text
%        str2double(get(hObject,'String')) returns contents of ez1 as a double


% --- Executes during object creation, after setting all properties.
function ez1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ez1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global slinea
lx1 = str2double(get(handles.ex1,'String'));
ly1 = str2double(get(handles.ey1,'String'));
lz1 = str2double(get(handles.ez1,'String'));
lx2 = str2double(get(handles.ex2,'String'));
ly2 = str2double(get(handles.ey2,'String'));
lz2 = str2double(get(handles.ez2,'String'));
slinea = [lx1 ly1 lz1 lx2 ly2 lz2]


function ex2_Callback(hObject, eventdata, handles)
% hObject    handle to ex2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ex2 as text
%        str2double(get(hObject,'String')) returns contents of ex2 as a double


% --- Executes during object creation, after setting all properties.
function ex2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ex2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ey2_Callback(hObject, eventdata, handles)
% hObject    handle to ey2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ey2 as text
%        str2double(get(hObject,'String')) returns contents of ey2 as a double


% --- Executes during object creation, after setting all properties.
function ey2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ey2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ez2_Callback(hObject, eventdata, handles)
% hObject    handle to ez2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ez2 as text
%        str2double(get(hObject,'String')) returns contents of ez2 as a double


% --- Executes during object creation, after setting all properties.
function ez2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ez2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
close(linea2);

