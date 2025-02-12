function out1 = RHUM_Position(in1,in2,in3)
%RHUM_POSITION
%    OUT1 = RHUM_POSITION(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    17-Dec-2019 14:53:12

R5cut1_1 = in3(37);
R5cut1_2 = in3(40);
R5cut1_3 = in3(43);
R5cut2_1 = in3(38);
R5cut2_2 = in3(41);
R5cut2_3 = in3(44);
R5cut3_1 = in3(39);
R5cut3_2 = in3(42);
R5cut3_3 = in3(45);
p5cut1 = in2(13);
p5cut2 = in2(14);
p5cut3 = in2(15);
q29 = in1(29,:);
t2 = cos(q29);
t3 = sin(q29);
out1 = [R5cut1_2.*(-3.019268629032749e-1)+p5cut1-R5cut1_1.*t3.*4.509063066058468e-2-R5cut1_3.*t2.*4.509063066058468e-2;R5cut2_2.*(-3.019268629032749e-1)+p5cut2-R5cut2_1.*t3.*4.509063066058468e-2-R5cut2_3.*t2.*4.509063066058468e-2;R5cut3_2.*(-3.019268629032749e-1)+p5cut3-R5cut3_1.*t3.*4.509063066058468e-2-R5cut3_3.*t2.*4.509063066058468e-2];
