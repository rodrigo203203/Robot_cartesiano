function varargout = controletapas2(varargin)
% CONTROLETAPAS2 MATLAB code for controletapas2.fig
%      CONTROLETAPAS2, by itself, creates a new CONTROLETAPAS2 or raises the existing
%      singleton*.
%
%      H = CONTROLETAPAS2 returns the handle to a new CONTROLETAPAS2 or the handle to
%      the existing singleton*.
%
%      CONTROLETAPAS2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONTROLETAPAS2.M with the given input arguments.
%
%      CONTROLETAPAS2('Property','Value',...) creates a new CONTROLETAPAS2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before controletapas2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to controletapas2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help controletapas2

% Last Modified by GUIDE v2.5 26-Jun-2020 16:26:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @controletapas2_OpeningFcn, ...
                   'gui_OutputFcn',  @controletapas2_OutputFcn, ...
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


% --- Executes just before controletapas2 is made visible.
function controletapas2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to controletapas2 (see VARARGIN)

% Choose default command line output for controletapas2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes controletapas2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = controletapas2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in dibujo1.
function dibujo1_Callback(hObject, eventdata, handles)
global slinea
a1 = 0;
b1 = 0;
c1 = 0;
a2 = slinea(1);
b2 = slinea(2);
c2 = slinea(3);
plot([a1 a2],[b1 b2],'r')
xlim([0 1850])
ylim([0 1750])
grid on;
% hObject    handle to dibujo1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in punto1.
function punto1_Callback(hObject, eventdata, handles)
global slinea
px1 = str2double(get(handles.x1,'String'));
py1 = str2double(get(handles.y1,'String'));
pz1 = str2double(get(handles.z1,'String'));
slinea = [px1 py1 pz1]
% hObject    handle to punto1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in punto2.
function punto2_Callback(hObject, eventdata, handles)
global slinea2
px2 = str2double(get(handles.x2,'String'));
py2 = str2double(get(handles.y2,'String'));
pz2 = str2double(get(handles.z2,'String'));
slinea2 = [px2 py2 pz2]



% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in play.
function play_Callback(hObject, eventdata, handles)
global arduino slinea slinea2 slinea3 slinea4 slinea5
a0=0;b0=0;c0=0;
a1=slinea(1);b1=slinea(2);c1=slinea(3);
a2=slinea2(1);b2=slinea2(2);c2=slinea2(3);
a3=slinea3(1);b3=slinea3(2);c3=slinea3(3);
a4=slinea4(1);b4=slinea4(2);c4=slinea4(3);
a5=slinea5(1);b5=slinea5(2);c5=slinea5(3);
currentX0 = 0;
currentY0 = 0;
currentZ0 = 0;
Dx0 = a1 - a0;
Dy0 = b1 - b0;
Dz0 = c1 - c0;
it=100;
for t = 0:it
    Px=a0+t*Dx0/it;
    Py=b0+(t*((Dy0)/it));
    Pz=c0+(t*((Dz0)/it));
    diffX0 = Px-currentX0;
    diffY0 = Py-currentY0;
    diffZ0 = Pz-currentZ0;
    command  = strcat(int2str(diffX0),',',int2str(diffY0),',',int2str(diffZ0),',')
    fwrite(arduino,command);
    currentX0 = Px;
    currentY0 = Py;
    currentZ0 = Pz;
    fscanf(arduino);
end
currentX1 = 0;
currentY1 = 0;
currentZ1 = 0;
Dx1 = a2 - a0;
Dy1 = b2 - b0;
Dz1 = c2 - c0;
it=100;
for t1 = 0:it
    Px1=a0+t1*Dx1/it;
    Py1=b0+(t1*((Dy1)/it));
    Pz1=c0+(t1*((Dz1)/it));
    diffX1 = Px1-currentX1;
    diffY1 = Py1-currentY1;
    diffZ1 = Pz1-currentZ1;
    command  = strcat(int2str(diffX1),',',int2str(diffY1),',',int2str(diffZ1),',')
    fwrite(arduino,command);
    currentX1 = Px1;
    currentY1 = Py1;
    currentZ1 = Pz1;
    fscanf(arduino);
