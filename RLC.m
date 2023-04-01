function dx=RLC(t,x)
%-----------------Definicion d los parametros--------------------%
C=0.1e-6;
R=100;
L=4e-3;
frecuencia = 500; % Frecuencia (Hz)
ciclo_de_trabajo = 50; % Ciclo de trabajo (%)
Vin = 2.5*(1+square(2*pi*frecuencia*t,ciclo_de_trabajo));
%-----------------------------------------------------------------%
dx=zeros(2,1);
%-------------definicion de la dinamica del sistema---------------%
dx(1)=x(2);
dx(2)=(1/(L*C))*(-R*C*x(2)-x(1)+Vin);
