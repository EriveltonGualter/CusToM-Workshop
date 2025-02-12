% Post Processing "SideStep" example
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This example aimed at getting the joint angles of the lower limb from
% inverse kinematics
%________________________________________________________
%
% Licence
% Toolbox distributed under 3-Clause BSD License
%________________________________________________________
%
% Authors : Antoine Muller, Charles Pontonnier, Pierre Puchaud and
% Georges Dumont
%_______________________________________________________

% Loading the Biomechanicalmodel file
load('BiomechanicalModel.mat')

% Solid list extracted from the OsteoarticularModel
Solid_list = {BiomechanicalModel.OsteoArticularModel.name}';

% Get the numbers of solids of interests
Solids = {'RHip_J1';'RHip_J2';'RThigh';'RShank';'RAnkle_J1';'RFoot'};
[~,num_s]=intersect(Solid_list,Solids,'stable');

%RShoulder_J1 rotates around Y-axis
BiomechanicalModel.OsteoArticularModel(num_s(1)).a;
%RShoulder_J2 rotates around X-axis
BiomechanicalModel.OsteoArticularModel(num_s(2)).a;
%RHumerus rotates around Y-axis
BiomechanicalModel.OsteoArticularModel(num_s(3)).a;
% Rotation Z-X-Y sequence of the Hip following ISB recommandation

% Name of the trial treated
filename='ChgtDirection04';

% Loading Inverse Kinematic results
load(fullfile(filename,'InverseKinematicsResults.mat'))
%Get the angles of interest
q=InverseKinematicsResults.JointCoordinates(num_s,:)*180/pi ; % from radian to degrees

%% Reconstruction Error
% Computing the mean reconstruction error over the trial for each frames
RE_mean = mean(InverseKinematicsResults.ReconstructionError,1);

h1=figure('Name','Reconstruction Error');
plot(RE_mean,'r-','LineWidth',2); hold on;
xlabel('Frames');
ylabel('Mean Reconstruction Error (m)');
title(['Mean reconstruction error over the ' filename  ' trial for each frames'])

% Computing the global mean reconstruction error for the total amount of
% frames
% disp('Global Mean Reconstruction Error (in m)')
RE_global_mean = mean(mean(InverseKinematicsResults.ReconstructionError,1));
XX = xlim;YY = ylim;
text(XX(2)/2,YY(1)+(YY(2)-YY(1))*2/3,'Mean Reconstruction Error',...
    'HorizontalAlignment','center')
text(XX(2)/2,YY(1)+(YY(2)-YY(1))*3/5,num2str(RE_global_mean),...
    'HorizontalAlignment','center')

%loading previous results of anthropometric simulation
load(fullfile('..\SideStep_Anthropo',filename,'InverseKinematicsResults.mat'))
%Get the angles of interest
q_anthropo=InverseKinematicsResults.JointCoordinates(num_s,:)*180/pi ; % from radian to degrees

% Computing the mean reconstruction error over the trial for each frames
RE_mean_anthropo = mean(InverseKinematicsResults.ReconstructionError,1);
plot(RE_mean_anthropo,'b-','LineWidth',2); hold on;

legend('Calibrated Model','Anthropometric Model')

% Comments :
% The reconstruction errors are globally reduced with the calibration
% method

%% Joint Angles

% Number of frames
Nb_frames = size(InverseKinematicsResults.JointCoordinates,2);

h2=figure('Name','Right Leg Kinematic');

subplot(2,3,1)
plot(q(1,:),'r-','LineWidth',2);% in degrees
hold on
plot(q_anthropo(1,:),'b-','LineWidth',2);% in degrees
xlabel('Frames')
ylabel('Angle (�)')
title([ Solids{1} ' First Z-axis Hip rotation'])
xlim([0 Nb_frames])

subplot(2,3,2)
plot(q(2,:),'r-','LineWidth',2);% in degrees
hold on
plot(q_anthropo(2,:),'b-','LineWidth',2);% in degrees
xlabel('Frames')
ylabel('Angle (�)')
title([ Solids{2} ' Second X-axis Hip rotation'])
xlim([0 Nb_frames])

subplot(2,3,3)
plot(q(3,:),'r-','LineWidth',2);% in degrees
hold on
plot(q_anthropo(3,:),'b-','LineWidth',2);% in degrees
xlabel('Frames')
ylabel('Angle (�)')
title([ Solids{3} ' Third Y-axis Hip rotation'])
xlim([0 Nb_frames])

subplot(2,3,4)
plot(q(4,:),'r-','LineWidth',2);% in degrees
hold on
plot(q_anthropo(4,:),'b-','LineWidth',2);% in degrees
xlabel('Frames')
ylabel('Angle (�)')
title([ Solids{4} ' Z-axis rotation - Knee Flexion/Extension'])
xlim([0 Nb_frames])

subplot(2,3,5)
plot(q(5,:),'r-','LineWidth',2);% in degrees
hold on
plot(q_anthropo(5,:),'b-','LineWidth',2);% in degrees
xlabel('Frames')
ylabel('Angle (�)')
title([ Solids{5} ' Second Z-axis rotation - Ankle Flexion/Extension'])
xlim([0 Nb_frames])

subplot(2,3,6)
plot(q(6,:),'r-','LineWidth',2);% in degrees
hold on
plot(q_anthropo(6,:),'b-','LineWidth',2);% in degrees
xlabel('Frames')
ylabel('Angle (�)')
title([ Solids{5} ' Second X-axis rotation - Ankle Inverserion/Eversion'])
xlim([0 Nb_frames])

legend('Calibrated Model','Anthropometric Model','location','best')

% On the graph, we can see the angles from inverse kinematics for the 
% selected angles of the lowerlimb. A 4th order zerolag
% butterworth filter was applied on these angles with a cutoff frequency of
% 5 Hz as it is specify in the Analysis parameters.


