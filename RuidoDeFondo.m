%%%%%CODIGO PARA SACAR EL PROMEDIO DEL ESPECTRO DE POTENCIA DE LA BOBINA O
%%%%%LA FUNCION DE TRANSFERENCIA DEL SENSOR%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % % % clc,
% % % % % close all
% % % % % % % % % clear all
% % % % % T=input('Ingrese tiempo de duracion de la (ADQUISICION DE LA SEÑAL DE LA BOBINA)')
% % % % % fm=input('Ingrese frecuencia de muestreo')
% % % % % MM=input('Ingrese numero de repeticiones del experimento para sacar promedio')
% % % % % ini=input('Ingrese frecuencia de inicio de ventana');
% % % fin=input('Ingrese frecuencia de fin de intervalo')
% % % clc
% % % clear all
% % % close all
% % % T=1;
% % % MM=4;
% % % fm=10000
% % % ini=0
% % % fin=150
% % % esco=2;
function [ PP xx P x X mma mmi]=RuidoDeFondo(T,MM,fm,ini,fin,esco,fdada);
%%%%%%%%%%%%%%%%%%%%%%%%%%SECCION DE ESCUCHA DEL AGUA%%%%%%%%%%%%%%%%%%%%%%
%%%%%COMANDO PARA ADQUIRIR LA SEÑAL%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:MM
m=(25000-2500)/(10-1);
AmMaxFFT=m*T;
a=audiorecorder(22050,16,1);
recordblocking(a,T);
f=getaudiodata(a);
%%play(a);
%figure,plot(f);
%f=wavrecord(T*fm,fm,1);  %%%para Matlab 2011
%sound(x,fm); %%%%para probar que si grabó
x=[0:1/fm:T];                            %%Vector de puntos de muestreo o señal acustica completa
                                         %%Vector de puntos de muestreo o señal acustica completa
