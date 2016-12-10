(* ::Package:: *)

PolarIntegral[f_,a_,b_]:=
	PolarIntegral[f,a,b,\[Theta]]

PolarIntegral[f_,a_,b_,x_]:=
	1/2 \!\(
\*SubsuperscriptBox[\(\[Integral]\), \(a\), \(b\)]\(
\*SuperscriptBox[\(f\), \(2\)] \[DifferentialD]x\)\)

PolarD[f_]:=
	PolarD[f,\[Theta]]

PolarD[f_,x_]:=
	D[f Sin[x],x]/D[f Cos[x],x]

PolarD[f_,x_,\[Theta]_]:=
	PolarD[f,x]/.x->\[Theta]	

ParametricD[x_,y_]:=
	ParametricD[x,y,1]

ParametricD[x_,y_,n_]:=
	Simplify[
		If[n==1,
			D[y,t]/D[x,t],
			D[ParametricD[x,y,n-1],t]/D[x,t]
		]
	]

ParametricArcLength[x_,y_,a_,b_]:=
	\!\(
\*SubsuperscriptBox[\(\[Integral]\), \(a\), \(b\)]\(\[Sqrt]\((
\*SuperscriptBox[\(D[x, t]\), \(2\)] + 
\*SuperscriptBox[\(D[y, t]\), \(2\)])\) \[DifferentialD]t\)\)

ParametricTangent[x_,y_,val_]:=
	StringForm[
		"y-(``)=(``)(x-(``))",
		Simplify[y/.t->val],
		Simplify[ParametricD[x,y]/.t->val],
		Simplify[x/.t->val]
	]

RectCoords[\[Theta]_,r_]:=
	{
		x->r Cos[\[Theta]],
		y-> r Sin[\[Theta]]
	}

PolarCoords[x_,y_]:=
	{
		\[Theta]->ArcTan[y/x],
		r->\[Sqrt](x^2+y^2)
	}

ToCartesian[f_]:=
	Simplify[
		x^2+y^2 == f/.\[Theta]->Tan[y/x]
	]



