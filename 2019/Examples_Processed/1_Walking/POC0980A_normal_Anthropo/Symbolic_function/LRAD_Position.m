function out1 = LRAD_Position(in1,in2,in3)
%LRAD_POSITION
%    OUT1 = LRAD_POSITION(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    16-Dec-2019 11:48:41

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
q38 = in1(38,:);
q39 = in1(39,:);
t2 = cos(q38);
t3 = sin(q38);
t4 = cos(q39);
t5 = sin(q39);
out1 = [R5cut1_2.*(-3.2364e-1)+p5cut1-R5cut1_1.*t3.*(2.9e1./7.5e2)-R5cut1_3.*t2.*(2.9e1./7.5e2)-R5cut1_2.*t4.*1.952666666666665e-2+t5.*(R5cut1_1.*t2-R5cut1_3.*t3).*1.952666666666665e-2;R5cut2_2.*(-3.2364e-1)+p5cut2-R5cut2_1.*t3.*(2.9e1./7.5e2)-R5cut2_3.*t2.*(2.9e1./7.5e2)-R5cut2_2.*t4.*1.952666666666665e-2+t5.*(R5cut2_1.*t2-R5cut2_3.*t3).*1.952666666666665e-2;R5cut3_2.*(-3.2364e-1)+p5cut3-R5cut3_1.*t3.*(2.9e1./7.5e2)-R5cut3_3.*t2.*(2.9e1./7.5e2)-R5cut3_2.*t4.*1.952666666666665e-2+t5.*(R5cut3_1.*t2-R5cut3_3.*t3).*1.952666666666665e-2];
