function out1 = STRN_Position(in1,in2,in3)
%STRN_POSITION
%    OUT1 = STRN_POSITION(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    17-Dec-2019 14:52:40

R3cut1_1 = in3(19);
R3cut1_2 = in3(22);
R3cut1_3 = in3(25);
R3cut2_1 = in3(20);
R3cut2_2 = in3(23);
R3cut2_3 = in3(26);
R3cut3_1 = in3(21);
R3cut3_2 = in3(24);
R3cut3_3 = in3(27);
p3cut1 = in2(7);
p3cut2 = in2(8);
p3cut3 = in2(9);
q7 = in1(7,:);
t2 = cos(q7);
t3 = sin(q7);
out1 = [R3cut1_2.*1.228777835260461e-1+p3cut1+R3cut1_1.*t2.*1.29377819947651e-1-R3cut1_3.*t3.*1.29377819947651e-1;R3cut2_2.*1.228777835260461e-1+p3cut2+R3cut2_1.*t2.*1.29377819947651e-1-R3cut2_3.*t3.*1.29377819947651e-1;R3cut3_2.*1.228777835260461e-1+p3cut3+R3cut3_1.*t2.*1.29377819947651e-1-R3cut3_3.*t3.*1.29377819947651e-1];
