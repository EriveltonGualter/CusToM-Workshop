function out1 = RSHO_Position(in1,in2,in3)
%RSHO_POSITION
%    OUT1 = RSHO_POSITION(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    17-Dec-2019 14:52:42

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
q8 = in1(8,:);
q9 = in1(9,:);
q10 = in1(10,:);
t2 = cos(q7);
t3 = sin(q7);
t4 = cos(q9);
t5 = R3cut1_3.*t2;
t6 = R3cut1_1.*t3;
t7 = t5+t6;
t8 = sin(q9);
t9 = cos(q8);
t10 = R3cut1_2.*t9;
t11 = sin(q8);
t12 = R3cut1_1.*t2;
t16 = R3cut1_3.*t3;
t13 = t12-t16;
t17 = t11.*t13;
t14 = t10-t17;
t15 = t4.*t7-t8.*t14;
t18 = cos(q10);
t19 = sin(q10);
t20 = R3cut1_2.*t11;
t21 = t9.*t13;
t22 = t20+t21;
t23 = R3cut2_3.*t2;
t24 = R3cut2_1.*t3;
t25 = t23+t24;
t26 = t4.*t25;
t27 = R3cut2_2.*t9;
t28 = R3cut2_1.*t2;
t32 = R3cut2_3.*t3;
t29 = t28-t32;
t33 = t11.*t29;
t30 = t27-t33;
t31 = t26-t8.*t30;
t34 = R3cut2_2.*t11;
t35 = t9.*t29;
t36 = t34+t35;
t37 = R3cut3_3.*t2;
t38 = R3cut3_1.*t3;
t39 = t37+t38;
t40 = t4.*t39;
t41 = R3cut3_2.*t9;
t42 = R3cut3_1.*t2;
t46 = R3cut3_3.*t3;
t43 = t42-t46;
t47 = t11.*t43;
t44 = t41-t47;
t45 = t40-t8.*t44;
t48 = R3cut3_2.*t11;
t49 = t9.*t43;
t50 = t48+t49;
out1 = [R3cut1_2.*2.655649988399152e-1+p3cut1+R3cut1_1.*t2.*3.793785697713074e-2+R3cut1_1.*t3.*2.013624716478478e-2+R3cut1_3.*t2.*2.013624716478478e-2-R3cut1_3.*t3.*3.793785697713074e-2+t7.*t8.*4.542815181486769e-2+t4.*t14.*4.542815181486769e-2+t15.*t18.*1.965089155826668e-1+t15.*t19.*4.546570694256085e-2-t18.*t22.*4.546570694256085e-2+t19.*t22.*1.965089155826668e-1;R3cut2_2.*2.655649988399152e-1+p3cut2+R3cut2_1.*t2.*3.793785697713074e-2+R3cut2_1.*t3.*2.013624716478478e-2+R3cut2_3.*t2.*2.013624716478478e-2-R3cut2_3.*t3.*3.793785697713074e-2+t8.*t25.*4.542815181486769e-2+t4.*t30.*4.542815181486769e-2+t18.*t31.*1.965089155826668e-1+t19.*t31.*4.546570694256085e-2-t18.*t36.*4.546570694256085e-2+t19.*t36.*1.965089155826668e-1;R3cut3_2.*2.655649988399152e-1+p3cut3+R3cut3_1.*t2.*3.793785697713074e-2+R3cut3_1.*t3.*2.013624716478478e-2+R3cut3_3.*t2.*2.013624716478478e-2-R3cut3_3.*t3.*3.793785697713074e-2+t8.*t39.*4.542815181486769e-2+t4.*t44.*4.542815181486769e-2+t18.*t45.*1.965089155826668e-1+t19.*t45.*4.546570694256085e-2-t18.*t50.*4.546570694256085e-2+t19.*t50.*1.965089155826668e-1];
