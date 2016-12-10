(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.4' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[      8870,        217]
NotebookOptionsPosition[      9418,        212]
NotebookOutlinePosition[      9875,        232]
CellTagsIndexPosition[      9832,        229]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 PanelBox[
  DynamicModuleBox[{$CellContext`x$$ = $CellContext`t^2, $CellContext`m$$ = 
   1, $CellContext`xInit$$ = 0, $CellContext`vInit$$ = 
   0, $CellContext`vInput$$ = 2 $CellContext`t, $CellContext`aInput$$ = 
   2, $CellContext`editingEquation$$ = 0, $CellContext`tmin$$ = 
   0, $CellContext`tmax$$ = 10}, 
   TagBox[GridBox[{
      {
       TemplateBox[{DynamicBox[
          ToBoxes[
           Column[{
             Row[{"m(t) = ", 
               InputField[
                Dynamic[$CellContext`m$$]], "[kg]"}], 
             Row[{"\!\(\*SubscriptBox[\(t\), \(min\)]\) = ", 
               InputField[
                Dynamic[$CellContext`tmin$$], Number], "[s]"}], 
             Row[{"\!\(\*SubscriptBox[\(t\), \(max\)]\) = ", 
               InputField[
                Dynamic[$CellContext`tmax$$], Number], "[s]"}]}, Alignment -> 
            "="], StandardForm]],InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {25, 0}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[25]],DynamicBox[
          ToBoxes[
           Column[{$CellContext`set = If[$CellContext`editingEquation$$ == 0, {
                 Row[{"x(t) = ", 
                   InputField[
                    Dynamic[$CellContext`x$$]], "[m]"}]}, 
                If[$CellContext`editingEquation$$ == 1, {
                  Row[{"v(t) = ", 
                    InputField[
                    Dynamic[$CellContext`vInput$$]], 
                    "[m \!\(\*SuperscriptBox[\(s\), \(-1\)]\)]"}], 
                  Row[{"x(0) = ", 
                    InputField[
                    Dynamic[$CellContext`xInit$$]], "[m]"}]}, 
                 If[$CellContext`editingEquation$$ == 2, {
                   Row[{"a(t) = ", 
                    InputField[
                    Dynamic[$CellContext`aInput$$]], 
                    "[m \!\(\*SuperscriptBox[\(s\), \(-2\)]\)]"}], 
                   Row[{"v(0) = ", 
                    InputField[
                    Dynamic[$CellContext`vInit$$]], 
                    "[m \!\(\*SuperscriptBox[\(s\), \(-1\)]\)]"}], 
                   Row[{"x(0) = ", 
                    InputField[
                    Dynamic[$CellContext`xInit$$]], "[m]"}]}, 
                  "There was a problem :/"]]]; 
             If[Length[$CellContext`set] >= 1, 
               Extract[$CellContext`set, 1], 
               Invisible[
                Row[{"f(x) = ", 
                  InputField[]}]]], 
             If[Length[$CellContext`set] >= 2, 
              Extract[$CellContext`set, 2], 
              Invisible[
               Row[{"f(x) = ", 
                 InputField[]}]]], 
             If[Length[$CellContext`set] >= 3, 
              Extract[$CellContext`set, 3], 
              Invisible[
               Row[{"f(x) = ", 
                 InputField[]}]]]}, Alignment -> "="], StandardForm], 
          ImageSizeCache -> {306., {32., 39.}}],""},
        "RowDefault"]},
      {
       TemplateBox[{
        ButtonBox[
         "\"x(t)\"", 
          ButtonFunction :> {
           If[$CellContext`editingEquation$$ == 2, $CellContext`x$$ = 
              Integrate[
                Integrate[$CellContext`aInput$$, $CellContext`t] + \
$CellContext`vInit$$, $CellContext`t] + $CellContext`xInit$$, 
              
              If[$CellContext`editingEquation$$ == 1, $CellContext`x$$ = 
               Integrate[$CellContext`vInput$$, $CellContext`t] + \
$CellContext`xInit$$, 
               Blank[]]]; $CellContext`editingEquation$$ = 0}, Appearance -> 
          Automatic, Evaluator -> Automatic, Method -> "Preemptive"],
         ButtonBox[
         "\"v(t)\"", 
          ButtonFunction :> {
           If[$CellContext`editingEquation$$ == 
              2, {$CellContext`vInput$$ = 
                Integrate[$CellContext`aInput$$, $CellContext`t] + \
$CellContext`vInit$$; $CellContext`x$$ = 
                Integrate[$CellContext`vInput$$, $CellContext`t] + \
$CellContext`xInit$$}, 
              
              If[$CellContext`editingEquation$$ == 0, $CellContext`vInput$$ = 
               D[$CellContext`x$$, $CellContext`t] + $CellContext`vInit$$, 
               Blank[]]]; $CellContext`editingEquation$$ = 1}, Appearance -> 
          Automatic, Evaluator -> Automatic, Method -> "Preemptive"],
         ButtonBox[
         "\"a(t)\"", 
          ButtonFunction :> {
           If[$CellContext`editingEquation$$ == 0, $CellContext`aInput$$ = 
              D[$CellContext`x$$, {$CellContext`t, 2}], 
              
              If[$CellContext`editingEquation$$ == 1, $CellContext`aInput$$ = 
               D[$CellContext`vInput$$, $CellContext`t], 
               Blank[]]]; $CellContext`editingEquation$$ = 2}, Appearance -> 
          Automatic, Evaluator -> Automatic, Method -> "Preemptive"],
         ButtonBox[
         "\"Set\"", 
          ButtonFunction :> {
           If[$CellContext`editingEquation$$ == 2, $CellContext`x$$ = 
              Integrate[
                Integrate[$CellContext`aInput$$, $CellContext`t] + \
$CellContext`vInit$$, $CellContext`t] + $CellContext`xInit$$, 
              
              If[$CellContext`editingEquation$$ == 1, $CellContext`x$$ = 
               Integrate[$CellContext`vInput$$, $CellContext`t] + \
$CellContext`xInit$$, 
               Blank[]]]; Null}, Appearance -> Automatic, Evaluator -> 
          Automatic, Method -> "Preemptive"]},
        "RowDefault"]},
      {
       DynamicBox[ToBoxes[
         Grid[
          MapIndexed[{
            Extract[#, 1], 
            Spacer[20], 
            Row[{
              Grid[{
                MapIndexed[Column[{
                   Dynamic[
                    StringForm["`1`(t)=`2`", 
                    Extract[#, 2], 
                    Expand[
                    Simplify[
                    Extract[#, 1]]]]], 
                   Dynamic[
                    Plot[
                    
                    Extract[#, 
                    1], {$CellContext`t, $CellContext`tmin$$, \
$CellContext`tmax$$}, Frame -> True, FrameLabel -> {"Time", 
                    Extract[#, 3]}, RotateLabel -> True, ImageSize -> 
                    Medium]], 
                   Spacer[5]}, Alignment -> Right]& , 
                 Rest[#]]}]}], 
            Spacer[
            2]}& , {$CellContext`v := 
             D[$CellContext`x$$, $CellContext`t]; $CellContext`a := 
             D[$CellContext`v, $CellContext`t]; $CellContext`p := \
$CellContext`m$$ $CellContext`v; $CellContext`F := 
             D[$CellContext`p, $CellContext`t]; $CellContext`Ke := (1/
               2) $CellContext`m$$ $CellContext`v^2; $CellContext`P := \
$CellContext`F $CellContext`v; {
             "Kinematics", {$CellContext`x$$, 
               "\!\(\*OverscriptBox[\(x\), \(\[RightVector]\)]\)", 
               "Position [m]"}, {$CellContext`v, 
               "\!\(\*OverscriptBox[\(v\), \(\[RightVector]\)]\)", 
               "Velocity [m \!\(\*SuperscriptBox[\(s\), \(-1\)]\)]"}, \
{$CellContext`a, "\!\(\*OverscriptBox[\(a\), \(\[RightVector]\)]\)", 
               "Acceleration [m \!\(\*SuperscriptBox[\(s\), \(-2\)]\)]"}}, {
            "Mass", {$CellContext`m$$, "m", "Mass [kg]"}, {$CellContext`p, 
              "\!\(\*OverscriptBox[\(p\), \(\[RightVector]\)]\)", 
              "Momentum [kg m \!\(\*SuperscriptBox[\(s\), \(-1\)]\)]"}, \
{$CellContext`F, "\!\(\*OverscriptBox[\(F\), \(\[RightVector]\)]\)", 
              "Force [N]"}}, {
            "Energy", {$CellContext`Ke, "\!\(\*SubscriptBox[\(E\), \(K\)]\)", 
              "Kinetic [J]"}, {$CellContext`P, "P", "Power [W]"}}}], 
          Alignment -> Left], StandardForm],
        ImageSizeCache->{919., {329., 336.}}]}
     },
     DefaultBaseStyle->"Column",
     GridBoxAlignment->{"Columns" -> {{Left}}},
     GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
    "Column"],
   DynamicModuleValues:>{}]]], "Output"]
},
WindowSize->{1536, 791},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
Magnification->0.75,
FrontEndVersion->"10.4 for Microsoft Windows (64-bit) (April 11, 2016)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1464, 33, 7950, 177, 803, "Output"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature nuDCte#UWSNlvAKcEyUD#YNl *)
