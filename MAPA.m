% % clc
% % clear all
% % T=1;
% % esco=1;
% % ini=200;
% % fin=400;
% % fm=10000;
function [XX YY PP]=MAPA(fm,ini,fin,T,esco,num);
for i=1:num
m=(25000-2500)/(10-1);
%T=1;
AmMaxFFT=m*T;
a=audiorecorder(22050, 16, 1);
recordblocking(a,T);
f=getaudiodata(a);
%f=wavrecord(T*fm,fm,1);
x=[0:1/fm:T];                            %%Vector de puntos de muestreo o señal acustica completa
N=length(x);                             % Numero de muestras de la señal acustica
F=fft(f)/sqrt(N);                        % trasformada de Fourier de f
omega=0.5*fm*linspace(0,1,floor(N/2)+1); % vector de frecuencias discretas
range=(1:floor(N/2)+1);                  % rango del espectro de potencia
p=abs(F(range)).^2;                      % espectro de potencia de la señal f o vector y de amplitudes
Pmodi=sqrt(p./AmMaxFFT);
Pmodi2=Pmodi.^2;
X(:,i)=f;%%%%MATRIZ CON EL NUMERO DE SEÑALES SELECCIONADAS
if esco==1
P(:,i)=p;
end
if esco==2
P(:,i)=Pmodi;
end
if esco==3
P(:,i)=Pmodi2;
end
Ini=ini*T+1; %%aqiu se ve que empieza la frecuencia seleccoinada en P
Fin=fin*T+1; %%aqiu se ve que empieza la frecuencia seleccoinada en P
PP=P(Ini:Fin,:);
xx=ini:1/T:fin;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % [mm,nn]=size(xx);
% % VX=zeros(num,nn);
% % VY=zeros(num,nn);
% % xxx=[Ini:1/T:Fin]; xxxt=xxx';
% % yyy=[Ini:1/T:Fin]; yyyt=yyy';
% % xxxx=xxxt*xxx; yyyy=yyyt*yyy;
% % surf(xxx,yyy,PP)
%figure; imagesc(30:40,30:40,a);
%surf(VX,VY,PP)
imagesc(Ini:Fin,Ini:Fin,PP'),shading interp,colormap('jet'),xlabel('Frecuencia (Hz)'), ylabel('Tiempo(s)'),title('Espectro de potencia de la señal f')
pause(0.001);
end
[mm,nn]=size(PP);
x=abs(Ini-Fin)/nn;
y=abs(Ini-Fin)/mm;
X=Ini:x:Fin;
for i=1:mm
    XX(i,:)=X;
end
XX=XX(1:mm,1:nn);
XX=XX./T;
Y=Ini:y:Fin;
Y=Y';
for i=1:nn
    YY(:,i)=Y;
end
YY=YY(1:mm,1:nn);
YY=YY./T;
figure,surf(XX,YY,PP),shading interp,colormap cool,colorbar;
end
