subplot(2,2,1);
y1=600*ones(1,11);
y2=800*ones(1,11);
y3=1000*ones(1,11);
y4=1200*ones(1,11);
xlim([50,250]);
ylim([500,1300]);
set(gca,'fontsize',28);
set(gca,'YTick',500:100:1300)  
set(gca,'YTickLabel',{'500','600','700','800','900','1000','1100','1200','1300'});  
plot(rc,y1,'-*b',rc,y2,'-sr',rc,y3,'-pg',rc,y4,'->k');
hold on;
xlabel('f_{C}的到达速率(r/s)');
ylabel('最小服务速率(r/s)');
legend('f_{M_{l}}','f_{M_{m}}','f_{M_{h}}','f_{C}');

subplot(2,2,2);
r2=(50:20:250);
y1=[];
y1=800-r2;
y2=800*ones(1,11);
y3=1000*ones(1,11);
y4=1200*ones(1,11);
xlim([50,250]);
ylim([500,1300]);
set(gca,'fontsize',28);
set(gca,'YTick',500:100:1300)  
set(gca,'YTickLabel',{'500','600','700','800','900','1000','1100','1200','1300'});  
plot(rc,y1,'-*b',rc,y2,'-sr',rc,y3,'-pg',rc,y4,'->k');
hold on;
xlabel('f_{C}的到达速率(r/s)');
ylabel('最小服务速率(r/s)');
legend('f_{M_{l}}','f_{M_{m}}','f_{M_{h}}','f_{C}');

subplot(2,2,3);
r3=(50:20:250);
y1=[];
y2=[];
y1=800-r3;
y2=1000-r3;
y3=1000*ones(1,11);
y4=1200*ones(1,11);
xlim([50,250]);
ylim([500,1300]);
set(gca,'fontsize',28);
set(gca,'YTick',500:100:1300)  
set(gca,'YTickLabel',{'500','600','700','800','900','1000','1100','1200','1300'});  
plot(rc,y1,'-*b',rc,y2,'-sr',rc,y3,'-pg',rc,y4,'->k');
hold on;
xlabel('f_{C}的到达速率(r/s)');
ylabel('最小服务速率(r/s)');
legend('f_{M_{l}}','f_{M_{m}}','f_{M_{h}}','f_{C}');

subplot(2,2,4);
rc=(50:10:250);
y1=[];
y2=[];
y3=[];
R=1200;
r2=200;
r3=200;
y1=R-r2-r3-rc;
y2=R-r3-rc;
y3=R-rc;
y4=1200*ones(1,21);
xlim([50,250]);
ylim([500,1300]);
set(gca,'fontsize',28);
set(gca,'YTick',500:100:1300)  
set(gca,'YTickLabel',{'500','600','700','800','900','1000','1100','1200','1300'});  
plot(rc,y1,'-*b',rc,y2,'-sr',rc,y3,'-pg',rc,y4,'->k','LineWidth',1.9);
hold on;
xlabel('f_{C}的到达速率(r/s)');
ylabel('最小服务速率(r/s)');
legend('f_{M_{l}}','f_{M_{m}}','f_{M_{h}}','f_{C}');


