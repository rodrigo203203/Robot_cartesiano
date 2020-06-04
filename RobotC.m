function varargout = RobotC(varargin)
% ROBOTC MATLAB code for RobotC.fig
%      ROBOTC, by itself, creates a new ROBOTC or raises the existing
%      singleton*.
%
%      H = ROBOTC returns the handle to a new ROBOTC or the handle to
%      the existing singleton*.
%
%      ROBOTC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROBOTC.M with the given input arguments.
%
%      ROBOTC('Property','Value',...) creates a new ROBOTC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RobotC_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RobotC_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RobotC

% Last Modified by GUIDE v2.5 06-Mar-2020 09:59:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RobotC_OpeningFcn, ...
                   'gui_OutputFcn',  @RobotC_OutputFcn, ...
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


% --- Executes just before RobotC is made visible.
function RobotC_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RobotC (see VARARGIN)

% Choose default command line output for RobotC
handles.output = hObject;
axes(handles.axes1);
[x,map] = imread('Fondo Gris.jpg');
image(x)
colormap(map);
axis off
hold on

axes(handles.axes2);
[x,map] = imread('Robot.JPG');
image(x)
colormap(map);
axis off
hold on

[a, map] = imread('Home.jpg');
[r,c,d] = size(a);
x = ceil(r/80);
y = ceil(c/80);
g = a(1:x:end, 1:y:end,:);
g(g==255) = 0.8*255;
set(handles.pushbutton1,'CData',g);

[a, map] = imread('Circulo.jpg');
[r,c,d] = size(a);
x = ceil(r/65);
y = ceil(c/95);
g = a(1:x:end, 1:y:end,:);
g(g==255) = 0.8*255;
set(handles.pushbutton2,'CData',g);

[a, map] = imread('Linea.jpg');
[r,c,d] = size(a);
x = ceil(r/70);
y = ceil(c/70);
g = a(1:x:end, 1:y:end,:);
g(g==255) = 0.8*255;
set(handles.pushbutton3,'CData',g);

[a, map] = imread('Test.jpeg');
[r,c,d] = size(a);
x = ceil(r/55);
y = ceil(c/55);
g = a(1:x:end, 1:y:end,:);
g(g==255) = 0.8*255;
set(handles.pushbutton5,'CData',g);

[a, map] = imread('Back.jpg');
[r,c,d] = size(a);
x = ceil(r/60);
y = ceil(c/75);
g = a(1:x:end, 1:y:end,:);
g(g==255) = 0.8*255;
set(handles.ExitAuto,'CData',g);

% x = imread('imagen1.jpg');
% y = imread('imagen2.jpg');
% axes(handles.axes1);
% p = 1;
% while p==1
%     imshow(x);
%     pause(1);
%     imshow(y);
%     pause(1)
% end

% Update handles structure
guidata(hObject, handles);

function varargout = RobotC_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

function pushbutton1_Callback(hObject, eventdata, handles)
global arduino
command  = strcat(('H'));
fwrite(arduino,command);
fscanf(arduino)

function pushbutton2_Callback(hObject, eventdata, handles)
close(RobotC);
Circulo;

function pushbutton3_Callback(hObject, eventdata, handles)
close(RobotC);
Linea;

function pushbutton5_Callback(hObject, eventdata, handles)
test;
close(RobotC);

function CtrlManual_Callback(hObject, eventdata, handles)
close(RobotC);
ControlManual;


% --- Executes on button press in ExitAuto.
function ExitAuto_Callback(hObject, eventdata, handles)
close(RobotC);
Welcome;
