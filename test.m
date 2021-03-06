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

% Last Modified by GUIDE v2.5 01-Jul-2020 14:42:49

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

p3x = 0;p4x = 800;p3y = 0;p4y = 0;p3z = 0;p4z = 980;it = 100;
currentX1 = 0;currentY1 = 0;currentZ1 = 0;
Dx = p4x - p3x;Dy = p4y - p3y;Dz = p4z - p3z;
for t = 0:it
    Px1=p3x+t*Dx/it;
    Py1=p3y+(t*((Dy)/it));
    Pz1=p3z+(t*((Dz)/it));
    diffX = Px1-currentX1;
    diffY = Py1-currentY1;
    diffZ = Pz1-currentZ1;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX1 = px1;
    currentY1 = Py1;
    currentZ1 = Pz1;
    fscanf(arduino);
end 
%paso2
pause(5);
p5x = 0;p6x = 300;p5y = 0;p6y = -200;p5z = 0;p6z = 0;it = 100;
currentX2 = 0;currentY2 = 0;currentZ2 = 0;
Dx = p6x - p5x;Dy = p6y - p5y;Dz = p6z - p5z;
for t = 0:it
    Px2=p5x+t*Dx/it;
    Py2=p5y+(t*((Dy)/it));
    Pz2=p5z+(t*((Dz)/it));
    diffX = Px2-currentX2;
    diffY = Py2-currentY2;
    diffZ = Pz2-currentZ2;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX2 = Px2;
    currentY2 = Py2;
    currentZ2 = Pz2;
    fscanf(arduino);
end 
%paso3
pause(5);
p7x = 0;p8x = 0;p7y = 0;p8y = -300;p7z = 0;p8z = 0;it = 100;
currentX3 = 0;currentY3 = 0;currentZ3 = 0;
Dx = p8x - p7x;Dy = p8y - p7y;Dz = p8z - p7z;
for t = 0:it
    Px3=p7x+t*Dx/it;
    Py3=p7y+(t*((Dy)/it));
    Pz3=p7z+(t*((Dz)/it));
    diffX = Px3-currentX3;
    diffY = Py3-currentY3;
    diffZ = Pz3-currentZ3;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX3 = Px3;
    currentY3 = Py3;
    currentZ3 = Pz3;
    fscanf(arduino);
end 
%paso4
pause(5);
p9x = 0;p10x = 200;p9y = 0;p10y = 300;p9z = 0;p10z = 0;it = 100;
currentX4 = 0;currentY4 = 0;currentZ4 = 0;
Dx = p10x - p9x;Dy = p10y - p9y;Dz = p10z - p9z;
for t = 0:it
    Px4=p9x+t*Dx/it;
    Py4=p9y+(t*((Dy)/it));
    Pz4=p9z+(t*((Dz)/it));
    diffX = Px4-currentX4;
    diffY = Py4-currentY4;
    diffZ = Pz4-currentZ4;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX4 = Px4;
    currentY4 = Py4;
    currentZ4 = Pz4;
    fscanf(arduino);
end 
%paso5
pause(5);
p11x = 0;p12x = 300;p11y = 0;p12y = -00;p11z = 0;p12z = 0;it = 100;
currentX5 = 0;currentY5 = 0;currentZ5 = 0;
Dx = p12x - p11x;Dy = p12y - p11y;Dz = p12z - p11z;
for t = 0:it
    Px5=p11x+t*Dx/it;
    Py5=p11y+(t*((Dy)/it));
    Pz5=p11z+(t*((Dz)/it));
    diffX = Px5-currentX5;
    diffY = Py5-currentY5;
    diffZ = Pz5-currentZ5;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX5 = Px5;
    currentY5 = Py5;
    currentZ5 = Pz5;
    fscanf(arduino);
end 
%paso6
pause(5);
p13x = 0;p14x = -200;p13y = 0;p14y = 300;p13z = 0;p14z = 0;it = 100;
currentX6 = 0;currentY6 = 0;currentZ6 = 0;
Dx = p14x - p13x;Dy = p14y - p13y;Dz = p14z - p13z;
for t = 0:it
    Px6=p13x+t*Dx/it;
    Py6=p13y+(t*((Dy)/it));
    Pz6=p13z+(t*((Dz)/it));
    diffX = Px6-currentX6;
    diffY = Py6-currentY6;
    diffZ = Pz6-currentZ6;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX6 = Px6;
    currentY6 = Py6;
    currentZ6 = Pz6;
    fscanf(arduino);
