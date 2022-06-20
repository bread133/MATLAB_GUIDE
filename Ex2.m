function varargout = Ex2(varargin)
% EX2 MATLAB code for Ex2.fig
%      EX2, by itself, creates a new EX2 or raises the existing
%      singleton*.
%
%      H = EX2 returns the handle to a new EX2 or the handle to
%      the existing singleton*.
%
%      EX2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EX2.M with the given input arguments.
%
%      EX2('Property','Value',...) creates a new EX2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Ex2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Ex2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Ex2

% Last Modified by GUIDE v2.5 04-Jun-2022 16:42:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Ex2_OpeningFcn, ...
                   'gui_OutputFcn',  @Ex2_OutputFcn, ...
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


% --- Executes just before Ex2 is made visible.
function Ex2_OpeningFcn(hObject, eventdata, handles, varargin)
setGlobalX(2);
setGlobalY(2);
setGlobalP(1);

% так как изменить в свойствах вид графика нельзя, то используется данный
% костыль
x = [];
y = [];
z = [];
axes(handles.axes5);
surf(x, y, z)
axes(handles.axes2);
surf(x, y, z)
axes(handles.axes3);
surf(x, y, z)
axes(handles.axes4);
surf(x, y, z)
axes(handles.axes6);
surf(x, y, z)
axes(handles.axes7);
surf(x, y, z)
axes(handles.axes8);
surf(x, y, z)
axes(handles.axes9);
surf(x, y, z)
axes(handles.axes1);
surf(x, y, z)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Ex2 (see VARARGIN)

% Choose default command line output for Ex2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Ex2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Ex2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in UpBtn.
function UpBtn_Callback(hObject, eventdata, handles)
if (getGlobalY ~= 1)
    setGlobalY(getGlobalY - 1);
else
    setGlobalY(3);
end
PlotBtn_Callback(hObject, eventdata, handles);
% hObject    handle to UpBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ClearBtn.
function ClearBtn_Callback(hObject, eventdata, handles)
cla;
% при сбросе график должен в следующий раз появиться в центре
setGlobalX(2);
setGlobalY(2);

% очищение строчек
set(handles.a, "String", "");
set(handles.b, "String", "");
set(handles.begin_, "String", "");
set(handles.end_, "String", "");
set(handles.d, "String", "");

set(handles.ClearBtn, 'enable', 'off');
set(handles.LeftBtn, 'enable', 'off');
set(handles.RightBtn, 'enable', 'off');
set(handles.UpBtn, 'enable', 'off');
set(handles.DownBtn, 'enable', 'off');
set(handles.mnClear, 'enable', 'off');
% hObject    handle to ClearBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in RightBtn.
function RightBtn_Callback(hObject, eventdata, handles)
if (getGlobalX ~= 3)
    setGlobalX(getGlobalX + 1);
else
    setGlobalX(1);
end
PlotBtn_Callback(hObject, eventdata, handles);
% hObject    handle to RightBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in LeftBtn.
function LeftBtn_Callback(hObject, eventdata, handles)
if (getGlobalX ~= 1)
    setGlobalX(getGlobalX - 1);
else
    setGlobalX(3);
end
PlotBtn_Callback(hObject, eventdata, handles);
% hObject    handle to LeftBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in DownBtn.
function DownBtn_Callback(hObject, eventdata, handles)
if (getGlobalY ~= 3)
    setGlobalY(getGlobalY + 1);
else
    setGlobalY(1);
end
PlotBtn_Callback(hObject, eventdata, handles);
% hObject    handle to DownBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in PlotBtn.
function PlotBtn_Callback(hObject, eventdata, handles)
Str1 = get(handles.a, 'string');
a_ = str2double(Str1);
Str2 = get(handles.b, 'string');
b_ = str2double(Str2);
Str3 = get(handles.begin_, 'string');
beg = str2double(Str3);
Str4 = get(handles.end_, 'string');
en = str2double(Str4);
Str5 = get(handles.d, 'string');
d_ = str2double(Str5);

