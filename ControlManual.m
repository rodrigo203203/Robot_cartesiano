function varargout = ControlManual(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ControlManual_OpeningFcn, ...
                   'gui_OutputFcn',  @ControlManual_OutputFcn, ...
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

function ControlManual_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
axes(handles.axes1);
[x,map] = imread('FondoCtrlManual.jpg');
image(x)
colormap(map);
axis off
hold on


[a, map] = imread('Arriba.JPG');
[r,c,d] = size(a);
x = ceil(r/80);
y = ceil(c/80);
g = a(1:x:end, 1:y:end,:);
g(g==255) = 0.8*255;
set(handles.Up,'CData',g);

[a, map] = imread('Abajo.JPG');
[r,c,d] = size(a);
x = ceil(r/80);
y = ceil(c/80);
g = a(1:x:end, 1:y:end,:);
g(g==255) = 0.8*255;
set(handles.Down,'CData',g);

[a, map] = imread('Izquierda.JPG');
[r,c,d] = size(a);
x = ceil(r/80);
y = ceil(c/80);
g = a(1:x:end, 1:y:end,:);
g(g==255) = 0.8*255;
set(handles.Left,'CData',g);

[a, map] = imread('Derecha.JPG');
[r,c,d] = size(a);
x = ceil(r/80);
y = ceil(c/80);
g = a(1:x:end, 1:y:end,:);
g(g==255) = 0.8*255;
set(handles.Right,'CData',g);

[a, map] = imread('Subir.JPG');
[r,c,d] = size(a);
x = ceil(r/120);
y = ceil(c/80);
g = a(1:x:end, 1:y:end,:);
g(g==255) = 0.8*255;
set(handles.Subir,'CData',g);

[a, map] = imread('Bajar.JPG');
[r,c,d] = size(a);
x = ceil(r/120);
y = ceil(c/80);
g = a(1:x:end, 1:y:end,:);
g(g==255) = 0.8*255;
set(handles.Bajar,'CData',g);

[a, map] = imread('Back.jpg');
[r,c,d] = size(a);
x = ceil(r/80);
y = ceil(c/80);
g = a(1:x:end, 1:y:end,:);
g(g==255) = 0.8*255;
set(handles.Exit,'CData',g);
guidata(hObject, handles);

function varargout = ControlManual_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function Up_Callback(hObject, eventdata, handles)
global a
persistent count
count = str2double(get(handles.StaticText1, 'String'));
if isempty(count);
    count = 0
end
count = count + a;
x = sprintf('%d', count);
set(handles.StaticText1, 'String', x);
guidata(hObject, handles);
f = true;
delete(instrfind({'Port'},{'/dev/cu.usbmodem14201'}));
arduino = serial('/dev/cu.usbmodem14201', 'BaudRate', 9600,'Terminator','CR/LF');
fopen(arduino);
command  = strcat(('x'))
fwrite(arduino,command);
fscanf(arduino)

function Down_Callback(hObject, eventdata, handles)
global a
ValorX = str2double(get(handles.StaticText1, 'String'));
while (ValorX > 0)
persistent Valor
Valor = str2double(get(handles.StaticText1, 'String'));
if isempty(Valor);
    Valor = 0
end
Valor = Valor - a;
xN = sprintf('%d', Valor);
set(handles.StaticText1, 'String', xN);
end
set(handles.StaticText1, 'String', '0');
guidata(hObject, handles);

function Left_Callback(hObject, eventdata, handles)
global a
ValorY = str2double(get(handles.StaticText2, 'String'));
while (ValorY > 0)
persistent Valor
Valor = str2double(get(handles.StaticText2, 'String'));
if isempty(Valor);
    Valor = 0
end
Valor = Valor - a;
yN = sprintf('%d', Valor);
set(handles.StaticText2, 'String', yN);
end
set(handles.StaticText2, 'String', '0');
guidata(hObject, handles);
f = true;
delete(instrfind({'Port'},{'/dev/cu.usbmodem14201'}));
arduino = serial('/dev/cu.usbmodem14201', 'BaudRate', 9600,'Terminator','CR/LF');
fopen(arduino);
command  = strcat(('y'))
fwrite(arduino,command);
fscanf(arduino)

function Right_Callback(hObject, eventdata, handles)
global a
persistent count
count = str2double(get(handles.StaticText2, 'String'));
if isempty(count);
    count = 0
end
count = count + a;
y = sprintf('%d', count);
set(handles.StaticText2, 'String', y);
guidata(hObject, handles);
f = true;
delete(instrfind({'Port'},{'/dev/cu.usbmodem14201'}));
arduino = serial('/dev/cu.usbmodem14201', 'BaudRate', 9600,'Terminator','CR/LF');
fopen(arduino);
command  = strcat(('Y'))
fwrite(arduino,command);
fscanf(arduino)

function pushbutton6_Callback(hObject, eventdata, handles)

function pushbutton6_ButtonDownFcn(hObject, eventdata, handles)

function Subir_Callback(hObject, eventdata, handles)
global a
ValorZ = str2double(get(handles.StaticText3, 'String'));
while(ValorZ < 0)
persistent Valor
Valor = str2double(get(handles.StaticText3, 'String'));
if isempty(Valor);
    Valor = 0
end
Valor = Valor + a;
zN = sprintf('%d', Valor);
set(handles.StaticText3, 'String', zN);
end
set(handles.StaticText3, 'String', '0');
guidata(hObject, handles);
f = true;
delete(instrfind({'Port'},{'/dev/cu.usbmodem14201'}));
arduino = serial('/dev/cu.usbmodem14201', 'BaudRate', 9600,'Terminator','CR/LF');
fopen(arduino);
command  = strcat(('z'))
fwrite(arduino,command);
fscanf(arduino)

function Bajar_Callback(hObject, eventdata, handles)
global a
persistent count
count = str2double(get(handles.StaticText3, 'String'));
if isempty(count);
    count = 0
end
count = count - a;
z = sprintf('%d', count);
set(handles.StaticText3, 'String', z);
guidata(hObject, handles);
f = true;
delete(instrfind({'Port'},{'/dev/cu.usbmodem14201'}));
arduino = serial('/dev/cu.usbmodem14201', 'BaudRate', 9600,'Terminator','CR/LF');
fopen(arduino);
command  = strcat(('Z'))
fwrite(arduino,command);
fscanf(arduino)

function Exit_Callback(hObject, eventdata, handles)
close(ControlManual);
Welcome;

function SuperiorIzquierdo_Callback(hObject, eventdata, handles)

function SuperiorDerecho_Callback(hObject, eventdata, handles)

function InferiorIzquierdo_Callback(hObject, eventdata, handles)

function InferiorDerecho_Callback(hObject, eventdata, handles)

function StaticText1_CreateFcn(hObject, eventdata, handles)
guidata(hObject, handles);

function pushbutton15_Callback(hObject, eventdata, handles)

function pushbutton16_Callback(hObject, eventdata, handles)

function pushbutton17_Callback(hObject, eventdata, handles)

function pushbutton18_Callback(hObject, eventdata, handles)

function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
global a
a = 0;
Option = get(hObject, 'String');
switch Option
    case '1[mm]'
        a = 1;
    case'10[mm]'
        a = 10;
    case '20[mm]'
        a = 20;
end
        


% --------------------------------------------------------------------
function uibuttongroup1_ButtonDownFcn(hObject, eventdata, handles)

