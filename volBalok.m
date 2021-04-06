function [volume] = volBalok(inputP, inputL, inputT)
p = str2double(inputP);
l = str2double(inputL);
t = str2double(inputT);
volume = p * l * t;
