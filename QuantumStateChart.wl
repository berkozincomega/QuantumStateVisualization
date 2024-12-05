(*Representing the quantum states|R_up>and|L_dn>*)
Rup = {1, 0}; (* |R_up>state*)
Ldn = {0, 1}; (* |L_dn>state*)

(*Define \[Alpha] and \[Beta] as symbolic variables*)
\[Alpha] = Symbol["\[Alpha]"];
\[Beta] = -\[Alpha]; (*Since \[Beta]=-\[Alpha] as per your definition*)

(*Normalization condition:Abs[\[Alpha]]^2+Abs[\[Beta]]^2=1*)
NormalizeCondition = Abs[\[Alpha]]^2 + Abs[\[Beta]]^2 == 1;

(*Solve for \[Alpha] under the normalization condition*)
solutions = Solve[NormalizeCondition, \[Alpha], Reals];

(*Choose the first solution for \[Alpha] and calculate \[Beta]=-\
\[Alpha]*)
\[Alpha]Norm = \[Alpha] /. solutions[[1]];
\[Beta]Norm = -\[Alpha]Norm;

(*Define the final quantum state function psi[f] with normalized \
\[Alpha] and \[Beta]*)
psi[f_] := \[Alpha]Norm*Rup + \[Beta]Norm*Ldn;

(*Probabilities for measuring|R_up>and|L_dn>states*)
probUp = Abs[psi[f][[1]]]^2; (*Probability of|R_up>*)
probDn = Abs[psi[f][[2]]]^2; (*Probability of|L_dn>*)

(*Plotting the probabilities with a bar chart*)
BarChart[{probUp, probDn}, ChartLabels -> {"|Rup⟩", "|Ldn⟩"}, 
 ChartStyle -> "Pastel", AxesLabel -> {"State", "Probability"}, 
 PlotLabel -> "Probabilities of Quantum States"]
