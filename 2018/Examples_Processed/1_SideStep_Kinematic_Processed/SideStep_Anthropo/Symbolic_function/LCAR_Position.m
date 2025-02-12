function out1 = LCAR_Position(in1,in2,in3)
%LCAR_POSITION
%    OUT1 = LCAR_POSITION(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 8.1.
%    23-Nov-2018 11:11:31

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
q40 = in1(40,:);
q41 = in1(41,:);
q42 = in1(42,:);
t2 = cos(q38);
t3 = sin(q38);
t4 = cos(q40);
t5 = R5cut1_3.*t2;
t6 = R5cut1_1.*t3;
t7 = t5+t6;
t8 = sin(q40);
t9 = sin(q39);
t10 = R5cut1_2.*t9;
t11 = cos(q39);
t12 = R5cut1_1.*t2;
t17 = R5cut1_3.*t3;
t13 = t12-t17;
t14 = t11.*t13;
t15 = t10+t14;
t16 = t4.*t7;
t18 = t8.*t15;
t19 = t16+t18;
t20 = cos(q42);
t21 = t7.*t8;
t26 = t4.*t15;
t22 = t21-t26;
t23 = cos(q41);
t24 = sin(q42);
t25 = sin(q41);
t27 = t22.*t25;
t28 = R5cut1_2.*t11;
t32 = t9.*t13;
t29 = t28-t32;
t30 = t23.*t29;
t31 = t27+t30;
t33 = R5cut2_3.*t2;
t34 = R5cut2_1.*t3;
t35 = t33+t34;
t36 = R5cut2_2.*t9;
t37 = R5cut2_1.*t2;
t42 = R5cut2_3.*t3;
t38 = t37-t42;
t39 = t11.*t38;
t40 = t36+t39;
t41 = t4.*t35;
t43 = t8.*t40;
t44 = t41+t43;
t45 = t8.*t35;
t47 = t4.*t40;
t46 = t45-t47;
t48 = t25.*t46;
t49 = R5cut2_2.*t11;
t53 = t9.*t38;
t50 = t49-t53;
t51 = t23.*t50;
t52 = t48+t51;
t54 = R5cut3_3.*t2;
t55 = R5cut3_1.*t3;
t56 = t54+t55;
t57 = R5cut3_2.*t9;
t58 = R5cut3_1.*t2;
t63 = R5cut3_3.*t3;
t59 = t58-t63;
t60 = t11.*t59;
t61 = t57+t60;
t62 = t4.*t56;
t64 = t8.*t61;
t65 = t62+t64;
t66 = t8.*t56;
t68 = t4.*t61;
t67 = t66-t68;
t69 = t25.*t67;
t70 = R5cut3_2.*t11;
t74 = t9.*t59;
t71 = t70-t74;
t72 = t23.*t71;
t73 = t69+t72;
out1 = [R5cut1_2.*(-3.2643e-1)+p5cut1-R5cut1_2.*t11.*2.5623e-1+t9.*t13.*2.5623e-1-t19.*t20.*2.4375e-2-t19.*t24.*9.535499999999998e-2+t22.*t23.*1.95e-2-t20.*t31.*9.535499999999998e-2-t25.*t29.*1.95e-2+t24.*t31.*2.4375e-2;R5cut2_2.*(-3.2643e-1)+p5cut2-R5cut2_2.*t11.*2.5623e-1+t9.*t38.*2.5623e-1-t20.*t44.*2.4375e-2-t24.*t44.*9.535499999999998e-2+t23.*t46.*1.95e-2-t20.*t52.*9.535499999999998e-2-t25.*t50.*1.95e-2+t24.*t52.*2.4375e-2;R5cut3_2.*(-3.2643e-1)+p5cut3-R5cut3_2.*t11.*2.5623e-1+t9.*t59.*2.5623e-1-t20.*t65.*2.4375e-2-t24.*t65.*9.535499999999998e-2+t23.*t67.*1.95e-2-t20.*t73.*9.535499999999998e-2-t25.*t71.*1.95e-2+t24.*t73.*2.4375e-2];
