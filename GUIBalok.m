function varargout = GUIBalok(varargin)
% GUIBALOK MATLAB code for GUIBalok.fig
%      GUIBALOK, by itself, creates a new GUIBALOK or raises the existing
%      singleton*.
%
%      H = GUIBALOK returns the handle to a new GUIBALOK or the handle to
%      the existing singleton*.
%
%      GUIBALOK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIBALOK.M with the given input arguments.
%
%      GUIBALOK('Property','Value',...) creates a new GUIBALOK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUIBalok_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUIBalok_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUIBalok

% Last Modified by GUIDE v2.5 06-Apr-2021 12:30:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUIBalok_OpeningFcn, ...
                   'gui_OutputFcn',  @GUIBalok_OutputFcn, ...
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


% --- Executes just before GUIBalok is made visible.
function GUIBalok_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUIBalok (see VARARGIN)

% Choose default command line output for GUIBalok
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUIBalok wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUIBalok_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function panjang_Callback(hObject, eventdata, handles)
% hObject    handle to panjang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of panjang as text
%        str2double(get(hObject,'String')) returns contents of panjang as a double


% --- Executes during object creation, after setting all properties.
function panjang_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panjang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lebar_Callback(hObject, eventdata, handles)
% hObject    handle to lebar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lebar as text
%        str2double(get(hObject,'String')) returns contents of lebar as a double


% --- Executes during object creation, after setting all properties.
function lebar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lebar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tinggi_Callback(hObject, eventdata, handles)
% hObject    handle to tinggi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tinggi as text
%        str2double(get(hObject,'String')) returns contents of tinggi as a double


% --- Executes during object creation, after setting all properties.
function tinggi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tinggi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in hitungV.
function hitungV_Callback(hObject, eventdata, handles)
% hObject    handle to hitungV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
inputP = get(handles.panjang, 'string');
inputL = get(handles.lebar, 'string');
inputT = get(handles.tinggi, 'string');

[volume] = volBalok(inputP,inputL,inputT);

set(handles.hasilV, 'string',(volume));


% --- Executes on button press in hitungLP.
function hitungLP_Callback(hObject, eventdata, handles)
% hObject    handle to hitungLP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
inputP = get(handles.panjang, 'string');
inputL = get(handles.lebar, 'string');
inputT = get(handles.tinggi, 'string');
[luas] = luasBalok(inputP, inputL, inputT);
set(handles.hasilLP, 'string', (luas));
