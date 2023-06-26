clc;
clear; close all;

net = load("net.mat");
net = net.trainedNetwork_1;

I = imread("daneZgrzewy\fail\3.jpg");
I = imresize(I, [80, 80]);

[YPred probs] = classify(net,I);

imshow(I);
label = YPred;
title(string(label) + ", " + num2str(100*max(probs),3) + "%");
