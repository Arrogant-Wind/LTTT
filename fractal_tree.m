function fractal_tree(x1,y1,angle,alpha,L,n)
  %x1,y1 la toa do cua diem ban dau
  %angle la goc ban dau so voi truc hoanh, chon =90
  %alpha la goc lech
  %L la do dai doan ban dau
  %n la bac cua fractal
  tic
  axis equal;
	x2=x1 + (L*cosd(angle));
	y2=y1 + (L*sind(angle));
	
	
	if n>=1
	line([x1 x2], [y1 y2], 'LineWidth', 2);
	fractal_tree(x2,y2,angle -alpha,alpha,L/2,n-1);
	fractal_tree(x2,y2,angle +alpha,alpha,L/2,n-1);
	pause(0.01);
end
toc
end