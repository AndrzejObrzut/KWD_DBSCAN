clc;
clear;

iris = load('iris');
SetOfPoints = iris.data;

eps = 0.4;
minPts = 5;

result = dbscan(SetOfPoints, eps, minPts);

