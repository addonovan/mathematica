(* ::Package:: *)

InverseFactorial[x_]:=(For[i=1,(i-1)!<x,i++];Return[i-1])
