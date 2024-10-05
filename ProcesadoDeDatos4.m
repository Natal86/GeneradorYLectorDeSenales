function varargout = ProcesadoDeDatos4(varargin)
% PROCESADODEDATOS4 MATLAB code for ProcesadoDeDatos4.fig
%      PROCESADODEDATOS4, by itself, creates a new PROCESADODEDATOS4 or raises the existing
%      singleton*.
%
%      H = PROCESADODEDATOS4 returns the handle to a new PROCESADODEDATOS4 or the handle to
%      the existing singleton*.
%
%      PROCESADODEDATOS4('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROCESADODEDATOS4.M with the given input arguments.
%
%      PROCESADODEDATOS4('Property','Value',...) creates a new PROCESADODEDATOS4 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ProcesadoDeDatos4_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ProcesadoDeDatos4_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ProcesadoDeDatos4

% Last Modified by GUIDE v2.5 01-Apr-2021 11:27:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ProcesadoDeDatos4_OpeningFcn, ...
                   'gui_OutputFcn',  @ProcesadoDeDatos4_OutputFcn, ...
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


% --- Executes just before ProcesadoDeDatos4 is made visible.
function ProcesadoDeDatos4_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ProcesadoDeDatos4 (see VARARGIN)

% Choose default command line output for ProcesadoDeDatos4
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ProcesadoDeDatos4 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ProcesadoDeDatos4_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function T_Callback(hObject, eventdata, handles)
% hObject    handle to T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T as text
%        str2double(get(hObject,'String')) returns contents of T as a double


% --- Executes during object creation, after setting all properties.
function T_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MM_Callback(hObject, eventdata, handles)
% hObject    handle to MM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MM as text
%        str2double(get(hObject,'String')) returns contents of MM as a double


% --- Executes during object creation, after setting all properties.
function MM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fm_Callback(hObject, eventdata, handles)
% hObject    handle to fm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fm as text
%        str2double(get(hObject,'String')) returns contents of fm as a double


% --- Executes during object creation, after setting all properties.
function fm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fin_Callback(hObject, eventdata, handles)
% hObject    handle to fin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fin as text
%        str2double(get(hObject,'String')) returns contents of fin as a double


% --- Executes during object creation, after setting all properties.
function fin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ini_Callback(hObject, eventdata, handles)
% hObject    handle to ini (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ini as text
%        str2double(get(hObject,'String')) returns contents of ini as a double


% --- Executes during object creation, after setting all properties.
function ini_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ini (see GCBO)
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
T=str2double(get(handles.T,'string'));
MM=str2double(get(handles.MM,'string'));
fm=str2double(get(handles.fm,'string'));
ini=str2double(get(handles.ini,'string'));
fin=str2double(get(handles.fin,'string'));
esco=str2double(get(handles.esco,'string'));
fdada=str2double(get(handles.fdada,'string'));
[ PP xx P x X mma mmi]=RuidoDeFondo(T,MM,fm,ini,fin,esco,fdada);
set(handles.mma,'string',mma);
set(handles.mmi,'string',mmi);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all
clc
clear all


% --- Executes during object creation, after setting all properties.
function uipanel1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function tempo1_Callback(hObject, eventdata, handles)
% hObject    handle to tempo1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tempo1 as text
%        str2double(get(hObject,'String')) returns contents of tempo1 as a double


% --- Executes during object creation, after setting all properties.
function tempo1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tempo1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function opc_Callback(hObject, eventdata, handles)
% hObject    handle to opc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of opc as text
%        str2double(get(hObject,'String')) returns contents of opc as a double


% --- Executes during object creation, after setting all properties.
function opc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to opc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fin1_Callback(hObject, eventdata, handles)
% hObject    handle to fin1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fin1 as text
%        str2double(get(hObject,'String')) returns contents of fin1 as a double


% --- Executes during object creation, after setting all properties.
function fin1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fin1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ini1_Callback(hObject, eventdata, handles)
% hObject    handle to ini1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ini1 as text
%        str2double(get(hObject,'String')) returns contents of ini1 as a double


% --- Executes during object creation, after setting all properties.
function ini1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ini1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T1_Callback(hObject, eventdata, handles)
% hObject    handle to T1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T1 as text
%        str2double(get(hObject,'String')) returns contents of T1 as a double


% --- Executes during object creation, after setting all properties.
function T1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function f1_Callback(hObject, eventdata, handles)
% hObject    handle to f1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f1 as text
%        str2double(get(hObject,'String')) returns contents of f1 as a double


% --- Executes during object creation, after setting all properties.
function f1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MM1_Callback(hObject, eventdata, handles)
% hObject    handle to MM1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MM1 as text
%        str2double(get(hObject,'String')) returns contents of MM1 as a double


% --- Executes during object creation, after setting all properties.
function MM1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MM1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tempo1=str2double(get(handles.tempo1,'string'));
T1=str2double(get(handles.T1,'string'));
f1=str2double(get(handles.f1,'string'));
MM1=str2double(get(handles.MM1,'string'));
ini1=str2double(get(handles.ini1,'string'));
fin1=str2double(get(handles.fin1,'string'));
opc=str2double(get(handles.opc,'string'));
nubi=str2double(get(handles.nubi,'string'));
esco1=str2double(get(handles.esco1,'string'));
[PP1 xx1 P1 mmi1 mma1]=EXPERIMENTO1(tempo1,T1,f1,MM1,ini1,fin1,opc,nubi,esco1);
set(handles.mmi1,'string',mmi1);
set(handles.mma1,'string',mma1);
% % [PP1 xx1 P1]=EXPERIMENTO1(tempo1,T1,f1,MM1,ini1,fin1,opc);



function nubi_Callback(hObject, eventdata, handles)
% hObject    handle to nubi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nubi as text
%        str2double(get(hObject,'String')) returns contents of nubi as a double


% --- Executes during object creation, after setting all properties.
function nubi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nubi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function esco_Callback(hObject, eventdata, handles)
% hObject    handle to esco (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of esco as text
%        str2double(get(hObject,'String')) returns contents of esco as a double


% --- Executes during object creation, after setting all properties.
function esco_CreateFcn(hObject, eventdata, handles)
% hObject    handle to esco (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mmi_Callback(hObject, eventdata, handles)
% hObject    handle to mmi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mmi as text
%        str2double(get(hObject,'String')) returns contents of mmi as a double


% --- Executes during object creation, after setting all properties.
function mmi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mmi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mma_Callback(hObject, eventdata, handles)
% hObject    handle to mma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mma as text
%        str2double(get(hObject,'String')) returns contents of mma as a double


% --- Executes during object creation, after setting all properties.
function mma_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function esco1_Callback(hObject, eventdata, handles)
% hObject    handle to esco1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of esco1 as text
%        str2double(get(hObject,'String')) returns contents of esco1 as a double


% --- Executes during object creation, after setting all properties.
function esco1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to esco1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mmi1_Callback(hObject, eventdata, handles)
% hObject    handle to mmi1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mmi1 as text
%        str2double(get(hObject,'String')) returns contents of mmi1 as a double


% --- Executes during object creation, after setting all properties.
function mmi1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mmi1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mma1_Callback(hObject, eventdata, handles)
% hObject    handle to mma1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mma1 as text
%        str2double(get(hObject,'String')) returns contents of mma1 as a double


% --- Executes during object creation, after setting all properties.
function mma1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mma1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fdada_Callback(hObject, eventdata, handles)
% hObject    handle to fdada (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fdada as text
%        str2double(get(hObject,'String')) returns contents of fdada as a double


% --- Executes during object creation, after setting all properties.
function fdada_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fdada (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fm=str2double(get(handles.fm,'string'));
fdada=str2double(get(handles.fdada,'string'));
tdu=str2double(get(handles.tdu,'string'));
vol=str2double(get(handles.vol,'string'));
[matriz]=Sonido(fm,fdada,tdu,vol);




function tdu_Callback(hObject, eventdata, handles)
% hObject    handle to tdu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tdu as text
%        str2double(get(hObject,'String')) returns contents of tdu as a double


% --- Executes during object creation, after setting all properties.
function tdu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tdu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vol_Callback(hObject, eventdata, handles)
% hObject    handle to vol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vol as text
%        str2double(get(hObject,'String')) returns contents of vol as a double


% --- Executes during object creation, after setting all properties.
function vol_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T=str2double(get(handles.T,'string'));
fm=str2double(get(handles.fm,'string'));
ini=str2double(get(handles.ini,'string'));
fin=str2double(get(handles.fin,'string'));
esco=str2double(get(handles.esco,'string'));
fdada=str2double(get(handles.fdada,'string'));
num=str2double(get(handles.num,'string'));
[XX YY PP]=MAPA(fm,ini,fin,T,esco,num);



function num_Callback(hObject, eventdata, handles)
% hObject    handle to num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of num as text
%        str2double(get(hObject,'String')) returns contents of num as a double


% --- Executes during object creation, after setting all properties.
function num_CreateFcn(hObject, eventdata, handles)
% hObject    handle to num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: place code in OpeningFcn to populate axes1
