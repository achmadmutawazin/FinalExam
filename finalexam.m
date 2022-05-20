function varargout = finalexam(varargin)
% FINALEXAM MATLAB code for finalexam.fig
%      FINALEXAM, by itself, creates a new FINALEXAM or raises the existing
%      singleton*.
%
%      H = FINALEXAM returns the handle to a new FINALEXAM or the handle to
%      the existing singleton*.
%
%      FINALEXAM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FINALEXAM.M with the given input arguments.
%
%      FINALEXAM('Property','Value',...) creates a new FINALEXAM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before finalexam_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to finalexam_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help finalexam

% Last Modified by GUIDE v2.5 20-May-2022 09:24:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @finalexam_OpeningFcn, ...
                   'gui_OutputFcn',  @finalexam_OutputFcn, ...
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


% --- Executes just before finalexam is made visible.
function finalexam_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to finalexam (see VARARGIN)

% Choose default command line output for finalexam
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes finalexam wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = finalexam_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in calculate_058.
function calculate_058_Callback(hObject, eventdata, handles)
% hObject    handle to calculate_058 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dataset = readcell('laptop_price.csv', 'Range', 'B2:M100' );
header = readcell('laptop_price.csv', 'E1,H1,L1,M1');
set(handles.uitable1_058, 'Data',dataset, 'ColumnName', header);
k=[1,1,0,0];
w=[1,3,2,4];
[m n]=size (x); 
R=zeros (m,n);
Y=zeros (m,n);
opts = detectImportOptions('laptop_price.csv');
opts.SelectedVariableNames = ();
