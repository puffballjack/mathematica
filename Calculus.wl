(* ::Package:: *)

BeginPackage["Calculus`"]


Begin["`Dirivitives`"];
ContinuousAtPoint[left_,right_,point_]:={((left/.x->point)==(right/.x->point)),"L "<>ToString[left/.x->point],"R "<>ToString[right/.x->point]}
DifferentableAtPoint[left_,right_,point_]:={left,right,If[ContinuousAtPoint[left,right,point][[1]]&&(Simplify[(left-(left/.x->point))/(x-point)]/.x->point)==(Simplify[(right-(right/.x->point))/(x-point)]/.x->point),True,False],"L "<>ToString[Simplify[(left-(left/.x->point))/(x-point)]/.x->point],"R "<>ToString[Simplify[(right-(right/.x->point))/(x-point)]/.x->point],If[ContinuousAtPoint[left,right,point][[1]]&&(Simplify[(left-(left/.x->point))/(x-point)]/.x->point)==(Simplify[(right-(right/.x->point))/(x-point)]/.x->point),"Continuous & Differentiable",If[ContinuousAtPoint[left,right,point][[1]],"Continuous","Neither"]]}
End[]
EndPackage[]









