function varargout = dale(varargin)
% DALE MATLAB code for dale.fig
%      DALE, by itself, creates a new DALE or raises the existing
%      singleton*.
%
%      H = DALE returns the handle to a new DALE or the handle to
%      the existing singleton*.
%
%      DALE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DALE.M with the given input arguments.
%
%      DALE('Property','Value',...) creates a new DALE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dale_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dale_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dale

% Last Modified by GUIDE v2.5 23-May-2022 14:56:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dale_OpeningFcn, ...
                   'gui_OutputFcn',  @dale_OutputFcn, ...
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


% --- Executes just before dale is made visible.
function dale_OpeningFcn(hObject, ~, handles, varargin)
setGlobalP(1);
setGlobalC(1);
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dale (see VARARGIN)

% Choose default command line output for dale
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes dale wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = dale_OutputFcn(~, ~, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function c_Callback(~, ~, ~)
% hObject    handle to c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c as text
%        str2double(get(hObject,'String')) returns contents of c as a double


% --- Executes during object creation, after setting all properties.
function c_CreateFcn(hObject, ~, ~)
% hObject    handle to c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a_Callback(~, eventdata, handles)
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



function numOfDot_Callback(hObject, eventdata, handles)
% hObject    handle to numOfDot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numOfDot as text
%        str2double(get(hObject,'String')) returns contents of numOfDot as a double


% --- Executes during object creation, after setting all properties.
function numOfDot_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numOfDot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function beginn_Callback(hObject, eventdata, handles)
% hObject    handle to beginn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of beginn as text
%        str2double(get(hObject,'String')) returns contents of beginn as a double


% --- Executes during object creation, after setting all properties.
function beginn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to beginn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function endd_Callback(hObject, eventdata, handles)
% hObject    handle to endd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of endd as text
%        str2double(get(hObject,'String')) returns contents of endd as a double


% --- Executes during object creation, after setting all properties.
function endd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to endd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in plot.
function plot_Callback(hObject, eventdata, handles)
Num = get(hObject, 'Value');
setGlobalP(Num);
switch Num
    case 1
        handles.Line = surf(handles.CurrentData1, handles.CurrentData2, handles.CurrentData3);
    case 2
        handles.Line = surfc(handles.CurrentData1, handles.CurrentData2, handles.CurrentData3);
    case 3
        handles.Line = surfl(handles.CurrentData1, handles.CurrentData2, handles.CurrentData3);
    case 4
        handles.Line = mesh(handles.CurrentData1, handles.CurrentData2, handles.CurrentData3);
    case 5
        handles.Line = meshc(handles.CurrentData1, handles.CurrentData2, handles.CurrentData3);
    case 6
        handles.Line = meshz(handles.CurrentData1, handles.CurrentData2, handles.CurrentData3);
end

switch getGlobalC
    case 1
        set(handles.Line, 'FaceColor', 'interp');
    case 2
        set(handles.Line, 'FaceColor', [1 0 0]);
    case 3
        set(handles.Line, 'FaceColor', [0.4660 0.6740 0.1880]);
    case 4
        set(handles.Line, 'FaceColor', [0 0.4470 0.7410]);
    case 5
        set(handles.Line, 'FaceColor', [0.8500 0.3250 0.0980]);
    case 6
        set(handles.Line, 'FaceColor', [0.3010 0.7450 0.9330]);
    case 7
        set(handles.Line, 'FaceColor', [0 1 1]);
    case 8
        set(handles.Line, 'FaceColor', [1 0 1]);
    case 9
        set(handles.Line, 'FaceColor', [0.4940 0.1840 0.5560]);
    case 10
        set(handles.Line, 'FaceColor', [0.6350 0.0780 0.1840]);
    case 11
        set(handles.Line, 'FaceColor', [0.9290 0.6940 0.1250]);
    case 12
        set(handles.Line, 'FaceColor', [0 0 0]);
    case 13
        set(handles.Line, 'FaceColor', [1 1 1]);
    case 14
        set(handles.Line, 'FaceColor', 'flat');
end
guidata(gcbo, handles);
% hObject    handle to plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns plot contents as cell array
%        contents{get(hObject,'Value')} returns selected item from plot


% --- Executes during object creation, after setting all properties.
function plot_CreateFcn(hObject, eventdata, handles)
% hObject    handle to plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in colormap.
function colormap_Callback(hObject, eventdata, handles)
Num = get(hObject, 'Value');
switch Num
    case 1
        set(handles.Line, 'FaceColor', 'interp');
    case 2
        set(handles.Line, 'FaceColor', [1 0 0]);
    case 3
        set(handles.Line, 'FaceColor', [0.4660 0.6740 0.1880]);
    case 4
        set(handles.Line, 'FaceColor', [0 0.4470 0.7410]);
    case 5
        set(handles.Line, 'FaceColor', [0.8500 0.3250 0.0980]);
    case 6
        set(handles.Line, 'FaceColor', [0.3010 0.7450 0.9330]);
    case 7
        set(handles.Line, 'FaceColor', [0 1 1]);
    case 8
        set(handles.Line, 'FaceColor', [1 0 1]);
    case 9
        set(handles.Line, 'FaceColor', [0.4940 0.1840 0.5560]);
    case 10
        set(handles.Line, 'FaceColor', [0.6350 0.0780 0.1840]);
    case 11
        set(handles.Line, 'FaceColor', [0.9290 0.6940 0.1250]);
    case 12
        set(handles.Line, 'FaceColor', [0 0 0]);
    case 13
        set(handles.Line, 'FaceColor', [1 1 1]);
    case 14
        set(handles.Line, 'FaceColor', 'flat');
end

setGlobalC(Num);
% hObject    handle to colormap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns colormap contents as cell array
%        contents{get(hObject,'Value')} returns selected item from colormap


% --- Executes during object creation, after setting all properties.
function colormap_CreateFcn(hObject, eventdata, handles)
% hObject    handle to colormap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes on button press in btn1.
function btn1_Callback(hObject, eventdata, handles)
set(handles.a, 'string', 11);
set(handles.b, 'string', 6);
set(handles.c, 'string', 179);
set(handles.numOfDot, 'string', 40);
set(handles.beginn, 'string', -20);
set(handles.endd, 'string', 20);
% hObject    handle to btn1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnPlot.
function btnPlot_Callback(hObject, eventdata, handles)
Str1 = get(handles.a, 'string');
a_ = str2double(Str1);
Str2 = get(handles.b, 'string');
b_ = str2double(Str2);
Str3 = get(handles.c, 'string');
c_ = str2double(Str3);
Str4 = get(handles.numOfDot, 'string');
d_ = str2double(Str4);
Str5 = get(handles.beginn, 'string');
begin_ = str2double(Str5);
Str6 = get(handles.endd, 'string');
end_ = str2double(Str6);

diap = (end_ - begin_) / d_;
[x, y] = meshgrid(begin_:diap:end_);
z = a_ .* (x .^ 2 + y .^ 2) + b_ .* ((cos(x + y)) .^ 2) - c_ .* tan(x + y);

handles.CurrentData1 = x;
handles.CurrentData2 = y;
handles.CurrentData3 = z;

set(handles.btnClear, 'enable', 'on');
set(handles.plot, 'enable', 'on');
set(handles.colormap, 'enable', 'on');
set(handles.mnClear, 'enable', 'on');
set(handles.mnPlot, 'enable', 'off');
set(handles.mnColor, 'enable', 'off');
set(handles.mnPlot, 'enable', 'on');
set(handles.mnColor, 'enable', 'on');

switch getGlobalP
    case 1
        handles.Line = surf(handles.CurrentData1, handles.CurrentData2, handles.CurrentData3);
    case 2
        handles.Line = surfc(handles.CurrentData1, handles.CurrentData2, handles.CurrentData3);
    case 3
        handles.Line = surfl(handles.CurrentData1, handles.CurrentData2, handles.CurrentData3);
    case 4
        handles.Line = mesh(handles.CurrentData1, handles.CurrentData2, handles.CurrentData3);
    case 5
        handles.Line = meshc(handles.CurrentData1, handles.CurrentData2, handles.CurrentData3);
    case 6
        handles.Line = meshz(handles.CurrentData1, handles.CurrentData2, handles.CurrentData3);
end
guidata(gcbo, handles);

switch getGlobalC
    case 1
        set(handles.Line, 'FaceColor', 'interp');
    case 2
        set(handles.Line, 'FaceColor', [1 0 0]);
    case 3
        set(handles.Line, 'FaceColor', [0.4660 0.6740 0.1880]);
    case 4
        set(handles.Line, 'FaceColor', [0 0.4470 0.7410]);
    case 5
        set(handles.Line, 'FaceColor', [0.8500 0.3250 0.0980]);
    case 6
        set(handles.Line, 'FaceColor', [0.3010 0.7450 0.9330]);
    case 7
        set(handles.Line, 'FaceColor', [0 1 1]);
    case 8
        set(handles.Line, 'FaceColor', [1 0 1]);
    case 9
        set(handles.Line, 'FaceColor', [0.4940 0.1840 0.5560]);
    case 10
        set(handles.Line, 'FaceColor', [0.6350 0.0780 0.1840]);
    case 11
        set(handles.Line, 'FaceColor', [0.9290 0.6940 0.1250]);
    case 12
        set(handles.Line, 'FaceColor', [0 0 0]);
    case 13
        set(handles.Line, 'FaceColor', [1 1 1]);
    case 14
        set(handles.Line, 'FaceColor', 'flat');
end

guidata(gcbo, handles);
% hObject    handle to btnPlot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnClear.
function btnClear_Callback(hObject, eventdata, handles)
cla;
set(handles.btnPlot, 'enable', 'on');
set(handles.plot, 'enable', 'off');
set(handles.colormap, 'enable', 'off');
set(handles.btnClear, 'enable', 'off');
set(handles.mnClear, 'enable', 'off');
set(handles.mnPlot, 'enable', 'off');
set(handles.mnColor, 'enable', 'off');
% hObject    handle to btnClear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnGraph_Callback(hObject, eventdata, handles)
% hObject    handle to mnGraph (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnClear_Callback(hObject, eventdata, handles)
btnClear_Callback(hObject, eventdata, handles);
% hObject    handle to mnClear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnBtnPlot_Callback(hObject, eventdata, handles)
btnPlot_Callback(hObject, eventdata, handles);
% hObject    handle to mnBtnPlot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnColor_Callback(hObject, eventdata, handles)
% hObject    handle to mnColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnPlot_Callback(hObject, eventdata, handles)
% hObject    handle to mnPlot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnSurf_Callback(hObject, eventdata, handles)
handles.Line = surf(handles.CurrentData1, handles.CurrentData2, handles.CurrentData3);
guidata(gcbo, handles);
setGlobalP(1);
switch getGlobalC
    case 1
        set(handles.Line, 'FaceColor', 'interp');
    case 2
        set(handles.Line, 'FaceColor', [1 0 0]);
    case 3
        set(handles.Line, 'FaceColor', [0.4660 0.6740 0.1880]);
    case 4
        set(handles.Line, 'FaceColor', [0 0.4470 0.7410]);
    case 5
        set(handles.Line, 'FaceColor', [0.8500 0.3250 0.0980]);
    case 6
        set(handles.Line, 'FaceColor', [0.3010 0.7450 0.9330]);
    case 7
        set(handles.Line, 'FaceColor', [0 1 1]);
    case 8
        set(handles.Line, 'FaceColor', [1 0 1]);
    case 9
        set(handles.Line, 'FaceColor', [0.4940 0.1840 0.5560]);
    case 10
        set(handles.Line, 'FaceColor', [0.6350 0.0780 0.1840]);
    case 11
        set(handles.Line, 'FaceColor', [0.9290 0.6940 0.1250]);
    case 12
        set(handles.Line, 'FaceColor', [0 0 0]);
    case 13
        set(handles.Line, 'FaceColor', [1 1 1]);
    case 14
        set(handles.Line, 'FaceColor', 'flat');
end
set(handles.plot, 'Value', 1);
% hObject    handle to mnSurf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnSurfc_Callback(hObject, eventdata, handles)
handles.Line = surfc(handles.CurrentData1, handles.CurrentData2, handles.CurrentData3);
guidata(gcbo, handles);
setGlobalP(2);
switch getGlobalC
    case 1
        set(handles.Line, 'FaceColor', 'interp');
    case 2
        set(handles.Line, 'FaceColor', [1 0 0]);
    case 3
        set(handles.Line, 'FaceColor', [0.4660 0.6740 0.1880]);
    case 4
        set(handles.Line, 'FaceColor', [0 0.4470 0.7410]);
    case 5
        set(handles.Line, 'FaceColor', [0.8500 0.3250 0.0980]);
    case 6
        set(handles.Line, 'FaceColor', [0.3010 0.7450 0.9330]);
    case 7
        set(handles.Line, 'FaceColor', [0 1 1]);
    case 8
        set(handles.Line, 'FaceColor', [1 0 1]);
    case 9
        set(handles.Line, 'FaceColor', [0.4940 0.1840 0.5560]);
    case 10
        set(handles.Line, 'FaceColor', [0.6350 0.0780 0.1840]);
    case 11
        set(handles.Line, 'FaceColor', [0.9290 0.6940 0.1250]);
    case 12
        set(handles.Line, 'FaceColor', [0 0 0]);
    case 13
        set(handles.Line, 'FaceColor', [1 1 1]);
    case 14
        set(handles.Line, 'FaceColor', 'flat');
end
set(handles.plot, 'Value', 2);
% hObject    handle to mnSurfc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnSurfl_Callback(hObject, eventdata, handles)
handles.Line = surfl(handles.CurrentData1, handles.CurrentData2, handles.CurrentData3);
guidata(gcbo, handles);
setGlobalP(3);
switch getGlobalC
    case 1
        set(handles.Line, 'FaceColor', 'interp');
    case 2
        set(handles.Line, 'FaceColor', [1 0 0]);
    case 3
        set(handles.Line, 'FaceColor', [0.4660 0.6740 0.1880]);
    case 4
        set(handles.Line, 'FaceColor', [0 0.4470 0.7410]);
    case 5
        set(handles.Line, 'FaceColor', [0.8500 0.3250 0.0980]);
    case 6
        set(handles.Line, 'FaceColor', [0.3010 0.7450 0.9330]);
    case 7
        set(handles.Line, 'FaceColor', [0 1 1]);
    case 8
        set(handles.Line, 'FaceColor', [1 0 1]);
    case 9
        set(handles.Line, 'FaceColor', [0.4940 0.1840 0.5560]);
    case 10
        set(handles.Line, 'FaceColor', [0.6350 0.0780 0.1840]);
    case 11
        set(handles.Line, 'FaceColor', [0.9290 0.6940 0.1250]);
    case 12
        set(handles.Line, 'FaceColor', [0 0 0]);
    case 13
        set(handles.Line, 'FaceColor', [1 1 1]);
    case 14
        set(handles.Line, 'FaceColor', 'flat');
end
set(handles.plot, 'Value', 3);
% hObject    handle to mnSurfl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnMesh_Callback(hObject, eventdata, handles)
handles.Line = mesh(handles.CurrentData1, handles.CurrentData2, handles.CurrentData3);
guidata(gcbo, handles);
setGlobalP(4);
switch getGlobalC
    case 1
        set(handles.Line, 'FaceColor', 'interp');
    case 2
        set(handles.Line, 'FaceColor', [1 0 0]);
    case 3
        set(handles.Line, 'FaceColor', [0.4660 0.6740 0.1880]);
    case 4
        set(handles.Line, 'FaceColor', [0 0.4470 0.7410]);
    case 5
        set(handles.Line, 'FaceColor', [0.8500 0.3250 0.0980]);
    case 6
        set(handles.Line, 'FaceColor', [0.3010 0.7450 0.9330]);
    case 7
        set(handles.Line, 'FaceColor', [0 1 1]);
    case 8
        set(handles.Line, 'FaceColor', [1 0 1]);
    case 9
        set(handles.Line, 'FaceColor', [0.4940 0.1840 0.5560]);
    case 10
        set(handles.Line, 'FaceColor', [0.6350 0.0780 0.1840]);
    case 11
        set(handles.Line, 'FaceColor', [0.9290 0.6940 0.1250]);
    case 12
        set(handles.Line, 'FaceColor', [0 0 0]);
    case 13
        set(handles.Line, 'FaceColor', [1 1 1]);
    case 14
        set(handles.Line, 'FaceColor', 'flat');
end
set(handles.plot, 'Value', 4);
% hObject    handle to mnMesh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnMeshc_Callback(hObject, eventdata, handles)
handles.Line = meshc(handles.CurrentData1, handles.CurrentData2, handles.CurrentData3);
guidata(gcbo, handles);
setGlobalP(5);
switch getGlobalC
    case 1
        set(handles.Line, 'FaceColor', 'interp');
    case 2
        set(handles.Line, 'FaceColor', [1 0 0]);
    case 3
        set(handles.Line, 'FaceColor', [0.4660 0.6740 0.1880]);
    case 4
        set(handles.Line, 'FaceColor', [0 0.4470 0.7410]);
    case 5
        set(handles.Line, 'FaceColor', [0.8500 0.3250 0.0980]);
    case 6
        set(handles.Line, 'FaceColor', [0.3010 0.7450 0.9330]);
    case 7
        set(handles.Line, 'FaceColor', [0 1 1]);
    case 8
        set(handles.Line, 'FaceColor', [1 0 1]);
    case 9
        set(handles.Line, 'FaceColor', [0.4940 0.1840 0.5560]);
    case 10
        set(handles.Line, 'FaceColor', [0.6350 0.0780 0.1840]);
    case 11
        set(handles.Line, 'FaceColor', [0.9290 0.6940 0.1250]);
    case 12
        set(handles.Line, 'FaceColor', [0 0 0]);
    case 13
        set(handles.Line, 'FaceColor', [1 1 1]);
    case 14
        set(handles.Line, 'FaceColor', 'flat');
end
set(handles.plot, 'Value', 5);
% hObject    handle to mnMeshc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnMeshz_Callback(hObject, eventdata, handles)
handles.Line = meshz(handles.CurrentData1, handles.CurrentData2, handles.CurrentData3);
guidata(gcbo, handles);
setGlobalP(6);
switch getGlobalC
    case 1
        set(handles.Line, 'FaceColor', 'interp');
    case 2
        set(handles.Line, 'FaceColor', [1 0 0]);
    case 3
        set(handles.Line, 'FaceColor', [0.4660 0.6740 0.1880]);
    case 4
        set(handles.Line, 'FaceColor', [0 0.4470 0.7410]);
    case 5
        set(handles.Line, 'FaceColor', [0.8500 0.3250 0.0980]);
    case 6
        set(handles.Line, 'FaceColor', [0.3010 0.7450 0.9330]);
    case 7
        set(handles.Line, 'FaceColor', [0 1 1]);
    case 8
        set(handles.Line, 'FaceColor', [1 0 1]);
    case 9
        set(handles.Line, 'FaceColor', [0.4940 0.1840 0.5560]);
    case 10
        set(handles.Line, 'FaceColor', [0.6350 0.0780 0.1840]);
    case 11
        set(handles.Line, 'FaceColor', [0.9290 0.6940 0.1250]);
    case 12
        set(handles.Line, 'FaceColor', [0 0 0]);
    case 13
        set(handles.Line, 'FaceColor', [1 1 1]);
    case 14
        set(handles.Line, 'FaceColor', 'flat');
end
set(handles.plot, 'Value', 6);
% hObject    handle to mnMeshz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnInterp_Callback(hObject, eventdata, handles)
set(handles.Line, 'FaceColor', 'interp');
set(handles.colormap, 'Value', 1);
setGlobalC(1);
% hObject    handle to mnInterp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnRed_Callback(hObject, eventdata, handles)
set(handles.Line, 'FaceColor', [1 0 0]);
set(handles.colormap, 'Value', 2);
setGlobalC(2);
% hObject    handle to mnRed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnGreen_Callback(hObject, eventdata, handles)
set(handles.Line, 'FaceColor', [0.4660 0.6740 0.1880]);
set(handles.colormap, 'Value', 3);
setGlobalC(3);
% hObject    handle to mnGreen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnBlue_Callback(hObject, eventdata, handles)
set(handles.Line, 'FaceColor', [0 0.4470 0.7410]);
set(handles.colormap, 'Value', 4);
setGlobalC(4);
% hObject    handle to mnBlue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnOrange_Callback(hObject, eventdata, handles)
set(handles.Line, 'FaceColor', [0.8500 0.3250 0.0980]);
set(handles.colormap, 'Value', 5);
setGlobalC(5);
% hObject    handle to mnOrange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnWhiteBlue_Callback(hObject, eventdata, handles)
set(handles.Line, 'FaceColor', [0.3010 0.7450 0.9330]);
set(handles.colormap, 'Value', 6);
setGlobalC(6);
% hObject    handle to mnWhiteBlue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnCyan_Callback(hObject, eventdata, handles)
set(handles.Line, 'FaceColor', [0 1 1]);
set(handles.colormap, 'Value', 7);
setGlobalC(7);
% hObject    handle to mnCyan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnMagenta_Callback(hObject, eventdata, handles)
set(handles.Line, 'FaceColor', [1 0 1]);
set(handles.colormap, 'Value', 8);
setGlobalC(8);
% hObject    handle to mnMagenta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnViolet_Callback(hObject, eventdata, handles)
set(handles.Line, 'FaceColor', [0.4940 0.1840 0.5560]);
set(handles.colormap, 'Value', 9);
setGlobalC(9);
% hObject    handle to mnViolet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnRedRose_Callback(hObject, eventdata, handles)
set(handles.Line, 'FaceColor', [0.6350 0.0780 0.1840]);
set(handles.colormap, 'Value', 10);
setGlobalC(10);
% hObject    handle to mnRedRose (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnYellow_Callback(hObject, eventdata, handles)
set(handles.Line, 'FaceColor', [0.9290 0.6940 0.1250]);
set(handles.colormap, 'Value', 11);
setGlobalC(11);
% hObject    handle to mnYellow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnBlack_Callback(hObject, eventdata, handles)
set(handles.Line, 'FaceColor', [0 0 0]);
set(handles.colormap, 'Value', 12);
setGlobalC(12);
% hObject    handle to mnBlack (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnWhite_Callback(hObject, eventdata, handles)
set(handles.Line, 'FaceColor', [1 1 1]);
set(handles.colormap, 'Value', 13);
setGlobalC(13);
% hObject    handle to mnWhite (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnFlat_Callback(hObject, eventdata, handles)
set(handles.Line, 'FaceColor', 'flat');
set(handles.colormap, 'Value', 14);
setGlobalC(14);
% hObject    handle to mnFlat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnBtn_Callback(hObject, eventdata, handles)
btn1_Callback(hObject, eventdata, handles);
% hObject    handle to mnBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnTaker_Callback(hObject, eventdata, handles)
close("dale")
run("taker")
% hObject    handle to mnTaker (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnDale_Callback(hObject, eventdata, handles)
close("dale")
run("dale")
% hObject    handle to mnDale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function setGlobalP(val)
global P
P = val;

function setGlobalC(val)
global C
C = val;

function r = getGlobalP
global P
r = P;

function r = getGlobalC
global C
r = C;