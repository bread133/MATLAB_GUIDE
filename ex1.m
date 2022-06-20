function varargout = ex1(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ex1_OpeningFcn, ...
                   'gui_OutputFcn',  @ex1_OutputFcn, ...
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
function ex1_OpeningFcn(hObject, eventdata, handles, varargin)
setGlobalM1(1);
setGlobalC1(1);

setGlobalM2(2);
setGlobalC2(2);

setGlobalM3(3);
setGlobalC3(3);

setGlobalB(0);
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tucker (see VARARGIN)

% Choose default command line output for tucker
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes tucker wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ex1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function A_Callback(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A as text
%        str2double(get(hObject,'String')) returns contents of A as a double


% --- Executes during object creation, after setting all properties.
function A_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function B_Callback(hObject, eventdata, handles)
% hObject    handle to B (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of B as text
%        str2double(get(hObject,'String')) returns contents of B as a double


% --- Executes during object creation, after setting all properties.
function B_CreateFcn(hObject, eventdata, handles)
% hObject    handle to B (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function beg_Callback(hObject, eventdata, handles)
% hObject    handle to beg (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of beg as text
%        str2double(get(hObject,'String')) returns contents of beg as a double


% --- Executes during object creation, after setting all properties.
function beg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to beg (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function en_Callback(hObject, eventdata, handles)
% hObject    handle to en (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of en as text
%        str2double(get(hObject,'String')) returns contents of en as a double


% --- Executes during object creation, after setting all properties.
function en_CreateFcn(hObject, eventdata, handles)
% hObject    handle to en (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function NumOfVal_Callback(hObject, eventdata, handles)
% hObject    handle to NumOfVal (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NumOfVal as text
%        str2double(get(hObject,'String')) returns contents of NumOfVal as a double


% --- Executes during object creation, after setting all properties.
function NumOfVal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NumOfVal (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
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
    setGlobalB(1);

    diap = (end_ - begin_) / v;
    sum = (end_ - begin_)/ 3;

    x1 = begin_:diap:begin_ + sum;
    x2 = x1(length(x1)):diap: begin_ + sum * 2;
    x3 = x2(length(x2)):diap:end_;

    y1 = a .* sin(x1) + cos(b ./ x1) .^ 2;
    y2 = a .* sin(x2) + cos(b ./ x2) .^ 2;
    y3 = a .* sin(x3) + cos(b ./ x3) .^ 2;

    hold on
    handles.Line1 = plot(x1, y1);
    choose(getGlobalM1, getGlobalC1, handles.Line1)

    handles.Line2 = plot(x2, y2);
    choose(getGlobalM2, getGlobalC2, handles.Line2)
   
    handles.Line3 = plot(x3, y3);
    choose(getGlobalM3, getGlobalC3, handles.Line3)
  
    guidata(gcbo, handles);

    set(handles.btnClear, 'enable', 'on');
    set(handles.mnClear, 'enable', 'on');
else
    msgbox("Не все поля в панели 'Параметры' заполнены.","Ошибка","error");
end
% hObject    handle to btnPlot (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn1.
function btn1_Callback(hObject, eventdata, handles)
set(handles.A, "String", 1);
set(handles.B, "String", 0);
set(handles.beg, "String", 0);
set(handles.en, "String", 10);
set(handles.NumOfVal, "String", 20);
% hObject    handle to btn1 (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnClear.
function btnClear_Callback(hObject, eventdata, handles)
setGlobalB(0);

% очищаем график
cla;

% свойства доступности
set(handles.btnClear, 'enable', 'off');
set(handles.mnClear, 'enable', 'off');

% очищаем строки параметров
set(handles.A, "String", "");
set(handles.B, "String", "");
set(handles.beg, "String", "");
set(handles.en, "String", "");
set(handles.NumOfVal, "String", "");
% hObject    handle to btnClear (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn2.
function btn2_Callback(hObject, eventdata, handles)
set(handles.A, "String", -18);
set(handles.B, "String", 26);
set(handles.beg, "String", 12);
set(handles.en, "String", 55);
set(handles.NumOfVal, "String", 100);
% hObject    handle to btn2 (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in Marks2.
function Marks2_Callback(hObject, eventdata, handles)
Num = get(hObject, 'Value');
if Num ~= getGlobalM1 && Num ~= getGlobalM3
    setGlobalM2(Num)
    Element = [handles.mnM2_1, handles.mnM2_2, handles.mnM2_3, handles.mnM2_4, handles.mnM2_5, handles.mnM2_6, handles.mnM2_7];
    Recheked(Element, Num)
    if getGlobalB == 1
        btnPlot_Callback(hObject, eventdata, handles);
    end
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
    set(hObject, 'Value', getGlobalM2);
end
% hObject    handle to Marks2 (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


function Marks2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Marks1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Color2.
function Color2_Callback(hObject, eventdata, handles)
Num = get(hObject, 'Value');
if Num ~= getGlobalC1 && Num ~= getGlobalC3
    setGlobalC2(Num)
    Element = [handles.mnC2_1, handles.mnC2_2, handles.mnC2_3, handles.mnC2_4, handles.mnC2_5, handles.mnC2_6, handles.mnC2_7];
    Recheked(Element, Num)
    if getGlobalB == 1
        btnPlot_Callback(hObject, eventdata, handles);
    end
else
    msgbox("Нельзя выбрать тот же цвет, что и в другом графике.","Ошибка","error");
    set(hObject, 'Value', getGlobalC2);
end
% hObject    handle to Color2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Color2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Color2


% --- Executes during object creation, after setting all properties.
function Color2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Color2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.


% Hints: contents = cellstr(get(hObject,'String')) returns Marks2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Marks2
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on selection change in Marks1.
function Marks1_Callback(hObject, eventdata, handles)
Num = get(hObject, 'Value');
if Num ~= getGlobalM2 && Num ~= getGlobalM3
    setGlobalM1(Num)
    Element = [handles.mnM1_1, handles.mnM1_2, handles.mnM1_3, handles.mnM1_4, handles.mnM1_5, handles.mnM1_6, handles.mnM1_7];
    Recheked(Element, Num)
    if getGlobalB == 1
        btnPlot_Callback(hObject, eventdata, handles);
    end
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
    set(hObject, 'Value', getGlobalM1);
end
% hObject    handle to Marks1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Marks1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Marks1


% --- Executes during object creation, after setting all properties.
function Marks1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Marks1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Color1.
function Color1_Callback(hObject, eventdata, handles)
Num = get(hObject, 'Value');
if Num ~= getGlobalC2 && Num ~= getGlobalC3
    setGlobalC1(Num)
    Element = [handles.mnC1_1, handles.mnC1_2, handles.mnC1_3, handles.mnC1_4, handles.mnC1_5, handles.mnC1_6, handles.mnC1_7];
    Recheked(Element, Num);
    if getGlobalB == 1
        btnPlot_Callback(hObject, eventdata, handles);
    end
else
    msgbox("Нельзя выбрать тот же цвет, что и в другом графике.","Ошибка","error");
    set(hObject, 'Value', getGlobalC1);
end
% hObject    handle to Color1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Color1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Color1


% --- Executes during object creation, after setting all properties.
function Color1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Color1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Marks3.
function Marks3_Callback(hObject, eventdata, handles)
Num = get(hObject, 'Value');
if Num ~= getGlobalM1 && Num ~= getGlobalM2
    setGlobalM3(Num);
        Element = [handles.mnM3_1, handles.mnM3_2, handles.mnM3_3, handles.mnM3_4, handles.mnM3_5, handles.mnM3_6, handles.mnM3_7];
    Recheked(Element, Num)
    if getGlobalB == 1
        btnPlot_Callback(hObject, eventdata, handles);
    end
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
    set(hObject, 'Value', getGlobalM3);
end
% hObject    handle to Marks3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Marks3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Marks3


% --- Executes during object creation, after setting all properties.
function Marks3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Marks3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Color3.
function Color3_Callback(hObject, eventdata, handles)
Num = get(hObject, 'Value');
if Num ~= getGlobalC1 && Num ~= getGlobalC2
    setGlobalC3(Num)
    Element = [handles.mnC3_1, handles.mnC3_2, handles.mnC3_3, handles.mnC3_4, handles.mnC3_5, handles.mnC3_6, handles.mnC3_7];
    Recheked(Element, Num);
    if getGlobalB == 1
        btnPlot_Callback(hObject, eventdata, handles);
    end
else
    msgbox("Нельзя выбрать тот же цвет, что и в другом графике.","Ошибка","error");
    set(hObject, 'Value', getGlobalC3);
end
% hObject    handle to Color3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Color3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Color3


% --- Executes during object creation, after setting all properties.
function Color3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Color3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function setGlobalM1(val) % marks 1
global M1
M1 = val;

function setGlobalC1(val) % color 1
global C1
C1 = val;

function r = getGlobalM1
global M1
r = M1;

function r = getGlobalC1
global C1
r = C1;

function setGlobalM2(val) % marks 2
global M2
M2 = val;

function setGlobalC2(val) % color 2
global C2
C2 = val;

function r = getGlobalM2
global M2
r = M2;

function r = getGlobalC2
global C2
r = C2;

function setGlobalM3(val) % marks 3
global M3
M3 = val;

function setGlobalC3(val) % color 3
global C3
C3 = val;

function r = getGlobalM3
global M3
r = M3;

function r = getGlobalC3
global C3
r = C3;

function setGlobalB(val) % bool
global B
B = val;

function r = getGlobalB
global B
r = B;

function choose(M, C, Line)
    switch M
        case 1
            set(Line, 'Marker', 'o');
        case 2
            set(Line, 'Marker', '^');
        case 3
            set(Line, 'Marker', 's');
        case 4  
            set(Line, 'Marker', 'p');
        case 5
            set(Line, 'Marker', 'h');
        case 6
            set(Line, 'Marker', 'd');
        case 7
            set(Line, 'Marker', '.');
    end

    switch C
        case 1
            set(Line, 'Color', 'red');
        case 2
            set(Line, 'Color', [0.8000 0.4250 0.0380]);
        case 3
            set(Line, 'Color', 'y');
        case 4
            set(Line, 'Color', 'g');
        case 5
            set(Line, 'Color', 'cyan');
        case 6
            set(Line, 'Color', 'blue');
        case 7
            set(Line, 'Color', 'magenta');
    end

% Заранее создается массив Element
function Recheked(Element, Num)
switch Num
    case 1
        set(Element(1), 'Checked', 'on')
        set(Element(2), 'Checked', 'off')
        set(Element(3), 'Checked', 'off')
        set(Element(4), 'Checked', 'off')
        set(Element(5), 'Checked', 'off')
        set(Element(6), 'Checked', 'off')
        set(Element(7), 'Checked', 'off')
    case 2
        set(Element(1), 'Checked', 'off')
        set(Element(2), 'Checked', 'on')
        set(Element(3), 'Checked', 'off')
        set(Element(4), 'Checked', 'off')
        set(Element(5), 'Checked', 'off')
        set(Element(6), 'Checked', 'off')
        set(Element(7), 'Checked', 'off')
    case 3
        set(Element(1), 'Checked', 'off')
        set(Element(2), 'Checked', 'off')
        set(Element(3), 'Checked', 'on')
        set(Element(4), 'Checked', 'off')
        set(Element(5), 'Checked', 'off')
        set(Element(6), 'Checked', 'off')
        set(Element(7), 'Checked', 'off')
    case 4
        set(Element(1), 'Checked', 'off')
        set(Element(2), 'Checked', 'off')
        set(Element(3), 'Checked', 'off')
        set(Element(4), 'Checked', 'on')
        set(Element(5), 'Checked', 'off')
        set(Element(6), 'Checked', 'off')
        set(Element(7), 'Checked', 'off')
    case 5
        set(Element(1), 'Checked', 'off')
        set(Element(2), 'Checked', 'off')
        set(Element(3), 'Checked', 'off')
        set(Element(4), 'Checked', 'off')
        set(Element(5), 'Checked', 'on')
        set(Element(6), 'Checked', 'off')
        set(Element(7), 'Checked', 'off')
    case 6
        set(Element(1), 'Checked', 'off')
        set(Element(2), 'Checked', 'off')
        set(Element(3), 'Checked', 'off')
        set(Element(4), 'Checked', 'off')
        set(Element(5), 'Checked', 'off')
        set(Element(6), 'Checked', 'on')
        set(Element(7), 'Checked', 'off')
    case 7
        set(Element(1), 'Checked', 'off')
        set(Element(2), 'Checked', 'off')
        set(Element(3), 'Checked', 'off')
        set(Element(4), 'Checked', 'off')
        set(Element(5), 'Checked', 'off')
        set(Element(6), 'Checked', 'off')
        set(Element(7), 'Checked', 'on')
end
% ниже все меню

% --------------------------------------------------------------------
function mnPlot_Callback(hObject, eventdata, handles)
btnPlot_Callback(hObject, eventdata, handles)
% hObject    handle to mnPlot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnClear_Callback(hObject, eventdata, handles)
btnClear_Callback(hObject, eventdata, handles)
% hObject    handle to mnClear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --------------------------------------------------------------------
function mn1_Callback(hObject, eventdata, handles)
btn1_Callback(hObject, eventdata, handles)
% hObject    handle to mn1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mn2_Callback(hObject, eventdata, handles)
btn2_Callback(hObject, eventdata, handles)
% hObject    handle to mn2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnC1_1_Callback(hObject, eventdata, handles)
if getGlobalC2 ~= 1 && getGlobalC3 ~= 1
    setGlobalC1(1);
    set(handles.Color1, 'Value', 1)
    Color1_Callback(handles.Color1, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же цвет, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnC1_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnC1_2_Callback(hObject, eventdata, handles)
if getGlobalC2 ~= 2 && getGlobalC3 ~= 2
    setGlobalC1(2);
    set(handles.Color1, 'Value', 2)
    Color1_Callback(handles.Color1, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же цвет, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnC1_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnC1_3_Callback(hObject, eventdata, handles)
if getGlobalC2 ~= 3 && getGlobalC3 ~= 3
    setGlobalC1(3);
    set(handles.Color1, 'Value', 3)
    Color1_Callback(handles.Color1, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же цвет, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnC1_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnC1_4_Callback(hObject, eventdata, handles)
if getGlobalC2 ~= 4 && getGlobalC3 ~= 4
    setGlobalC1(4);
    set(handles.Color1, 'Value', 4)
    Color1_Callback(handles.Color1, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же цвет, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnC1_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnC1_5_Callback(hObject, eventdata, handles)
if getGlobalC2 ~= 5 && getGlobalC3 ~= 5
    setGlobalC1(5);
    set(handles.Color1, 'Value', 5)
    Color1_Callback(handles.Color1, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же цвет, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnC1_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnC1_6_Callback(hObject, eventdata, handles)
if getGlobalC2 ~= 6 && getGlobalC3 ~= 6
    setGlobalC1(6);
    set(handles.Color1, 'Value', 6)
    Color1_Callback(handles.Color1, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же цвет, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnC1_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnC1_7_Callback(hObject, eventdata, handles)
if getGlobalC2 ~= 7 && getGlobalC3 ~= 7
    setGlobalC1(7);
    set(handles.Color1, 'Value', 7)
    Color1_Callback(handles.Marks1, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же цвет, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnC1_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnM1_1_Callback(hObject, eventdata, handles)
if getGlobalM2 ~= 1 && getGlobalM3 ~= 1
    setGlobalM1(1);
    set(handles.Marks1, 'Value', 1)
    Marks1_Callback(handles.Marks1, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnM1_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnM1_2_Callback(hObject, eventdata, handles)
if getGlobalM2 ~= 2 && getGlobalM3 ~= 2
    setGlobalM1(2);
    set(handles.Marks1, 'Value', 2)
    Marks1_Callback(handles.Marks1, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnM1_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnM1_3_Callback(hObject, eventdata, handles)
if getGlobalM2 ~= 3 && getGlobalM3 ~= 3
    setGlobalM1(3);
    set(handles.Marks1, 'Value', 3)
    Marks1_Callback(handles.Marks1, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnM1_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnM1_4_Callback(hObject, eventdata, handles)
if getGlobalM2 ~= 4 && getGlobalM3 ~= 4
    setGlobalM1(4);
    set(handles.Marks1, 'Value', 4)
    Marks1_Callback(handles.Marks1, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnM1_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnM1_5_Callback(hObject, eventdata, handles)
if getGlobalM2 ~= 5 && getGlobalM3 ~= 5
    setGlobalM1(5);
    set(handles.Marks1, 'Value', 5)
    Marks1_Callback(handles.Marks1, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnM1_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnM1_6_Callback(hObject, eventdata, handles)
if getGlobalM2 ~= 6 && getGlobalM3 ~= 6
    setGlobalM1(6);
    set(handles.Marks1, 'Value', 6)
    Marks1_Callback(handles.Marks1, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnM1_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnM1_7_Callback(hObject, eventdata, handles)
if getGlobalM2 ~= 7 && getGlobalM3 ~= 7
    setGlobalM1(7);
    set(handles.Marks1, 'Value', 7)
    Marks1_Callback(handles.Marks1, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnM1_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnC2_1_Callback(hObject, eventdata, handles)
if getGlobalC1 ~= 1 && getGlobalC3 ~= 1
    setGlobalC2(1);
    set(handles.Color2, 'Value', 1)
    Color2_Callback(handles.Color2, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnC2_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnC2_2_Callback(hObject, eventdata, handles)
if getGlobalC1 ~= 2 && getGlobalC3 ~= 2
    setGlobalC2(2);
    set(handles.Color2, 'Value', 2)
    Color2_Callback(handles.Color2, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnC2_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnC2_3_Callback(hObject, eventdata, handles)
if getGlobalC1 ~= 3 && getGlobalC3 ~= 3
    setGlobalC2(3);
    set(handles.Color2, 'Value', 3)
    Color2_Callback(handles.Color2, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnC2_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnC2_4_Callback(hObject, eventdata, handles)
if getGlobalC1 ~= 4 && getGlobalC3 ~= 4
    setGlobalC2(4);
    set(handles.Color2, 'Value', 4)
    Color2_Callback(handles.Color2, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnC2_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnC2_5_Callback(hObject, eventdata, handles)
if getGlobalC1 ~= 5 && getGlobalC3 ~= 5
    setGlobalC2(5);
    set(handles.Color2, 'Value', 5)
    Color2_Callback(handles.Color2, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnC2_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnC2_6_Callback(hObject, eventdata, handles)
if getGlobalC1 ~= 6 && getGlobalC3 ~= 6
    setGlobalC2(6);
    set(handles.Color2, 'Value', 6)
    Color2_Callback(handles.Color2, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnC2_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnC2_7_Callback(hObject, eventdata, handles)
if getGlobalC1 ~= 7 && getGlobalC3 ~= 7
    setGlobalC2(7);
    set(handles.Color2, 'Value', 7)
    Color2_Callback(handles.Color2, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnC2_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnM2_1_Callback(hObject, eventdata, handles)
if getGlobalM1 ~= 1 && getGlobalM3 ~= 1
    setGlobalM2(1);
    set(handles.Marks2, 'Value', 1)
    Marks2_Callback(handles.Marks2, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnM2_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnM2_2_Callback(hObject, eventdata, handles)
if getGlobalM1 ~= 2 && getGlobalM3 ~= 2
    setGlobalM2(2);
    set(handles.Marks2, 'Value', 2)
    Marks2_Callback(handles.Marks2, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnM2_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnM2_3_Callback(hObject, eventdata, handles)
if getGlobalM1 ~= 3 && getGlobalM3 ~= 3
    setGlobalM2(3);
    set(handles.Marks2, 'Value', 3)
    Marks2_Callback(handles.Marks2, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnM2_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnM2_4_Callback(hObject, eventdata, handles)
if getGlobalM1 ~= 4 && getGlobalM3 ~= 4
    setGlobalM2(4);
    set(handles.Marks2, 'Value', 4)
    Marks2_Callback(handles.Marks2, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnM2_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnM2_5_Callback(hObject, eventdata, handles)
if getGlobalM1 ~= 5 && getGlobalM3 ~= 5
    setGlobalM2(5);
    set(handles.Marks2, 'Value', 5)
    Marks2_Callback(handles.Marks2, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnM2_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnM2_6_Callback(hObject, eventdata, handles)
if getGlobalM1 ~= 6 && getGlobalM3 ~= 6
    setGlobalM2(6);
    set(handles.Marks2, 'Value', 6)
    Marks2_Callback(handles.Marks2, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnM2_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnM2_7_Callback(hObject, eventdata, handles)
if getGlobalM1 ~= 7 && getGlobalM3 ~= 7
    setGlobalM2(7);
    set(handles.Marks2, 'Value', 7)
    Marks2_Callback(handles.Marks2, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnM2_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnC3_1_Callback(hObject, eventdata, handles)
if getGlobalC1 ~= 1 && getGlobalC2 ~= 1
    setGlobalC3(1);
    set(handles.Color3, 'Value', 1)
    Color3_Callback(handles.Color3, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnC3_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnC3_2_Callback(hObject, eventdata, handles)
if getGlobalC1 ~= 2 && getGlobalC2 ~= 2
    setGlobalC3(2);
    set(handles.Color3, 'Value', 2)
    Color3_Callback(handles.Color3, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnC3_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnC3_3_Callback(hObject, eventdata, handles)
if getGlobalC1 ~= 3 && getGlobalC2 ~= 3
    setGlobalC3(3);
    set(handles.Color3, 'Value', 3)
    Color3_Callback(handles.Color3, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnC3_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnC3_4_Callback(hObject, eventdata, handles)
if getGlobalC1 ~= 4 && getGlobalC2 ~= 4
    setGlobalC3(4);
    set(handles.Color3, 'Value', 4)
    Color3_Callback(handles.Color3, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnC3_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnC3_5_Callback(hObject, eventdata, handles)
if getGlobalC1 ~= 5 && getGlobalC2 ~= 5
    setGlobalC3(5);
    set(handles.Color3, 'Value', 5)
    Color3_Callback(handles.Color3, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnC3_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnC3_6_Callback(hObject, eventdata, handles)
if getGlobalC1 ~= 6 && getGlobalC2 ~= 6
    setGlobalC3(6);
    set(handles.Color3, 'Value', 6)
    Color3_Callback(handles.Color3, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnC3_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnC3_7_Callback(hObject, eventdata, handles)
if getGlobalC1 ~= 7 && getGlobalC2 ~= 7
    setGlobalC3(7);
    set(handles.Color3, 'Value', 7)
    Color3_Callback(handles.Color3, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnC3_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnM3_1_Callback(hObject, eventdata, handles)
if getGlobalM1 ~= 1 && getGlobalM2 ~= 1
    setGlobalM3(1);
    set(handles.Marks3, 'Value', 1)
    Marks3_Callback(handles.Marks3, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnM3_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnM3_2_Callback(hObject, eventdata, handles)
if getGlobalM1 ~= 2 && getGlobalM2 ~= 2
    setGlobalM3(2);
    set(handles.Marks3, 'Value', 2)
    Marks3_Callback(handles.Marks3, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnM3_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnM3_3_Callback(hObject, eventdata, handles)
if getGlobalM1 ~= 3 && getGlobalM2 ~= 3
    setGlobalM3(3);
    set(handles.Marks3, 'Value', 3)
    Marks3_Callback(handles.Marks3, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnM3_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnM3_4_Callback(hObject, eventdata, handles)
if getGlobalM1 ~= 4 && getGlobalM2 ~= 4
    setGlobalM3(4);
    set(handles.Marks3, 'Value', 4)
    Marks3_Callback(handles.Marks3, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnM3_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnM3_5_Callback(hObject, eventdata, handles)
if getGlobalM1 ~= 5 && getGlobalM2 ~= 5
    setGlobalM3(5);
    set(handles.Marks3, 'Value', 5)
    Marks3_Callback(handles.Marks3, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnM3_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnM3_6_Callback(hObject, eventdata, handles)
if getGlobalM1 ~= 6 && getGlobalM2 ~= 6
    setGlobalM3(6);
    set(handles.Marks3, 'Value', 6)
    Marks3_Callback(handles.Marks3, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnM3_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnM3_7_Callback(hObject, eventdata, handles)
if getGlobalM1 ~= 7 && getGlobalM2 ~= 7
    setGlobalM3(7);
    set(handles.Marks3, 'Value', 7)
    Marks3_Callback(handles.Marks3, eventdata, handles);
else
    msgbox("Нельзя выбрать тот же маркер, что и в другом графике.","Ошибка","error");
end
% hObject    handle to mnM3_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function Untitled_1_Callback(hObject, eventdata, handles)
function Untitled_2_Callback(hObject, eventdata, handles)
function Untitled_3_Callback(hObject, eventdata, handles)
function Untitled_4_Callback(hObject, eventdata, handles)
function Untitled_8_Callback(hObject, eventdata, handles)
function Untitled_9_Callback(hObject, eventdata, handles)
function Untitled_10_Callback(hObject, eventdata, handles)
function Untitled_11_Callback(hObject, eventdata, handles)
function Untitled_12_Callback(hObject, eventdata, handles)
function Untitled_13_Callback(hObject, eventdata, handles)
