clc;
clear;

iris = load('iris');
SetOfPoints = iris.data;

eps = 0.1;
minPts = 15;

result = dbscan(SetOfPoints, eps, minPts);
