function h=LP_filter(Xmax,Ymax,f)

h=zeros(Xmax,Ymax);
xo=ceil(Xmax*f);
yo=ceil(Ymax*f);
h(1:xo,1:yo)=1;
h(Xmax-xo+2:Xmax,1:yo)=1;
h(1:xo,Ymax-yo+2:Ymax)=1;
h(Xmax-xo+2:Xmax,Ymax-yo+2:Ymax)=1;