end 
%paso7
pause(5);
p15x = 0;p16x = 200;p15y = 0;p16y = 300;p15z = 0;p16z = 0;it = 100;
currentX7 = 0;currentY7 = 0;currentZ7 = 0;
Dx = p16x - p15x;Dy = p16y - p15y;Dz = p16z - p15z;
for t = 0:it
    Px7=p15x+t*Dx/it;
    Py7=p15y+(t*((Dy)/it));
    Pz7=p15z+(t*((Dz)/it));
    diffX = Px7-currentX7;
    diffY = Py7-currentY7;
    diffZ = Pz7-currentZ7;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX7 = Px7;
    currentY7 = Py7;
    currentZ7 = Pz7;
    fscanf(arduino);
end 
%paso8
pause(5);
p17x = 0;p18x = -300;p17y = 0;p18y = -100;p17z = 0;p18z = 0;it = 100;
currentX8 = 0;currentY8 = 0;currentZ8 = 0;
Dx = p18x - p17x;Dy = p18y - p17y;Dz = p18z - p17z;
for t = 0:it
    Px8=p17x+t*Dx/it;
    Py8=p17y+(t*((Dy)/it));
    Pz8=p17z+(t*((Dz)/it));
    diffX = Px8-currentX8;
    diffY = Py8-currentY8;
    diffZ = Pz8-currentZ8;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX8 = Px8;
    currentY8 = Py8;
    currentZ8 = Pz8;
    fscanf(arduino);
end 
%paso9
pause(5);
p19x = 0;p20x = -200;p19y = 0;p20y = 300;p19z = 0;p20z = 0;it = 100;
currentX9 = 0;currentY9 = 0;currentZ9 = 0;
Dx = p20x - p19x;Dy = p20y - p19y;Dz = p20z - p19z;
for t = 0:it
    Px9=p19x+t*Dx/it;
    Py9=p19y+(t*((Dy)/it));
    Pz9=p19z+(t*((Dz)/it));
    diffX = Px9-currentX9;
    diffY = Py9-currentY9;
    diffZ = Pz9-currentZ9;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX9 = Px9;
    currentY9 = Py9;
    currentZ9 = Pz9;
    fscanf(arduino);
end 
%paso10
pause(5);
p21x = 0;p22x = 0;p21y = 0;p22y = -300;p21z = 0;p22z = 0;it = 100;
currentX10 = 0;currentY10 = 0;currentZ10 = 0;
Dx = p22x - p21x;Dy = p22y - p21y;Dz = p22z - p21z;
for t = 0:it
    Px10=p21x+t*Dx/it;
    Py10=p21y+(t*((Dy)/it));
    Pz10=p21z+(t*((Dz)/it));
    diffX = Px10-currentX10;
    diffY = Py10-currentY10;
    diffZ = Pz10-currentZ10;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX10 = Px10;
    currentY10 = Py10;
    currentZ10 = Pz10;
    fscanf(arduino);
end 
%paso11
pause(5);
p23x = 0;p24x = -300;p23y = 0;p24y = -200;p23z = 0;p24z = 0;it = 100;
currentX11 = 0;currentY11 = 0;currentZ11 = 0;
Dx = p24x - p23x;Dy = p24y - p23y;Dz = p24z - p23z;
for t = 0:it
    Px11=p23x+t*Dx/it;
    Py11=p23y+(t*((Dy)/it));
    Pz11=p23z+(t*((Dz)/it));
    diffX = Px11-currentX11;
    diffY = Py11-currentY11;
    diffZ = Pz11-currentZ11;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX11 = Px11;
    currentY11 = Py11;
    currentZ11 = Pz11;
    fscanf(arduino);
end
%paso12
pause(5);
p25x = 0;p26x = 0;p25y = 0;p26y = 0;p25z = 0;p26z = -980;it = 100;
currentX12 = 0;currentY12 = 0;currentZ12 = 0;
Dx = p26x - p25x;Dy = p26y - p25y;Dz = p26z - p25z;
for t = 0:it
    Px12=p25x+t*Dx/it;
    Py12=p25y+(t*((Dy)/it));
    Pz12=p25z+(t*((Dz)/it));
    diffX = Px12-currentX12;
    diffY = Py12-currentY12;
    diffZ = Pz12-currentZ12;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX12 = Px12;
    currentY12 = Py12;
    currentZ12 = Pz12;
    fscanf(arduino);
end 





% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
controletapas2;
close(test);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
RobotC;
close(test);
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
