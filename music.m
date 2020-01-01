function m=music()
C= sin(2*pi*262*(0:0.000125:0.4));
D= sin(2*pi*294*(0:0.000125:0.4));
E=sin(2*pi*330*(0:0.000125:0.4));
F=sin(2*pi*349*(0:0.000125:0.4));
G=sin(2*pi*392*(0:0.000125:0.4));
A= sin(2*pi*440*(0:0.000125:0.4));
B= sin(2*pi*484*(0:0.000125:0.4));
Cm= sin(2*pi*523*(0:0.000125:0.4));
Dm= sin(2*pi*587*(0:0.000125:0.4));
Em=sin(2*pi*659*(0:0.000125:0.4));
Fm=sin(2*pi*698*(0:0.000125:0.4));
Bb=sin(2*pi*466*(0:0.000125:0.4));
Gm=sin(2*pi*783*(0:0.000125:0.4));
Am=sin(2*pi*880*(0:0.000125:0.4));
Bm= sin(2*pi*987*(0:0.000125:0.4));

Cdai=sin(2*pi*262*(0:0.000125:0.8));
Ddai= sin(2*pi*294*(0:0.000125:0.8));
Edai=sin(2*pi*330*(0:0.000125:0.8));
Fdai=sin(2*pi*349*(0:0.000125:0.8));
Gdai=sin(2*pi*392*(0:0.000125:0.8));
Adai= sin(2*pi*440*(0:0.000125:0.8));
Bdai= sin(2*pi*484*(0:0.000125:0.8));
Cmdai= sin(2*pi*523*(0:0.000125:0.8));
Dmdai= sin(2*pi*587*(0:0.000125:0.8));
Emdai=sin(2*pi*659*(0:0.000125:0.8));
Fmdai=sin(2*pi*698*(0:0.000125:0.8));
Gmdai=sin(2*pi*783*(0:0.000125:0.8));
Amdai=sin(2*pi*880*(0:0.000125:0.8));
Bmdai=sin(2*pi*987*(0:0.000125:0.8));

Cngan= sin(2*pi*262*(0:0.000125:0.2));
Dngan= sin(2*pi*294*(0:0.000125:0.2));
Engan=sin(2*pi*330*(0:0.000125:0.2));
Fngan=sin(2*pi*349*(0:0.000125:0.2));
Gngan=sin(2*pi*392*(0:0.000125:0.2));
Angan= sin(2*pi*440*(0:0.000125:0.2));
Bngan= sin(2*pi*484*(0:0.000125:0.2));
Cmngan= sin(2*pi*523*(0:0.000125:0.2));
Dmngan= sin(2*pi*587*(0:0.000125:0.2));
Emngan=sin(2*pi*659*(0:0.000125:0.2));
Fmngan=sin(2*pi*698*(0:0.000125:0.2));
Gmngan=sin(2*pi*783*(0:0.000125:0.2));
Amngan=sin(2*pi*880*(0:0.000125:0.2));
Bmngan=sin(2*pi*987*(0:0.000125:0.2));

danhluoi= sin(2*pi*0*(0:0.000125:0.02));
nghi=sin(2*pi*0*(0:0.000125:0.2));
nghingan=sin(2*pi*0*(0:0.000125:0.05));


y1=[G G danhluoi Adai danhluoi Gdai Cmdai danhluoi Bdai nghi];
y2=[G G danhluoi Adai danhluoi Gdai Dmdai danhluoi Cmdai nghi];
y3=[G G Gmdai Emdai Cmdai B Adai nghi];
y4=[A B Cmdai Cmdai danhluoi Adai Dmdai nghi];
y5=[Fm Fm Emdai Cmdai danhluoi Dmdai danhluoi Cmdai];


x3=[ A G A Ddai nghingan D D C D Gdai Gdai nghi nghi];
x41=[G G Cm Cm Adai nghi A Adai G G Fdai nghi nghi];
x42=[G G Cm Cm Adai nghi A Adai G G Adai nghi nghi];
x5=[Ddai E F G Adai nghi A A Bb A Gdai nghi nghi];
x6=[C G G Cmdai Dmdai nghi nghi];
x11=[A Gdai F Edai Ddai nghi nghi];
x7=[ Dm Dm Dm Em Fm nghi F Cm Cm Cm Dm Em nghi];
x8=[ Em Em Emdai nghingan Dm Dm Cmdai nghingan A A danhluoi G Adai nghi];
x9=[ Dm Dm Dm Em Fmdai Fm nghingan nghingan]  ;
x10=[Fm , Gm, Gm ,Gm ,Amdai, Gmdai, nghi, Am , Gm, Fm, Em,Emdai,nghingan, Dmdai,nghi] ;

x=[x3, x41,x5,x11, nghi, x3,x42,x5,x6, nghi,nghi, x7,x8,x9,x10, nghi,x7,x8,x9,x10]
% x la bai 'Co khi nao roi xa'
sound(x);

y=[y1, y2,y3,y4,nghi,y1,y2,y3,y5];
% y la bai happy birthday

sound(y);