end 
currentX2 = 0;
currentY2 = 0;
currentZ2 = 0;
Dx2 = a3 - a0;
Dy2 = b3 - b0;
Dz2 = c3 - c0;
it=100;
for t2 = 0:it
    Px2=a0+t2*Dx2/it;
    Py2=b0+(t2*((Dy2)/it));
    Pz2=c0+(t2*((Dz2)/it));
    diffX2 = Px2-currentX2;
    diffY2 = Py2-currentY2;
    diffZ2 = Pz2-currentZ2;
    command  = strcat(int2str(diffX2),',',int2str(diffY2),',',int2str(diffZ2),',')
    fwrite(arduino,command);
    currentX2 = Px2;
    currentY2 = Py2;
    currentZ2 = Pz2;
    fscanf(arduino);
end 
currentX3 = 0;
currentY3 = 0;
currentZ3 = 0;
Dx3 = a4 - a0;
Dy3 = b4 - b0;
Dz3 = c4 - c0;
it=100;
for t3 = 0:it
    Px3=a0+t3*Dx3/it;
    Py3=b0+(t3*((Dy3)/it));
    Pz3=c0+(t3*((Dz3)/it));
    diffX3 = Px3-currentX3;
    diffY3 = Py3-currentY3;
    diffZ3 = Pz3-currentZ3;
    command  = strcat(int2str(diffX3),',',int2str(diffY3),',',int2str(diffZ3),',')
    fwrite(arduino,command);
    currentX3 = Px3;
    currentY3 = Py3;
    currentZ3 = Pz3;
    fscanf(arduino);
end 
currentX4 = 0;
currentY4 = 0;
currentZ4 = 0;
Dx4 = a5 - a0;
Dy4 = b5 - b0;
Dz4 = c5 - c0;
it=100;
for t4 = 0:it
    Px4=a0+t4*Dx4/it;
    Py4=b0+(t4*((Dy4)/it));
    Pz4=c0+(t4*((Dz4)/it));
    diffX4 = Px4-currentX4;
    diffY4 = Py4-currentY4;
    diffZ4 = Pz4-currentZ4;
    command  = strcat(int2str(diffX4),',',int2str(diffY4),',',int2str(diffZ4),',')
    fwrite(arduino,command);
    currentX4 = Px4;
    currentY4 = Py4;
    currentZ4 = Pz4;
    fscanf(arduino);
end 