%%f=0.9*sin(20*2*pi*x);                    %%%esta solo en el caso de querer componer una función teórica
% % % f1=sin(10*2*pi*x);      %%FUNCION TEORICA DE MOIFICACION
% % % f2=sin(30*2*pi*x); 
% % % f3=sin(40*2*pi*x);
% % % Resultat=[f1 f2 f3];
% % % f=Resultat;
N=length(x);                             % Numero de muestras de la señal acustica
F=fft(f)/sqrt(N);                        % trasformada de Fourier de f
omega=0.5*fm*linspace(0,1,floor(N/2)+1); % vector de frecuencias discretas
range=(1:floor(N/2)+1);                  % rango del espectro de potencia
p=abs(F(range)).^2;                      % espectro de potencia de la señal f o vector y de amplitudes
Pmodi=sqrt(p./AmMaxFFT);
Pmodi2=Pmodi.^2;
% % if i==1 
% % figure,subplot(2,2,1),plot(f), xlabel('Tiempo'), ylabel('Amplitud'),title('Señal teorica de prueba');
% % subplot(2,2,2),plot(omega,p), xlabel('Frecuencia'), ylabel('p'),title('Espectro de potencia de la señal f')
% % subplot(2,2,3),plot(omega,Pmodi),xlabel('Frecuencia'), ylabel('Amplitud'),title('Espectro de potencia de la señal f Modificado')
% % subplot(2,2,4),plot(omega,Pmodi2),xlabel('Frecuencia'), ylabel('Intensidad'),title('Espectro de potencia de la señal f Modificado.^2')
% % end
%%%%ETAPA DE ADQUISICION DE LA SEÑAL%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pause(T);
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
end
Ini=ini*T+1; %%aqiu se ve que empieza la frecuencia seleccoinada en P
Fin=fin*T+1; %%aqiu se ve que empieza la frecuencia seleccoinada en P
PP=P(Ini:Fin,:);
xx=ini:1/T:fin;
%%%figure,plot(xx,PP);%%%%ESTA ES LA GRAFICA BUENA, SE DEJA PARA
%%%COMPARACION CON LAS VENTANAS DE FRECUENCIA QUE TENIAN PROBLEMAS
%%%%%REPRESENTACION GRAFICA DE LAS SEÑALES ADQUIRIDAS%%%%%%%%%%%%%%%%%%%%%%
%figure,plot(P(ini:fin,:)),title('Espectro de potencia de las seales adquiridas'),xlabel('frecuencia'),ylabel('Amlpitud');
%%%%%REPRESENTACION GRAFICA DE LAS SEÑALES ADQUIRIDAS%%%%%%%%%%%%%%%%%%%%%%
if MM==1
figure,plot(X(:,1)),title('Registros de señal 1')
end
if MM==2
figure,subplot(1,2,1),plot(X(:,1)),title('Registros de señal 1'),subplot(1,2,2),plot(X(:,2)),title('Registros de señal 2')
end
if MM==3
figure,subplot(2,2,1),plot(X(:,1)),title('Registros de señal 1'),subplot(2,2,2),plot(X(:,2)),title('Registros de señal 2'),subplot(2,2,3),plot(X(:,3)),title('Registros de señal 3')
end
if MM==4
figure,subplot(2,2,1),plot(X(:,1)),title('Registros de señal 1'),subplot(2,2,2),plot(X(:,2)),title('Registros de señal 2'),subplot(2,2,3),plot(X(:,3)),title('Registros de señal 3'),
subplot(2,2,4),plot(X(:,4)),title('Registros de señal 4')
end
if MM==5
figure,subplot(3,2,1),plot(X(:,1)),title('Registros de señal 1'),subplot(3,2,2),plot(X(:,2)),title('Registros de señal 2'),subplot(3,2,3),plot(X(:,3)),title('Registros de señal 3'),
subplot(3,2,4),plot(X(:,4)),title('Registros de señal 4'), subplot(3,2,5),plot(X(:,5)),title('Registros de señal 5');
end
if MM==6
figure,subplot(3,2,1),plot(X(:,1)),title('Registros de señal 1'),subplot(3,2,2),plot(X(:,2)),title('Registros de señal 2'),subplot(3,2,3),plot(X(:,3)),title('Registros de señal 3')
subplot(3,2,4),plot(X(:,4)),title('Registros de señal 4'),subplot(3,2,5),plot(X(:,5)),title('Registros de señal 5'), subplot(3,2,6),plot(X(:,6)),title('Registros de señal'),title('Registros de señal 5');
end
if MM==8
figure,subplot(4,2,1),plot(X(:,1)),title('Registros de señal 1'),subplot(4,2,2),plot(X(:,2)),title('Registros de señal 2'), subplot(4,2,3),plot(X(:,3)),title('Registros de señal 3'),subplot(4,2,4),plot(X(:,4)),title('Registros de señal 4'),
subplot(4,2,5),plot(X(:,5)),title('Registros de señal 5'),subplot(4,2,6),plot(X(:,6)),title('Registros de señal 6'),subplot(4,2,7),plot(X(:,7)), title('Registros de señal 7'),subplot(4,2,8),plot(X(:,8)),title('Registros de señal'),title('Registros de señal 8');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%REPRESENTACION GRAFICA DEL ESPECTRO DE POTENCIA DE LAS SEÑALES ADQUIRIDAS%%%%%%%%%%%%%%%%%%%%%%
%%%%%figure,plot(P(ini:fin,:)),title('Espectro de potencia de las seales adquiridas'),xlabel('frecuencia'),ylabel('Amlpitud');
%%%%%REPRESENTACION GRAFICA DE LAS SEÑALES ADQUIRIDAS%%%%%%%%%%%%%%%%%%%%%%
% % if MM==1
% %    figure,subplot(1,2,1),plot(omega,P(:,1)),title('E de señal 1')
% % end
% % if MM==2
% %    figure,subplot(1,2,1),plot(omega,P(:,1)),title('Espectro de señal 1'),subplot(1,2,2),plot(omega,P(:,2)),title('Espectro de señal 2')
% % end
% % if MM==3
% %    figure,subplot(2,2,1),plot(omega,P(:,1)),title('Espectro de señal 1'),subplot(2,2,2),plot(omega,P(:,2)),title('Espectro de señal 2'),subplot(2,2,3),plot(omega,P(:,3)),title('Espectro de señal 3')
% % end
% % if MM==4
% %    figure,subplot(2,2,1),plot(omega,P(:,1)),title('Espectro de señal 1'),subplot(2,2,2),plot(omega,P(:,2)),title('Espectro de señal 2'),subplot(2,2,3),plot(omega,P(:,3)),title('Espectro de señal 3'),
% %    subplot(2,2,4),plot(omega,P(:,4)),title('Espectro de señal 4')
% % end
% % if MM==5
% %   figure,subplot(3,2,1),plot(omega,P(:,1)),title('Espectro de señal 1'),subplot(3,2,2),plot(omega,P(:,2)),title('Espectro de señal 2'),subplot(3,2,3),plot(omega,P(:,3)),title('Espectro de señal 3'),
% %   subplot(3,2,4),plot(omega,P(:,4)),title('Registros de señal 4'), subplot(3,2,5),plot(omega,P(:,5)),title('Registros de señal 5');
% % end
% % if MM==6
% %   figure,subplot(3,2,1),plot(omega,P(:,1)),title('Espectro de señal 1'),subplot(3,2,2),plot(omega,P(:,2)),title('Espectro de señal 2'),subplot(3,2,3),plot(omega,P(:,3)),title('Espectro de señal 3')
% %   subplot(3,2,4),plot(omega,P(:,4)),title('Espectro de señal 4'),subplot(3,2,5),plot(omega,P(:,5)),title('Espectro de señal 5'), subplot(3,2,6),plot(omega,P(:,6)),title('Espectro de señal'),title('Espectro de señal 5');
% % end
% % if MM==8
% %   figure,subplot(4,2,1),plot(omega,P(:,1)),title('Espectro de señal 1'),subplot(4,2,2),plot(omega,P(:,2)),title('Espectro de señal 2'), subplot(4,2,3),plot(omega,P(:,3)),title('Espectro de señal 3'),subplot(4,2,4),plot(omega,P(:,4)),title('Espectro de señal 4'),
% %   subplot(4,2,5),plot(omega,P(:,5)),title('Espectro de señal 5'),subplot(4,2,6),plot(omega,P(:,6)),title('Espectro de señal 6'),subplot(4,2,7),plot(omega,P(:,7)), title('Espectro de señal 7'),subplot(4,2,8),plot(omega,P(:,8)),title('Espectro de señal'),title('Espectro de señal 8');
% % end
%%%%%%%%%%%%%GRAFICA DE LOS ESPECTROS DE POTENCIA DE TODAS LAS SEÑAELES
%%%%%%%%%%%%%SOBREPUESTOS SOBRE EL INTERVALO DE FRECUENCIA DE INTERES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if MM==1
   figure,plot(xx,PP(:,1)),title('Ventana del Espectro 1');
