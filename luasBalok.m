function [luas] = luasBalok(inputP, inputL, inputT)
p = str2double(inputP);
l = str2double(inputL);
t = str2double(inputT);
luas = 2*((p*l) + (p*t) + (l*t));