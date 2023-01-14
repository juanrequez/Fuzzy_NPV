function varargout = ValorPresente(varargin)
% VALORPRESENTE MATLAB code for ValorPresente.fig
%      VALORPRESENTE, by itself, creates a new VALORPRESENTE or raises the existing
%      singleton*.
%
%      H = VALORPRESENTE returns the handle to a new VALORPRESENTE or the handle to
%      the existing singleton*.
%
%      VALORPRESENTE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VALORPRESENTE.M with the given input arguments.
%
%      VALORPRESENTE('Property','Value',...) creates a new VALORPRESENTE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ValorPresente_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ValorPresente_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ValorPresente

% Last Modified by GUIDE v2.5 02-Aug-2016 15:04:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ValorPresente_OpeningFcn, ...
                   'gui_OutputFcn',  @ValorPresente_OutputFcn, ...
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


% --- Executes just before ValorPresente is made visible.
function ValorPresente_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ValorPresente (see VARARGIN)

% Choose default command line output for ValorPresente
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ValorPresente wait for user response (see UIRESUME)
% uiwait(handles.figure1);
ejecutar(handles)

% --- Outputs from this function are returned to the command line.
function varargout = ValorPresente_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function editP0_Callback(hObject, eventdata, handles)
% hObject    handle to editP0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editP0 as text
%        str2double(get(hObject,'String')) returns contents of editP0 as a double
if isnan(str2double(get(hObject,'String')))
    set(hObject,'string','1000');
end

ejecutar(handles)

% --- Executes during object creation, after setting all properties.
function editP0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editP0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editPi_Callback(hObject, eventdata, handles)
% hObject    handle to editPi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editPi as text
%        str2double(get(hObject,'String')) returns contents of editPi as a double
if isnan(str2double(get(hObject,'String')))
    set(hObject,'string','100');
end
ejecutar(handles)

% --- Executes during object creation, after setting all properties.
function editPi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editPi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editn_Callback(hObject, eventdata, handles)
% hObject    handle to editn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editn as text
%        str2double(get(hObject,'String')) returns contents of editn as a double
if isnan(str2double(get(hObject,'String')))
    set(hObject,'string','10');
end
ejecutar(handles)

