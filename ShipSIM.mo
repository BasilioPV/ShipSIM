package ShipSIM "Ship simulation library"
  extends Modelica.Icons.Package;

  package Components "Library components"
    extends Modelica.Icons.Package;

    model SimpleShipModel "Simplified Ship Model"
      parameter Modelica.SIunits.Length Lpp = 100 "Length between perpendiculars [m]" annotation(
        Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
      parameter Modelica.SIunits.Length B = 20 "Moulded beam [m]" annotation(
        Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
      parameter Modelica.SIunits.Length CoF[3] = {50.364, 0, 4} "Centre of Floatation Area (ship ref. sys.) {X,Y,Z} [m]" annotation(Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
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
      parameter Modelica.SIunits.Inertia I_xx = Displacement * (0.3557 * B) ^ 2 "X axis inertia (roll) [kg*m2]" annotation(
        Dialog(group = "Mass Properties"));
      parameter Modelica.SIunits.Inertia I_yy = Displacement * (0.2746 * Lpp) ^ 2 "Y axis inertia (Pitch) [kg*m2]" annotation(
        Dialog(group = "Mass Properties"));
      parameter Modelica.SIunits.Inertia I_zz = Displacement * (0.2739 * Lpp) ^ 2 "Z axis inertia (Yaw) [kg*m2]" annotation(
        Dialog(group = "Mass Properties"));
      parameter Real B_roll[:, 2] = {{50000000,1},{500000, 2}} "Roll damping factor equation [Nm*s/rad]" annotation(
        Dialog(tab = "Damping Factors", group = "Damping Factors"));
      parameter Real B_pitch[:, 2] = [1000000, 2] "Pitch damping factor equation [Nm*s/rad]" annotation(
        Dialog(tab = "Damping Factors", group = "Damping Factors"));
      parameter Real B_yaw[:, 2] = {{50000000,1},{500000, 2}} "Yaw damping factor equation [Nm*s/rad]" annotation(
        Dialog(tab = "Damping Factors", group = "Damping Factors"));
      parameter Real B_surge[:, 2] = {{9.1437e2,3},{-5.2863e3,2},{1.9657e4,1}} "Surge damping factor equation [N*s/m]" annotation(
        Dialog(tab = "Damping Factors", group = "Damping Factors"));
      parameter Real B_sway[:, 2] = {{1742500, 2}} "Sway damping factor equation [N*s/m]" annotation(
        Dialog(tab = "Damping Factors", group = "Damping Factors"));
      parameter Real B_heave[:, 2] = {{500000,1},{5000, 2}} "Heave damping factor equation [N*s/m]" annotation(
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
        Placement(visible = true, transformation(origin = {-100, -40}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, -40}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
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
        Placement(visible = true, transformation(origin = {106, -60}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {106, 18}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
      ShipSIM.SubComponents.VariableTranslation COB_pos annotation(
        Placement(visible = true, transformation(origin = {32, 58}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Forces.WorldForce B_ForceWorld(N_to_m = Displacement * 9.81 / B, animation = true, diameter = B / 40) annotation(
        Placement(visible = true, transformation(origin = {66, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorque DampingForceTorque(N_to_m = Displacement * 9.81 / B, Nm_to_m = Displacement * 9.81 / B, animation = true, forceDiameter = B / 40, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_resolve, torqueDiameter = B / 40) annotation(
        Placement(visible = true, transformation(origin = {58, -68}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      ShipSIM.SubComponents.VariableTranslation DampingCentre annotation(
        Placement(visible = true, transformation(origin = {16, -68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Sensors.AbsoluteVelocity absoluteVelocity(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a) annotation(
        Placement(visible = true, transformation(origin = {-40, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Sensors.AbsoluteAngularVelocity absoluteAngularVelocity(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a) annotation(
        Placement(visible = true, transformation(origin = {-60, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ShipSIM.SubComponents.VariableTranslation COF_pos annotation(
        Placement(visible = true, transformation(origin = {-70, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
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
//Calcular las posiciones absolutas de los puntos
      P_s[:] = frame_a.r_0 + Modelica.Mechanics.MultiBody.Frames.resolve1(frame_a.R, {0, -B, 0});
      P_f[:] = frame_a.r_0 + Modelica.Mechanics.MultiBody.Frames.resolve1(frame_a.R, {Lpp, 0, 0});
      Heel = Modelica.Math.atan((frame_a.r_0[3] - P_s[3]) / B);
      Trim = Modelica.Math.atan((P_f[3] - frame_a.r_0[3]) / Lpp);
      Draft = Water_depth - (P_f[3] + frame_a.r_0[3]) / 2;
//Calcular los valores de tablas
      for i in 1:size(Disp_aux, 1) loop
        Disp_aux[i] = Disp_Table[i, 1] * Draft ^ Disp_Table[i, 2];
      end for;
      for i in 1:size(LCB_aux, 1) loop
        LCB_aux[i] = LCB_Table[i, 1] * Draft ^ LCB_Table[i, 2];
      end for;
      for i in 1:size(TCB_aux, 1) loop
        TCB_aux[i] = TCB_Table[i, 1] * Draft ^ TCB_Table[i, 2];
      end for;
      for i in 1:size(VCB_aux, 1) loop
        VCB_aux[i] = VCB_Table[i, 1] * Draft ^ VCB_Table[i, 2];
      end for;
      for i in 1:size(BMt_aux, 1) loop
        BMt_aux[i] = BMt_Table[i, 1] * Draft ^ BMt_Table[i, 2];
      end for;
      for i in 1:size(BMl_aux, 1) loop
        BMl_aux[i] = BMl_Table[i, 1] * Draft ^ BMl_Table[i, 2];
      end for;
      Disp = sum(Disp_aux[:]);
      BMt = sum(BMt_aux[:]);
      BMl = sum(BMl_aux[:]);
      CoB[1] = sum(LCB_aux[:]) - BMl * Modelica.Math.sin(Trim);
      CoB[2] = sum(TCB_aux[:]) - BMt * Modelica.Math.sin(Heel);
      CoB[3] = sum(VCB_aux[:]) + BMl * (1 - Modelica.Math.cos(Trim)) + BMt * (1 - Modelica.Math.cos(Heel));
      COB_pos.r_vect = CoB;
      B_ForceWorld.force = {0, 0, Disp * Modelica.Constants.g_n};
//Ecuaciones de amortiguamiento
      COF_pos.r_vect = {CoF[1], CoF[2], CoF[3]} "Gira con respecto al centro de flotacion"; 
      DampingCentre.r_vect = CoB;
      der(Yaw) = absoluteAngularVelocity.w[3];
      Surge = absoluteVelocity.v[1];
      Sway = absoluteVelocity.v[2];
      Heave = absoluteVelocity.v[3];
      for i in 1:size(B_roll_aux, 1) loop
        B_roll_aux[i] = B_roll[i, 1] * abs(der(Heel)) ^ B_roll[i, 2];
      end for;
      for i in 1:size(B_pitch_aux, 1) loop
        B_pitch_aux[i] = B_pitch[i, 1] * abs(der(Trim)) ^ B_pitch[i, 2];
      end for;
      for i in 1:size(B_yaw_aux, 1) loop
        B_yaw_aux[i] = B_yaw[i, 1] * abs(der(Yaw)) ^ B_yaw[i, 2];
      end for;
      for i in 1:size(B_surge_aux, 1) loop
        B_surge_aux[i] = B_surge[i, 1] * abs(Surge) ^ B_surge[i, 2];
      end for;
      for i in 1:size(B_sway_aux, 1) loop
        B_sway_aux[i] = B_sway[i, 1] * abs(Sway) ^ B_sway[i, 2];
      end for;
      for i in 1:size(B_heave_aux, 1) loop
        B_heave_aux[i] = B_heave[i, 1] * abs(Heave) ^ B_heave[i, 2];
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
      annotation(
        Icon(graphics = {Rectangle(origin = {-0.01, 0}, borderPattern = BorderPattern.Engraved, extent = {{-99.99, 100}, {99.99, -100}}, radius = 15), Text(origin = {-6, 84}, extent = {{-56, 10}, {56, -10}}, textString = "%name"), Text(origin = {-4, -72}, extent = {{-92, 8}, {92, -8}}, textString = "Displ. = %Displacement"), Line(origin = {-0.882299, 16.1132}, points = {{-79.8536, -3}, {-79.8536, 7}, {-79.8536, 17}, {-57.8536, 17}, {-57.8536, 41}, {-43.8535, 41}, {-43.8536, 17}, {76.1464, 17}, {68.1464, 7}, {60.1464, -3}, {72.1464, -7}, {72.1464, -17}, {60.1464, -21}, {42.1464, -21}, {-29.8536, -21}, {-57.8536, -21}, {-63.8536, -5}, {-79.8536, -3}}), Line(origin = {-28.1893, 17.687}, points = {{-52.1499, 33.1499}, {-52.1499, -22.8501}, {47.8501, -22.8501}}, color = {76, 227, 0}, thickness = 0.5, arrow = {Arrow.Filled, Arrow.Filled}, arrowSize = 7), Text(origin = {-6, -28}, extent = {{-92, 8}, {92, -8}}, textString = "Lpp = %Lpp"), Text(origin = {-4, -50}, extent = {{-92, 8}, {92, -8}}, textString = "B = %B"), Line(origin = {81.85, 9.79}, points = {{-11.8536, 6.20711}, {12.1464, 6.20711}}), Line(origin = {78, 12}, points = {{-6, 0}, {6, 0}}), Line(origin = {78, 8}, points = {{-4, 0}, {4, 0}})}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
        Documentation(info = "<html><head></head><body><div><font face=\"MS Shell Dlg 2\">Ship model simplified to small movements from level trim loading condition. The phisics behind this model uses level trim hydrostatics to obtain the center of buoyancy position and applly the displacement force. Centre of buoyancy is corrected by heel and trim using the floatation area inertia properties.</font></div><div><font face=\"MS Shell Dlg 2\">Ship mass and inertia is indicated on the model by use of radii of gyration or absolute inertia moments about the centre of gravity and parallel to frame_a.</font></div><div><font face=\"MS Shell Dlg 2\">Damping factors are introduced by means of an equation depending on the relevant speed as follows:</font></div><div><font face=\"MS Shell Dlg 2\"><br></font></div><div><font face=\"MS Shell Dlg 2\">B = sum(ai * V ^ bi)</font></div><div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div><br></div><div><u>Limitations:</u></div><div><u><br></u></div><div>Damping factors are represented by simple equations and no cross terms are used. These factors shall include added mass effect.</div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><u><br></u></div><div style=\"font-family: -webkit-standard;\">\"The new Modelica MultiBody Library\", M. Otter, H. Elmqvist and S.E. Mattsson. Proceedings of the 3rd International Modelica Conference (2003)</div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">N/A</span></div><div><br></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div><u>Further development:</u></div><div><u><br></u></div><div>- Enhance damping factors</div><div><br></div><div><u>Copyright:</u></div><div><b><i><br></i></b></div><div><span style=\"font-family: 'Times New Roman'; font-size: 12px; orphans: 2; widows: 2;\">Modelica ShipSIM Library. Copyright&nbsp;</span><span style=\"font-size: 12px; font-family: -webkit-standard;\">©</span><span style=\"font-family: 'Times New Roman'; font-size: 12px; orphans: 2; widows: 2;\">&nbsp;2021-2022 Modelica Association, Basilio Puente Varela</span><span style=\"font-family: 'Times New Roman'; font-size: 12px; orphans: 2; widows: 2;\">. All rights reserved.</span></div></div></div></body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev 0.0: (17/06/2022): Initial release</span></body></html>"),
        Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})));
    end SimpleShipModel;

    model Propeller "Wageningen B-Series Propeller model"
      constant Real Pi = 3.14159265359;
      parameter Real Diameter(unit = "m") = 4 "Propeller Diameter [m]" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Real Z = 4 "Number of blades" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Real P_D = 1 "Pitch-diameter ratio" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Real Ae_Ao = 0.3 "Blade area ratio" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Real Inertia(unit = "kg.m2") = 100 "Inertia moment of propeller" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Real d(unit = "kg/m3") = 1025 "Water density" annotation(
        Dialog(tab = "Environmental", group = "Sea Water"));
      parameter Real w_ini(unit = "rad/s") = 0.1 "initial speed" annotation(
        Dialog(tab = "Initialization", group = "Speed"));
      Modelica.Blocks.Interfaces.RealInput ShipSpeed(unit = "m/s") "Ship speed [m/s]" annotation(
        Placement(visible = true, transformation(origin = {94, -60}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {103, -79}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Torque torque annotation(
        Placement(visible = true, transformation(origin = {-8, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput WakeFraction annotation(
        Placement(visible = true, transformation(origin = {42, -92}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {40, -104}, extent = {{-8, -8}, {8, 8}}, rotation = -90)));
      Modelica.Blocks.Interfaces.RealInput ThrustDeduction annotation(
        Placement(visible = true, transformation(origin = {-2, -92}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {-8, -104}, extent = {{-8, -8}, {8, 8}}, rotation = -90)));
      Modelica.Blocks.Interfaces.RealInput RotativeRelative annotation(
        Placement(visible = true, transformation(origin = {-60, -94}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {-60, -104}, extent = {{8, -8}, {-8, 8}}, rotation = 90)));
      Modelica.Mechanics.Rotational.Components.Inertia inertia(J = Inertia, w(fixed = false, start = w_ini)) annotation(
        Placement(visible = true, transformation(origin = {46, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange annotation(
        Placement(visible = true, transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput Thrust(unit = "N") "Efective Thrust [N]" annotation(
        Placement(visible = true, transformation(origin = {-92, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-96, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Real J(start = 0) "Advance ratio";
      Real Kt "Thrust coefficient";
      Real Kq "Torque coefficient";
      Real Thrust_Kt(unit = "N") "Thrust obtained by open water";
      Real Torque_Kq(unit = "N.m") "Torque obtained by open water";
      Real rpm(unit = "rpm") "Revolutions per minute";
      Real Nu_zero "Open water efficiency";
      Real Nu_b "Propeller efficiency - behind hull";
      Real Nu_hull "Hull efficiency = 1-t/1-w";
      Real Nu_propulsive "Overall propulsive efficiency";
      Real AdvanceSpeed(unit = "m/s") "Advance speed";
      Real ThrustPower(unit = "W");
      Real ShaftPower(unit = "W");
    equation
//Calculation of propeller openwater characteristic
      AdvanceSpeed = ShipSpeed * (1 - WakeFraction);
      J = AdvanceSpeed / (der(flange.phi) * (1 / (2 * Pi)) * Diameter);
      (Kt, Kq) = ShipSIM.Functions.WageningenB_Kt_Kq(J, P_D, Ae_Ao, Z);
      Kt = Thrust_Kt / (d * (der(flange.phi) * (1 / (2 * Pi))) ^ 2 * Diameter ^ 4);
      Kq = Torque_Kq / (d * (der(flange.phi) * (1 / (2 * Pi))) ^ 2 * Diameter ^ 5);
      Nu_zero = J / (2 * Pi) * (Kt / Kq);
/*
  This model calculates the following efficiencies:
  - Nu_b: propeller efficiency behind hull
  - Nu_hull: hull efficiency
  - Nu_propulsive: overall propulsive efficiency
*/
//Efficiencies
      Nu_b = Nu_zero * RotativeRelative;
      Nu_hull = (1 - ThrustDeduction) / (1 - WakeFraction);
      Nu_propulsive = Nu_b * Nu_hull;
//Thrust and torque
      Thrust = Thrust_Kt * (1 - ThrustDeduction);
      ThrustPower = ShaftPower * Nu_propulsive;
      rpm = der(flange.phi) * (1 / (2 * Pi)) * 60;
      ThrustPower = Thrust * ShipSpeed;
      ShaftPower = der(flange.phi) * torque.tau;
      connect(flange, inertia.flange_b) annotation(
        Line(points = {{100, 0}, {78, 0}, {78, 8}, {56, 8}}));
      connect(inertia.flange_a, torque.flange) annotation(
        Line(points = {{36, 8}, {26, 8}, {26, -2}, {2, -2}}));
      annotation(
        Documentation(info = "<html><head></head><body><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\">Ship propeller model according to Wageningen B-Series curves. This model need the following inputs:</div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div>- Rotative relative efficiency</div><div>- Thrust deduction coefficient</div><div>- Wake factor coefficient</div><div>- Ship speed</div><div>- Shaft speed</div><div><br></div><div>Output is the thrust force of the propeller and mechanical torque on the shaft.</div><div><br></div><div><i><b>NOTE</b></i>:</div><div>Torque does not include shaft efficiency.</div><div>Thrust output value is effective thrust to be compared directly to the resistance curve.</div><div><br></div><div><u>Limitations:</u></div><div><u><br></u></div><div>2 &lt;= Z &lt;= 7 (number of blades)</div><div>0.30 &lt;= Ae/Ao &lt;= 1.05 (expaded area ratio)</div><div>0.5 &lt;= P/D &lt;= 1.40 (pitch-diameter ratio)</div><div>Rn &lt;= 2x10^6 (Reynolds number)</div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><u><br></u></div><div style=\"font-family: -webkit-standard;\">[1]&nbsp;<span style=\"font-family: 'MS Shell Dlg 2';\">\"FURTHER COMPUTER-ANALYZED DATA OF THE WAGENINGEN B-SCREW SERIES\" by M.W.C. OOSTERVELD and P. VAN OOSSANEN, July 1975</span></div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">N/A</span></div><div><br></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div><u>Further development:</u></div><div><u><br></u></div><div>- Include corrections for Rn &gt; 2x10^6&nbsp;</div><div>- Include automatic inertia calculation for propellers</div><div>- Cavitation warning</div><div><br></div><div><u>Copyright:</u></div><div><b><i><br></i></b></div><div><span style=\"font-family: -webkit-standard;\">Modelica ShipSIM Library. Copyright © 2021-2022 Modelica Association, Basilio Puente Varela and contributors. All rights reserved.</span></div></div></body></html>", revisions = "<html><head></head><body>Rev. 0.0 (11-08-2021): Initial release</body></html>", __OpenModelica_infoHeader = "<html><head></head><body><br></body></html>"),
        Icon(graphics = {Text(origin = {-21, 71}, extent = {{-75, 7}, {75, -7}}, textString = "D = %Diameter m", horizontalAlignment = TextAlignment.Left), Text(origin = {-21, 51}, extent = {{-75, 7}, {75, -7}}, textString = "Blades = %Z", horizontalAlignment = TextAlignment.Left), Text(origin = {89, 70}, extent = {{-75, 8}, {75, -8}}, textString = "P/D = %P_D", horizontalAlignment = TextAlignment.Left), Text(origin = {65, 52}, extent = {{-69, 8}, {69, -8}}, textString = "Ae/Ao = %Ae_Ao", horizontalAlignment = TextAlignment.Left), Text(origin = {1, 89}, extent = {{-87, 9}, {87, -9}}, textString = "Wageningen B-Series", fontSize = 8, textStyle = {TextStyle.Bold}), Polygon(origin = {2, -24}, fillColor = {131, 131, 131}, fillPattern = FillPattern.Solid, points = {{22.1333, 3.3831}, {30.7398, 10.3915}, {36.9775, 17.3425}, {40.1856, 23.2239}, {42.1463, 29.4616}, {41.79, 36.2348}, {38.0471, 44.0769}, {31.4524, 53.5227}, {22.7192, 59.9389}, {13.986, 64.3951}, {5.9843, 67.0243}, {0.0392, 67.7411}, {-8.2698, 66.4517}, {-15.2894, 62.0823}, {-20.6612, 55.1348}, {-22.5953, 45.0352}, {-21.5208, 37.0846}, {-19.0134, 28.2744}, {-14.1428, 17.5308}, {-19.0134, 13.4484}, {-27.0361, 16.6712}, {-34.6997, 18.963}, {-41.146, 20.181}, {-46.3036, 19.8947}, {-53.0362, 17.5308}, {-58.2652, 12.9465}, {-62.9923, 5.2108}, {-67.0033, -4.6732}, {-68.5076, -12.0512}, {-68.5076, -20.1446}, {-67.5766, -26.5195}, {-66.2158, -32.9658}, {-63.9233, -37.6929}, {-61.1303, -41.4897}, {-57.1907, -45.1423}, {-52.8927, -47.1478}, {-48.3091, -48.7956}, {-41.2181, -49.0819}, {-35.0581, -47.2913}, {-28.8267, -43.2082}, {-22.2369, -36.6905}, {-18.011, -31.2466}, {-14.6447, -26.3046}, {-13.2839, -24.3705}, {-7.1953, -26.9493}, {-5.978, -35.9023}, {-2.9694, -46.8615}, {1.2565, -53.5227}, {5.411, -57.3902}, {10.5679, -59.7541}, {14.651, -60.6137}, {23.8903, -60.6137}, {30.6236, -59.6827}, {41.3672, -55.6717}, {48.9601, -50.9439}, {55.1915, -45.2137}, {59.2025, -40.0568}, {61.7806, -35.3297}, {62.6402, -31.605}, {62.6402, -24.3705}, {60.8496, -19.2136}, {57.8417, -14.343}, {52.899, -10.1171}, {45.3782, -6.321}, {38.6456, -4.5304}, {31.8409, -3.5987}, {22.5015, -2.912}, {22.1333, 3.3831}, {22.2152, 3.3915}, {22.2964, 3.3999}, {22.1333, 3.3831}}), Ellipse(origin = {1, -27}, fillPattern = FillPattern.Solid, extent = {{-11, 11}, {11, -11}}), Ellipse(origin = {0.00758004, -26.7895}, extent = {{-23.0076, 22.7896}, {23.0076, -22.7896}}), Line(origin = {66, 13}, points = {{24, 11}, {-26, -19}}, pattern = LinePattern.Dash), Line(origin = {87, -4}, points = {{9, 18}, {-55, -22}}, pattern = LinePattern.Dash), Line(origin = {-77.5522, -34.4328}, points = {{-9, -6}, {9, 6}}, arrow = {Arrow.Filled, Arrow.None}, arrowSize = 5), Line(origin = {-72.5373, -70.1642}, points = {{-9, -6}, {9, 6}}, arrow = {Arrow.Filled, Arrow.None}, arrowSize = 5), Line(origin = {-77.87, -46.03}, points = {{-9, -6}, {9, 6}}, arrow = {Arrow.Filled, Arrow.None}, arrowSize = 5), Line(origin = {-77.5522, -59.8209}, points = {{-9, -6}, {9, 6}}, arrow = {Arrow.Filled, Arrow.None}, arrowSize = 5), Text(origin = {-2, 110}, extent = {{-90, 12}, {90, -12}}, textString = "%name"), Rectangle(origin = {-0.01, 0}, borderPattern = BorderPattern.Engraved, extent = {{-99.99, 100}, {99.99, -100}}, radius = 15)}));
    end Propeller;
  end Components;

  package SubComponents "Library SubComponents"
    extends Modelica.Icons.Package;

    model VariableTranslation
      import Modelica.Mechanics.MultiBody.Types;
      import Modelica.SIunits.Conversions.to_unit1;
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a "Coordinate system fixed to the component with one cut-force and cut-torque" annotation(
        Placement(transformation(extent = {{-116, -16}, {-84, 16}})));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b "Coordinate system fixed to the component with one cut-force and cut-torque" annotation(
        Placement(transformation(extent = {{84, -16}, {116, 16}})));
      Modelica.Blocks.Interfaces.RealInput r_vect[3] annotation(
        Placement(visible = true, transformation(origin = {-4, -106}, extent = {{-20, -20}, {20, 20}}, rotation = 90), iconTransformation(origin = {-2, -100}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
    protected
      outer Modelica.Mechanics.MultiBody.World world;
    equation
      Connections.branch(frame_a.R, frame_b.R);
      assert(cardinality(frame_a) > 0 or cardinality(frame_b) > 0, "Neither connector frame_a nor frame_b of FixedTranslation object is connected");
      frame_b.r_0 = frame_a.r_0 + Modelica.Mechanics.MultiBody.Frames.resolve1(frame_a.R, r_vect);
      frame_b.R = frame_a.R;
/* Force and torque balance */
      zeros(3) = frame_a.f + frame_b.f;
      zeros(3) = frame_a.t + frame_b.t + cross(r_vect, frame_b.f);
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(fillPattern = FillPattern.Solid, extent = {{-99, 5}, {101, -5}}), Text(lineColor = {0, 0, 255}, extent = {{-150, 85}, {150, 45}}, textString = "%name"), Text(extent = {{150, -50}, {-150, -20}}, textString = "r=%r_vect"), Text(lineColor = {128, 128, 128}, extent = {{-89, 38}, {-53, 13}}, textString = "a"), Text(lineColor = {128, 128, 128}, extent = {{57, 39}, {93, 14}}, textString = "b")}),
        Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(fillPattern = FillPattern.Solid, extent = {{-100, 5}, {100, -5}}), Line(points = {{-95, 20}, {-58, 20}}, color = {128, 128, 128}, arrow = {Arrow.None, Arrow.Filled}), Line(points = {{-94, 18}, {-94, 50}}, color = {128, 128, 128}, arrow = {Arrow.None, Arrow.Filled}), Text(lineColor = {128, 128, 128}, extent = {{-72, 35}, {-58, 24}}, textString = "x"), Text(lineColor = {128, 128, 128}, extent = {{-113, 57}, {-98, 45}}, textString = "y"), Line(points = {{-100, -4}, {-100, -69}}, color = {128, 128, 128}), Line(points = {{-100, -63}, {90, -63}}, color = {128, 128, 128}), Text(lineColor = {128, 128, 128}, extent = {{-22, -39}, {16, -63}}, textString = "input r"), Polygon(fillPattern = FillPattern.Solid, points = {{88, -59}, {88, -68}, {100, -63}, {88, -59}}), Line(points = {{100, -3}, {100, -68}}, color = {128, 128, 128}), Line(points = {{69, 20}, {106, 20}}, color = {128, 128, 128}, arrow = {Arrow.None, Arrow.Filled}), Line(points = {{70, 18}, {70, 50}}, color = {128, 128, 128}, arrow = {Arrow.None, Arrow.Filled}), Text(lineColor = {128, 128, 128}, extent = {{92, 35}, {106, 24}}, textString = "x"), Text(lineColor = {128, 128, 128}, extent = {{51, 57}, {66, 45}}, textString = "y")}),
        Documentation(info = "<html><head></head><body><p>This component is a modification of \"fixedTranslation\" of Modelica.Mechanics.Multibody to enable a real time bar changing. 3D visualization was disabled.</p><pre style=\"font-size: 12px;\"><div style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\"><u>Copyright:</u></div><div style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\"><span style=\"font-family: 'Times New Roman'; orphans: 2; widows: 2;\">Modelica ShipSIM Library. Copyright&nbsp;</span><span style=\"font-family: -webkit-standard;\">©</span><span style=\"font-family: 'Times New Roman'; orphans: 2; widows: 2;\">&nbsp;2021-2022 Modelica Association, Basilio Puente Varela. All rights reserved.</span></div></pre>
</body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev 0.0: (01/07/2021): Initial release</span></body></html>"));
    end VariableTranslation;
  end SubComponents;

  package Functions "Functions used in the library"
    extends Modelica.Icons.FunctionsPackage;

    function SquareRoot "Square root"
      extends Modelica.Icons.FunctionsPackage;
      input Real x;
      input Real J "Advance ratio";
      input Real P_D "Pitch-diameter ratio";
      input Real Ae_Ao "Blade area ratio";
      input Real Z "Number of blades";
      output Real Kt;
    protected
      Real M[5, 5];
      //Matrix Kt
    algorithm
      M[1, 1] := 0.00880496;
      M[2, 1] := -0.204554;
      M[3, 1] := 0.166351;
      M[4, 1] := 0.158114;
      M[5, 1] := -0.147581;
      M[1, 2] := 0;
      M[2, 2] := 1;
      M[3, 2] := 0;
      M[4, 2] := 0;
      M[5, 2] := 2;
      M[1, 3] := 0;
      M[2, 3] := 0;
      M[3, 3] := 1;
      M[4, 3] := 2;
      M[5, 3] := 0;
      M[1, 4] := 0;
      M[2, 4] := 0;
      M[3, 4] := 0;
      M[4, 4] := 0;
      M[5, 4] := 1;
      M[1, 5] := 0;
      M[2, 5] := 0;
      M[3, 5] := 0;
      M[4, 5] := 0;
      M[5, 5] := 0;
      Kt := 0;
      for i in 1:5 loop
        Kt := Kt + M[i, 1] * J ^ M[i, 2] * P_D ^ M[i, 3] * Ae_Ao ^ M[i, 4] * Z ^ M[i, 5];
      end for;
//Kt:=Kt+MT[i,1]*x^MT[i,2]*x^MT[i,3]*x^MT[i,4]*x^MT[i,5];
    end SquareRoot;

    function WageningenB_Kt_Kq "Wageningen B series Kt & Kq"
      extends Modelica.Icons.FunctionsPackage;
      input Real J "Advance ratio";
      input Real P_D "Pitch-diameter ratio";
      input Real Ae_Ao "Blade area ratio";
      input Real Z "Number of blades";
      output Real Kt "Kt coefficient";
      output Real Kq "Kq coefficient";
    protected
      Real T[39, 5];
      //Matrix Kt
      Real Q[47, 5];
      //Matrix Kq
    algorithm
//Load Kt matrix
      T[1, 1] := 0.00880496;
      T[2, 1] := -0.204554;
      T[3, 1] := 0.166351;
      T[4, 1] := 0.158114;
      T[5, 1] := -0.147581;
      T[6, 1] := -0.481497;
      T[7, 1] := 0.415437;
      T[8, 1] := 0.0144043;
      T[9, 1] := -0.0530054;
      T[10, 1] := 0.0143481;
      T[11, 1] := 0.0606826;
      T[12, 1] := -0.0125894;
      T[13, 1] := 0.0109689;
      T[14, 1] := -0.133698;
      T[15, 1] := 0.00638407;
      T[16, 1] := -0.00132718;
      T[17, 1] := 0.168496;
      T[18, 1] := -0.0507214;
      T[19, 1] := 0.0854559;
      T[20, 1] := -0.0504475;
      T[21, 1] := 0.010465;
      T[22, 1] := -0.00648272;
      T[23, 1] := -0.00841728;
      T[24, 1] := 0.0168424;
      T[25, 1] := -0.00102296;
      T[26, 1] := -0.0317791;
      T[27, 1] := 0.018604;
      T[28, 1] := -0.00410798;
      T[29, 1] := -0.000606848;
      T[30, 1] := -0.0049819;
      T[31, 1] := 0.0025983;
      T[32, 1] := -0.000560528;
      T[33, 1] := -0.00163652;
      T[34, 1] := -0.000328787;
      T[35, 1] := 0.000116502;
      T[36, 1] := 0.000690904;
      T[37, 1] := 0.00421749;
      T[38, 1] := 0.0000565229;
      T[39, 1] := -0.00146564;
      T[1, 2] := 0;
      T[2, 2] := 1;
      T[3, 2] := 0;
      T[4, 2] := 0;
      T[5, 2] := 2;
      T[6, 2] := 1;
      T[7, 2] := 0;
      T[8, 2] := 0;
      T[9, 2] := 2;
      T[10, 2] := 0;
      T[11, 2] := 1;
      T[12, 2] := 0;
      T[13, 2] := 1;
      T[14, 2] := 0;
      T[15, 2] := 0;
      T[16, 2] := 2;
      T[17, 2] := 3;
      T[18, 2] := 0;
      T[19, 2] := 2;
      T[20, 2] := 3;
      T[21, 2] := 1;
      T[22, 2] := 2;
      T[23, 2] := 0;
      T[24, 2] := 1;
      T[25, 2] := 3;
      T[26, 2] := 0;
      T[27, 2] := 1;
      T[28, 2] := 0;
      T[29, 2] := 0;
      T[30, 2] := 1;
      T[31, 2] := 2;
      T[32, 2] := 3;
      T[33, 2] := 1;
      T[34, 2] := 1;
      T[35, 2] := 2;
      T[36, 2] := 0;
      T[37, 2] := 0;
      T[38, 2] := 3;
      T[39, 2] := 0;
      T[1, 3] := 0;
      T[2, 3] := 0;
      T[3, 3] := 1;
      T[4, 3] := 2;
      T[5, 3] := 0;
      T[6, 3] := 1;
      T[7, 3] := 2;
      T[8, 3] := 0;
      T[9, 3] := 0;
      T[10, 3] := 1;
      T[11, 3] := 1;
      T[12, 3] := 0;
      T[13, 3] := 0;
      T[14, 3] := 3;
      T[15, 3] := 6;
      T[16, 3] := 6;
      T[17, 3] := 0;
      T[18, 3] := 0;
      T[19, 3] := 0;
      T[20, 3] := 0;
      T[21, 3] := 6;
      T[22, 3] := 6;
      T[23, 3] := 3;
      T[24, 3] := 3;
      T[25, 3] := 3;
      T[26, 3] := 3;
      T[27, 3] := 0;
      T[28, 3] := 2;
      T[29, 3] := 0;
      T[30, 3] := 0;
      T[31, 3] := 0;
      T[32, 3] := 0;
      T[33, 3] := 2;
      T[34, 3] := 6;
      T[35, 3] := 6;
      T[36, 3] := 0;
      T[37, 3] := 3;
      T[38, 3] := 6;
      T[39, 3] := 3;
      T[1, 4] := 0;
      T[2, 4] := 0;
      T[3, 4] := 0;
      T[4, 4] := 0;
      T[5, 4] := 1;
      T[6, 4] := 1;
      T[7, 4] := 1;
      T[8, 4] := 0;
      T[9, 4] := 0;
      T[10, 4] := 0;
      T[11, 4] := 0;
      T[12, 4] := 1;
      T[13, 4] := 1;
      T[14, 4] := 0;
      T[15, 4] := 0;
      T[16, 4] := 0;
      T[17, 4] := 1;
      T[18, 4] := 2;
      T[19, 4] := 2;
      T[20, 4] := 2;
      T[21, 4] := 2;
      T[22, 4] := 2;
      T[23, 4] := 0;
      T[24, 4] := 0;
      T[25, 4] := 0;
      T[26, 4] := 1;
      T[27, 4] := 2;
      T[28, 4] := 2;
      T[29, 4] := 0;
      T[30, 4] := 0;
      T[31, 4] := 0;
      T[32, 4] := 0;
      T[33, 4] := 0;
      T[34, 4] := 0;
      T[35, 4] := 0;
      T[36, 4] := 1;
      T[37, 4] := 1;
      T[38, 4] := 1;
      T[39, 4] := 2;
      T[1, 5] := 0;
      T[2, 5] := 0;
      T[3, 5] := 0;
      T[4, 5] := 0;
      T[5, 5] := 0;
      T[6, 5] := 0;
      T[7, 5] := 0;
      T[8, 5] := 1;
      T[9, 5] := 1;
      T[10, 5] := 1;
      T[11, 5] := 1;
      T[12, 5] := 1;
      T[13, 5] := 1;
      T[14, 5] := 0;
      T[15, 5] := 0;
      T[16, 5] := 0;
      T[17, 5] := 0;
      T[18, 5] := 0;
      T[19, 5] := 0;
      T[20, 5] := 0;
      T[21, 5] := 0;
      T[22, 5] := 0;
      T[23, 5] := 1;
      T[24, 5] := 1;
      T[25, 5] := 1;
      T[26, 5] := 1;
      T[27, 5] := 1;
      T[28, 5] := 1;
      T[29, 5] := 2;
      T[30, 5] := 2;
      T[31, 5] := 2;
      T[32, 5] := 2;
      T[33, 5] := 2;
      T[34, 5] := 2;
      T[35, 5] := 2;
      T[36, 5] := 2;
      T[37, 5] := 2;
      T[38, 5] := 2;
      T[39, 5] := 2;
//Load Kq matrix
      Q[1, 1] := 0.00379368;
      Q[2, 1] := 0.00886523;
      Q[3, 1] := -0.032241;
      Q[4, 1] := 0.00344778;
      Q[5, 1] := -0.0408811;
      Q[6, 1] := -0.108009;
      Q[7, 1] := -0.0885381;
      Q[8, 1] := 0.188561;
      Q[9, 1] := -0.00370871;
      Q[10, 1] := 0.00513696;
      Q[11, 1] := 0.0209449;
      Q[12, 1] := 0.00474319;
      Q[13, 1] := -0.00723408;
      Q[14, 1] := 0.00438388;
      Q[15, 1] := -0.0269403;
      Q[16, 1] := 0.0558082;
      Q[17, 1] := 0.0161886;
      Q[18, 1] := 0.00318086;
      Q[19, 1] := 0.015896;
      Q[20, 1] := 0.0471729;
      Q[21, 1] := 0.0196283;
      Q[22, 1] := -0.0502782;
      Q[23, 1] := -0.030055;
      Q[24, 1] := 0.0417122;
      Q[25, 1] := -0.0397722;
      Q[26, 1] := -0.00350024;
      Q[27, 1] := -0.0106854;
      Q[28, 1] := 0.00110903;
      Q[29, 1] := -0.000313912;
      Q[30, 1] := 0.0035985;
      Q[31, 1] := -0.00142121;
      Q[32, 1] := -0.00383637;
      Q[33, 1] := 0.0126803;
      Q[34, 1] := -0.00318278;
      Q[35, 1] := 0.00334268;
      Q[36, 1] := -0.00183491;
      Q[37, 1] := 0.000112451;
      Q[38, 1] := -0.0000297228;
      Q[39, 1] := 0.000269551;
      Q[40, 1] := 0.00083265;
      Q[41, 1] := 0.00155334;
      Q[42, 1] := 0.000302683;
      Q[43, 1] := -0.0001843;
      Q[44, 1] := -0.000425399;
      Q[45, 1] := 0.0000869243;
      Q[46, 1] := -0.0004659;
      Q[47, 1] := 0.0000554194;
      Q[1, 2] := 0;
      Q[2, 2] := 2;
      Q[3, 2] := 1;
      Q[4, 2] := 0;
      Q[5, 2] := 0;
      Q[6, 2] := 1;
      Q[7, 2] := 2;
      Q[8, 2] := 0;
      Q[9, 2] := 1;
      Q[10, 2] := 0;
      Q[11, 2] := 1;
      Q[12, 2] := 2;
      Q[13, 2] := 2;
      Q[14, 2] := 1;
      Q[15, 2] := 0;
      Q[16, 2] := 3;
      Q[17, 2] := 0;
      Q[18, 2] := 1;
      Q[19, 2] := 0;
      Q[20, 2] := 1;
      Q[21, 2] := 3;
      Q[22, 2] := 0;
      Q[23, 2] := 3;
      Q[24, 2] := 2;
      Q[25, 2] := 0;
      Q[26, 2] := 0;
      Q[27, 2] := 3;
      Q[28, 2] := 3;
      Q[29, 2] := 0;
      Q[30, 2] := 3;
      Q[31, 2] := 0;
      Q[32, 2] := 1;
      Q[33, 2] := 0;
      Q[34, 2] := 2;
      Q[35, 2] := 0;
      Q[36, 2] := 1;
      Q[37, 2] := 3;
      Q[38, 2] := 3;
      Q[39, 2] := 1;
      Q[40, 2] := 2;
      Q[41, 2] := 0;
      Q[42, 2] := 0;
      Q[43, 2] := 0;
      Q[44, 2] := 0;
      Q[45, 2] := 3;
      Q[46, 2] := 0;
      Q[47, 2] := 1;
      Q[1, 3] := 0;
      Q[2, 3] := 0;
      Q[3, 3] := 1;
      Q[4, 3] := 2;
      Q[5, 3] := 1;
      Q[6, 3] := 1;
      Q[7, 3] := 1;
      Q[8, 3] := 2;
      Q[9, 3] := 0;
      Q[10, 3] := 1;
      Q[11, 3] := 1;
      Q[12, 3] := 1;
      Q[13, 3] := 0;
      Q[14, 3] := 1;
      Q[15, 3] := 2;
      Q[16, 3] := 0;
      Q[17, 3] := 3;
      Q[18, 3] := 3;
      Q[19, 3] := 0;
      Q[20, 3] := 0;
      Q[21, 3] := 0;
      Q[22, 3] := 1;
      Q[23, 3] := 1;
      Q[24, 3] := 2;
      Q[25, 3] := 3;
      Q[26, 3] := 6;
      Q[27, 3] := 0;
      Q[28, 3] := 3;
      Q[29, 3] := 6;
      Q[30, 3] := 0;
      Q[31, 3] := 6;
      Q[32, 3] := 0;
      Q[33, 3] := 2;
      Q[34, 3] := 3;
      Q[35, 3] := 6;
      Q[36, 3] := 1;
      Q[37, 3] := 2;
      Q[38, 3] := 6;
      Q[39, 3] := 0;
      Q[40, 3] := 0;
      Q[41, 3] := 2;
      Q[42, 3] := 6;
      Q[43, 3] := 0;
      Q[44, 3] := 3;
      Q[45, 3] := 3;
      Q[46, 3] := 6;
      Q[47, 3] := 6;
      Q[1, 4] := 0;
      Q[2, 4] := 0;
      Q[3, 4] := 0;
      Q[4, 4] := 0;
      Q[5, 4] := 1;
      Q[6, 4] := 1;
      Q[7, 4] := 1;
      Q[8, 4] := 1;
      Q[9, 4] := 0;
      Q[10, 4] := 0;
      Q[11, 4] := 0;
      Q[12, 4] := 0;
      Q[13, 4] := 1;
      Q[14, 4] := 1;
      Q[15, 4] := 1;
      Q[16, 4] := 1;
      Q[17, 4] := 1;
      Q[18, 4] := 1;
      Q[19, 4] := 2;
      Q[20, 4] := 2;
      Q[21, 4] := 2;
      Q[22, 4] := 2;
      Q[23, 4] := 2;
      Q[24, 4] := 2;
      Q[25, 4] := 2;
      Q[26, 4] := 2;
      Q[27, 4] := 0;
      Q[28, 4] := 0;
      Q[29, 4] := 0;
      Q[30, 4] := 1;
      Q[31, 4] := 1;
      Q[32, 4] := 2;
      Q[33, 4] := 2;
      Q[34, 4] := 2;
      Q[35, 4] := 2;
      Q[36, 4] := 0;
      Q[37, 4] := 0;
      Q[38, 4] := 0;
      Q[39, 4] := 1;
      Q[40, 4] := 1;
      Q[41, 4] := 1;
      Q[42, 4] := 1;
      Q[43, 4] := 2;
      Q[44, 4] := 2;
      Q[45, 4] := 2;
      Q[46, 4] := 2;
      Q[47, 4] := 2;
      Q[1, 5] := 0;
      Q[2, 5] := 0;
      Q[3, 5] := 0;
      Q[4, 5] := 0;
      Q[5, 5] := 0;
      Q[6, 5] := 0;
      Q[7, 5] := 0;
      Q[8, 5] := 0;
      Q[9, 5] := 1;
      Q[10, 5] := 1;
      Q[11, 5] := 1;
      Q[12, 5] := 1;
      Q[13, 5] := 1;
      Q[14, 5] := 1;
      Q[15, 5] := 1;
      Q[16, 5] := 0;
      Q[17, 5] := 0;
      Q[18, 5] := 0;
      Q[19, 5] := 0;
      Q[20, 5] := 0;
      Q[21, 5] := 0;
      Q[22, 5] := 0;
      Q[23, 5] := 0;
      Q[24, 5] := 0;
      Q[25, 5] := 0;
      Q[26, 5] := 0;
      Q[27, 5] := 1;
      Q[28, 5] := 1;
      Q[29, 5] := 1;
      Q[30, 5] := 1;
      Q[31, 5] := 1;
      Q[32, 5] := 1;
      Q[33, 5] := 1;
      Q[34, 5] := 1;
      Q[35, 5] := 1;
      Q[36, 5] := 2;
      Q[37, 5] := 2;
      Q[38, 5] := 2;
      Q[39, 5] := 2;
      Q[40, 5] := 2;
      Q[41, 5] := 2;
      Q[42, 5] := 2;
      Q[43, 5] := 2;
      Q[44, 5] := 2;
      Q[45, 5] := 2;
      Q[46, 5] := 2;
      Q[47, 5] := 2;
// Compute Kt & Kq
      Kt := 0;
      for i in 1:39 loop
        Kt := Kt + T[i, 1] * J ^ T[i, 2] * P_D ^ T[i, 3] * Ae_Ao ^ T[i, 4] * Z ^ T[i, 5];
      end for;
      Kq := 0;
      for i in 1:47 loop
        Kq := Kq + Q[i, 1] * J ^ Q[i, 2] * P_D ^ Q[i, 3] * Ae_Ao ^ Q[i, 4] * Z ^ Q[i, 5];
      end for;
      annotation(
        Documentation(info = "<html><head></head><body>Kt &amp; Kq values for wageningen B-series obtained from:<div><br></div><div>\"FURTHER COMPUTER-ANALYZED DATA OF THE WAGENINGEN B-SCREW SERIES\" by M.W.C. OOSTERVELD and P. VAN OOSSANEN, July 1975</div><div><br></div><div><u>Limitations:</u></div><div><u><br></u></div><div>2 &lt;= Z &lt;= 7 (number of blades)</div><div>0.30 &lt;= Ae/Ao &lt;= 1.05 (expaded area ratio)</div><div>0.5 &lt;= P/D &lt;= 1.40 (pitch-diameter ratio)</div><div>Rn &lt;= 2x10^6 (Reynolds number)</div></body></html>", revisions = "<html><head></head><body><b>Rev 0.0:</b> Initial release<div><br></div><div><br></div><div><u>Fhurter development:</u></div><div>- Include corrections for Rn &gt; 2x10^6&nbsp;</div></body></html>"));
    end WageningenB_Kt_Kq;
  end Functions;

  package Samples "Sample simulations of the library"
    extends Modelica.Icons.Example;

    model ExamplePropeller
      extends Modelica.Icons.Example;
      ShipSIM.Propeller propeller(Ae_Ao = 0.298, Diameter = 3.7, Inertia = 0, P_D = 1.6, Z = 4, w_ini = 0) annotation(
        Placement(visible = true, transformation(origin = {-16, 54}, extent = {{-26, -26}, {26, 26}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression WakeFraction(y = 0.17086) annotation(
        Placement(visible = true, transformation(origin = {-22, -58}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression ThrustDeduction(y = 0.19170) annotation(
        Placement(visible = true, transformation(origin = {-54, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression ShipSpeed(y = 10) annotation(
        Placement(visible = true, transformation(origin = {72, -58}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Math.Gain knot_to_m(k = 1852 / 3600) annotation(
        Placement(visible = true, transformation(origin = {40, -40}, extent = {{10, -10}, {-10, 10}}, rotation = -90)));
      Modelica.Blocks.Sources.RealExpression RotativeRel(y = 1.02256) annotation(
        Placement(visible = true, transformation(origin = {-54, -8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      constant Integer m = 3 "Number of phases";
      parameter Modelica.SIunits.Time tStart1 = 0.1 "Start time";
      parameter Modelica.SIunits.Time tStart2 = 2.0 "Start time from Y to D";
      parameter Modelica.SIunits.Voltage VNominal = 100;
      parameter Modelica.SIunits.Frequency fNominal = 50 "Nominal frequency";
      Modelica.Mechanics.Rotational.Sources.Speed speed(phi(displayUnit = "rad")) annotation(
        Placement(visible = true, transformation(origin = {76, 60}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.TimeTable timeTable(table = [0, 0.001; 10, 10]) annotation(
        Placement(visible = true, transformation(origin = {132, 78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(ThrustDeduction.y, propeller.ThrustDeduction) annotation(
        Line(points = {{-43, -30}, {-43, -30.25}, {-35, -30.25}, {-35, -34.5}, {-27, -34.5}, {-27, -15}, {-18, -15}, {-18, 27}}, color = {0, 0, 127}));
      connect(WakeFraction.y, propeller.WakeFraction) annotation(
        Line(points = {{-11, -58}, {-11, -21.5}, {-6, -21.5}, {-6, 27}}, color = {0, 0, 127}));
      connect(propeller.ShipSpeed, knot_to_m.y) annotation(
        Line(points = {{11, 33}, {33.78, 33}, {33.78, -27.54}, {39.78, -27.54}}, color = {0, 0, 127}));
      connect(knot_to_m.u, ShipSpeed.y) annotation(
        Line(points = {{40, -52}, {40, -58}, {62, -58}}, color = {0, 0, 127}));
      connect(RotativeRel.y, propeller.RotativeRelative) annotation(
        Line(points = {{-43, -8}, {-32, -8}, {-32, 27}}, color = {0, 0, 127}));
      connect(speed.flange, propeller.flange) annotation(
        Line(points = {{66, 60}, {10, 60}}));
      connect(timeTable.y, speed.w_ref) annotation(
        Line(points = {{144, 78}, {154, 78}, {154, 48}, {88, 48}, {88, 60}}, color = {0, 0, 127}));
    protected
      annotation(
        Diagram);
    end ExamplePropeller;

    model ExampleMotor "Test example: AsynchronousInductionMachineSquirrelCage Y-D"
      extends Modelica.Icons.Example;
      constant Integer m = 3 "Number of phass";
      parameter Modelica.SIunits.Voltage VNominal = 100 "Nominal RMS voltage per phase";
      parameter Modelica.SIunits.Frequency fNominal = 50 "Nominal frequency";
      parameter Modelica.SIunits.Time tStart1 = 0.1 "Start time";
      parameter Modelica.SIunits.Time tStart2 = 2.0 "Start time from Y to D";
      parameter Modelica.SIunits.Torque TLoad = 161.4 "Nominal load torque";
      parameter Modelica.SIunits.AngularVelocity wLoad(displayUnit = "rev/min") = 1440.45 * 2 * Modelica.Constants.pi / 60 "Nominal load speed";
      parameter Modelica.SIunits.Inertia JLoad = 0.29 "Load's moment of inertia";
      Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM_SquirrelCage aimc(Jr = aimcData.Jr, Js = aimcData.Js, Lm = aimcData.Lm, Lrsigma = aimcData.Lrsigma, Lssigma = aimcData.Lssigma, Lszero = aimcData.Lszero, Rr = aimcData.Rr, Rs = aimcData.Rs, TrOperational(displayUnit = "K") = 293.15, TrRef = aimcData.TrRef, TsOperational(displayUnit = "K") = 293.15, TsRef = aimcData.TsRef, alpha20r = aimcData.alpha20r, alpha20s(displayUnit = "1/K") = aimcData.alpha20s, frictionParameters = aimcData.frictionParameters, fsNominal = aimcData.fsNominal, p = aimcData.p, phiMechanical(displayUnit = "rad", fixed = true), statorCoreParameters = aimcData.statorCoreParameters, strayLoadParameters = aimcData.strayLoadParameters, wMechanical(displayUnit = "rad/s", fixed = true, start = 1)) annotation(
        Placement(transformation(extent = {{-20, -50}, {0, -30}})));
      Modelica.Electrical.Machines.Sensors.CurrentQuasiRMSSensor currentQuasiRMSSensor annotation(
        Placement(transformation(extent = {{-10, 10}, {10, -10}}, rotation = 270)));
      Modelica.Electrical.MultiPhase.Sources.SineVoltage sineVoltage(final m = m, freqHz = fill(fNominal, m), V = fill(sqrt(2 / 3) * VNominal, m)) annotation(
        Placement(transformation(origin = {0, 60}, extent = {{10, -10}, {-10, 10}}, rotation = 270)));
      Modelica.Electrical.MultiPhase.Basic.Star star(final m = m) annotation(
        Placement(transformation(extent = {{-50, 80}, {-70, 100}})));
      Modelica.Electrical.Analog.Basic.Ground ground annotation(
        Placement(transformation(origin = {-90, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 270)));
      Modelica.Blocks.Sources.BooleanStep booleanStep[m](each startTime = tStart1) annotation(
        Placement(transformation(extent = {{-80, 30}, {-60, 50}})));
      Modelica.Electrical.MultiPhase.Ideal.IdealClosingSwitch idealCloser(final m = m, Ron = fill(1e-5, m), Goff = fill(1e-5, m)) annotation(
        Placement(transformation(origin = {0, 30}, extent = {{-10, 10}, {10, -10}}, rotation = 270)));
      Modelica.Electrical.Machines.Utilities.SwitchYD switchYD(m = m) annotation(
        Placement(transformation(extent = {{-20, -30}, {0, -10}})));
      Modelica.Blocks.Sources.BooleanStep booleanStepYD[m](each startTime = tStart2) annotation(
        Placement(transformation(extent = {{-80, -30}, {-60, -10}})));
      parameter Modelica.Electrical.Machines.Utilities.ParameterRecords.AIM_SquirrelCageData aimcData annotation(
        Placement(visible = true, transformation(extent = {{-18, -90}, {2, -70}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression WakeFraction(y = 0.17086) annotation(
        Placement(visible = true, transformation(origin = {120, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression RotativeRel(y = 1.02256) annotation(
        Placement(visible = true, transformation(origin = {88, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression ShipSpeed(y = 10) annotation(
        Placement(visible = true, transformation(origin = {214, -56}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      ShipSIM.Propeller propeller(Ae_Ao = 0.298, Diameter = 0.2, Inertia = 0, P_D = 1.6, Z = 3, w_ini = 1) annotation(
        Placement(visible = true, transformation(origin = {140, 44}, extent = {{-26, -26}, {26, 26}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression ThrustDeduction(y = 0.19170) annotation(
        Placement(visible = true, transformation(origin = {88, -28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Math.Gain knot_to_m(k = 1852 / 3600) annotation(
        Placement(visible = true, transformation(origin = {182, -38}, extent = {{10, -10}, {-10, 10}}, rotation = -90)));
    initial equation
      aimc.is = zeros(3);
      aimc.ir = zeros(2);
    equation
      connect(star.pin_n, ground.p) annotation(
        Line(points = {{-70, 90}, {-80, 90}}, color = {0, 0, 255}));
      connect(sineVoltage.plug_n, star.plug_p) annotation(
        Line(points = {{0, 70}, {0, 90}, {-50, 90}}, color = {0, 0, 255}));
      connect(sineVoltage.plug_p, idealCloser.plug_p) annotation(
        Line(points = {{0, 50}, {0, 48}, {0, 46}, {0, 40}}, color = {0, 0, 255}));
      connect(booleanStep.y, idealCloser.control) annotation(
        Line(points = {{-59, 40}, {-20, 40}, {-20, 30}, {-12, 30}}, color = {255, 0, 255}));
      connect(booleanStepYD.y, switchYD.control) annotation(
        Line(points = {{-59, -20}, {-22, -20}}, color = {255, 0, 255}));
      connect(idealCloser.plug_n, currentQuasiRMSSensor.plug_p) annotation(
        Line(points = {{0, 20}, {0, 18}, {0, 10}}, color = {0, 0, 255}));
      connect(switchYD.plug_sn, aimc.plug_sn) annotation(
        Line(points = {{-16, -30}, {-16, -30}}, color = {0, 0, 255}));
      connect(switchYD.plug_sp, aimc.plug_sp) annotation(
        Line(points = {{-4, -30}, {-4, -30}}, color = {0, 0, 255}));
      connect(switchYD.plugSupply, currentQuasiRMSSensor.plug_n) annotation(
        Line(points = {{-10, -10}, {0, -10}}, color = {0, 0, 255}));
      connect(knot_to_m.u, ShipSpeed.y) annotation(
        Line(points = {{182, -50}, {182, -56}, {204, -56}}, color = {0, 0, 127}));
      connect(ThrustDeduction.y, propeller.ThrustDeduction) annotation(
        Line(points = {{99, -28}, {99, -28.25}, {107, -28.25}, {107, -32.5}, {115, -32.5}, {115, -13}, {138, -13}, {138, 17}}, color = {0, 0, 127}));
      connect(RotativeRel.y, propeller.RotativeRelative) annotation(
        Line(points = {{99, -6}, {123, -6}, {123, 17}}, color = {0, 0, 127}));
      connect(WakeFraction.y, propeller.WakeFraction) annotation(
        Line(points = {{131, -56}, {131, -19.5}, {150, -19.5}, {150, 17}}, color = {0, 0, 127}));
      connect(propeller.ShipSpeed, knot_to_m.y) annotation(
        Line(points = {{166.78, 23.46}, {175.78, 23.46}, {175.78, -25.54}, {181.78, -25.54}}, color = {0, 0, 127}));
      connect(aimc.flange, propeller.flange) annotation(
        Line(points = {{0, -40}, {32, -40}, {32, 100}, {202, 100}, {202, 50}, {166, 50}}));
      annotation(
        experiment(StopTime = 2.5, Interval = 1E-4, Tolerance = 1e-06),
        Documentation(info = "<html>
    <p>At start time tStart three phase voltage is supplied to the asynchronous induction machine with squirrel cage,
    first star-connected, then delta-connected; the machine starts from standstill, accelerating inertias against
    load torque quadratic dependent on speed, finally reaching nominal speed.</p>
    
    <p>Simulate for 2.5 seconds and plot (versus time):</p>
    
    <ul>
    <li>currentQuasiRMSSensor.I: stator current RMS</li>
    <li>aimc.wMechanical: motor's speed</li>
    <li>aimc.tauElectrical: motor's torque</li>
    </ul>
    
    <p>Default machine parameters are used.</p>
    </html>"));
    end ExampleMotor;

    model SampleTurningCircle
      extends Modelica.Icons.Example;
      inner Modelica.Mechanics.MultiBody.World world(animateWorld = true, enableAnimation = true, label2 = "z", n = {0, 0, -1}, nominalLength = 50) annotation(
        Placement(visible = true, transformation(origin = {-68, 62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.SimpleShipModel simpleShipModel( CoG = {50.364, 0, 8.8},ini_Pos = {0, 0, 6}, ini_Vel = {2.57, 0, 0}) annotation(
        Placement(visible = true, transformation(origin = {27, 3}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression Water_Depth(y = 10) annotation(
        Placement(visible = true, transformation(origin = {74, 8}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(animation = true, height = 10, length = 100, r_shape = {0, 0, 10 / 2}, width = 20) annotation(
        Placement(visible = true, transformation(origin = {94, 64}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedFrame ShipFrame(color_y = {0, 180, 0}, color_z = {255, 0, 0}, diameter = 0.5, length = 30) annotation(
        Placement(visible = true, transformation(origin = {10, 82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(animation = false, r = {2, 0, 2})  annotation(
        Placement(visible = true, transformation(origin = {-41, -49}, extent = {{17, -17}, {-17, 17}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.WorldForce force(N_to_m = 3500, animation = true, diameter = 0.25, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_b)  annotation(
        Placement(visible = true, transformation(origin = {-76, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression Force[3](y = {20000, 3000, 0})  annotation(
        Placement(visible = true, transformation(origin = {-134, -23}, extent = {{-26, -15}, {26, 15}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Visualizers.FixedShape ShipShape(animation = false, color = {255, 0, 0}, height = 1, length = 1, shapeType = "file://S:/Documentos Baul/Publico/Modelica/Modelos Propios/SimpleShipModel/Ship.dxf", specularCoefficient = 0.5, width = 1) annotation(
        Placement(visible = true, transformation(origin = {94, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(Water_Depth.y, simpleShipModel.Water_depth) annotation(
        Line(points = {{63, 8}, {56.5, 8}, {56.5, 7}, {49, 7}}, color = {0, 0, 127}));
      connect(fixedShape.frame_a, simpleShipModel.frame_a) annotation(
        Line(points = {{84, 64}, {-16, 64}, {-16, -5}, {6, -5}}, color = {95, 95, 95}));
      connect(ShipFrame.frame_a, simpleShipModel.frame_a) annotation(
        Line(points = {{0, 82}, {-16, 82}, {-16, -5}, {6, -5}}));
  connect(simpleShipModel.frame_a, fixedTranslation.frame_a) annotation(
        Line(points = {{6, -6}, {-24, -6}, {-24, -49}}, color = {95, 95, 95}));
  connect(force.frame_b, fixedTranslation.frame_b) annotation(
        Line(points = {{-66, -50}, {-62, -50}, {-62, -49}, {-58, -49}}, color = {95, 95, 95}));
  connect(Force.y, force.force) annotation(
        Line(points = {{-105, -23}, {-105, -50}, {-88, -50}}, color = {0, 0, 127}, thickness = 0.5));
  connect(ShipShape.frame_a, simpleShipModel.frame_a) annotation(
        Line(points = {{84, 38}, {-16, 38}, {-16, -4}, {6, -4}, {6, -6}}, color = {95, 95, 95}));
      annotation(
        experiment(StartTime = 0, StopTime = 3000, Tolerance = 1e-06, Interval = 0.2));
    end SampleTurningCircle;
    
      model SampleZigZag
      extends Modelica.Icons.Example;
      inner Modelica.Mechanics.MultiBody.World world(animateWorld = true, enableAnimation = true, label2 = "z", n = {0, 0, -1}, nominalLength = 50) annotation(
        Placement(visible = true, transformation(origin = {-68, 62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.SimpleShipModel simpleShipModel( ini_Pos = {0, 0, 6}, ini_Vel = {2.57, 0, 0}) annotation(
        Placement(visible = true, transformation(origin = {27, 3}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression Draft(y = 10) annotation(
        Placement(visible = true, transformation(origin = {82, -2}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(animation = false, height = 10, length = 100, r_shape = {0, 0, 10 / 2}, width = 20) annotation(
        Placement(visible = true, transformation(origin = {56, 54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedFrame ShipFrame(color_y = {0, 180, 0}, color_z = {255, 0, 0}, diameter = 0.5, length = 30) annotation(
        Placement(visible = true, transformation(origin = {12, 72}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(animation = false, r = {2, 0, 2})  annotation(
        Placement(visible = true, transformation(origin = {-26, -50}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.WorldForce force(N_to_m = 3500, animation = true, diameter = 0.25, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_b)  annotation(
        Placement(visible = true, transformation(origin = {-76, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Visualizers.FixedShape ShipShape(animation = true, color = {255, 0, 0}, height = 1, length = 1, shapeType = "file://W:/Documentos Baul/Publico/Modelica/Modelos Propios/SimpleShipModel/Ship.dxf", specularCoefficient = 0.5, width = 1) annotation(
        Placement(visible = true, transformation(origin = {90, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression realExpression[3](y = {20000, 0, 0})  annotation(
        Placement(visible = true, transformation(origin = {-183, -58}, extent = {{-25, -10}, {25, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation Rudder_pos(animation = false, r = {0, 0, 8})  annotation(
        Placement(visible = true, transformation(origin = {-78, -6}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation Forces_pos(animation = true, r = {-10, 0, -4})  annotation(
        Placement(visible = true, transformation(origin = {-158, -6}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute Servo(animation = false, n = {0, 0, 1}, phi(fixed = false, start = 0), useAxisFlange = true)  annotation(
        Placement(visible = true, transformation(origin = {-118, -4}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Position Rudder_angle(exact = true, useSupport = true)  annotation(
        Placement(visible = true, transformation(origin = {-116, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Visualizers.FixedFrame fixedFrame(animation = true, length = 2)  annotation(
        Placement(visible = true, transformation(origin = {-234, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Nonlinear.Limiter RudderAngleLimiter(limitsAtInit = true, strict = true, uMax = 35)  annotation(
        Placement(visible = true, transformation(origin = {-234, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Nonlinear.SlewRateLimiter RudderSpeedLimiter(Rising = 2.5, strict = true)  annotation(
        Placement(visible = true, transformation(origin = {-196, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Deg_to_Rad(k = -0.01745329252)  annotation(
        Placement(visible = true, transformation(origin = {-158, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Pulse pulse(amplitude = 80, offset = -40, period = 60)  annotation(
        Placement(visible = true, transformation(origin = {-288, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(Draft.y, simpleShipModel.Water_depth) annotation(
        Line(points = {{71, -2}, {56.5, -2}, {56.5, 7}, {49, 7}}, color = {0, 0, 127}));
      connect(fixedShape.frame_a, simpleShipModel.frame_a) annotation(
        Line(points = {{46, 54}, {-4, 54}, {-4, -5}, {6, -5}}, color = {95, 95, 95}));
      connect(ShipFrame.frame_a, simpleShipModel.frame_a) annotation(
        Line(points = {{2, 72}, {-16, 72}, {-16, -5}, {6, -5}}));
  connect(simpleShipModel.frame_a, fixedTranslation.frame_a) annotation(
        Line(points = {{6, -6}, {-16, -6}, {-16, -50}}, color = {95, 95, 95}));
  connect(force.frame_b, fixedTranslation.frame_b) annotation(
        Line(points = {{-66, -50}, {-36, -50}}, color = {95, 95, 95}));
      connect(ShipShape.frame_a, simpleShipModel.frame_a) annotation(
        Line(points = {{80, 40}, {-26, 40}, {-26, 0}, {6, 0}, {6, -6}}, color = {95, 95, 95}));
  connect(realExpression.y, force.force) annotation(
        Line(points = {{-156, -58}, {-88, -58}, {-88, -50}}, color = {0, 0, 127}, thickness = 0.5));
  connect(simpleShipModel.frame_a, Rudder_pos.frame_a) annotation(
        Line(points = {{6, -6}, {-68, -6}}, color = {95, 95, 95}));
  connect(Rudder_pos.frame_b, Servo.frame_a) annotation(
        Line(points = {{-88, -6}, {-97, -6}, {-97, -4}, {-108, -4}}, color = {95, 95, 95}));
  connect(Servo.frame_b, Forces_pos.frame_a) annotation(
        Line(points = {{-128, -4}, {-137, -4}, {-137, -6}, {-148, -6}}));
  connect(Rudder_angle.support, Servo.axis) annotation(
        Line(points = {{-116, 16}, {-116, 11}, {-118, 11}, {-118, 6}}));
  connect(Rudder_angle.flange, Servo.support) annotation(
        Line(points = {{-106, 26}, {-100, 26}, {-100, 6}, {-112, 6}}));
  connect(fixedFrame.frame_a, Forces_pos.frame_b) annotation(
        Line(points = {{-244, -14}, {-199, -14}, {-199, -6}, {-168, -6}}, color = {95, 95, 95}));
  connect(Rudder_angle.phi_ref, Deg_to_Rad.y) annotation(
        Line(points = {{-128, 26}, {-134, 26}, {-134, 44}, {-146, 44}}, color = {0, 0, 127}));
  connect(Deg_to_Rad.u, RudderSpeedLimiter.y) annotation(
        Line(points = {{-170, 44}, {-184, 44}}, color = {0, 0, 127}));
  connect(RudderSpeedLimiter.u, RudderAngleLimiter.y) annotation(
        Line(points = {{-208, 44}, {-222, 44}}, color = {0, 0, 127}));
  connect(pulse.y, RudderAngleLimiter.u) annotation(
        Line(points = {{-277, 80}, {-258.5, 80}, {-258.5, 44}, {-246, 44}}, color = {0, 0, 127}));
      annotation(
        experiment(StartTime = 0, StopTime = 3000, Tolerance = 1e-06, Interval = 0.2));
    end SampleZigZag;
    
    
  end Samples;
  annotation(
    Documentation(info = "<html><head></head><body><div>This library provides basic components to simulate ship specific systems.</div><div><br></div><div><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><u>Copyright:</u></div><div><u><br></u></div><div><!--StartFragment--><p style=\"font-family: 'Times New Roman'; font-variant-ligatures: normal; orphans: 2; widows: 2;\">Open Source Modelica ShipSIM Library. Copyright&nbsp;<span style=\"font-family: -webkit-standard; orphans: auto; widows: auto;\">©</span>&nbsp;2021-2022 Modelica Association, Basilio Puente Varela and contributors. All rights reserved.</p><p style=\"font-family: 'Times New Roman'; font-variant-ligatures: normal; orphans: 2; widows: 2;\">Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:</p><ol style=\"font-family: 'Times New Roman'; font-variant-ligatures: normal; orphans: 2; widows: 2;\"><li>Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.</li><li>Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.</li><li>Neither the names of the Modelica Association, Basilio Puente Varela nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.</li></ol><p style=\"font-family: 'Times New Roman'; font-variant-ligatures: normal; orphans: 2; widows: 2;\">THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.</p><p style=\"font-family: 'Times New Roman'; font-variant-ligatures: normal; orphans: 2; widows: 2;\">You are under no obligation whatsoever to provide any bug fixes, patches, or upgrades to the features, functionality or performance of the source code (\"Enhancements\") to anyone; however, if you choose to make your Enhancements available either publicly, or directly to the authors of this library, without imposing a separate written license agreement for such Enhancements, then you hereby grant the following license: a non-exclusive, royalty-free perpetual license to install, use, modify, prepare derivative works, incorporate into other computer software, distribute, and sublicense such enhancements or derivative works thereof, in binary and source code form.</p><p style=\"font-family: 'Times New Roman'; font-variant-ligatures: normal; orphans: 2; widows: 2;\">Note: The license is a revised 3 clause BSD license with an ADDED paragraph at the end that makes it easy to accept improvements.</p><!--EndFragment--></div><div><br></div></body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev 0.0: (10/09/2022): Initial release</span></body></html>"),
    Icon(graphics = {Line(origin = {3.07997, -3.30189}, points = {{-79.8536, -3}, {-79.8536, 7}, {-79.8536, 17}, {-57.8536, 17}, {-57.8536, 41}, {-43.8535, 41}, {-43.8536, 17}, {76.1464, 17}, {68.1464, 7}, {60.1464, -3}, {72.1464, -7}, {72.1464, -17}, {60.1464, -21}, {42.1464, -21}, {-29.8536, -21}, {-57.8536, -21}, {-63.8536, -5}, {-79.8536, -3}})}),
    uses(Modelica(version = "3.2.3")));
end ShipSIM;
