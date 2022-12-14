syms x y; %Definiendo las variables de la forma implicita a derivar 

'f(x,y)=0'; % Aqui se define la forma que tendra la igualdad en la derivada,una vez hecha la igualdad a cero se procede a hacer la formula de derivaci贸n implicita

'yprima=-Fx/Fy'; %En esta parte se obtiene la derivada de y respecto de x, obtenida a partir de la derivaci贸n implicita.

f=(y^(-1))-x

yprima= -diff(f,x)/diff(f,y) %Mediante esta formula se encuentra la expresi贸n de derivada implicita que se requiere.

%Ahora se indica la ecuaci贸n que permita hallar la familia de trayectorias ortogonales
 %tan(饾渻)= f'(x)-g'(x)/1 + f'(x)g'(x), 饾渻=饾湅/4  
 
fprintf('La ecuaci贸n que permite hallar la familia de trayectorias isogonales es: 1 = (%s*dy/dx)/(1+(%s)*dy/dx)',yprima,yprima)
 %se procede a resolver la ecuacui贸n de variables separables que resulta del paso anterior.

 syms x y c k
%variables simb贸licas
f=1; g=(1-(2/(y^2 + 1))); %funci贸n
I=x %integral dx
pretty(I)
T=int(g) %integral dy
pretty(T)
fprintf('La soluci贸n de la ecuaci贸n diferencial es: %s %s %s',T-I==k)