end
if MM==2
   figure,subplot(1,2,1),plot(xx,PP(:,1)),title('Ventana del Espectro  1'),subplot(1,2,2),plot(xx,PP(:,2)),title('Ventana del Espectro  2')
end
if MM==3
   figure,subplot(2,2,1),plot(xx,PP(:,1)),title('Ventana del Espectro  1'),subplot(2,2,2),plot(xx,PP(:,2)),title('Ventana del Espectro  2'),subplot(2,2,3),plot(xx,PP(:,3)),title('Ventana del Espectro  3')
end
if MM==4
   figure,subplot(2,2,1),plot(xx,PP(:,1)),title('Ventana del Espectro  1'),subplot(2,2,2),plot(xx,PP(:,2)),title('Ventana del Espectro  2'),subplot(2,2,3),plot(xx,PP(:,3)),title('Ventana del Espectro  3'),
   subplot(2,2,4),plot(xx,PP(:,4)),title('Ventana del Espectro  4');
end
if MM==5
  figure,subplot(3,2,1),plot(xx,PP(:,1)),title('Ventana del Espectro  1'),subplot(3,2,2),plot(xx,PP(:,2)),title('Ventana del Espectro  2'),subplot(3,2,3),plot(xx,PP(:,3)),title('Ventana del Espectro  3'),
  subplot(3,2,4),plot(xx,PP(:,4)),title('Ventana del Espectro  4'), subplot(3,2,5),plot(xx,PP(:,5)),title('Ventana del Espectro  5');
