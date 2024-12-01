within ShipSIM;

package Obsolete "Obsolete components - NOT FOR USE!"
  extends Modelica.Icons.InternalPackage;

  model SimpleShipModel "Simplified Ship Model"
    parameter Modelica.SIunits.Length Lpp = 100 "Length between perpendiculars [m]" annotation(
      Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
    parameter Modelica.SIunits.Length B = 20 "Moulded beam [m]" annotation(
      Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
    parameter Modelica.SIunits.Length CoF[3] = {50.364, 0, 4} "Centre of Floatation Area (ship ref. sys.) {X,Y,Z} [m]" annotation(
      Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
    parameter Real Disp_Table[:, 2] = {{-2.5884e4, 0}, {1.2623e6, 1}, {4.0336e4, 2}} "Displacement Vs Mean draft curve [kg]" annotation(
      Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
    parameter Real LCB_Table[:, 2] = {{4.9049e1, 0}, {1.7677, 1}, {-1.2278, 2}, {4.5593e-1, 3}, {-8.6574e-2, 4}, {7.7545e-3, 5}, {-2.6145e-4, 6}} "LCB Vs Mean Draft curve [m]" annotation(
      Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
    parameter Real TCB_Table[:, 2] = {{0, 0}} "TCB Vs Mean Draft curve [m]" annotation(
      Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
    parameter Real VCB_Table[:, 2] = {{1.463e-2, 0}, {5.0289e-1, 1}, {3.7673e-3, 2}} "VCB Vs Mean Draft curve [m]" annotation(
      Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
    parameter Real BMt_Table[:, 2] = {{2.63608e1, -8.78016e-1}} "BMt Vs Mean Draft curve [m]" annotation(
      Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
    parameter Real BMl_Table[:, 2] = {{4.93467e2, -7.47807e-1}} "BMl Vs Mean Draft curve [m]" annotation(
      Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
    parameter Modelica.SIunits.Mass Displacement = 5681200 "Displacement [kg]" annotation(
      Dialog(group = "Mass Properties"));
    parameter Modelica.SIunits.Length CoG[3] = {50.364, 0, 9} "Centre of Gravity (ship ref. sys.) {X,Y,Z} [m]" annotation(
      Dialog(group = "Mass Properties"));
    parameter Modelica.SIunits.Inertia I_xx = Displacement*(0.3557*B)^2 "X axis inertia (roll) [kg*m2]" annotation(
      Dialog(group = "Mass Properties"));
    parameter Modelica.SIunits.Inertia I_yy = Displacement*(0.2746*Lpp)^2 "Y axis inertia (Pitch) [kg*m2]" annotation(
      Dialog(group = "Mass Properties"));
    parameter Modelica.SIunits.Inertia I_zz = Displacement*(0.2739*Lpp)^2 "Z axis inertia (Yaw) [kg*m2]" annotation(
      Dialog(group = "Mass Properties"));
    parameter Real B_roll[:, 2] = {{50000000, 1}, {500000, 2}} "Roll damping factor equation [Nm*s/rad]" annotation(
      Dialog(tab = "Damping Factors", group = "Damping Factors"));
    parameter Real B_pitch[:, 2] = [1000000, 2] "Pitch damping factor equation [Nm*s/rad]" annotation(
      Dialog(tab = "Damping Factors", group = "Damping Factors"));
    parameter Real B_yaw[:, 2] = {{50000000, 1}, {500000, 2}} "Yaw damping factor equation [Nm*s/rad]" annotation(
      Dialog(tab = "Damping Factors", group = "Damping Factors"));
    parameter Real B_surge[:, 2] = {{9.1437e2, 3}, {-5.2863e3, 2}, {1.9657e4, 1}} "Surge damping factor equation [N*s/m]" annotation(
      Dialog(tab = "Damping Factors", group = "Damping Factors"));
    parameter Real B_sway[:, 2] = {{1742500, 2}} "Sway damping factor equation [N*s/m]" annotation(
      Dialog(tab = "Damping Factors", group = "Damping Factors"));
    parameter Real B_heave[:, 2] = {{500000, 1}, {5000, 2}} "Heave damping factor equation [N*s/m]" annotation(
      Dialog(tab = "Damping Factors", group = "Damping Factors"));
    parameter Modelica.SIunits.Length ini_Pos[3] = {0, 0, 0} "Initial position {X,Y,Z} [m]" annotation(
      Dialog(tab = "Start Values", group = "Initialization (World ref. sys.)"));
    parameter Modelica.SIunits.Angle ini_Ori[3] = {0, 0, 0} "Initial orientation {X,Y,Z} [rad]" annotation(
      Dialog(tab = "Start Values", group = "Initialization (World ref. sys.)"));
    parameter Modelica.SIunits.Velocity ini_Vel[3] = {0, 0, 0} "Initial speed {X,Y,Z} [m/s]" annotation(
      Dialog(tab = "Start Values", group = "Initialization (World ref. sys.)"));
    Modelica.Mechanics.MultiBody.Parts.Body ShipMass(I_11 = I_xx, I_22 = I_yy, I_33 = I_zz, angles_fixed = true, angles_start = ini_Ori, animation = false, m = Displacement, r_0(each fixed = true, start = ini_Pos), r_CM = CoG, v_0(each fixed = true, start = ini_Vel), w_0_fixed = true) annotation(
      Placement(visible = true, transformation(origin = {46, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(
      Placement(visible = true, transformation(origin = {-100, -40}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelica.SIunits.Angle Heel;
    Modelica.SIunits.Angle Trim;
    Modelica.SIunits.Angle Yaw;
    Modelica.SIunits.Velocity Surge;
    Modelica.SIunits.Velocity Sway;
    Modelica.SIunits.Velocity Heave;
    Real P_s[3];
    Real P_f[3];
    Real Draft;
    Real CoB[3];
    Real Disp;
    Real BMt;
    Real BMl;
    Modelica.Blocks.Interfaces.RealInput Water_depth "Water depth value [m]" annotation(
      Placement(visible = true, transformation(origin = {106, -60}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {105, 59}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
    ShipSIM.SubComponents.VariableTranslation COB_pos annotation(
      Placement(visible = true, transformation(origin = {32, 58}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.WorldForce B_ForceWorld(N_to_m = Displacement*9.81/B, animation = true, diameter = B/40) annotation(
      Placement(visible = true, transformation(origin = {66, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
    Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorque DampingForceTorque(N_to_m = Displacement*9.81/B, Nm_to_m = Displacement*9.81/B, animation = true, forceDiameter = B/40, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_resolve, torqueDiameter = B/40) annotation(
      Placement(visible = true, transformation(origin = {58, -68}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    ShipSIM.SubComponents.VariableTranslation DampingCentre annotation(
      Placement(visible = true, transformation(origin = {16, -68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Sensors.AbsoluteVelocity absoluteVelocity(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a) annotation(
      Placement(visible = true, transformation(origin = {-40, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Sensors.AbsoluteAngularVelocity absoluteAngularVelocity(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a) annotation(
      Placement(visible = true, transformation(origin = {-60, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    ShipSIM.SubComponents.VariableTranslation COF_pos annotation(
      Placement(visible = true, transformation(origin = {-70, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealOutput Angles[3] annotation(
      Placement(visible = true, transformation(origin = {0, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {64, -102}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  protected
    Real Disp_aux[size(Disp_Table, 1)];
    Real LCB_aux[size(LCB_Table, 1)];
    Real TCB_aux[size(TCB_Table, 1)];
    Real VCB_aux[size(VCB_Table, 1)];
    Real BMt_aux[size(BMt_Table, 1)];
    Real BMl_aux[size(BMl_Table, 1)];
    Real B_roll_aux[size(B_roll, 1)];
    Real B_pitch_aux[size(B_pitch, 1)];
    Real B_yaw_aux[size(B_yaw, 1)];
    Real B_surge_aux[size(B_surge, 1)];
    Real B_sway_aux[size(B_sway, 1)];
    Real B_heave_aux[size(B_heave, 1)];
  equation
//Calculate point positions (draft)
    P_s[:] = frame_a.r_0 + Modelica.Mechanics.MultiBody.Frames.resolve1(frame_a.R, {0, -B, 0});
    P_f[:] = frame_a.r_0 + Modelica.Mechanics.MultiBody.Frames.resolve1(frame_a.R, {Lpp, 0, 0});
    Heel = Modelica.Math.atan((frame_a.r_0[3] - P_s[3])/B);
    Trim = Modelica.Math.atan((P_f[3] - frame_a.r_0[3])/Lpp);
    Draft = Water_depth - (P_f[3] + frame_a.r_0[3])/2;
//Calculate values from regressions
    for i in 1:size(Disp_aux, 1) loop
      Disp_aux[i] = Disp_Table[i, 1]*Draft^Disp_Table[i, 2];
    end for;
    for i in 1:size(LCB_aux, 1) loop
      LCB_aux[i] = LCB_Table[i, 1]*Draft^LCB_Table[i, 2];
    end for;
    for i in 1:size(TCB_aux, 1) loop
      TCB_aux[i] = TCB_Table[i, 1]*Draft^TCB_Table[i, 2];
    end for;
    for i in 1:size(VCB_aux, 1) loop
      VCB_aux[i] = VCB_Table[i, 1]*Draft^VCB_Table[i, 2];
    end for;
    for i in 1:size(BMt_aux, 1) loop
      BMt_aux[i] = BMt_Table[i, 1]*Draft^BMt_Table[i, 2];
    end for;
    for i in 1:size(BMl_aux, 1) loop
      BMl_aux[i] = BMl_Table[i, 1]*Draft^BMl_Table[i, 2];
    end for;
    Disp = sum(Disp_aux[:]);
    BMt = sum(BMt_aux[:]);
    BMl = sum(BMl_aux[:]);
    CoB[1] = sum(LCB_aux[:]) - BMl*Modelica.Math.sin(Trim);
    CoB[2] = sum(TCB_aux[:]) - BMt*Modelica.Math.sin(Heel);
    CoB[3] = sum(VCB_aux[:]) + BMl*(1 - Modelica.Math.cos(Trim)) + BMt*(1 - Modelica.Math.cos(Heel));
    COB_pos.r_vect = CoB;
    B_ForceWorld.force = {0, 0, Disp*Modelica.Constants.g_n};
//Damping equations
    COF_pos.r_vect = {CoF[1], CoF[2], CoF[3]} "rotation about center of floatation";
    DampingCentre.r_vect = CoB;
    der(Yaw) = absoluteAngularVelocity.w[3];
    Surge = absoluteVelocity.v[1];
    Sway = absoluteVelocity.v[2];
    Heave = absoluteVelocity.v[3];
    for i in 1:size(B_roll_aux, 1) loop
      B_roll_aux[i] = B_roll[i, 1]*abs(der(Heel))^B_roll[i, 2];
    end for;
    for i in 1:size(B_pitch_aux, 1) loop
      B_pitch_aux[i] = B_pitch[i, 1]*abs(der(Trim))^B_pitch[i, 2];
    end for;
    for i in 1:size(B_yaw_aux, 1) loop
      B_yaw_aux[i] = B_yaw[i, 1]*abs(der(Yaw))^B_yaw[i, 2];
    end for;
    for i in 1:size(B_surge_aux, 1) loop
      B_surge_aux[i] = B_surge[i, 1]*abs(Surge)^B_surge[i, 2];
    end for;
    for i in 1:size(B_sway_aux, 1) loop
      B_sway_aux[i] = B_sway[i, 1]*abs(Sway)^B_sway[i, 2];
    end for;
    for i in 1:size(B_heave_aux, 1) loop
      B_heave_aux[i] = B_heave[i, 1]*abs(Heave)^B_heave[i, 2];
    end for;
    DampingForceTorque.torque[1] = -1*sign(der(Heel))*sum(B_roll_aux);
    DampingForceTorque.torque[2] = -1*sign(der(Trim))*sum(B_pitch_aux);
    DampingForceTorque.torque[3] = -1*sign(der(Yaw))*sum(B_yaw_aux);
    DampingForceTorque.force[1] = -1*sign(Surge)*sum(B_surge_aux);
    DampingForceTorque.force[2] = -1*sign(Sway)*sum(B_sway_aux);
    DampingForceTorque.force[3] = -1*sign(Heave)*sum(B_heave_aux);
    connect(frame_a, COB_pos.frame_a) annotation(
      Line(points = {{-100, -40}, {-26, -40}, {-26, 58}, {22, 58}}));
    connect(COB_pos.frame_b, B_ForceWorld.frame_b) annotation(
      Line(points = {{42, 58}, {66, 58}, {66, 48}}, color = {95, 95, 95}));
    connect(DampingCentre.frame_b, DampingForceTorque.frame_b) annotation(
      Line(points = {{26, -68}, {48, -68}}));
    connect(frame_a, DampingCentre.frame_a) annotation(
      Line(points = {{-100, -40}, {-18, -40}, {-18, -68}, {6, -68}}));
    connect(DampingForceTorque.frame_resolve, frame_a) annotation(
      Line(points = {{58, -58}, {58, -40}, {-100, -40}}));
    connect(ShipMass.frame_a, frame_a) annotation(
      Line(points = {{36, -4}, {-26, -4}, {-26, -40}, {-100, -40}}));
    connect(absoluteAngularVelocity.frame_a, frame_a) annotation(
      Line(points = {{-70, 38}, {-82, 38}, {-82, -40}, {-100, -40}}, color = {95, 95, 95}));
    connect(COF_pos.frame_b, absoluteVelocity.frame_a) annotation(
      Line(points = {{-60, -82}, {-50, -82}}, color = {95, 95, 95}));
    connect(frame_a, COF_pos.frame_a) annotation(
      Line(points = {{-100, -40}, {-82, -40}, {-82, -82}, {-80, -82}}));
    Angles = {Heel, Trim, Yaw};
    annotation(
      Icon(graphics = {Rectangle(origin = {-0.01, 0}, borderPattern = BorderPattern.Engraved, extent = {{-99.99, 100}, {99.99, -100}}, radius = 15), Text(origin = {-6, 116}, extent = {{-56, 10}, {56, -10}}, textString = "%name"), Polygon(origin = {0, 3}, fillColor = {206, 206, 206}, fillPattern = FillPattern.Solid, points = {{-56, 31}, {-56, 7}, {-78, 7}, {-78, -13}, {-62, -15}, {-56, -31}, {62, -31}, {70, -29}, {74, -25}, {76, -23}, {74, -19}, {70, -15}, {62, -13}, {78, 7}, {-42, 7}, {-42, 31}, {-56, 31}}), Line(origin = {-19.21, -5.26}, points = {{-52.1499, 33.1499}, {-52.1499, -22.8501}, {47.8501, -22.8501}}, color = {255, 0, 0}, arrow = {Arrow.Filled, Arrow.Filled}, arrowSize = 7), Line(origin = {78.6622, -11.2045}, points = {{-11.8536, 6.20711}, {16.1464, 6.20711}}, color = {0, 0, 255}, thickness = 0.5), Line(origin = {78.8073, -8.74454}, points = {{-6, 0}, {8, 0}}, color = {0, 0, 255}), Line(origin = {80.5547, -12.4945}, points = {{-4, 0}, {4, 0}}, color = {0, 0, 255}), Line(origin = {-94.2489, -11.7902}, points = {{-5.8536, 6.20711}, {16.1464, 6.20711}}, color = {0, 0, 255}, thickness = 0.5), Ellipse(origin = {0, -7}, fillColor = {255, 255, 127}, fillPattern = FillPattern.Solid, extent = {{-8, 7}, {8, -7}}), Line(origin = {0, -6.5}, points = {{0, 6.5}, {0, -7.5}, {0, -3.5}}), Line(origin = {-0.2, -5.67}, points = {{-7.85355, -1.20711}, {8.14645, -1.20711}}), Text(origin = {-65, -68}, extent = {{-17, 14}, {17, -14}}, textString = "Th"), Rectangle(origin = {-65, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Text(origin = {-4, 63}, extent = {{-10, 7}, {10, -7}}, textString = "Y"), Text(origin = {-10, 89}, extent = {{-10, 7}, {10, -7}}, textString = "b"), Text(origin = {-14, 63}, extent = {{-10, 7}, {10, -7}}, textString = "P"), Rectangle(origin = {-14, 68}, extent = {{-18, 14}, {18, -14}}, radius = 2), Text(origin = {-24, 75}, extent = {{-10, 7}, {10, -7}}, textString = "X"), Text(origin = {-24, 75}, extent = {{-10, 7}, {10, -7}}, textString = "X"), Text(origin = {-14, 75}, extent = {{-10, 7}, {10, -7}}, textString = "Y"), Text(origin = {-24, 63}, extent = {{-10, 7}, {10, -7}}, textString = "R"), Text(origin = {-4, 75}, extent = {{-10, 7}, {10, -7}}, textString = "Z"), Polygon(origin = {-72, 89}, lineThickness = 0.5, points = {{0, 3}, {-4, -5}, {4, -5}, {0, 3}}), Text(origin = {-54, 75}, lineColor = {200, 200, 200}, extent = {{-10, 7}, {10, -7}}, textString = "Z"), Text(origin = {-74, 63}, lineColor = {200, 200, 200}, extent = {{-10, 7}, {10, -7}}, textString = "R"), Rectangle(origin = {-64, 68}, extent = {{-18, 14}, {18, -14}}, radius = 2), Text(origin = {-64, 63}, lineColor = {200, 200, 200}, extent = {{-10, 7}, {10, -7}}, textString = "P"), Text(origin = {-74, 75}, extent = {{-10, 7}, {10, -7}}, textString = "X"), Text(origin = {-54, 63}, extent = {{-10, 7}, {10, -7}}, textString = "Y"), Text(origin = {-60, 89}, extent = {{-10, 7}, {10, -7}}, textString = "m"), Text(origin = {-64, 75}, extent = {{-10, 7}, {10, -7}}, textString = "Y"), Text(origin = {-74, 75}, extent = {{-10, 7}, {10, -7}}, textString = "X")}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
      Documentation(info = "<html><head></head><body><div><font face=\"MS Shell Dlg 2\">Ship model simplified to small movements from level trim loading condition. The physics behind this model uses level trim hydrostatics to obtain the center of buoyancy position and apply the displacement force. Centre of buoyancy is corrected by heel and trim using the floatation area inertia properties.</font></div><div><font face=\"MS Shell Dlg 2\">Ship mass and inertia is indicated on the model by use of radii of gyration or absolute inertia moments about the centre of gravity and parallel to frame_a.</font></div><div><font face=\"MS Shell Dlg 2\">Damping factors are introduced by means of an equation depending on the relevant speed as follows:</font></div><div><font face=\"MS Shell Dlg 2\"><br></font></div><div><font face=\"MS Shell Dlg 2\">B = sum(ai * V ^ bi)</font></div><div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div><br></div><div><u>Limitations:</u></div><div><u><br></u></div><div>Damping factors are represented by simple equations and no cross terms are used. These factors shall include added mass effect.</div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><u><br></u></div><div style=\"font-family: -webkit-standard;\"><div><span style=\"font-family: 'MS Shell Dlg 2';\">[Principles] Edward V. Lewis et al, \"Princiles of Naval Architecture\",&nbsp;</span><em style=\"font-family: 'MS Shell Dlg 2';\">SNAME</em><span style=\"font-family: 'MS Shell Dlg 2';\">, Second Revision, 1988</span></div><div><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div>[<span style=\"background-color: rgb(255, 255, 255);\">ModMultibody</span>] \"The new Modelica MultiBody Library\", M. Otter, H. Elmqvist and S.E. Mattsson. Proceedings of the 3rd International Modelica Conference (2003)</div></div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">N/A</span></div><div><br></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div><u>Further development:</u></div><div><u><br></u></div><div>- Enhance damping factors</div><div><br></div></div></div></body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span>[BPuente]<span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">&nbsp;(17/06/2022): Initial release</span></body></html>"),
      Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})));
  end SimpleShipModel;

  model RudderFun "Rudder model based on a Cl,Cd,Cm function"
    parameter Real C(unit = "m") = 3 "Chord [m]";
    parameter Real s(unit = "m") = 4 "spam [m]";
    parameter Real InitialRudderAngle(unit = "deg") = 0 "Initial rudder position [deg, +Port]";
    parameter Real CenterOfForces[3](each unit = "m") = {0.05*C, 0, -s/2 - 0.1*s} "Center of rudder forces from frame_a [m] {x,y,z}";
    parameter Real MaxRudderAngle(unit = "deg") = 35 "Maximum rudder angle [deg]";
    parameter Real MaxRudderAngularSpeed(unit = "deg/s") = 2.5 "Maximum rudder angular speed [deg/s]";
    parameter Boolean AnimationForces = true "Show force vectors on 3D animation" annotation(
      Dialog(tab = "Visualization", group = "3D Animation"));
    //Visualizers
    Modelica.Mechanics.MultiBody.Visualizers.FixedFrame fixedFrame(animation = true, length = 2) annotation(
      Placement(visible = true, transformation(origin = {-10, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Visualizers.FixedShape RudderVisualizer(animation = true, height = s, length = C, r_shape = {-0.75*C + CenterOfForces[1], 0, 0}, width = 0.18*C) annotation(
      Placement(visible = true, transformation(origin = {-12, -46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    //Components
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation Forces_pos(animation = false, r = CenterOfForces) annotation(
      Placement(visible = true, transformation(origin = {0, 16}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Nonlinear.Limiter RudderAngleLimiter(limitsAtInit = true, strict = true, uMax = MaxRudderAngle) annotation(
      Placement(visible = true, transformation(origin = {-72, 76}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
    Modelica.Blocks.Nonlinear.SlewRateLimiter RudderSpeedLimiter(Rising = MaxRudderAngularSpeed, initType = Modelica.Blocks.Types.Init.InitialState, strict = true, y_start = InitialRudderAngle) annotation(
      Placement(visible = true, transformation(origin = {-28, 76}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Position Rudder_angle(exact = true, useSupport = true) annotation(
      Placement(visible = true, transformation(origin = {42, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute Servo(animation = false, n = {0, 0, 1}, phi(fixed = false, start = 0), useAxisFlange = true) annotation(
      Placement(visible = true, transformation(origin = {40, 46}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Gain Deg_to_Rad(k = -Modelica.Constants.pi/180) annotation(
      Placement(visible = true, transformation(origin = {10, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(
      Placement(visible = true, transformation(origin = {100, 46}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {28, 100}, extent = {{-16, -16}, {16, 16}}, rotation = 90)));
    input Modelica.Blocks.Interfaces.RealInput Rudder_Order "Rudder angle current order" annotation(
      Placement(visible = true, transformation(origin = {-103, 75}, extent = {{-9, -9}, {9, 9}}, rotation = 0), iconTransformation(origin = {-99, 93}, extent = {{-9, -9}, {9, 9}}, rotation = 0)));
    output Modelica.Blocks.Interfaces.RealOutput Rudder_position "Current rudder angle position" annotation(
      Placement(visible = true, transformation(origin = {-92, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-103, 75}, extent = {{9, -9}, {-9, 9}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.WorldForce F_Drag(animation = AnimationForces, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_resolve) annotation(
      Placement(visible = true, transformation(origin = {-56, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.WorldForce F_Lift(animation = AnimationForces, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_resolve) annotation(
      Placement(visible = true, transformation(origin = {-56, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Forces.WorldTorque M_Moment(animation = AnimationForces, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_resolve) annotation(
      Placement(visible = true, transformation(origin = {-56, -44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    //Public variables
    Modelica.SIunits.Velocity WaterSpeed "Water speed [m/s]";
    Modelica.SIunits.Angle Beta "Attack angle";
    Real Sign "Sign of the attack angle";
    Real Re "Reynolds number of the rudder";
    Modelica.SIunits.Angle Alpha = -Rudder_angle.phi_ref "Actual rudder angle [rad]";
    Real Cd "Drag coefficient";
    Real Cl "Lift coefficient";
    Real Cm "Moment coefficient";
    Real Drag "Drag Force";
    Real Lift "Lift Force";
    Real Moment "Moment";
    Real Drag_Vect[2] "Normalized vector of drag";
    Real Lift_Vect[2] "Normalized vector of lift";
    Real Water_Speed_XY[2];
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation Rudder_center(animation = false, r = CenterOfForces) annotation(
      Placement(visible = true, transformation(origin = {88, 16}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
    input Modelica.Blocks.Interfaces.RealInput Propeller_speed "Speed of water flow inside the Propeller_flow_diameter [m/s]" annotation(
      Placement(visible = true, transformation(origin = {96, -46}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {95, 0}, extent = {{9, -9}, {-9, 9}}, rotation = 0)));
    input Modelica.Blocks.Interfaces.RealInput Propeller_flow_diameter "Diameter of the propeller water flow reaching to rudder [m]" annotation(
      Placement(visible = true, transformation(origin = {96, -78}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {95, 40}, extent = {{-9, -9}, {9, 9}}, rotation = 180)));
    ShipSIM.SubComponents.ApparentSpeedXY apparentSpeedXY annotation(
      Placement(visible = true, transformation(origin = {88, -18}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  protected
    outer ShipSIM.Components.Environment environment;
    parameter Real Surf(unit = "m2") = C*s "Projected surface of rudder";
    parameter Real Asp(unit = "") = Surf/s^2 "Aspect Ratio of the rudder";
    //intermediate variables
    Real Beta_inter;
  algorithm
    if noEvent(WaterSpeed > 0) then
//Determine attack angle
      Beta_inter := (Water_Speed_XY[1]*(-Modelica.Math.cos(Alpha)) + Water_Speed_XY[2]*(-Modelica.Math.sin(Alpha)))/WaterSpeed;
// Avoid errors reaching +-1
      if Beta_inter <= (-0.9999999) then
        Beta := Modelica.Math.acos(-1);
      elseif Beta_inter >= 0.9999999 then
        Beta := Modelica.Math.acos(1);
      else
        Beta := Modelica.Math.acos(Beta_inter);
      end if;
      if Water_Speed_XY[1]*(-Modelica.Math.sin(Alpha)) - Water_Speed_XY[2]*(-Modelica.Math.cos(Alpha)) >= 0 then
        Sign := -1;
      else
        Sign := 1;
      end if;
//Determine Cl, Cd, y Cm USE A CUSTOM FUNCTION TO OBTAI_N THESE VALUES
//(Cl, Cd, Cm) := ShipSIM.Functions.xxx(Beta, Re, Asp);
//Calculate forces and moments
      Drag := Cd*0.5*environment.SeaDensity*Surf*WaterSpeed^2;
      Lift := Cl*0.5*environment.SeaDensity*Surf*WaterSpeed^2;
      Moment := Cm*0.5*environment.SeaDensity*Surf*C*WaterSpeed^2;
//Translate forces and moments to rudder stock and apply
      Drag_Vect := Water_Speed_XY/WaterSpeed "Normalized vector with water direction (same direction as drag)";
      Lift_Vect := {-Drag_Vect[2], Drag_Vect[1]}*Sign "Normalized vector perpendicular to water direction, adjusted with the direction";
      F_Drag.force := {Drag*Drag_Vect[1], Drag*Drag_Vect[2], 0};
      F_Lift.force := {Lift*Lift_Vect[1], Lift*Lift_Vect[2], 0};
      M_Moment.torque := {0, 0, Moment*Sign};
    else
//If speed is zero
      Sign := 1;
      Beta := 0;
      Cd := 0;
      Cl := 0;
      Cm := 0;
      Drag := 0;
      Lift := 0;
      Moment := 0;
      Drag_Vect := {0, 0};
      Lift_Vect := {0, 0};
      F_Drag.force := {0, 0, 0};
      F_Lift.force := {0, 0, 0};
      M_Moment.torque := {0, 0, 0};
      Beta_inter := 0;
    end if;
  equation
// Connect apparent speed (current)
    apparentSpeedXY.WorldSpeed = environment.CurrentVector;
//Determine absolute speed
//Average water speed on X direction taking into account the propeller flow
    if Propeller_flow_diameter >= s then
      Water_Speed_XY[1] = -Propeller_speed;
    else
      Water_Speed_XY[1] = -(Propeller_speed*Propeller_flow_diameter + apparentSpeedXY.SpeedLocal[1]*(s - Propeller_flow_diameter))/s;
    end if;
    Water_Speed_XY[2] = -apparentSpeedXY.SpeedLocal[2];
    WaterSpeed = (Water_Speed_XY[1]^2 + Water_Speed_XY[2]^2)^0.5;
    Re = WaterSpeed*C/environment.SeaKViscosity;
//Connections
    connect(Rudder_angle.phi_ref, Deg_to_Rad.y) annotation(
      Line(points = {{30, 76}, {21, 76}}, color = {0, 0, 127}));
    connect(Rudder_angle.flange, Servo.support) annotation(
      Line(points = {{52, 76}, {58, 76}, {58, 56}, {46, 56}}));
    connect(Rudder_angle.support, Servo.axis) annotation(
      Line(points = {{42, 66}, {42, 61}, {40, 61}, {40, 56}}));
    connect(Servo.frame_b, Forces_pos.frame_a) annotation(
      Line(points = {{30, 46}, {29, 46}, {29, 16}, {10, 16}}));
    connect(fixedFrame.frame_a, Forces_pos.frame_b) annotation(
      Line(points = {{-20, -16}, {-29, -16}, {-29, 16}, {-10, 16}}, color = {95, 95, 95}));
    connect(RudderSpeedLimiter.y, Deg_to_Rad.u) annotation(
      Line(points = {{-13, 76}, {-2, 76}}, color = {0, 0, 127}));
    connect(RudderAngleLimiter.y, RudderSpeedLimiter.u) annotation(
      Line(points = {{-57, 76}, {-45, 76}}, color = {0, 0, 127}));
    connect(RudderAngleLimiter.u, Rudder_Order) annotation(
      Line(points = {{-89, 76}, {-102, 76}}, color = {0, 0, 127}));
    connect(RudderSpeedLimiter.y, Rudder_position) annotation(
      Line(points = {{-13, 76}, {-8, 76}, {-8, 40}, {-92, 40}}, color = {0, 0, 127}));
    connect(F_Lift.frame_b, Forces_pos.frame_b) annotation(
      Line(points = {{-46, 16}, {-10, 16}}));
    connect(F_Drag.frame_b, Forces_pos.frame_b) annotation(
      Line(points = {{-46, -12}, {-36, -12}, {-36, 16}, {-10, 16}}, color = {95, 95, 95}));
    connect(M_Moment.frame_b, Forces_pos.frame_b) annotation(
      Line(points = {{-46, -44}, {-36, -44}, {-36, 16}, {-10, 16}}));
    connect(Servo.frame_a, frame_a) annotation(
      Line(points = {{50, 46}, {100, 46}}, color = {95, 95, 95}));
    connect(F_Lift.frame_resolve, frame_a) annotation(
      Line(points = {{-56, 6}, {-92, 6}, {-92, -90}, {72, -90}, {72, 46}, {100, 46}}));
    connect(F_Drag.frame_resolve, frame_a) annotation(
      Line(points = {{-56, -22}, {-86, -22}, {-86, -84}, {64, -84}, {64, 46}, {100, 46}}, color = {95, 95, 95}));
    connect(M_Moment.frame_resolve, frame_a) annotation(
      Line(points = {{-56, -34}, {-78, -34}, {-78, -76}, {54, -76}, {54, 46}, {100, 46}}, color = {95, 95, 95}));
    connect(frame_a, Rudder_center.frame_a) annotation(
      Line(points = {{100, 46}, {88, 46}, {88, 26}}));
    connect(RudderVisualizer.frame_a, Forces_pos.frame_b) annotation(
      Line(points = {{-22, -46}, {-32, -46}, {-32, 16}, {-10, 16}}, color = {95, 95, 95}));
    connect(Rudder_center.frame_b, apparentSpeedXY.frame_a) annotation(
      Line(points = {{88, 6}, {88, -8}}, color = {95, 95, 95}));
    annotation(
      uses(Modelica(version = "3.2.3")),
      Diagram,
      Icon(graphics = {Text(origin = {-5, -88}, extent = {{67, 4}, {-67, -4}}, textString = "NACA 0018"), Polygon(origin = {-9, -4}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{43, 10}, {37, -70}, {-23, -70}, {-43, 70}, {33, 70}, {33, 22}, {23, 22}, {23, 10}, {43, 10}}), Polygon(origin = {24, 44}, points = {{10, -38}, {-10, -38}, {-10, -26}, {0, -26}, {0, 52}, {10, 52}, {10, -38}}), Line(origin = {-42, 93.03}, points = {{-58, 0}, {48, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 14), Line(origin = {-33.74, 75.06}, points = {{-58, 0}, {48, 0}}, color = {200, 200, 200}, arrow = {Arrow.Filled, Arrow.None}, arrowSize = 14), Line(origin = {61.3685, 19.9921}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {61.6441, -0.142118}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {61.5786, -20.1318}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {61.6724, 40.05}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {62.0283, -59.9355}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {61.7244, -40.1816}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {61.6724, 59.804}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8)}),
      Documentation(revisions = "<html><head></head><body><div>Rev. 1.3&nbsp;<span style=\"font-size: 12px;\">[BPuente]&nbsp;</span>(01/08/2023): Compatibility with Modelon&nbsp;<span style=\"font-size: 12px;\">(GitHub #4)</span></div><div>Rev. 1.2&nbsp;<span style=\"font-size: 12px;\">[BPuente]&nbsp;</span>&nbsp;(06/05/2023): Added animation forces selector.</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><span style=\"font-family: -webkit-standard;\">Rev. 1.1&nbsp;</span>[BPuente]&nbsp;<span style=\"font-family: -webkit-standard;\">(10/04/2023): Full environment support.</span></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><span style=\"font-family: -webkit-standard;\">Rev. 1.0&nbsp;</span>[BPuente]&nbsp;<span style=\"font-family: -webkit-standard;\">(06/03/2023): Full support with sea current.</span></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><span style=\"font-family: -webkit-standard;\">Rev. 0.2&nbsp;</span>[BPuente]&nbsp;<span style=\"font-family: -webkit-standard;\">(24/02/2023): Rudder representation fixed.</span></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><span style=\"font-family: -webkit-standard;\">Rev. 0.1 [BPuente] (26/01/2023): Connection with propeller speed and get speed from frame.</span></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><span style=\"font-family: -webkit-standard;\">Rev. 0.0&nbsp;</span>[ACorts]<span style=\"font-family: -webkit-standard;\">&nbsp;(26/09/2022): Released under CC-BY by Antonio Corts de la Peña, MSc Thesis&nbsp;</span><span style=\"font-family: -webkit-standard;\">\"Gemelo digital de timón y servo usando Modelica\", 2022</span></div></body></html>", info = "<html><head></head><body><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">Ship rudder model</span><span style=\"font-family: 'MS Shell Dlg 2';\">, based on a Cl,Cd,Cm function,</span><span style=\"font-family: 'MS Shell Dlg 2';\">&nbsp;with the following connections:</span></p><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">- frame_a: connect to the position of the rudder servo</span></p><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">- Rudder_Order: Desired angle of the rudder (+ stbd)</span></p><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">- Rudder_position: Current angle of the rudder</span></p><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">- Propeller_speed: connect with propeller flow speed output</span></p><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">- Propeller_flow_diameter: connect with propeller flow diameter output</span></p><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div class=\"htmlDoc\" style=\"font-size: 12px;\"><div><br></div><div><i><b>NOTE</b></i>:</div><div>Water speed is obtained from rudder center of forces using apparent speed and X-direction is corrected by the propeller flow.</div><div><br></div><div><u>Limitations:</u></div><div>Rudder weight and inertia is not considered.</div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><u><br></u></div><div style=\"font-family: -webkit-standard;\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[Acorts]</td><td>Antonio Corts, \"Gemelo digital de timón y servo usando Modelica\", MSc Thesis 2022</td></tr></tbody></table></div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div><br></div></div><div class=\"htmlDoc\" style=\"font-size: 12px;\"><div><u>Further development:</u></div><div>Correct rudder forces due to open ends of the profile.</div><div><br></div><div><div><u>Copyright:</u></div><div><span style=\"font-family: -webkit-standard;\"><br></span></div><div><span style=\"font-family: -webkit-standard;\">Rev. 0.0: Released under CC-BY by Antonio Corts de la Peña, MSc Thesis&nbsp;</span><span style=\"font-family: -webkit-standard;\">\"Gemelo digital de timón y servo usando Modelica\", 2022</span></div></div><div><span style=\"font-family: -webkit-standard;\"><br></span></div><div><span style=\"font-family: -webkit-standard;\">Following revisions released with the same ShipSIM library license.</span></div></div></div></body></html>"));
  end RudderFun;
  annotation(
    Documentation(info = "<html><head></head><body>Outdated components</body></html>"));
end Obsolete;
