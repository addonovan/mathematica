(* ::Package:: *)

SeriesConvergence[f_,n_]:=
	If[
		SumConvergence[f,n]==False,
		"Divergent",
		If[
			SumConvergence[Abs[f], n]==False,
			"Conditionally Convergent",
			"Absolutely Convergent"
		]
	]

TaylorPolynomial[f_,x_,center_,order_]:=
	\!\(
\*SubsuperscriptBox[\(\[Sum]\), \(n = 0\), \(order\)]\(
\*FractionBox[\(D[f, {x, n}]\  /. x\  -> \ center\), \(Factorial[n]\)] 
\*SuperscriptBox[\((x - center)\), \(n\)]\)\)

TaylorPolynomial[f_,x_,center_,order_,value_]:=
	TaylorPolynomial[f,x,center,order]/.x->value

Remainder[f_,x_,center_,order_]:=
	f - TaylorPolynomial[f,x,center,order]

Remainder[f_,x_,center_,order_,value_]:=
	Remainder[f,x,center,order]/.x->value


