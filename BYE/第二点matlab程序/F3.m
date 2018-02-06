% %概率和积压的关系
% y=(0:0.001:1);
% a=0.02;   
% x1=40+40-log(y)/a;     %M2M低  
% x2=30+40-log(y)/a;    %M2M中
% x3=16+40-log(y)/a;    %M2M高
% x4=40-log(y)/a;  %蜂窝用户
% plot(x1,y,'b',x2,y,'r',x3,y,'c',x4,y,'k');
% hold on;
% xlabel('积压长度边界(r)');
% ylabel('概率边界');
% legend('f_{M_{l}}','f_{M_{m}}','f_{M_{h}}','f_{C}');




% right
subplot(2,2,1); 
p=0.2;
a=0.005;
q=-log(p)/a;
x=(50:20:250);
y1=x*0.2+40+q;     %M2M低  
y2=(30+40+q)*ones(1,11);    %M2M中
y3=(16+40+q)*ones(1,11);    %M2M高
y4=(40+q)*ones(1,11);      %蜂窝用户
plot(x,y1,'-*b',x,y2,'-sr',x,y3,'-pg',x,y4,'->k');
hold on;
xlabel('f_{M_{l}}到达速率(r/s)');
ylabel('积压长度边界(r)');
legend('f_{M_{l}}','f_{M_{m}}','f_{M_{h}}','f_{C}');

subplot(2,2,2); 
p=0.2;
a=0.005;
q=-log(p)/a;
x=(50:20:250);
y1=200*120./(800-x)+40+q;     %M2M低  
y2=x*0.15+40+q;    %M2M中
y3=(16+40+q)*ones(1,11);    %M2M高
y4=(40+q)*ones(1,11);      %蜂窝用户
plot(x,y1,'-*b',x,y2,'-sr',x,y3,'-pg',x,y4,'->k');
hold on;
xlabel('f_{M_{m}}到达速率(r/s)');
ylabel('积压长度边界(r)');
legend('f_{M_{l}}','f_{M_{m}}','f_{M_{h}}','f_{C}');

subplot(2,2,3); 
p=0.2;
a=0.005;
q=-log(p)/a;
x=(50:20:250);
y1=200*120./(800-x)+40+q;     %M2M低  
y2=200*120./(1000-x)+40+q;    %M2M中
y3=x*0.08+40+q;    %M2M高
y4=(40+q)*ones(1,11);      %蜂窝用户
plot(x,y1,'-*b',x,y2,'-sr',x,y3,'-pg',x,y4,'->k');
hold on;
xlabel('f_{M_{h}}到达速率(r/s)');
ylabel('积压长度边界(r)');
legend('f_{M_{l}}','f_{M_{m}}','f_{M_{h}}','f_{C}');

subplot(2,2,4); 
p=0.2;
a=0.005;
q=-log(p)/a;
x=(50:20:250);
y1=200*120./(800-x)+40+q;     %M2M低  
y2=200*120./(1000-x)+40+q;    %M2M中
y3=200*80./(1200-x)+40+q;    %M2M高
y4=(40+q)*ones(1,11);      %蜂窝用户
plot(x,y1,'-*b',x,y2,'-sr',x,y3,'-pg',x,y4,'->k');
hold on;
xlabel('f_{C}到达速率(r/s)');
ylabel('积压长度边界(r)');
legend('f_{M_{l}}','f_{M_{m}}','f_{M_{h}}','f_{C}');