end
if MM==6
  figure,subplot(3,2,1),plot(xx,PP(:,1)),title('Ventana del Espectro  1'),subplot(3,2,2),plot(xx,PP(:,2)),title('Ventana del Espectro  2'),subplot(3,2,3),plot(xx,PP(:,3)),title('Ventana del Espectro  3')
  subplot(3,2,4),plot(xx,PP(:,4)),title('Ventana del Espectro  4'),subplot(3,2,5),plot(xx,PP(:,5)),title('Ventana del Espectro  5'), subplot(3,2,6),plot(xx,PP(:,6)),title('Espectro de señal 5');
end
if MM==8
  figure,subplot(4,2,1),plot(xx,PP(:,1)),title('Ventana del Espectro  1'),subplot(4,2,2),plot(xx,PP(:,2)),title('Ventana del Espectro  2'), subplot(4,2,3),plot(xx,PP(:,3)),title('Ventana del Espectro  3'),subplot(4,2,4),plot(xx,PP(:,4)),title('Ventana del Espectro  4'),
  subplot(4,2,5),plot(xx,PP(:,5)),title('Ventana del Espectro  5'),subplot(4,2,6),plot(xx,PP(:,6)),title('Ventana del Espectro  6'),subplot(4,2,7),plot(xx,PP(:,7)), title('Ventana del Espectro  7'),subplot(4,2,8),plot(xx,PP(:,8)),title('Ventana del Espectro  8');
