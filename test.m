function varargout = test(varargin)
% TEST MATLAB code for test.fig
%      TEST, by itself, creates a new TEST or raises the existing
%      singleton*.
%
%      H = TEST returns the handle to a new TEST or the handle to
%      the existing singleton*.
%
%      TEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST.M with the given input arguments.
%
%      TEST('Property','Value',...) creates a new TEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test

% Last Modified by GUIDE v2.5 16-Apr-2020 22:22:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test_OpeningFcn, ...
                   'gui_OutputFcn',  @test_OutputFcn, ...
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


% --- Executes just before test is made visible.
function test_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test (see VARARGIN)

% Choose default command line output for test
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes test wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global arduino 
%paso1
p1x = 0;p2x = 0;p1y = 0;p2y = 800;p1z = 0;p2z = 0;it = 100;
currentX = 0;currentY = 0;currentZ = 0;
Dx = p2x - p1x;Dy = p2y - p1y;Dz = p2z - p1z;
for t = 0:it
    Px=p1x+t*Dx/it;
    Py=p1y+(t*((Dy)/it));
    Pz=p1z+(t*((Dz)/it));
    diffX = Px-currentX
    diffY = Py-currentY;
    diffZ = Pz-currentZ;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX = Px;
    currentY = Py;
    currentZ = Pz;
    fscanf(arduino);
end 
pause(5);
%paso1.5
p1x = 0;p2x = 800;p1y = 0;p2y = 0;p1z = 0;p2z = 980;it = 100;
currentX = 0;currentY = 0;currentZ = 0;
Dx = p2x - p1x;Dy = p2y - p1y;Dz = p2z - p1z;
for t = 0:it
    Px=p1x+t*Dx/it;
    Py=p1y+(t*((Dy)/it));
    Pz=p1z+(t*((Dz)/it));
    diffX = Px-currentX
    diffY = Py-currentY;
    diffZ = Pz-currentZ;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX = Px;
    currentY = Py;
    currentZ = Pz;
    fscanf(arduino);
end 
%paso2
pause(5);
p1x = 0;p2x = 300;p1y = 0;p2y = -200;p1z = 0;p2z = 0;it = 100;
currentX = 0;currentY = 0;currentZ = 0;
Dx = p2x - p1x;Dy = p2y - p1y;Dz = p2z - p1z;
for t = 0:it
    Px=p1x+t*Dx/it;
    Py=p1y+(t*((Dy)/it));
    Pz=p1z+(t*((Dz)/it));
    diffX = Px-currentX
    diffY = Py-currentY;
    diffZ = Pz-currentZ;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX = Px;
    currentY = Py;
    currentZ = Pz;
    fscanf(arduino);
end 
%paso3
pause(5);
p1x = 0;p2x = 0;p1y = 0;p2y = -300;p1z = 0;p2z = 0;it = 100;
currentX = 0;currentY = 0;currentZ = 0;
Dx = p2x - p1x;Dy = p2y - p1y;Dz = p2z - p1z;
for t = 0:it
    Px=p1x+t*Dx/it;
    Py=p1y+(t*((Dy)/it));
    Pz=p1z+(t*((Dz)/it));
    diffX = Px-currentX
    diffY = Py-currentY;
    diffZ = Pz-currentZ;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX = Px;
    currentY = Py;
    currentZ = Pz;
    fscanf(arduino);
end 
%paso4
pause(5);
p1x = 0;p2x = 200;p1y = 0;p2y = 300;p1z = 0;p2z = 0;it = 100;
currentX = 0;currentY = 0;currentZ = 0;
Dx = p2x - p1x;Dy = p2y - p1y;Dz = p2z - p1z;
for t = 0:it
    Px=p1x+t*Dx/it;
    Py=p1y+(t*((Dy)/it));
    Pz=p1z+(t*((Dz)/it));
    diffX = Px-currentX
    diffY = Py-currentY;
    diffZ = Pz-currentZ;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX = Px;
    currentY = Py;
    currentZ = Pz;
    fscanf(arduino);
end 
%paso5
pause(5);
p1x = 0;p2x = 300;p1y = 0;p2y = -00;p1z = 0;p2z = 0;it = 100;
currentX = 0;currentY = 0;currentZ = 0;
Dx = p2x - p1x;Dy = p2y - p1y;Dz = p2z - p1z;
for t = 0:it
    Px=p1x+t*Dx/it;
    Py=p1y+(t*((Dy)/it));
    Pz=p1z+(t*((Dz)/it));
    diffX = Px-currentX
    diffY = Py-currentY;
    diffZ = Pz-currentZ;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX = Px;
    currentY = Py;
    currentZ = Pz;
    fscanf(arduino);
