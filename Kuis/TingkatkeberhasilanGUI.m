function varargout = TingkatkeberhasilanGUI(varargin)
% TINGKATKEBERHASILANGUI MATLAB code for TingkatkeberhasilanGUI.fig
%      TINGKATKEBERHASILANGUI, by itself, creates a new TINGKATKEBERHASILANGUI or raises the existing
%      singleton*.
%
%      H = TINGKATKEBERHASILANGUI returns the handle to a new TINGKATKEBERHASILANGUI or the handle to
%      the existing singleton*.
%
%      TINGKATKEBERHASILANGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TINGKATKEBERHASILANGUI.M with the given input arguments.
%
%      TINGKATKEBERHASILANGUI('Property','Value',...) creates a new TINGKATKEBERHASILANGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TingkatkeberhasilanGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TingkatkeberhasilanGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TingkatkeberhasilanGUI

% Last Modified by GUIDE v2.5 23-Apr-2021 15:45:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TingkatkeberhasilanGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @TingkatkeberhasilanGUI_OutputFcn, ...
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


% --- Executes just before TingkatkeberhasilanGUI is made visible.
function TingkatkeberhasilanGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TingkatkeberhasilanGUI (see VARARGIN)

% Choose default command line output for TingkatkeberhasilanGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TingkatkeberhasilanGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TingkatkeberhasilanGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function style_Callback(hObject, eventdata, handles)
% hObject    handle to style (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
style = str2double(get(hObject, 'String'));
handles.style=style;
guidata(hObject, handles); 
% Hints: get(hObject,'String') returns contents of style as text
%        str2double(get(hObject,'String')) returns contents of style as a double


% --- Executes during object creation, after setting all properties.
function style_CreateFcn(hObject, eventdata, handles)
% hObject    handle to style (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mechanismfault_Callback(hObject, eventdata, handles)
% hObject    handle to mechanismfault (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mechanismfault = str2double(get(hObject, 'String'));
handles.mechanismfault=mechanismfault;
guidata(hObject, handles); 
% Hints: get(hObject,'String') returns contents of mechanismfault as text
%        str2double(get(hObject,'String')) returns contents of mechanismfault as a double


% --- Executes during object creation, after setting all properties.
function mechanismfault_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mechanismfault (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in run.
function run_Callback(hObject, eventdata, handles)
% hObject    handle to run (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = readfis('2_model');
out = evalfis([handles.style handles.mechanismfault],a);
set(handles.edit3, 'string',out);

