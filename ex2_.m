function varargout = ex2_(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ex2__OpeningFcn, ...
                   'gui_OutputFcn',  @ex2__OutputFcn, ...
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


% --- Executes just before tucker is made visible.
function ex2__OpeningFcn(hObject, eventdata, handles, varargin)
setGlobalM(0);

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = ex2__OutputFcn(hObject, eventdata, handles) 
% Get default command line output from handles structure
varargout{1} = handles.output;



function A_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function A_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function B_Callback(hObject, eventdata, handles)

function B_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function beg_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function beg_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function en_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function en_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function NumOfVal_Callback(hObject, eventdata, handles)



% --- Executes during object creation, after setting all properties.
function NumOfVal_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnPlot.
function btnPlot_Callback(hObject, eventdata, handles)
cla;
Str1 = get(handles.A, 'string');
a = str2double(Str1);
Str2 = get(handles.B, 'string');
b = str2double(Str2);
Str3 = get(handles.beg, 'string');
begin_ = str2double(Str3);
Str4 = get(handles.en, 'string');
end_ = str2double(Str4);
Str5 = get(handles.NumOfVal, 'string');
v = str2double(Str5);

if Str1 ~= "" && Str2 ~= "" && Str3 ~= "" && Str4 ~= "" && Str5 ~= ""
    d = (end_ - begin_) / (v - 1);
    x = begin_ : d : end_;
    y = sin(x) + a .* cos(x) .^ b; 
    % Формулу уточнить, операторы с точками умножают матрицы поэлементно

    switch getGlobalM
        case 0
            cla; % графики удаляются из других окон
            axes(handles.axes1); % график ограничивается в одном окне
            plot(x, y, 'Marker','.');
        case 1
            cla; 
            axes(handles.axes2);
            plot(x, y, 'Marker','.');
            camroll(90); % поворот графика на 90 градусов
        case 2
            cla; 
            axes(handles.axes3);
            plot(x, y, 'Marker','.');
            camroll(180);
        case 3
            cla; 
            axes(handles.axes4);
            plot(x, y, 'Marker','.');
            camroll(270);
    end
    guidata(gcbo, handles);

    set(handles.btnClear, 'enable', 'on'); % кнопку очистить делаем доступной
    set(handles.mnClear, 'enable', 'on');
else
    msgbox("Не все поля в 'Параметрах' заполнены.","Ошибка");
    % если хоть один параметр не заполнен, выходит ошибка
end


% --- Executes on button press in btn1.
function btn1_Callback(hObject, eventdata, handles)
set(handles.A, "String", 1);
set(handles.B, "String", 5);
set(handles.beg, "String", 0);
set(handles.en, "String", 10);
set(handles.NumOfVal, "String", 10);



% --- Executes on button press in btnClear.
function btnClear_Callback(hObject, eventdata, handles)
% очищаем график
cla;

% свойства доступности к кнопке
set(handles.btnClear, 'enable', 'off');
set(handles.mnClear, 'enable', 'off');

% очищаем строки параметров
set(handles.A, "String", "");
set(handles.B, "String", "");
set(handles.beg, "String", "");
set(handles.en, "String", "");
set(handles.NumOfVal, "String", "");


% --- Executes on button press in btn2.
function btn2_Callback(hObject, eventdata, handles)
set(handles.A, "String", 17);
set(handles.B, "String", 55);
set(handles.beg, "String", 10);
set(handles.en, "String", 65);
set(handles.NumOfVal, "String", 50);



% --- Executes on button press in btnLeft.
function btnLeft_Callback(hObject, eventdata, handles)
if(getGlobalM == 0)
    setGlobalM(3);
else
    setGlobalM(getGlobalM - 1);
end
btnPlot_Callback(hObject, eventdata, handles)

% --- Executes on button press in btnRight.
function btnRight_Callback(hObject, eventdata, handles)
if(getGlobalM == 3)
    setGlobalM(0);
else
    setGlobalM(getGlobalM + 1);
end
btnPlot_Callback(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function setGlobalM(val) % marks 1
global M
M = val;

function r = getGlobalM
global M
r = M;


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnPlot_Callback(hObject, eventdata, handles)
btnPlot_Callback(hObject, eventdata, handles)


% --------------------------------------------------------------------
function mnClear_Callback(hObject, eventdata, handles)
btnClear_Callback(hObject, eventdata, handles)


% --------------------------------------------------------------------
function mnBtn1_Callback(hObject, eventdata, handles)
btn1_Callback(hObject, eventdata, handles)


% --------------------------------------------------------------------
function mnBtn2_Callback(hObject, eventdata, handles)
btn2_Callback(hObject, eventdata, handles)
