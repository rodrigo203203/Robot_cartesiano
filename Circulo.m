function varargout = Circulo(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Circulo_OpeningFcn, ...
                   'gui_OutputFcn',  @Circulo_OutputFcn, ...
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


% --- Executes just before Circulo is made visible.
function Circulo_OpeningFcn(hObject, eventdata, handles, varargin)
%% C?digo Fondo interfaz
handles.output = hObject;
axes(handles.axes2);
[x,map] = imread('FondoCirculo.jpg');
image(x)
colormap(map);
axis off
hold on

[a, map] = imread('Atras.jpg');
[r,c,d] = size(a);
x = ceil(r/56);
y = ceil(c/88);
g = a(1:x:end, 1:y:end,:);
g(g==255) = 0.8*255;
set(handles.ExitCircle,'CData',g);

[a, map] = imread('Ejecutar.png');
[r,c,d] = size(a);
x = ceil(r/75);
y = ceil(c/88);
g = a(1:x:end, 1:y:end,:);
g(g==255) = 0.8*255;
set(handles.Ejecutar,'CData',g);
guidata(hObject, handles);

function varargout = Circulo_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function C1_Callback(hObject, eventdata, handles)
Valor = str2num(get(hObject, 'String'));
if (Valor >=0 && Valor <=400);
    set(handles.slider1, 'Value', Valor);
else
    AvisoError;
end
guidata(hObject, handles);

function C1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function C2_Callback(hObject, eventdata, handles)
Valor = str2num(get(hObject, 'String'));
if (Valor >=0 && Valor <=400);
    set(handles.slider2, 'Value', Valor);
else
    AvisoError;
end
guidata(hObject, handles);

function C2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C3_Callback(hObject, eventdata, handles)
Valor = str2num(get(hObject, 'String'));
if (Valor >=0 && Valor <=400);
    set(handles.slider3, 'Value', Valor);
else
    AvisoError;
end
guidata(hObject, handles);

function C3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function ExitCircle_Callback(hObject, eventdata, handles)
close(Circulo);
RobotC;

function Ejecutar_Callback(hObject, eventdata, handles)
p1x = str2double(get(handles.C1,'String'));
p2x = str2double(get(handles.C4,'String'));
p3x = str2double(get(handles.C7,'String'));
p1y = str2double(get(handles.C2,'String'));
p2y = str2double(get(handles.C5,'String'));
p3y = str2double(get(handles.C8,'String'));
p1z = str2double(get(handles.C3,'String'));
p2z = str2double(get(handles.C6,'String'));
p3z = str2double(get(handles.C9,'String'));
it = str2double(get(handles.It,'String'));
currentX = 0;
currentY = 0;
currentZ = 0;
syms A B C
global arduino
eq1 = [p1x^2 + p1y^2 + A*p1x + B*p1x + C == 0,p2x^2 + p2y^2 + A*p2x + B*p2x + C == 0,p3x^2 + p3y^2 + A*p3x + B*p3x + C == 0];
S = solve(eq1, [A B C])
Ar = double(A);
Br = double(B);
Cr = double(C);
r = sqrt((Ar/2)^2 + (Br/2)^2 - Cr);
for t=0:pi/it:2*pi
    Px = -(Ar/2) + r*cos(t)   %aqu? pones tus ecuaciones de X
    Py = -(Br/2) + r*sin(t)   %aqu? pones tus ecuaciones de Y
    Pz = p1z;                    %aqu? pones tus ecuaciones de Z, de nosotros es solo un numero porque siempre baja a la misma distancia
    diffX = Px-currentX;
    diffY = Py-currentY;
    diffZ = Pz-currentZ;
    command  = strcat(int2str(diffX),',',int2str(diffY),',',int2str(diffZ),',')
    fwrite(arduino,command);
    currentX = Px;
    currentY = Py;
    currentZ = Pz;
    fscanf(arduino)
end



function C4_Callback(hObject, eventdata, handles)
Valor = str2num(get(hObject, 'String'));
if (Valor >=0 && Valor <=400);
    set(handles.slider4, 'Value', Valor);
else
    AvisoError;
end
guidata(hObject, handles);

function C4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C7_Callback(hObject, eventdata, handles)
Valor = str2num(get(hObject, 'String'));
if (Valor >=0 && Valor <=400);
    set(handles.slider7, 'Value', Valor);
else
    AvisoError;
end
guidata(hObject, handles);

function C7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C5_Callback(hObject, eventdata, handles)
Valor = str2num(get(hObject, 'String'));
if (Valor >=0 && Valor <=400);
    set(handles.slider5, 'Value', Valor);
else
    AvisoError;
end
guidata(hObject, handles);

function C5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function C8_Callback(hObject, eventdata, handles)
Valor = str2num(get(hObject, 'String'));
if (Valor >=0 && Valor <=400);
    set(handles.slider8, 'Value', Valor);
else
    AvisoError;
end
guidata(hObject, handles);

function C8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C6_Callback(hObject, eventdata, handles)
Valor = str2num(get(hObject, 'String'));
if (Valor >=0 && Valor <=400);
    set(handles.slider6, 'Value', Valor);
else
    AvisoError;
end
guidata(hObject, handles);

function C6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function C9_Callback(hObject, eventdata, handles)
Valor = str2num(get(hObject, 'String'));
if (Valor >=0 && Valor <=400);
    set(handles.slider9, 'Value', Valor);
else
    AvisoError;
end
guidata(hObject, handles);

function C9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function slider1_Callback(hObject, eventdata, handles)
Valor = get(hObject, 'Value');
if (Valor <= 400 && Valor >= 0);
set(handles.C1, 'String', num2str(Valor));
else
    disp('El valor esta fuera de rango!');
end
guidata(hObject, handles);

function slider1_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider2_Callback(hObject, eventdata, handles)
Valor = get(hObject, 'Value');
if (Valor <= 400 && Valor >= 0);
set(handles.C2, 'String', num2str(Valor));
else
    disp('El valor esta fuera de rango!');
end
guidata(hObject, handles);

function slider2_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider3_Callback(hObject, eventdata, handles)
Valor = get(hObject, 'Value');
if (Valor <= 400 && Valor >= 0);
set(handles.C3, 'String', num2str(Valor));
else
    disp('El valor esta fuera de rango!');
end
guidata(hObject, handles);

function slider3_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider4_Callback(hObject, eventdata, handles)
Valor = get(hObject, 'Value');
if (Valor <= 400 && Valor >= 0);
set(handles.C4, 'String', num2str(Valor));
else
    disp('El valor esta fuera de rango!');
end
guidata(hObject, handles);

function slider4_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider5_Callback(hObject, eventdata, handles)
Valor = get(hObject, 'Value');
if (Valor <= 400 && Valor >= 0);
set(handles.C5, 'String', num2str(Valor));
else
    disp('El valor esta fuera de rango!');
end
guidata(hObject, handles);

function slider5_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider6_Callback(hObject, eventdata, handles)
Valor = get(hObject, 'Value');
if (Valor <= 400 && Valor >= 0);
set(handles.C6, 'String', num2str(Valor));
else
    disp('El valor esta fuera de rango!');
end
guidata(hObject, handles);

function slider6_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider7_Callback(hObject, eventdata, handles)
Valor = get(hObject, 'Value');
if (Valor <= 400 && Valor >= 0);
set(handles.C7, 'String', num2str(Valor));
set(handles.text18, 'String', num2str(Valor));
else
    disp('El valor esta fuera de rango!');
end
guidata(hObject, handles);

function slider7_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider8_Callback(hObject, eventdata, handles)
Valor = get(hObject, 'Value');
if (Valor <= 400 && Valor >= 0);
set(handles.C8, 'String', num2str(Valor));
set(handles.text19, 'String', num2str(Valor));
else
    disp('El valor esta fuera de rango!');
end
guidata(hObject, handles);

function slider8_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider9_Callback(hObject, eventdata, handles)
Valor = get(hObject, 'Value');
if (Valor <= 400 && Valor >= 0);
set(handles.C9, 'String', num2str(Valor));
set(handles.text20, 'String', num2str(Valor));
else
    disp('El valor esta fuera de rango!');
end
guidata(hObject, handles);

function slider9_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function It_Callback(hObject, eventdata, handles)
guidata(hObject, handles);

function It_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
