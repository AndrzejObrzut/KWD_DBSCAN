clc;
clear;

iris = load('iris');
x = iris.data;

eps = 0.1;
minPts = 15;

idx = dbscan(x, eps, minPts);
