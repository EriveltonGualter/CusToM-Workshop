function out1 = LANE_Position(in1,in2,in3)
%LANE_POSITION
%    OUT1 = LANE_POSITION(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    16-Dec-2019 16:18:08

R1cut1_1 = in3(1);
R1cut1_2 = in3(4);
R1cut1_3 = in3(7);
R1cut2_1 = in3(2);
R1cut2_2 = in3(5);
R1cut2_3 = in3(8);
R1cut3_1 = in3(3);
R1cut3_2 = in3(6);
R1cut3_3 = in3(9);
p1cut1 = in2(1);
p1cut2 = in2(2);
p1cut3 = in2(3);
q1 = in1(1,:);
q23 = in1(23,:);
q24 = in1(24,:);
q25 = in1(25,:);
q26 = in1(26,:);
t2 = cos(q1);
t3 = sin(q1);
t4 = cos(q23);
t5 = R1cut1_1.*t2;
t6 = R1cut1_2.*t3;
t7 = t5+t6;
t8 = sin(q23);
t9 = R1cut1_1.*t3;
t12 = R1cut1_2.*t2;
t10 = t9-t12;
t11 = t4.*t7;
t23 = t8.*t10;
t13 = t11-t23;
t14 = cos(q25);
t15 = t4.*t10;
t16 = t7.*t8;
t17 = t15+t16;
t18 = cos(q24);
t19 = sin(q24);
t20 = sin(q25);
t21 = t17.*t19;
t22 = R1cut1_3.*t18;
t24 = t21+t22;
t25 = R1cut2_1.*t2;
t26 = R1cut2_2.*t3;
t27 = t25+t26;
t28 = R1cut2_1.*t3;
t31 = R1cut2_2.*t2;
t29 = t28-t31;
t30 = t4.*t27;
t40 = t8.*t29;
t32 = t30-t40;
t33 = t4.*t29;
t34 = t8.*t27;
t35 = t33+t34;
t36 = cos(q26);
t37 = t19.*t35;
t38 = R1cut2_3.*t18;
t39 = sin(q26);
t41 = t37+t38;
t42 = R1cut3_1.*t2;
t43 = R1cut3_2.*t3;
t44 = t42+t43;
t45 = R1cut3_1.*t3;
t48 = R1cut3_2.*t2;
t46 = t45-t48;
t47 = t4.*t44;
t55 = t8.*t46;
t49 = t47-t55;
t50 = t4.*t46;
t51 = t8.*t44;
t52 = t50+t51;
t53 = t19.*t52;
t54 = R1cut3_3.*t18;
t56 = t53+t54;
out1 = [R1cut1_3.*(-7.373525994805911e-2)+p1cut1-R1cut1_1.*t2.*7.373525994805914e-3+R1cut1_1.*t3.*4.608453746753696e-2-R1cut1_2.*t2.*4.608453746753696e-2-R1cut1_2.*t3.*7.373525994805914e-3-R1cut1_3.*t19.*4.39328277366459e-1-t13.*t14.*2.413891633881643e-2-t13.*t20.*4.808755724505389e-2+t17.*t18.*4.39328277366459e-1-t14.*t24.*4.808755724505389e-2+t20.*t24.*2.413891633881643e-2-t36.*(R1cut1_3.*t19-t17.*t18).*4.28112615796774e-1+t39.*(t13.*t14-t20.*t24).*4.28112615796774e-1;R1cut2_3.*(-7.373525994805911e-2)+p1cut2-R1cut2_1.*t2.*7.373525994805914e-3+R1cut2_1.*t3.*4.608453746753696e-2-R1cut2_2.*t2.*4.608453746753696e-2-R1cut2_2.*t3.*7.373525994805914e-3-R1cut2_3.*t19.*4.39328277366459e-1-t14.*t32.*2.413891633881643e-2-t20.*t32.*4.808755724505389e-2+t18.*t35.*4.39328277366459e-1-t14.*t41.*4.808755724505389e-2+t20.*t41.*2.413891633881643e-2-t36.*(R1cut2_3.*t19-t18.*t35).*4.28112615796774e-1+t39.*(t14.*t32-t20.*t41).*4.28112615796774e-1;R1cut3_3.*(-7.373525994805911e-2)+p1cut3-R1cut3_1.*t2.*7.373525994805914e-3+R1cut3_1.*t3.*4.608453746753696e-2-R1cut3_2.*t2.*4.608453746753696e-2-R1cut3_2.*t3.*7.373525994805914e-3-R1cut3_3.*t19.*4.39328277366459e-1-t14.*t49.*2.413891633881643e-2-t20.*t49.*4.808755724505389e-2-t14.*t56.*4.808755724505389e-2+t18.*t52.*4.39328277366459e-1+t20.*t56.*2.413891633881643e-2-t36.*(R1cut3_3.*t19-t18.*t52).*4.28112615796774e-1+t39.*(t14.*t49-t20.*t56).*4.28112615796774e-1];