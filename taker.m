function varargout = taker(varargin)
% TUCKER MATLAB code for tucker.fig
%      TUCKER, by itself, creates a new TUCKER or raises the existing
%      singleton*.
%
%      H = TUCKER returns the handle to a new TUCKER or the handle to
%      the existing singleton*.
%
%      TUCKER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TUCKER.M with the given input arguments.
%
%      TUCKER('Property','Value',...) creates a new TUCKER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tucker_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tucker_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tucker

% Last Modified by GUIDE v2.5 23-May-2022 11:05:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @taker_OpeningFcn, ...
                   'gui_OutputFcn',  @taker_OutputFcn, ...
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
function taker_OpeningFcn(hObject, eventdata, handles, varargin)
setGlobalM(1);
setGlobalC(1);
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
function varargout = taker_OutputFcn(hObject, eventdata, handles) 
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



function C_Callback(hObject, eventdata, handles)
% hObject    handle to C (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C as text
%        str2double(get(hObject,'String')) returns contents of C as a double


% --- Executes during object creation, after setting all properties.
function C_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Diap_Callback(hObject, eventdata, handles)
% hObject    handle to Diap (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Diap as text
%        str2double(get(hObject,'String')) returns contents of Diap as a double


% --- Executes during object creation, after setting all properties.
function Diap_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Diap (see GCBO)
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
Str1 = get(handles.A, 'string');
a = str2double(Str1);
Str2 = get(handles.B, 'string');
b = str2double(Str2);
Str3 = get(handles.C, 'string');
c = str2double(Str3);
Str4 = get(handles.Diap, 'string');
d = str2double(Str4);
Str5 = get(handles.NumOfVal, 'string');
v = str2double(Str5);
ver = -b / (2 * a);
ed = ver + d;
bg = ver - d;
diap = (ed - bg) / (v - 1);
x = bg:diap:ed;
y = a .* (x .^ 2) + b .* x + c;

if(get(handles.boolGraph, 'Value'))
    hold on
else
    hold off
end
handles.Line = plot(x, y);

switch getGlobalM
    case 1
        set(handles.Line, 'Marker', 'o');
        set(handles.mn1, 'Checked', 1);
        set(handles.mn2, 'Checked', 0);
        set(handles.mn3, 'Checked', 0);
        set(handles.mn4, 'Checked', 0);
        set(handles.mn5, 'Checked', 0);
        set(handles.mn6, 'Checked', 0);
    case 2
        set(handles.Line, 'Marker', '^');
        set(handles.mn1, 'Checked', 0);
        set(handles.mn2, 'Checked', 1);
        set(handles.mn3, 'Checked', 0);
        set(handles.mn4, 'Checked', 0);
        set(handles.mn5, 'Checked', 0);
        set(handles.mn6, 'Checked', 0);
    case 3
        set(handles.Line, 'Marker', 's');
        set(handles.mn1, 'Checked', 0);
        set(handles.mn2, 'Checked', 0);
        set(handles.mn3, 'Checked', 1);
        set(handles.mn4, 'Checked', 0);
        set(handles.mn5, 'Checked', 0);
        set(handles.mn6, 'Checked', 0);
    case 4
        set(handles.Line, 'Marker', 'p');
        set(handles.mn1, 'Checked', 0);
        set(handles.mn2, 'Checked', 0);
        set(handles.mn3, 'Checked', 0);
        set(handles.mn4, 'Checked', 1);
        set(handles.mn5, 'Checked', 0);
        set(handles.mn6, 'Checked', 0);
    case 5
        set(handles.Line, 'Marker', 'h');
        set(handles.mn1, 'Checked', 0);
        set(handles.mn2, 'Checked', 0);
        set(handles.mn3, 'Checked', 0);
        set(handles.mn4, 'Checked', 0);
        set(handles.mn5, 'Checked', 1);
        set(handles.mn6, 'Checked', 0);
    case 6
        set(handles.Line, 'Marker', 'd');
        set(handles.mn1, 'Checked', 0);
        set(handles.mn2, 'Checked', 0);
        set(handles.mn3, 'Checked', 0);
        set(handles.mn4, 'Checked', 0);
        set(handles.mn5, 'Checked', 0);
        set(handles.mn6, 'Checked', 1);
end

switch getGlobalC
    case 1
        set(handles.Line, 'Color', 'r');
        set(handles.mnRed, 'Checked', 1);
        set(handles.mnGreen, 'Checked', 0);
        set(handles.mnBlack, 'Checked', 0);
        set(handles.mnBlue, 'Checked', 0);
    case 2
        set(handles.Line, 'Color', 'g');
        set(handles.mnRed, 'Checked', 0);
        set(handles.mnGreen, 'Checked', 1);
        set(handles.mnBlack, 'Checked', 0);
        set(handles.mnBlue, 'Checked', 0);
    case 3
        set(handles.Line, 'Color', 'black');
        set(handles.mnRed, 'Checked', 0);
        set(handles.mnGreen, 'Checked', 0);
        set(handles.mnBlack, 'Checked', 1);
        set(handles.mnBlue, 'Checked', 0);
    case 4
        set(handles.Line, 'Color', 'blue');
        set(handles.mnRed, 'Checked', 0);
        set(handles.mnGreen, 'Checked', 0);
        set(handles.mnBlack, 'Checked', 0);
        set(handles.mnBlue, 'Checked', 1);
end

guidata(gcbo, handles);
set(handles.chsMarks, 'enable', 'on');
set(handles.boolGraph, 'enable', 'on');
set(handles.rb_mark_Red, 'enable', 'on');
set(handles.rb_mark_Green, 'enable', 'on');
set(handles.rb_mark_Black, 'enable', 'on');
set(handles.rb_mark_Blue, 'enable', 'on');
set(handles.btnClear, 'enable', 'on');
set(handles.mnClear, 'enable', 'on');
set(handles.mnBool, 'enable', 'on');
set(handles.mnColor, 'enable', 'on');
set(handles.mnMark, 'enable', 'on');
% hObject    handle to btnPlot (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn1.
function btn1_Callback(hObject, eventdata, handles)
set(handles.A, "String", 1);
set(handles.B, "String", 0);
set(handles.C, "String", 0);
set(handles.Diap, "String", 10);
set(handles.NumOfVal, "String", 20);
% hObject    handle to btn1 (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnClear.
function btnClear_Callback(hObject, eventdata, handles)
cla;
set(handles.chsMarks, 'enable', 'off');
set(handles.boolGraph, 'enable', 'off');
set(handles.rb_mark_Red, 'enable', 'off');
set(handles.rb_mark_Green, 'enable', 'off');
set(handles.rb_mark_Black, 'enable', 'off');
set(handles.rb_mark_Blue, 'enable', 'off');
set(handles.btnClear, 'enable', 'off');
set(handles.mnClear, 'enable', 'off');
set(handles.mnColor, 'enable', 'off');
set(handles.mnMark, 'enable', 'off');
set(handles.mnBool, 'enable', 'off');
% hObject    handle to btnClear (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn2.
function btn2_Callback(hObject, eventdata, handles)
set(handles.A, "String", -18);
set(handles.B, "String", 26);
set(handles.C, "String", 12);
set(handles.Diap, "String", 55);
set(handles.NumOfVal, "String", 100);
% hObject    handle to btn2 (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in chsMarks.
function chsMarks_Callback(hObject, eventdata, handles)
Num = get(hObject, 'Value');
switch Num
    case 1
        set(handles.Line, 'Marker', 'o');
        set(handles.mn1, 'Checked', 1);
        set(handles.mn2, 'Checked', 0);
        set(handles.mn3, 'Checked', 0);
        set(handles.mn4, 'Checked', 0);
        set(handles.mn5, 'Checked', 0);
        set(handles.mn6, 'Checked', 0);
    case 2
        set(handles.Line, 'Marker', '^');
        set(handles.mn1, 'Checked', 0);
        set(handles.mn2, 'Checked', 1);
        set(handles.mn3, 'Checked', 0);
        set(handles.mn4, 'Checked', 0);
        set(handles.mn5, 'Checked', 0);
        set(handles.mn6, 'Checked', 0);
    case 3
        set(handles.Line, 'Marker', 's');
        set(handles.mn1, 'Checked', 0);
        set(handles.mn2, 'Checked', 0);
        set(handles.mn3, 'Checked', 1);
        set(handles.mn4, 'Checked', 0);
        set(handles.mn5, 'Checked', 0);
        set(handles.mn6, 'Checked', 0);
    case 4
        set(handles.Line, 'Marker', 'p');
        set(handles.mn1, 'Checked', 0);
        set(handles.mn2, 'Checked', 0);
        set(handles.mn3, 'Checked', 0);
        set(handles.mn4, 'Checked', 1);
        set(handles.mn5, 'Checked', 0);
        set(handles.mn6, 'Checked', 0);
    case 5
        set(handles.Line, 'Marker', 'h');
        set(handles.mn1, 'Checked', 0);
        set(handles.mn2, 'Checked', 0);
        set(handles.mn3, 'Checked', 0);
        set(handles.mn4, 'Checked', 0);
        set(handles.mn5, 'Checked', 1);
        set(handles.mn6, 'Checked', 0);
    case 6
        set(handles.Line, 'Marker', 'd');
        set(handles.mn1, 'Checked', 0);
        set(handles.mn2, 'Checked', 0);
        set(handles.mn3, 'Checked', 0);
        set(handles.mn4, 'Checked', 0);
        set(handles.mn5, 'Checked', 0);
        set(handles.mn6, 'Checked', 1);
end
setGlobalM(Num);
% hObject    handle to chsMarks (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns chsMarks contents as cell array
%        contents{get(hObject,'Value')} returns selected item from chsMarks


% --- Executes during object creation, after setting all properties.
function chsMarks_CreateFcn(hObject, eventdata, handles)
% hObject    handle to chsMarks (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in boolGraph.
function boolGraph_Callback(hObject, eventdata, handles)
Num = get(handles.boolGraph, 'value');
switch Num
    case 1
    set(handles.mnBool, 'Checked', 1);
    case 0
    set(handles.mnBool, 'Checked', 0);
end
% hObject    handle to boolGraph (see GCBO)
% eventdata  reserved - to rb_mark_blue defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of boolGraph


% --- Executes during object creation, after setting all properties.
function rb_mark_Red_Callback(hObject, eventdata, handles)
set(handles.Line, 'Color', 'r');
setGlobalC(1);
set(handles.mnRed, 'Checked', 1);
set(handles.mnGreen, 'Checked', 0);
set(handles.mnBlack, 'Checked', 0);
set(handles.mnBlue, 'Checked', 0);
% hObject    handle to rb_mark_Red (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: get(hObject,'Value') returns toggle state of rb_mark_Red

% --- Executes on button press in rb_mark_Green.
function rb_mark_Green_Callback(hObject, eventdata, handles)
set(handles.Line, 'Color', 'g');
setGlobalC(2);
set(handles.mnRed, 'Checked', 0);
set(handles.mnGreen, 'Checked', 1);
set(handles.mnBlack, 'Checked', 0);
set(handles.mnBlue, 'Checked', 0);
% hObject    handle to rb_mark_Green (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_mark_Green


% --- Executes on button press in rb_mark_Black.
function rb_mark_Black_Callback(hObject, eventdata, handles)
set(handles.Line, 'Color', 'black');
setGlobalC(3);
set(handles.mnRed, 'Checked', 0);
set(handles.mnGreen, 'Checked', 0);
set(handles.mnBlack, 'Checked', 1);
set(handles.mnBlue, 'Checked', 0);
% hObject    handle to rb_mark_Black (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_mark_Black


% --- Executes on button press in rb_mark_Blue.
function rb_mark_Blue_Callback(hObject, eventdata, handles)
set(handles.Line, 'Color', 'blue');
setGlobalC(4);
set(handles.mnRed, 'Checked', 0);
set(handles.mnGreen, 'Checked', 0);
set(handles.mnBlack, 'Checked', 0);
set(handles.mnBlue, 'Checked', 1);
% hObject    handle to rb_mark_Blue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_mark_Blue


% --------------------------------------------------------------------
function mnGraph_Callback(hObject, eventdata, handles)
% hObject    handle to mnGraph (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnGraphPlot_Callback(hObject, eventdata, handles)
btnPlot_Callback(hObject, eventdata, handles);
set(handles.mnClear, 'enable', 'on');
set(handles.mnColor, 'enable', 'on');
set(handles.mnMark, 'enable', 'on');
set(handles.mnBool, 'enable', 'on');
% hObject    handle to mnGraphPlot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnMark_Callback(hObject, eventdata, handles)
% hObject    handle to mnMark (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnClear_Callback(hObject, eventdata, handles)
btnClear_Callback(hObject, eventdata, handles);
set(handles.mnClear, 'enable', 'off');
set(handles.mnColor, 'enable', 'off');
set(handles.mnMark, 'enable', 'off');
set(handles.mnBool, 'enable', 'off');
% hObject    handle to mnClear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnColor_Callback(hObject, eventdata, handles)
% hObject    handle to mnColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnBtn1_Callback(hObject, eventdata, handles)
btn1_Callback(hObject, eventdata, handles);
set(handles.mnClear, 'enable', 'on');
set(handles.mnColor, 'enable', 'on');
set(handles.mnMark, 'enable', 'on');
set(handles.mnBool, 'enable', 'on');
% hObject    handle to mnBtn1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnBtn2_Callback(hObject, eventdata, handles)
btn2_Callback(hObject, eventdata, handles);
set(handles.mnClear, 'enable', 'on');
set(handles.mnColor, 'enable', 'on');
set(handles.mnMark, 'enable', 'on');
set(handles.mnBool, 'enable', 'on');
% hObject    handle to mnBtn2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnBool_Callback(hObject, eventdata, handles)
Num = get(handles.boolGraph, 'value');
switch Num
    case 1
    set(handles.boolGraph, 'value', 0);
    set(handles.mnBool, 'Checked', 0);
    case 0
    set(handles.boolGraph, 'value', 1);
    set(handles.mnBool, 'Checked', 1);
end
% hObject    handle to mnBool (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnRed_Callback(hObject, eventdata, handles)
rb_mark_Red_Callback(hObject, eventdata, handles);
set(handles.rb_mark_Red, 'Value', 1);
set(handles.mnRed, 'Checked', 1);
set(handles.mnGreen, 'Checked', 0);
set(handles.mnBlack, 'Checked', 0);
set(handles.mnBlue, 'Checked', 0);
% hObject    handle to mnRed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnGreen_Callback(hObject, eventdata, handles)
rb_mark_Green_Callback(hObject, eventdata, handles);
set(handles.rb_mark_Green, 'Value', 1);
set(handles.mnRed, 'Checked', 0);
set(handles.mnGreen, 'Checked', 1);
set(handles.mnBlack, 'Checked', 0);
set(handles.mnBlue, 'Checked', 0);
% hObject    handle to mnGreen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnBlack_Callback(hObject, eventdata, handles)
rb_mark_Black_Callback(hObject, eventdata, handles);
set(handles.rb_mark_Black, 'Value', 1);
set(handles.mnRed, 'Checked', 0);
set(handles.mnGreen, 'Checked', 0);
set(handles.mnBlack, 'Checked', 1);
set(handles.mnBlue, 'Checked', 0);
% hObject    handle to mnBlack (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnBlue_Callback(hObject, eventdata, handles)
rb_mark_Blue_Callback(hObject, eventdata, handles);
set(handles.rb_mark_Blue, 'Value', 1);
set(handles.mnRed, 'Checked', 0);
set(handles.mnGreen, 'Checked', 0);
set(handles.mnBlack, 'Checked', 0);
set(handles.mnBlue, 'Checked', 1);
% hObject    handle to mnBlue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mn1_Callback(hObject, eventdata, handles)
set(handles.Line, 'Marker', 'o');
setGlobalM(1);
set(handles.chsMarks, 'Value', 1);
set(handles.mn1, 'Checked', 1);
set(handles.mn2, 'Checked', 0);
set(handles.mn3, 'Checked', 0);
set(handles.mn4, 'Checked', 0);
set(handles.mn5, 'Checked', 0);
set(handles.mn6, 'Checked', 0);
% hObject    handle to mn1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mn2_Callback(hObject, eventdata, handles)
set(handles.Line, 'Marker', '^');
setGlobalM(2);
set(handles.chsMarks, 'Value', 2);
set(handles.mn1, 'Checked', 0);
set(handles.mn2, 'Checked', 1);
set(handles.mn3, 'Checked', 0);
set(handles.mn4, 'Checked', 0);
set(handles.mn5, 'Checked', 0);
set(handles.mn6, 'Checked', 0);
% hObject    handle to mn2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mn3_Callback(hObject, eventdata, handles)
set(handles.Line, 'Marker', 's');
setGlobalM(3);
set(handles.chsMarks, 'Value', 3);
set(handles.mn1, 'Checked', 0);
set(handles.mn2, 'Checked', 0);
set(handles.mn3, 'Checked', 1);
set(handles.mn4, 'Checked', 0);
set(handles.mn5, 'Checked', 0);
set(handles.mn6, 'Checked', 0);
% hObject    handle to mn3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mn4_Callback(hObject, eventdata, handles)
set(handles.Line, 'Marker', 'p');
setGlobalM(4);
set(handles.chsMarks, 'Value', 4);
set(handles.mn1, 'Checked', 0);
set(handles.mn2, 'Checked', 0);
set(handles.mn3, 'Checked', 0);
set(handles.mn4, 'Checked', 1);
set(handles.mn5, 'Checked', 0);
set(handles.mn6, 'Checked', 0);
% hObject    handle to mn4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mn5_Callback(hObject, eventdata, handles)
set(handles.Line, 'Marker', 'h');
setGlobalM(5);
set(handles.chsMarks, 'Value', 5);
set(handles.mn1, 'Checked', 0);
set(handles.mn2, 'Checked', 0);
set(handles.mn3, 'Checked', 0);
set(handles.mn4, 'Checked', 0);
set(handles.mn5, 'Checked', 1);
set(handles.mn6, 'Checked', 0);
% hObject    handle to mn5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mn6_Callback(hObject, eventdata, handles)
set(handles.Line, 'Marker', 'd');
setGlobalM(6);
set(handles.chsMarks, 'Value', 6);
set(handles.mn1, 'Checked', 0);
set(handles.mn2, 'Checked', 0);
set(handles.mn3, 'Checked', 0);
set(handles.mn4, 'Checked', 0);
set(handles.mn5, 'Checked', 0);
set(handles.mn6, 'Checked', 1);
% hObject    handle to mn6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnTaker_Callback(hObject, eventdata, handles)
close("taker")
run("taker")
% hObject    handle to mnTucker (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
% hObject    handle to mnDale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function setGlobalM(val)
global M
M = val;

function setGlobalC(val)
global C
C = val;

function r = getGlobalM
global M
r = M;

function r = getGlobalC
global C
r = C;