end
%%%figure,plot(P(ini:fin,:)),title('Espectro de potencia de las seales adquiridas'),xlabel('frecuencia'),ylabel('Amlpitud');
%%%%%GRAFICAS DE LAS ETIQUETAS DE PICOS PARA CADA SEÑAL%%%%%%%%%%%%%%%%%%%%%%%%%REGISTRADA%%%%%%%%%%%%%%
% % if MM==1
% % figure('Name','Sample graph'),plot(xx,PP,'--.'),title('Espectro de potencia para el intervalo de frecuencias seleccionado'),legend('Pimera');
% % [M,N]=size(PP);
% % for j=1:N
% %    for i=1:M
% %      if PP(i,j)>0
% %         text(xx(1,i),PP(i,j),['\leftarrow (', num2str(xx(1,i)),';',num2str(PP(i,j)), ')']);
% %      end
% %    end
% % end
% % end
% % if MM==2
% % figure('Name','Sample graph'),plot(xx,PP,'--.'),title('Espectro de potencia para el intervalo de frecuencias seleccionado');
% % legend('Pimera','Segunda');
% % [M,N]=size(PP);
% % for j=1:N
% %    for i=1:M
% %      if PP(i,j)>0
% %         text(xx(1,i),PP(i,j),['\leftarrow (', num2str(xx(1,i)),';',num2str(PP(i,j)), ')']);
% %      end
% %    end
% % end
% % end
% % if MM==1
% % figure('Name','Sample graph'),plot(xx,PP,'--.'),title('Espectro de potencia para el intervalo de frecuencias seleccionado');
% % legend('Pimera','Segunda','Tercera');
% % [M,N]=size(PP);
% % for j=1:N
% %    for i=1:M
% %      if PP(i,j)>0
% %         text(xx(1,i),PP(i,j),['\leftarrow (', num2str(xx(1,i)),';',num2str(PP(i,j)), ')']);
% %      end
% %    end
% % end
% % end
% % if MM==4
% % figure('Name','Sample graph'),plot(xx,PP,'--.'),title('Espectro de potencia para el intervalo de frecuencias seleccionado');
% % legend('Pimera','Segunda','Tercera','Cuarta');
% % [M,N]=size(PP);
% % for j=1:N
% %    for i=1:M
% %      if PP(i,j)>0
% %         text(xx(1,i),PP(i,j),['\leftarrow (', num2str(xx(1,i)),';',num2str(PP(i,j)), ')']);
% %      end
% %    end
% % end
% % end
% % if MM==5
% % figure('Name','Sample graph'),plot(xx,PP,'--.'),title('Espectro de potencia para el intervalo de frecuencias seleccionado');
% % legend('Pimera','Segunda','Tercera','Cuarta','Quinta');
% % [M,N]=size(PP);
% % for j=1:N
% %    for i=1:M
% %      if PP(i,j)>0
% %         text(xx(1,i),PP(i,j),['\leftarrow (', num2str(xx(1,i)),';',num2str(PP(i,j)), ')']);
% %      end
% %    end
% % end
% % end
% % if MM==6
% % figure('Name','Sample graph'),plot(xx,PP,'--.'),title('Espectro de potencia para el intervalo de frecuencias seleccionado');
% % legend('Pimera','Segunda','Tercera','Cuarta','Quinta','Sexta');
% % [M,N]=size(PP);
% % for j=1:N
% %    for i=1:M
% %      if PP(i,j)>0
% %         text(xx(1,i),PP(i,j),['\leftarrow (', num2str(xx(1,i)),';',num2str(PP(i,j)), ')']);
% %      end
% %    end
% % end
% % end
% % if MM==7
% % figure('Name','Sample graph'),plot(xx,PP,'--.'),title('Espectro de potencia para el intervalo de frecuencias seleccionado')
% % legend('Pimera','Segunda','Tercera','Cuarta','Quinta','Sexta','Septima');
% % [M,N]=size(PP);
% % for j=1:N
% %    for i=1:M
% %      if PP(i,j)>0
% %         text(xx(1,i),PP(i,j),['\leftarrow (', num2str(xx(1,i)),';',num2str(PP(i,j)), ')']);
% %      end
% %    end
% % end
% % end
% % if MM==8
% % figure('Name','Sample graph'),plot(xx,PP,'--.'),title('Espectro de potencia para el intervalo de frecuencias seleccionado')
% % legend('Pimera','Segunda','Tercera','Cuarta','Quinta','Sexta','Septima','Octava');
% % [M,N]=size(PP);
% % for j=1:N
% %    for i=1:M
% %      if PP(i,j)>0
% %         text(xx(1,i),PP(i,j),['\leftarrow (', num2str(xx(1,i)),';',num2str(PP(i,j)), ')']);
% %      end
% %    end
% % end
% % end
%%%%%%%%%%%%%%%%GRAFICA SIN ETIQUETAS DEL ESPETRO DE POTENCIA%%%%%%%%%%%%%%
%%%%figure,plot(xx,PP)
%%%%%%%%%%%%%%%DETECTOR DE PICOS DEL ESPECTRO DE%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%POTENCIA%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pven=PP;
d=diff(pven);
[M,N]=size(d);
h=zeros(M,N);
for j=1:N
if d(M,j)<0
  for i=1:M
     if d(i,j)>0 && d(i+1,j)<0 
        h(i+1,j)=pven(i+1,j); 
     end
  end
