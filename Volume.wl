(* ::Package:: *)

ShellVolume[f_]:=
	2\[Pi] \[Integral]x f \[DifferentialD]x

ShellVolume[f_,a_,b_]:=
	ShellVolume[f]/. x -> b - ShellVolume[f]/. x -> a

DiskVolume[f_]:=
	\[Pi] \[Integral]f^2 \[DifferentialD]x

DiskVolume[f_,a_,b_]:= 
	DiskVolume[f]/. x->b - DiskVolume[f]/. x->a

WasherVolume[f_,g_]:=
	\[Pi] \[Integral](f^2-g^2)\[DifferentialD]x

WasherVolume[f_,g_,a_,b_]:=
	WasherVolume[f,g]/. x->b - WasherVolume[f,g]/. x->a
