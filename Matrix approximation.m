%Aproksymacja Grzegorz Gra¿ewicz s183208
disp('Aproksymacja funkcji metod¹ najmniejszych kwadratów');
x=[0.03, 0.17, 0.24, 0.32, 0.47, 0.52, 0.64, 0.76, 0.86];
y=[6.75, 5.43, 4.88, 4.09, 2.82, 2.28, 1.26, 0.17, -0.71];

n=9;

suma_x=sum(x);
suma_y=sum(y);
suma_x2=sum(x.*x);

suma_xy=sum(x.*y);
iloczyn_xy=(suma_x * suma_y);
iloczyn_xxy=(suma_x*suma_xy);
iloczyn_yx2=suma_y*suma_x2;


c0=(iloczyn_yx2-iloczyn_xxy)/(n * suma_x2-(suma_x)^2);
c1=(n*suma_xy-iloczyn_xy)/(n * suma_x2-(suma_x)^2);


disp("c0= ")
disp(c0)

disp("c1= ")
disp(c1)

yz = c1*x +c0;

disp("y^= ")
disp(yz)

roznica_y=abs(yz-y);

disp("roznica y^ i y= ")
disp(roznica_y)

suma_z= sum((y-yz).^2);

wzor=(1/n);

sigma_y=wzor*suma_z;

disp("sigma (blad sredniokwadratowy)")
disp(sigma_y)