end
if  d(M,j)>0    
for i=1:M-1
     if d(i,j)>0 && d(i+1,j)<0
     h(i+1,j)=pven(i+1,j); 
     end
end  
end
end
x=ini:1/T:fin-(1/T);
x=x';
%figure,plot(x,h);
if MM==1
figure('Name','Sample graph'),plot(x,h,'--.'),title('Picos del espectro de potencia para el intervalo de frecuencias seleccionado');
legend('Pimera','Segunda');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Label some points%%%%%%%%%%%%%%%%%%%%%%%%%%
[M,N]=size(h);
for j=1:N
   for i=1:M
     if h(i,j)>0
        text(x(i,1),h(i,j),['\leftarrow (', num2str(x(i,1)),';',num2str(h(i,j)), ')']);
     end
   end
end    
end
if MM==2
figure('Name','Sample graph'),plot(x,h,'--.'),title('Picos del espectro de potencia para el intervalo de frecuencias seleccionado');
legend('Pimera','Segunda');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Label some points%%%%%%%%%%%%%%%%%%%%%%%%%%
[M,N]=size(h);
for j=1:N
   for i=1:M
     if h(i,j)>0
        text(x(i,1),h(i,j),['\leftarrow (', num2str(x(i,1)),';',num2str(h(i,j)), ')']);
     end
   end
end
end
if MM==3
figure('Name','Sample graph'),plot(x,h,'--.'),title('Picos del espectro de potencia para el intervalo de frecuencias seleccionado');
legend('Pimera','Segunda','Tercera')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Label some points%%%%%%%%%%%%%%%%%%%%%%%%%%
[M,N]=size(h);
for j=1:N
   for i=1:M
     if h(i,j)>0
        text(x(i,1),h(i,j),['\leftarrow (', num2str(x(i,1)),';',num2str(h(i,j)), ')']);
     end
   end
end
end
if MM==4
figure('Name','Sample graph'),plot(x,h,'--.'),title('Picos del espectro de potencia para el intervalo de frecuencias seleccionado');
legend('Pimera','Segunda','Tercera','Cuarta')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Label some points%%%%%%%%%%%%%%%%%%%%%%%%%%
[M,N]=size(h);
for j=1:N
   for i=1:M
     if h(i,j)>0
        text(x(i,1),h(i,j),['\leftarrow (', num2str(x(i,1)),';',num2str(h(i,j)), ')']);
     end
   end
end
end
if MM==5
figure('Name','Sample graph'),plot(x,h,'--.'),title('Picos del espectro de potencia para el intervalo de frecuencias seleccionado');
legend('Pimera','Segunda','Tercera','Cuarta','Quinta')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Label some points%%%%%%%%%%%%%%%%%%%%%%%%%%
[M,N]=size(h);
for j=1:N
   for i=1:M
     if h(i,j)>0
        text(x(i,1),h(i,j),['\leftarrow (', num2str(x(i,1)),';',num2str(h(i,j)), ')']);
     end
   end
end
end
if MM==6
figure('Name','Sample graph'),plot(x,h,'--.'),title('Picos del espectro de potencia para el intervalo de frecuencias seleccionado');
legend('Pimera','Segunda','Tercera','Cuarta','Quinta','Sexta')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Label some points%%%%%%%%%%%%%%%%%%%%%%%%%%
[M,N]=size(h);
for j=1:N
   for i=1:M
     if h(i,j)>0
        text(x(i,1),h(i,j),['\leftarrow (', num2str(x(i,1)),';',num2str(h(i,j)), ')']);
     end
   end
end
end
if MM==7
figure('Name','Sample graph'),plot(x,h,'--.'),title('Picos del espectro de potencia para el intervalo de frecuencias seleccionado');
legend('Pimera','Segunda','Tercera','Cuarta','Quinta','Sexta','Septima')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Label some points%%%%%%%%%%%%%%%%%%%%%%%%%%
[M,N]=size(h);
for j=1:N
   for i=1:M
     if h(i,j)>0
        text(x(i,1),h(i,j),['\leftarrow (', num2str(x(i,1)),';',num2str(h(i,j)), ')']);
     end
   end
