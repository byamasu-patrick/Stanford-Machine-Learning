t = [0:0.01:0.98];
y1 = sin(2*pi*4*t);
plot(t, y1);
y2 = cos(2*pi*4*t);

plot(t, y2, 'r');
plot(t, y1);

hold on;
xlabel('Time');
ylabel('Value');
legend('sin', 'cos');
title('My Plot');
cd 'C:\Users\user\Desktop'; 
print -dpng 'myPlot.png';

close
figure(1);
plot(t, y1);
figure(2);
plot(t, y2);
subplot(1,2,1); % Divides plot a 1x2 grid, access first element
plot(t, y1);
subplot(1,2,2);
plot(t,y2);
axis([0.5 1 -1 1])
clf;

A = magic(5)
imagesc(A)
imagesc(magic(20)), colorbar, colormap gray;