syms x y; %Definiendo las variables de la forma implicita a derivar 

'f(x,y)=0'; % Aqui se define la forma que tendra la igualdad en la derivada,una vez hecha la igualdad a cero se procede a hacer la formula de derivación implicita

'yprima=-Fx/Fy'; %En esta parte se obtiene la derivada de y respecto de x, obtenida a partir de la derivación implicita.

f=(y^(-1))-x

yprima= -diff(f,x)/diff(f,y) %Mediante esta formula se encuentra la expresión de derivada implicita que se requiere.

%Ahora se indica la ecuación que permita hallar la familia de trayectorias ortogonales
 %tan(𝜃)= f'(x)-g'(x)/1 + f'(x)g'(x), 𝜃=𝜋/4  
 
fprintf('La ecuación que permite hallar la familia de trayectorias isogonales es: 1 = (%s*dy/dx)/(1+(%s)*dy/dx)',yprima,yprima)
 %se procede a resolver la ecuacuión de variables separables que resulta del paso anterior.

 syms x y c k
%variables simbólicas
f=1; g=(1-(2/(y^2 + 1))); %función
I=x %integral dx
pretty(I)
T=int(g) %integral dy
pretty(T)
fprintf('La solución de la ecuación diferencial es: %s %s %s',T-I==k)