end 
%paso6
pause(5);
p1x = 0;p2x = -200;p1y = 0;p2y = 300;p1z = 0;p2z = 0;it = 100;
currentX = 0;currentY = 0;currentZ = 0;
Dx = p2x - p1x;Dy = p2y - p1y;Dz = p2z - p1z;
for t = 0:it
    Px=p1x+t*Dx/it;
    Py=p1y+(t*((Dy)/it));
    Pz=p1z+(t*((Dz)/it));
    diffX = Px-currentX
    diffY = Py-currentY;
    diffZ = Pz-currentZ;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX = Px;
    currentY = Py;
    currentZ = Pz;
    fscanf(arduino);
end 
%paso7
pause(5);
p1x = 0;p2x = 200;p1y = 0;p2y = 300;p1z = 0;p2z = 0;it = 100;
currentX = 0;currentY = 0;currentZ = 0;
Dx = p2x - p1x;Dy = p2y - p1y;Dz = p2z - p1z;
for t = 0:it
    Px=p1x+t*Dx/it;
    Py=p1y+(t*((Dy)/it));
    Pz=p1z+(t*((Dz)/it));
    diffX = Px-currentX
    diffY = Py-currentY;
    diffZ = Pz-currentZ;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX = Px;
    currentY = Py;
    currentZ = Pz;
    fscanf(arduino);
end 
%paso8
pause(5);
p1x = 0;p2x = -300;p1y = 0;p2y = -100;p1z = 0;p2z = 0;it = 100;
currentX = 0;currentY = 0;currentZ = 0;
Dx = p2x - p1x;Dy = p2y - p1y;Dz = p2z - p1z;
for t = 0:it
    Px=p1x+t*Dx/it;
    Py=p1y+(t*((Dy)/it));
    Pz=p1z+(t*((Dz)/it));
    diffX = Px-currentX
    diffY = Py-currentY;
    diffZ = Pz-currentZ;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX = Px;
    currentY = Py;
    currentZ = Pz;
    fscanf(arduino);
end 
%paso9
pause(5);
p1x = 0;p2x = -200;p1y = 0;p2y = 300;p1z = 0;p2z = 0;it = 100;
currentX = 0;currentY = 0;currentZ = 0;
Dx = p2x - p1x;Dy = p2y - p1y;Dz = p2z - p1z;
for t = 0:it
    Px=p1x+t*Dx/it;
    Py=p1y+(t*((Dy)/it));
    Pz=p1z+(t*((Dz)/it));
    diffX = Px-currentX
    diffY = Py-currentY;
    diffZ = Pz-currentZ;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX = Px;
    currentY = Py;
    currentZ = Pz;
    fscanf(arduino);
end 
%paso10
pause(5);
p1x = 0;p2x = 0;p1y = 0;p2y = -300;p1z = 0;p2z = 0;it = 100;
currentX = 0;currentY = 0;currentZ = 0;
Dx = p2x - p1x;Dy = p2y - p1y;Dz = p2z - p1z;
for t = 0:it
    Px=p1x+t*Dx/it;
    Py=p1y+(t*((Dy)/it));
    Pz=p1z+(t*((Dz)/it));
    diffX = Px-currentX
    diffY = Py-currentY;
    diffZ = Pz-currentZ;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX = Px;
    currentY = Py;
    currentZ = Pz;
    fscanf(arduino);
end 
%paso11
pause(5);
p1x = 0;p2x = -300;p1y = 0;p2y = -200;p1z = 0;p2z = 0;it = 100;
currentX = 0;currentY = 0;currentZ = 0;
Dx = p2x - p1x;Dy = p2y - p1y;Dz = p2z - p1z;
for t = 0:it
    Px=p1x+t*Dx/it;
    Py=p1y+(t*((Dy)/it));
    Pz=p1z+(t*((Dz)/it));
    diffX = Px-currentX
    diffY = Py-currentY;
    diffZ = Pz-currentZ;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX = Px;
    currentY = Py;
    currentZ = Pz;
    fscanf(arduino);
end
%paso12
pause(5);
p1x = 0;p2x = 0;p1y = 0;p2y = 0;p1z = 0;p2z = -980;it = 100;
currentX = 0;currentY = 0;currentZ = 0;
Dx = p2x - p1x;Dy = p2y - p1y;Dz = p2z - p1z;
for t = 0:it
    Px=p1x+t*Dx/it;
    Py=p1y+(t*((Dy)/it));
    Pz=p1z+(t*((Dz)/it));
    diffX = Px-currentX
    diffY = Py-currentY;
    diffZ = Pz-currentZ;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX = Px;
    currentY = Py;
    currentZ = Pz;
    fscanf(arduino);
end 





% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
Control_etapas;
close(test);