end
end
if MM==8
figure('Name','Sample graph'),plot(x,h,'--.'),title('Picos del espectro de potencia para el intervalo de frecuencias seleccionado');
legend('Pimera','Segunda','Tercera','Cuarta','Quinta','Sexta','Septima','Octava')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Label some points%%%%%%%%%%%%%%%%%%%%%%%%%%
[M,N]=size(h);
for j=1:N
   for i=1:M
     if h(i,j)>0
        text(x(i,1),h(i,j),['\leftarrow (', num2str(x(i,1)),';',num2str(h(i,j)), ')']);
     end
   end
end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[M,N]=size(h);
p=1;
for j=1:N
    hh=h(:,j);
    hh(hh==0)=[];
    mi(j,1)=min(hh); 
    ma(j,1)=max(hh);
end
mi;
ma;
%%%%%valor minimo de m
mmi=min(mi)
mma=max(ma)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%HISTOGRAMA DE FRECENCIAS%%%%%%%%%%%%%%%%%%%%%%%%%%
h=h';
[M,N]=size(h);
for j=1:N
    if h(:,j)==0
       col(:,j)=j;
       %col(col==0)=[];%%%nos dice cuales son cero
    end     
end
x=x;
[c,z]=size(col);
tam=N-z;
sobra=zeros(1,tam);
Resultat=[col sobra];
col=Resultat;
for i=1:N
    if x(i,1)==col(1,i)
       x(i,1)=0;  %%%vecto de las columnas diferentes de cero
    end
end
 x(x==0)=[];
 [M,N]=size(x);
 x;%%%este vector tiene solo las frecuencias diferentes de cero en la ventana
 h=h';
 x2=1:1:M;
 x2=x2';
 [s,w]=size(h);
 if s>M
  hh=h(2:s,:);%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%)
 end
 if s==M
  hh=h(1:s,:);%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%)
 end
 Resultat=[x2 x hh];
 hh=Resultat;
 [b,v]=size(hh);
 hsol=hh(:,3:v);
 for i=1:M
     if hsol(i,:)==0
        hh(i,2:v)=0;
     end
 end
 hh;
 for i=1:M
     fil=hh(i,3:v);
     fil(fil==0)=[];
     [y,u]=size(fil);
     numveces(i,1)=u;
 end
 Resultat=[x2 x numveces hh(:,3:v).*10000];
 titutlo={'NumeroDeEntrada', 'Frecuencia', 'Repeticiones', 'ValorSenales'}
 Matriz=Resultat
 [f,d]=size(Matriz);
 for ww=1:f
     if Matriz(ww,2)==fdada
        Vec2(1,:)=Matriz(ww,4:d);
        Vec1(1,1)=Matriz(ww,3);
     end
 end
 Vec1
 Vec2
% % %  figure,surf(PP);
% % %  an=xlswrite('Libro1.xls',[X])
%%%%%%%%%%%%%%%%%%%%%%%%FILTROS DE AMPLITUD%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Q=abs(PP).^2;
%figure,plot(xx,Q),title('cuadrado');
%%%%%%En la transformada, eliminamos los elementos con módulo al cuadrado
%%%%%%menores (mayores) que 10 (deje el signo Q< que para amplificar las
%%%%%%señales pequeñas
% % % %XT=PP.*(Q<0.00000001); %%%HACE CERO TODAS LAS FRECUENCIAS SUPERIORES EM APLITUD A 1nT
% % % valor=input('Valor por encima del cual desea filtrar')
% % % XT=PP.*(Q<valor.^2);
% % % figure,plot(xx,XT),title('Espectro filtrado')


%end

%end
 