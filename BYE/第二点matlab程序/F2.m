
%概率和时延的关系
% y=(0:0.001:1);
% a=0.006;
% x1=(160-log(y)/a)/600;  %M2M低  
% x2=(160-log(y)/a)/800;  %M2M中
% x3=(120-log(y)/a)/1000;    %M2M高
% x4=(40-log(y)/a)/1200;  %蜂窝用户
% plot(x1,y,'b',x2,y,'r',x3,y,'c',x4,y,'k');
% hold on;
% xlabel('时延边界(s)');
% ylabel('概率边界');

% right
  subplot(2,2,1);  
p=0.2;
a=0.005;
q=-log(p)/a;
x=(50:20:250);
ylim([0,1]);
set(gca,'YTick',0:0.2:1)  
set(gca,'YTickLabel',{'0','0.2','0.4','0.6','0.8','1'});  
y1=(160+q)/600*ones(1,11);
y2=(160+q)/800*ones(1,11);
y3=(120+q)/1000*ones(1,11);
y4=(40+q)/1200*ones(1,11);
plot(x,y1,'-*b',x,y2,'-sr',x,y3,'-pg',x,y4,'->k');
hold on;
xlabel('f_{M_{l}}的到达速率(r/s)');
ylabel('时延边界(s)');
legend('f_{M_{l}}','f_{M_{m}}','f_{M_{h}}','f_{C}');

% right
subplot(2,2,2);
p=0.2;
a=0.005;
q=-log(p)/a;
x=(50:20:250);
ylim([0,1]);
set(gca,'YTick',0:0.4:2);
set(gca,'YTickLabel',{'0','0.4','0.8','1.2','1.6','2'});  
y1=(160+q)./(800-x);
y2=(160+q)/800*ones(1,11);
y3=(120+q)/1000*ones(1,11);
y4=(40+q)/1200*ones(1,11);
plot(x,y1,'-*b',x,y2,'-sr',x,y3,'-pg',x,y4,'->k');
hold on;
xlabel('f_{M_{m}}的到达速率(r/s)');
ylabel('时延边界(s)');
legend('f_{M_{l}}','f_{M_{m}}','f_{M_{h}}','f_{C}');

% right 
subplot(2,2,3);
p=0.2;
a=0.005;
q=-log(p)/a;
x=(50:20:250);
ylim([0,1]);
set(gca,'YTick',0:0.4:2);
set(gca,'YTickLabel',{'0','0.4','0.8','1.2','1.6','2'});  
y1=(160+q)./(800-x);
y2=(160+q)./(1000-x);
y3=(120+q)/1000*ones(1,11);
y4=(40+q)/1200*ones(1,11);
plot(x,y1,'-*b',x,y2,'-sr',x,y3,'-pg',x,y4,'->k');
hold on;
xlabel('f_{M_{h}}的到达速率(r/s)');
ylabel('时延边界(s)');
legend('f_{M_{l}}','f_{M_{m}}','f_{M_{h}}','f_{C}');

% right
subplot(2,2,4);
p=0.2;
a=0.005;
q=-log(p)/a;
x=(50:20:250);
ylim([0,1]);
set(gca,'YTick',0:0.4:2);
set(gca,'YTickLabel',{'0','0.4','0.8','1.2','1.6','2'});  
y1=(160+q)./(800-x);
y2=(160+q)./(1000-x);
y3=(120+q)./(1200-x);
y4=(40+q)/1200*ones(1,11);
plot(x,y1,'-*b',x,y2,'-sr',x,y3,'-pg',x,y4,'->k');
hold on;
xlabel('f_{C}的到达速率(r/s)');
ylabel('时延边界(s)');
legend('f_{M_{l}}','f_{M_{m}}','f_{M_{h}}','f_{C}');

