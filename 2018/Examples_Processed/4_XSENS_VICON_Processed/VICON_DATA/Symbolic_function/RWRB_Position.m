function out1 = RWRB_Position(in1,in2,in3)
%RWRB_POSITION
%    OUT1 = RWRB_POSITION(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 8.1.
%    06-Nov-2018 17:35:35

R6cut1_1 = in3(46);
R6cut1_2 = in3(49);
R6cut1_3 = in3(52);
R6cut2_1 = in3(47);
R6cut2_2 = in3(50);
R6cut2_3 = in3(53);
R6cut3_1 = in3(48);
R6cut3_2 = in3(51);
R6cut3_3 = in3(54);
p6cut1 = in2(16);
p6cut2 = in2(17);
p6cut3 = in2(18);
q31 = in1(31,:);
q32 = in1(32,:);
q33 = in1(33,:);
t2 = cos(q31);
t3 = sin(q31);
t4 = sin(q32);
t5 = cos(q32);
t6 = R6cut1_1.*t2;
t7 = t6-R6cut1_3.*t3;
t8 = cos(q33);
t9 = sin(q33);
t10 = R6cut2_1.*t2;
t11 = t10-R6cut2_3.*t3;
t12 = R6cut3_1.*t2;
t13 = t12-R6cut3_3.*t3;
out1 = [R6cut1_2.*(-3.681426522125268e-1)+p6cut1-R6cut1_2.*t5.*2.520988934696298e-1+t4.*t7.*2.520988934696298e-1-t8.*(R6cut1_1.*t3+R6cut1_3.*t2).*3.578162300263348e-2-t9.*(R6cut1_2.*t4+t5.*t7).*3.578162300263348e-2;R6cut2_2.*(-3.681426522125268e-1)+p6cut2-R6cut2_2.*t5.*2.520988934696298e-1+t4.*t11.*2.520988934696298e-1-t8.*(R6cut2_1.*t3+R6cut2_3.*t2).*3.578162300263348e-2-t9.*(R6cut2_2.*t4+t5.*t11).*3.578162300263348e-2;R6cut3_2.*(-3.681426522125268e-1)+p6cut3-R6cut3_2.*t5.*2.520988934696298e-1+t4.*t13.*2.520988934696298e-1-t8.*(R6cut3_1.*t3+R6cut3_3.*t2).*3.578162300263348e-2-t9.*(R6cut3_2.*t4+t5.*t13).*3.578162300263348e-2];