% --- Executes during object creation, after setting all properties.
function editn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editInteres_Callback(hObject, eventdata, handles)
% hObject    handle to editInteres (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editInteres as text
%        str2double(get(hObject,'String')) returns contents of editInteres as a double
if isnan(str2double(get(hObject,'String')))
    set(hObject,'string','10');
end
ejecutar(handles)

% --- Executes during object creation, after setting all properties.
function editInteres_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editInteres (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editInflacion_Callback(hObject, eventdata, handles)
% hObject    handle to editInflacion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editInflacion as text
%        str2double(get(hObject,'String')) returns contents of editInflacion as a double
if isnan(str2double(get(hObject,'String')))
    set(hObject,'string','10');
end
ejecutar(handles)

% --- Executes during object creation, after setting all properties.
function editInflacion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editInflacion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in radIntNitido.
function radIntNitido_Callback(hObject, eventdata, handles)
% hObject    handle to radIntNitido (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radIntNitido
ejecutar(handles)


% --- Executes on button press in RadIntFar.
function RadIntFar_Callback(hObject, eventdata, handles)
% hObject    handle to RadIntFar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of RadIntFar
ejecutar(handles)


% --- Executes on button press in radIntHalf.
function radIntHalf_Callback(hObject, eventdata, handles)
% hObject    handle to radIntHalf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radIntHalf

ejecutar(handles)


% --- Executes on button press in radIntRound.
function radIntRound_Callback(hObject, eventdata, handles)
% hObject    handle to radIntRound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radIntRound
ejecutar(handles)


% --- Executes on button press in radIntClose.
function radIntClose_Callback(hObject, eventdata, handles)
% hObject    handle to radIntClose (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radIntClose
ejecutar(handles)


% --- Executes on button press in radInfFar.
function radInfFar_Callback(hObject, eventdata, handles)
% hObject    handle to radInfFar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radInfFar
ejecutar(handles)


% --- Executes on button press in radInfRound.
function radInfRound_Callback(hObject, eventdata, handles)
% hObject    handle to radInfRound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radInfRound
ejecutar(handles)


% --- Executes on button press in radInfHalf.
function radInfHalf_Callback(hObject, eventdata, handles)
% hObject    handle to radInfHalf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radInfHalf
ejecutar(handles)


% --- Executes on button press in radInfClose.
function radInfClose_Callback(hObject, eventdata, handles)
% hObject    handle to radInfClose (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radInfClose
ejecutar(handles)


% --- Executes on button press in radInfNitido.
function radInfNitido_Callback(hObject, eventdata, handles)
% hObject    handle to radInfNitido (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radInfNitido
ejecutar(handles)

function ejecutar(handles)
ndf=obtener_inflacion(handles);
ndi=obtener_interes(handles);
Pi=pagos(handles);
P0=desembolso(handles);
ejes=0;

vpn=valoractualneto(-P0,Pi,ndf,ndi);
rango=(vpn(3)-vpn(1));
if rango==0
    rango=vpn(2);
    set(handles.textRango,'visible','off')
    set(handles.text9,'visible','off')
    close(314)
    close(315)
    
else    
    rangondf=ndf(3)-ndf(1);
    if rangondf==0
        miundf=1;
        xndf=ndi(2);
    else
        xndf=ndf(1)-rangondf/10:rangondf/100:ndf(3)+rangondf/10;
        miundf=evaltriangular(ndf,xndf);
        ejes=ejes+1;
        xgraph{ejes}=xndf;
        miugraph{ejes}=miundf;
        xlabelgraph{ejes}='Inflación';
        legendgraph{ejes}='Pertenencia, Inflación';
    end
    
    rangondi=ndi(3)-ndi(1);
    if rangondi==0
        miundi=1;
        xndi=ndi(2);
    else
        xndi=ndi(1)-rangondi/10:rangondi/100:ndi(3)+rangondi/10;
        miundi=evaltriangular(ndi,xndi);
        ejes=ejes+1;
        xgraph{ejes}=xndi;
        miugraph{ejes}=miundi;
        xlabelgraph{ejes}='Interes nominal';
        legendgraph{ejes}='Pertenencia, Interés nominal';
    end
    

    x=vpn(1)-rango/10:rango/100:vpn(3)+rango/10;
    miu=evaltriangular(vpn,x);
    
    
    rangostr=['[',num2str(vpn(1)),'  ',num2str(vpn(3)),']'];
    set(handles.textRango,'visible','on')
    set(handles.text9,'visible','on')
    set(handles.textRango,'string',rangostr);
    figure(314)
    for i=1:ejes
        subplot(1,ejes,i)
        plot(xgraph{i},miugraph{i})
        xlabel(xlabelgraph{i})
        ylabel('pertenencia')
        axis([xgraph{i}(1) xgraph{i}(end) 0 1])
%         legend(legendgraph{i})
    end
    figure(315)
    plot(x,miu)
    xlabel('valor presente neto')
    ylabel('pertenencia')
end


vpno=ordinario(vpn,1);
set(handles.textVPN,'string',num2str(vpno));
vpno=ordinario(vpn,2);
set(handles.textVPN2,'string',num2str(vpno));
vpno=ordinario(vpn,3);
set(handles.textVPN3,'string',num2str(vpno));





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function ndf=obtener_inflacion(handles)

if get(handles.radInfNitido,'value')
    porcentaje=0;
elseif get(handles.radInfClose,'value')
    porcentaje=25;
elseif get(handles.radInfRound,'value')
    porcentaje=50;
elseif get(handles.radInfHalf,'value')
    porcentaje=75;
elseif get(handles.radInfFar,'value')
    porcentaje=100;
else
    set(handles.radInfClose,'value',1)
    porcentaje=25;
end

ndfl=str2double(get(handles.editInflacion,'string'))*(1-porcentaje/100);
ndfh=str2double(get(handles.editInflacion,'string'))*(1+porcentaje/100);

ndf=[ndfl (ndfl+ndfh)/2 ndfh]/100;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function ndi=obtener_interes(handles)

if get(handles.radIntNitido,'value')
    porcentaje=0;
elseif get(handles.radIntClose,'value')
    porcentaje=25;
elseif get(handles.radIntRound,'value')
    porcentaje=50;
elseif get(handles.radIntHalf,'value')
    porcentaje=75;
elseif get(handles.RadIntFar,'value')
    porcentaje=100;
else
    set(handles.radIntClose,'value',1)
    porcentaje=25;
end

ndil=str2double(get(handles.editInteres,'string'))*(1-porcentaje/100);
ndih=str2double(get(handles.editInteres,'string'))*(1+porcentaje/100);

ndi=[ndil (ndil+ndih)/2 ndih]/100;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function Pi=pagos(handles)

n=str2double(get(handles.editn,'string'));
Pi=ones(1,n)*str2double(get(handles.editPi,'string'));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function P0=desembolso(handles)
P0=str2double(get(handles.editP0,'string'));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
