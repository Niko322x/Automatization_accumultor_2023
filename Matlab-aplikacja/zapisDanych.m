clc; 
clear; 
close all;


tcpServerIp = "";
tcpServerPort = "";
tcpServerAutoConnetct = false;

camSelected1 = "";
camSelected2 = "";
camAutoConnect = false;

savedMask      = "";
selectedNet    = "";

save("settings.mat");