if Str1 ~= "" && Str2 ~= "" && Str3 ~= "" && Str4 ~= "" && Str5 ~= ""
    diap = (en - beg) / d_;
    [x, y] = meshgrid(beg:diap:en);
    z = [];
    p = getGlobalP;
    switch p
        case 1
            z = a_ .* x .^ 2 + b_ .* x .^ 2 - x .* y;
        case 2
            z = cos(a_ .* x) ./ b_ - sin(b_ .* y) ./ a_;
    end
    
    X = getGlobalX;
    Y = getGlobalY;
    switch X
        case 2
            switch Y
                case 2
                    cla; %графики удаляются из других окон
                    axes(handles.axes5);
                    surf(x, y, z)
                    colormap('parula');
                case 1
                    cla;
                    axes(handles.axes2);
                    surf(x, y, z)
                    colormap('turbo');
                case 3
                    cla;
                    axes(handles.axes8);
                    surf(x, y, z)
                    colormap('summer');
            end
        case 1
            switch Y
                case 1
                    cla;
                    axes(handles.axes1);
                    surf(x, y, z)
                    colormap('hsv');
                case 2
                    cla;
                    axes(handles.axes4);
                    surf(x, y, z)
                    colormap('winter');
                case 3
                    cla;
                    axes(handles.axes7);
                    surf(x, y, z)
                    colormap('spring');
            end
        case 3
            switch Y
                case 1
                    cla;
                    axes(handles.axes3);
                    surf(x, y, z)
                    colormap('hot');
                case 2
                    cla;
                    axes(handles.axes6);
                    surf(x, y, z)
                    colormap('gray');
                case 3
                    cla;
                    axes(handles.axes9);
                    surf(x, y, z)
                    colormap('cool');
            end
    end
    guidata(gcbo, handles);

    set(handles.ClearBtn, 'enable', 'on');
    set(handles.LeftBtn, 'enable', 'on');
    set(handles.RightBtn, 'enable', 'on');
    set(handles.UpBtn, 'enable', 'on');
    set(handles.DownBtn, 'enable', 'on');
    set(handles.mnClear, 'enable', 'on');
else
    msgbox("Не все поля в панели 'Параметры' заполнены.","Ошибка","error");
end

% hObject    handle to PlotBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Plot1.
function Plot1_Callback(hObject, eventdata, handles)
set(handles.a, "String", 1);
set(handles.b, "String", 1);
set(handles.begin_, "String", -10);
set(handles.end_, "String", 10);
set(handles.d, "String", 25);
% hObject    handle to Plot1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Plot2.
function Plot2_Callback(hObject, eventdata, handles)
set(handles.a, "String", 0.009);
set(handles.b, "String", 13.05);
set(handles.begin_, "String", -15);
set(handles.end_, "String", 20);
set(handles.d, "String", 55);
% hObject    handle to Plot2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in fstFun.
function fstFun_Callback(hObject, eventdata, handles)
setGlobalP(1);
set(handles.mnF1, 'Checked', 1);
set(handles.mnF2, 'Checked', 0);
% hObject    handle to fstFun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of fstFun


% --- Executes on button press in ScndFun.
function ScndFun_Callback(hObject, eventdata, handles)
setGlobalP(2);
set(handles.mnF1, 'Checked', 0);
set(handles.mnF2, 'Checked', 1);
% hObject    handle to ScndFun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ScndFun



function a_Callback(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a as text
%        str2double(get(hObject,'String')) returns contents of a as a double


% --- Executes during object creation, after setting all properties.
function a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b as text
%        str2double(get(hObject,'String')) returns contents of b as a double


% --- Executes during object creation, after setting all properties.
function b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function begin__Callback(hObject, eventdata, handles)
% hObject    handle to begin_ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of begin_ as text
%        str2double(get(hObject,'String')) returns contents of begin_ as a double


% --- Executes during object creation, after setting all properties.
function begin__CreateFcn(hObject, eventdata, handles)
% hObject    handle to begin_ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function end__Callback(hObject, eventdata, handles)
% hObject    handle to end_ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of end_ as text
%        str2double(get(hObject,'String')) returns contents of end_ as a double


% --- Executes during object creation, after setting all properties.
function end__CreateFcn(hObject, eventdata, handles)
% hObject    handle to end_ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d_Callback(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d as text
%        str2double(get(hObject,'String')) returns contents of d as a double


% --- Executes during object creation, after setting all properties.
function d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function setGlobalX(val)
global X_
X_ = val;

function setGlobalY(val)
global Y_
Y_ = val;

function setGlobalP(val)
global P
P = val;

function r = getGlobalX
global X_
r = X_;

function r = getGlobalY
global Y_
r = Y_;

function r = getGlobalP
global P
r = P;


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Ex1__Callback(hObject, eventdata, handles)
close("Ex2")
run("Ex2")
% hObject    handle to Ex1_ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Ex2__Callback(hObject, eventdata, handles)
% для второго задания, если будет
% hObject    handle to Ex2_ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnClear_Callback(hObject, eventdata, handles)
ClearBtn_Callback(hObject, eventdata, handles);
% hObject    handle to mnClear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnPlot_Callback(hObject, eventdata, handles)
PlotBtn_Callback(hObject, eventdata, handles);
% hObject    handle to mnPlot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mn1_Callback(hObject, eventdata, handles)
Plot1_Callback(hObject, eventdata, handles);
% hObject    handle to mn1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mn2_Callback(hObject, eventdata, handles)
Plot2_Callback(hObject, eventdata, handles);
% hObject    handle to mn2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnF1_Callback(hObject, eventdata, handles)
fstFun_Callback(hObject, eventdata, handles);
set(handles.fstFun, 'Value', 1);
% hObject    handle to mnF1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnF2_Callback(hObject, eventdata, handles)
ScndFun_Callback(hObject, eventdata, handles);
set(handles.ScndFun, 'Value', 1);
% hObject    handle to mnF2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