% hObject    handle to play (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in punto3.
function punto3_Callback(hObject, eventdata, handles)
global slinea3
px3 = str2double(get(handles.x3,'String'));
py3 = str2double(get(handles.y3,'String'));
pz3 = str2double(get(handles.z3,'String'));
slinea3 = [px3 py3 pz3]
% hObject    handle to punto3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in punto4.
function punto4_Callback(hObject, eventdata, handles)
global slinea4
px3 = str2double(get(handles.x4,'String'));
py3 = str2double(get(handles.y4,'String'));
pz3 = str2double(get(handles.z4,'String'));
slinea4 = [px3 py3 pz3]
% hObject    handle to punto4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in punto5.
function punto5_Callback(hObject, eventdata, handles)
global slinea5
px3 = str2double(get(handles.x5,'String'));
py3 = str2double(get(handles.y5,'String'));
pz3 = str2double(get(handles.z5,'String'));
slinea5 = [px3 py3 pz3]
% hObject    handle to punto5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in dibujo2.
function dibujo2_Callback(hObject, eventdata, handles)
global slinea2 slinea
a1 = slinea(1);
b1 = slinea(2);
c1 = slinea(3);
a2 = slinea2(1);
b2 = slinea2(2);
c2 = slinea2(3);
plot([a1 a2],[b1 b2],'r')
xlim([0 1850])
ylim([0 1750])
grid on;

function dibujo3_Callback(hObject, eventdata, handles)
global slinea2 slinea3
a1 = slinea2(1);
b1 = slinea2(2);
c1 = slinea2(3);
a2 = slinea3(1);
b2 = slinea3(2);
c2 = slinea3(3);
plot([a1 a2],[b1 b2],'r')
xlim([0 1850])
ylim([0 1750])
grid on;

function dibujo4_Callback(hObject, eventdata, handles)
global slinea3 slinea4
a1 = slinea3(1);
b1 = slinea3(2);
c1 = slinea3(3);
a2 = slinea4(1);
b2 = slinea4(2);
c2 = slinea4(3);
plot([a1 a2],[b1 b2],'r')
xlim([0 1850])
ylim([0 1750])
grid on;

function dibujo5_Callback(hObject, eventdata, handles)
global slinea4 slinea5
a1 = slinea4(1);
b1 = slinea4(2);
c1 = slinea4(3);
a2 = slinea5(1);
b2 = slinea5(2);
c2 = slinea5(3);
plot([a1 a2],[b1 b2],'r')
xlim([0 1850])
ylim([0 1750])
grid on;

function home_Callback(hObject, eventdata, handles)
global arduino
command = strcat('H')
fwrite(arduino,command);
fscanf(arduino);


% --- Executes on button press in atras.
function atras_Callback(hObject, eventdata, handles)
close(controletapas2);
RobotC;



function x1_Callback(hObject, eventdata, handles)
% hObject    handle to x1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x1 as text
%        str2double(get(hObject,'String')) returns contents of x1 as a double


% --- Executes during object creation, after setting all properties.
function x1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y1_Callback(hObject, eventdata, handles)
% hObject    handle to y1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y1 as text
%        str2double(get(hObject,'String')) returns contents of y1 as a double


% --- Executes during object creation, after setting all properties.
function y1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function z1_Callback(hObject, eventdata, handles)
% hObject    handle to z1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z1 as text
%        str2double(get(hObject,'String')) returns contents of z1 as a double


% --- Executes during object creation, after setting all properties.
function z1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x2_Callback(hObject, eventdata, handles)
% hObject    handle to x2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x2 as text
%        str2double(get(hObject,'String')) returns contents of x2 as a double


% --- Executes during object creation, after setting all properties.
function x2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y2_Callback(hObject, eventdata, handles)
% hObject    handle to y2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y2 as text
%        str2double(get(hObject,'String')) returns contents of y2 as a double


% --- Executes during object creation, after setting all properties.
function y2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function z2_Callback(hObject, eventdata, handles)
% hObject    handle to z2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z2 as text
%        str2double(get(hObject,'String')) returns contents of z2 as a double


% --- Executes during object creation, after setting all properties.
function z2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x3_Callback(hObject, eventdata, handles)
% hObject    handle to x3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x3 as text
%        str2double(get(hObject,'String')) returns contents of x3 as a double


% --- Executes during object creation, after setting all properties.
function x3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y3_Callback(hObject, eventdata, handles)
% hObject    handle to y3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y3 as text
%        str2double(get(hObject,'String')) returns contents of y3 as a double


% --- Executes during object creation, after setting all properties.
function y3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function z3_Callback(hObject, eventdata, handles)
% hObject    handle to z3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z3 as text
%        str2double(get(hObject,'String')) returns contents of z3 as a double


% --- Executes during object creation, after setting all properties.
function z3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x4_Callback(hObject, eventdata, handles)
% hObject    handle to x4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x4 as text
%        str2double(get(hObject,'String')) returns contents of x4 as a double


% --- Executes during object creation, after setting all properties.
function x4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y4_Callback(hObject, eventdata, handles)
% hObject    handle to y4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y4 as text
%        str2double(get(hObject,'String')) returns contents of y4 as a double


% --- Executes during object creation, after setting all properties.
function y4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function z4_Callback(hObject, eventdata, handles)
% hObject    handle to z4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z4 as text
%        str2double(get(hObject,'String')) returns contents of z4 as a double


% --- Executes during object creation, after setting all properties.
function z4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x5_Callback(hObject, eventdata, handles)
% hObject    handle to x5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x5 as text
%        str2double(get(hObject,'String')) returns contents of x5 as a double


% --- Executes during object creation, after setting all properties.
function x5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y5_Callback(hObject, eventdata, handles)
% hObject    handle to y5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y5 as text
%        str2double(get(hObject,'String')) returns contents of y5 as a double


% --- Executes during object creation, after setting all properties.
function y5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function z5_Callback(hObject, eventdata, handles)
% hObject    handle to z5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z5 as text
%        str2double(get(hObject,'String')) returns contents of z5 as a double


% --- Executes during object creation, after setting all properties.
function z5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
