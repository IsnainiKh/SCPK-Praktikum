function varargout = knn(varargin)
% KNN MATLAB code for knn.fig
%      KNN, by itself, creates a new KNN or raises the existing
%      singleton*.
%
%      H = KNN returns the handle to a new KNN or the handle to
%      the existing singleton*.
%
%      KNN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KNN.M with the given input arguments.
%
%      KNN('Property','Value',...) creates a new KNN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before knn_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to knn_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help knn

% Last Modified by GUIDE v2.5 25-Apr-2021 14:19:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @knn_OpeningFcn, ...
                   'gui_OutputFcn',  @knn_OutputFcn, ...
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


% --- Executes just before knn is made visible.
function knn_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to knn (see VARARGIN)

% Choose default command line output for knn
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes knn wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = knn_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function glucose_Callback(hObject, eventdata, handles)
% hObject    handle to glucose (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of glucose as text
%        str2double(get(hObject,'String')) returns contents of glucose as a double


% --- Executes during object creation, after setting all properties.
function glucose_CreateFcn(hObject, eventdata, handles)
% hObject    handle to glucose (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ins_Callback(hObject, eventdata, handles)
% hObject    handle to ins (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ins as text
%        str2double(get(hObject,'String')) returns contents of ins as a double


% --- Executes during object creation, after setting all properties.
function ins_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ins (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function skin_Callback(hObject, eventdata, handles)
% hObject    handle to skin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of skin as text
%        str2double(get(hObject,'String')) returns contents of skin as a double


% --- Executes during object creation, after setting all properties.
function skin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to skin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bmi_Callback(hObject, eventdata, handles)
% hObject    handle to bmi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bmi as text
%        str2double(get(hObject,'String')) returns contents of bmi as a double


% --- Executes during object creation, after setting all properties.
function bmi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bmi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function prag_Callback(hObject, eventdata, handles)
% hObject    handle to prag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of prag as text
%        str2double(get(hObject,'String')) returns contents of prag as a double


% --- Executes during object creation, after setting all properties.
function prag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to prag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function blood_Callback(hObject, eventdata, handles)
% hObject    handle to blood (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of blood as text
%        str2double(get(hObject,'String')) returns contents of blood as a double


% --- Executes during object creation, after setting all properties.
function blood_CreateFcn(hObject, eventdata, handles)
% hObject    handle to blood (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function diabetes_Callback(hObject, eventdata, handles)
% hObject    handle to diabetes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of diabetes as text
%        str2double(get(hObject,'String')) returns contents of diabetes as a double


% --- Executes during object creation, after setting all properties.
function diabetes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to diabetes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function outcome_Callback(hObject, eventdata, handles)
% hObject    handle to outcome (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of outcome as text
%        str2double(get(hObject,'String')) returns contents of outcome as a double


% --- Executes during object creation, after setting all properties.
function outcome_CreateFcn(hObject, eventdata, handles)
% hObject    handle to outcome (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function age_Callback(hObject, eventdata, handles)
% hObject    handle to age (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of age as text
%        str2double(get(hObject,'String')) returns contents of age as a double


% --- Executes during object creation, after setting all properties.
function age_CreateFcn(hObject, eventdata, handles)
% hObject    handle to age (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

 
opts = detectImportOptions('diabetess.csv ');
opts.SelectedVariableNames = (1:9);
data = readmatrix('diabetess.csv',opts)
set(handles.uitable1,'data',data); 




% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
prag = str2double(get(handles.prag,'string'));  
glucose = str2double(get(handles.glucose,'string'));  
blood = str2double(get(handles.blood,'string'));  
skin = str2double(get(handles.skin,'string'));  
ins = str2double(get(handles.ins,'string'));  
bmi = str2double(get(handles.bmi,'string'));
diabetes = str2double(get(handles.diabetes,'string'));  
age = str2double(get(handles.age,'string'));

sampel = [prag glucose blood skin ins bmi diabetes age];

opts = detectImportOptions('diabetess.csv ');
opts.SelectedVariableNames = (1:8);
training = readmatrix('diabetess.csv',opts)

opts = detectImportOptions('diabetess.csv ');
opts.SelectedVariableNames = (9);
group = readmatrix('diabetess.csv', opts)


class =fitcknn(training,group, 'NumNeighbors', 3);
klasifikasi = predict(class, sampel);
if(klasifikasi==1)
    klasifikasi='positif diabetes'
    
else
    klasifikasi='negatif diabetes'
end
    
set(handles.outcome, 'string', klasifikasi);


   
 


% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.outcome, 'string', '');
set(handles.prag, 'string', '');
set(handles.glucose, 'string', '');
set(handles.blood, 'string', '');
set(handles.skin, 'string', '');
set(handles.ins, 'string', '');
set(handles.bmi, 'string', '');
set(handles.diabetes, 'string', '');
set(handles.age, 'string', '');



