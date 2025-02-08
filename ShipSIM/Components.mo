within ShipSIM;

package Components "Library components"
  extends Modelica.Icons.Package;

  model Environment "Wind, currents and wave definition"
    //Main parameters
    parameter Modelica.SIunits.Density SeaDensity = 1025 "Seawater density [kg/m3]" annotation(
      Dialog(tab = "Main data"));
    parameter Modelica.SIunits.KinematicViscosity SeaKViscosity = 0.000001004 "Seawater kinematic viscosity [m2/s]" annotation(
      Dialog(tab = "Main data"));
    parameter Modelica.SIunits.Density AirDensity = 1.29 "Air density [kg/m3]" annotation(
      Dialog(tab = "Main data"));
    parameter Modelica.SIunits.KinematicViscosity AirKViscosity = 0.0000148 "Air kinematic viscosity [m2/s]" annotation(
      Dialog(tab = "Main data"));
    //Wind parameters
    parameter Real WindDirection = 0 "Direction where wind came from [degrees] [0=N (Y),90=E (X),180=S,270=W]" annotation(
      Dialog(tab = "Wind"));
    parameter Modelica.SIunits.Velocity WindSpeed = 0 "Wind speed [m/s]" annotation(
      Dialog(tab = "Wind"));
    parameter Real WindVector[3] = {-WindSpeed*Modelica.Math.sin(WindDirection*(Modelica.Constants.pi/180)), -WindSpeed*Modelica.Math.cos(WindDirection*(Modelica.Constants.pi/180)), 0} "Wind vector {X,Y,Z} World reference" annotation(
      Dialog(tab = "Wind"));
    //Current parameters
    parameter Real CurrentDirection = 0 "Direction where current came from [degrees] [0=N (Y),90=E (X),180=S,270=W]" annotation(
      Dialog(tab = "Current"));
    parameter Modelica.SIunits.Velocity CurrentSpeed = 0 "Current speed [m/s]" annotation(
      Dialog(tab = "Current"));
    parameter Real CurrentVector[3] = {-CurrentSpeed*Modelica.Math.sin(CurrentDirection*(Modelica.Constants.pi/180)), -CurrentSpeed*Modelica.Math.cos(CurrentDirection*(Modelica.Constants.pi/180)), 0} "Current vector {X,Y,Z} World reference" annotation(
      Dialog(tab = "Current"));
  equation

    annotation(
      defaultComponentPrefixes = "inner",
      defaultComponentName = "environment",
      missingInnerMessage = "No \"environment\" component is defined. A default environment
    component will be used.",
      Icon(graphics = {Rectangle(origin = {-0.01, 0}, borderPattern = BorderPattern.Engraved, extent = {{-99.99, 100}, {99.99, -100}}, radius = 15), Line(origin = {0, 20}, points = {{100, -20}, {50, 10}, {0, -20}, {-50, -50}, {-100, -20}}, smooth = Smooth.Bezier), Line(origin = {0, 10}, points = {{100, -20}, {50, 10}, {0, -20}, {-50, -50}, {-100, -20}}, color = {200, 200, 200}, smooth = Smooth.Bezier), Line(origin = {-61.6922, 79.8115}, rotation = 180, points = {{18, 0}, {-22, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {-61.836, 59.9733}, rotation = 180, points = {{18, 0}, {-22, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {-61.9797, 39.9914}, rotation = 180, points = {{18, 0}, {-12, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {-62.0908, 20.1532}, rotation = 180, points = {{18, 0}, {-2, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {58.12, -20.29}, rotation = 180, points = {{18, 0}, {-22, 0}}, color = {200, 200, 200}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {57.97, -40.13}, rotation = 180, points = {{18, 0}, {-22, 0}}, color = {200, 200, 200}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {57.97, -79.6347}, rotation = 180, points = {{18, 0}, {-22, 0}}, color = {200, 200, 200}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {58.12, -59.7947}, rotation = 180, points = {{18, 0}, {-22, 0}}, color = {200, 200, 200}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Text(textColor = {0, 0, 255}, extent = {{-150, 145}, {150, 105}}, textString = "%name"), Text(origin = {23, 74}, extent = {{-79, 10}, {79, -10}}, textString = "%WindSpeed"), Text(origin = {28, 45}, extent = {{-74, 9}, {74, -9}}, textString = "Dir: %WindDirection"), Text(origin = {-14, -73}, extent = {{-74, 9}, {74, -9}}, textString = "Dir: %CurrentDirection"), Text(origin = {-19, -44}, extent = {{-79, 10}, {79, -10}}, textString = "%CurrentSpeed")}),
      Diagram,
      Documentation(revisions = "<html><head></head><body><span style=\"font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]</span><span style=\"font-size: 12px;\">&nbsp;(06/03/2023): Initial release</span></body></html>", info = "<html><head></head><body><pre style=\"margin-top: 0px; margin-bottom: 0px;\"><p style=\"font-size: 12px; white-space: normal;\"><font face=\"MS Shell Dlg 2\">Component (outer) to define the following environmental parameters:</font></p><p style=\"font-size: 12px; white-space: normal;\"><font face=\"MS Shell Dlg 2\">- Sea and air density</font></p><p style=\"font-size: 12px; white-space: normal;\"><font face=\"MS Shell Dlg 2\">- Wind speed and direction</font></p><p style=\"font-size: 12px; white-space: normal;\"><font face=\"MS Shell Dlg 2\">- Current speed and direction</font></p><p style=\"font-size: 12px; white-space: normal;\"><font face=\"MS Shell Dlg 2\">This component is mandatory for almost all the remain components of the library.</font></p><div class=\"htmlDoc\" style=\"white-space: normal; font-family: 'MS Shell Dlg 2';\"><div class=\"htmlDoc\" style=\"font-size: 12px;\"><div><br></div><div><u>Limitations:</u></div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><br></div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div><br></div></div><div class=\"htmlDoc\" style=\"font-size: 12px;\"><u>Further development:</u></div><div class=\"htmlDoc\" style=\"font-size: 12px;\">Implement wind profile</div><div class=\"htmlDoc\" style=\"font-size: 12px;\">Implement waves</div></div></pre></body></html>"));
  end Environment;

  model VariableEnvironment "Wind, currents and wave definition"
    //Main parameters
    parameter Modelica.SIunits.Density SeaDensity = 1025 "Seawater density [kg/m3]" annotation(
      Dialog(tab = "Main data"));
    parameter Modelica.SIunits.KinematicViscosity SeaKViscosity = 0.000001004 "Seawater kinematic viscosity [m2/s]" annotation(
      Dialog(tab = "Main data"));
    parameter Modelica.SIunits.Density AirDensity = 1.29 "Air density [kg/m3]" annotation(
      Dialog(tab = "Main data"));
    parameter Modelica.SIunits.KinematicViscosity AirKViscosity = 0.0000148 "Air kinematic viscosity [m2/s]" annotation(
      Dialog(tab = "Main data"));
    Modelica.Blocks.Interfaces.RealInput WindSpeed(unit = "m/s") "Wind speed [m/s]" annotation(
      Placement(transformation(origin = {-104, 80}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-96, 70}, extent = {{-16, -16}, {16, 16}})));
    Modelica.Blocks.Interfaces.RealInput WindDirection(unit = "deg") "Direction where wind came from [degrees] [0=N (Y),90=E (X),180=S,270=W]" annotation(
      Placement(transformation(origin = {-104, 40}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-96, 30}, extent = {{-16, -16}, {16, 16}})));
    Modelica.Blocks.Interfaces.RealInput CurrentSpeed(unit = "m/s") "Current speed [m/s]" annotation(
      Placement(transformation(origin = {-104, -40}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-96, -30}, extent = {{-16, -16}, {16, 16}})));
    Modelica.Blocks.Interfaces.RealInput CurrentDirection(unit = "deg") "Direction where current came from [degrees] [0=N (Y),90=E (X),180=S,270=W]" annotation(
      Placement(transformation(origin = {-104, -80}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-96, -70}, extent = {{-16, -16}, {16, 16}})));
    //Wind parameters
    Real WindVector[3] "Wind vector {X,Y,Z} World reference";
    //Current parameters
    Real CurrentVector[3] "Current vector {X,Y,Z} World reference";
  equation
    WindVector = {-WindSpeed*Modelica.Math.sin(WindDirection*(Modelica.Constants.pi/180)), -WindSpeed*Modelica.Math.cos(WindDirection*(Modelica.Constants.pi/180)), 0};
    CurrentVector = {-CurrentSpeed*Modelica.Math.sin(CurrentDirection*(Modelica.Constants.pi/180)), -CurrentSpeed*Modelica.Math.cos(CurrentDirection*(Modelica.Constants.pi/180)), 0};
    annotation(
      defaultComponentPrefixes = "inner",
      defaultComponentName = "environment",
      missingInnerMessage = "No \"environment\" component is defined. A default environment
    component will be used.",
      Icon(graphics = {Rectangle(origin = {-0.01, 0}, borderPattern = BorderPattern.Engraved, extent = {{-99.99, 100}, {99.99, -100}}, radius = 15), Line(origin = {0, 20}, points = {{100, -20}, {50, 10}, {0, -20}, {-50, -50}, {-100, -20}}, smooth = Smooth.Bezier), Line(origin = {0, 10}, points = {{100, -20}, {50, 10}, {0, -20}, {-50, -50}, {-100, -20}}, color = {200, 200, 200}, smooth = Smooth.Bezier), Line(origin = {-61.6922, 79.8115}, rotation = 180, points = {{18, 0}, {-22, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {-61.836, 59.9733}, rotation = 180, points = {{18, 0}, {-22, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {-61.9797, 39.9914}, rotation = 180, points = {{18, 0}, {-12, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {-62.0908, 20.1532}, rotation = 180, points = {{18, 0}, {-2, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {58.12, -20.29}, rotation = 180, points = {{18, 0}, {-22, 0}}, color = {200, 200, 200}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {57.97, -40.13}, rotation = 180, points = {{18, 0}, {-22, 0}}, color = {200, 200, 200}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {57.97, -79.6347}, rotation = 180, points = {{18, 0}, {-22, 0}}, color = {200, 200, 200}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {58.12, -59.7947}, rotation = 180, points = {{18, 0}, {-22, 0}}, color = {200, 200, 200}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Text(textColor = {0, 0, 255}, extent = {{-150, 145}, {150, 105}}, textString = "%name"), Text(origin = {23, 74}, extent = {{-79, 10}, {79, -10}}, textString = DynamicSelect("WindSpeed", (String(WindSpeed, "+.1f") + " m/s"))), Text(origin = {28, 45}, extent = {{-74, 9}, {74, -9}}, textString = DynamicSelect("WindDirection", (String(WindDirection, "+.1f") + " º"))), Text(origin = {-14, -73}, extent = {{-74, 9}, {74, -9}}, textString = DynamicSelect("CurrentDirection", (String(CurrentDirection, "+.1f") + " º"))), Text(origin = {-19, -44}, extent = {{-79, 10}, {79, -10}}, textString = DynamicSelect("CurrentSpeed", (String(CurrentSpeed, "+.1f") + " m/s"))), Line(origin = {1, 0}, points = {{-99, 98}, {99, -98}}, color = {255, 0, 0}, thickness = 1.5)}),
      Diagram,
      Documentation(revisions = "<html><head></head><body><span style=\"font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]</span><span style=\"font-size: 12px;\">&nbsp;(06/03/2023): Initial release</span></body></html>", info = "<html><head></head><body><pre style=\"margin-top: 0px; margin-bottom: 0px;\"><p style=\"font-size: 12px; white-space: normal;\"><br></p></pre></body></html>"));
  end VariableEnvironment;

  package Ship "Components relative to whole ship model"
    model ShipModelTh "Simplified Ship Model"
      parameter Modelica.SIunits.Length Lpp = 100 "Length between perpendiculars [m]" annotation(
        Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
      parameter Modelica.SIunits.Length B = 20 "Moulded beam [m]" annotation(
        Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
      parameter Real Cb = 0.693 "Block Coefficient [-]" annotation(
        Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
      parameter Real Disp_Table[:, 2] = {{-2.5884e4, 0}, {1.2623e6, 1}, {4.0336e4, 2}} "Displacement Vs Mean draft curve [kg] (take care of water density)" annotation(
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
      parameter Modelica.SIunits.Length CoG[3] = {50.364, 0, 7} "Centre of Gravity (ship ref. sys.) {X,Y,Z} [m]" annotation(
        Dialog(group = "Mass Properties"));
      parameter Modelica.SIunits.Inertia I_xx = Displacement*(0.3557*B)^2 "X axis inertia (roll) [kg*m2]" annotation(
        Dialog(group = "Mass Properties"));
      parameter Modelica.SIunits.Inertia I_yy = Displacement*(0.2746*Lpp)^2 "Y axis inertia (Pitch) [kg*m2]" annotation(
        Dialog(group = "Mass Properties"));
      parameter Modelica.SIunits.Inertia I_zz = Displacement*(0.2739*Lpp)^2 "Z axis inertia (Yaw) [kg*m2]" annotation(
        Dialog(group = "Mass Properties"));
      parameter Modelica.SIunits.Length ini_Pos[3] = {0, 0, -4} "Initial position {X,Y,Z} [m]" annotation(
        Dialog(tab = "Start Values", group = "Initialization (World ref. sys.)"));
      parameter Modelica.SIunits.Angle ini_Ori[3] = {0, 0, 0} "Initial orientation {X,Y,Z} [rad]" annotation(
        Dialog(tab = "Start Values", group = "Initialization (World ref. sys.)"));
      parameter Modelica.SIunits.Velocity ini_Vel[3] = {0, 0, 0} "Initial speed {X,Y,Z} [m/s]" annotation(
        Dialog(tab = "Start Values", group = "Initialization (World ref. sys.)"));
      parameter Boolean AnimationForces = true "Show force vectors on 3D animation" annotation(
        Dialog(tab = "Visualization", group = "3D Animation"));
      Modelica.Mechanics.MultiBody.Parts.Body ShipMass(I_11 = I_xx, I_22 = I_yy, I_33 = I_zz, angles_fixed = true, angles_start = ini_Ori, animation = false, m = Displacement, r_0(each fixed = true, start = ini_Pos), r_CM = CoG, v_0(each fixed = true, start = ini_Vel), w_0_fixed = true) annotation(
        Placement(visible = true, transformation(origin = {46, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(
        Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelica.SIunits.Angle Heel;
      Modelica.SIunits.Angle Trim;
      Modelica.SIunits.Angle Yaw;
      Modelica.SIunits.Velocity Surge;
      Modelica.SIunits.Velocity Sway;
      Modelica.SIunits.Velocity Heave;
      Real Draft;
      Real CoB[3];
      Real Disp;
      Real BMt;
      Real BMl;
      ShipSIM.SubComponents.VariableTranslation COB_pos annotation(
        Placement(visible = true, transformation(origin = {32, 58}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Forces.WorldForce B_ForceWorld(N_to_m = Displacement*9.81/B, animation = AnimationForces, diameter = B/40) annotation(
        Placement(visible = true, transformation(origin = {66, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      Modelica.Mechanics.MultiBody.Sensors.AbsoluteVelocity absoluteVelocity(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a) annotation(
        Placement(transformation(origin = {-18, -26}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Mechanics.MultiBody.Sensors.AbsoluteAngularVelocity absoluteAngularVelocity(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a) annotation(
        Placement(visible = true, transformation(origin = {-60, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.SubComponents.VariableTranslation COF_pos annotation(
        Placement(transformation(origin = {-52, -26}, extent = {{-10, -10}, {10, 10}})));
      ShipSIM.Interfaces.ShipDataOutput shipData annotation(
        Placement(visible = true, transformation(origin = {100, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {104, -66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      output Modelica.Blocks.Interfaces.RealOutput YawDeg "Ship heading in degrees" annotation(
        Placement(visible = true, transformation(origin = {74, -108}, extent = {{-14, -14}, {14, 14}}, rotation = -90), iconTransformation(origin = {62, -102}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Mechanics.MultiBody.Sensors.AbsolutePosition absolutePositionOverGround(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.world) annotation(
        Placement(transformation(origin = {-16, -56}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Mechanics.MultiBody.Sensors.AbsoluteVelocity absoluteVelocityOverGround(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.world) annotation(
        Placement(transformation(origin = {-16, -82}, extent = {{-10, -10}, {10, 10}})));
    protected
      Real Disp_aux[size(Disp_Table, 1)];
      Real LCB_aux[size(LCB_Table, 1)];
      Real TCB_aux[size(TCB_Table, 1)];
      Real VCB_aux[size(VCB_Table, 1)];
      Real BMt_aux[size(BMt_Table, 1)];
      Real BMl_aux[size(BMl_Table, 1)];
      Real P_s[3];
      Real P_f[3];
    public
    equation
//Calculate the depth of the points to obtain heel, trim and draft
      P_s[:] = frame_a.r_0 + Modelica.Mechanics.MultiBody.Frames.resolve1(frame_a.R, {0, -B, 0});
      P_f[:] = frame_a.r_0 + Modelica.Mechanics.MultiBody.Frames.resolve1(frame_a.R, {Lpp, 0, 0});
      Heel = Modelica.Math.atan((frame_a.r_0[3] - P_s[3])/B);
      Trim = Modelica.Math.atan((P_f[3] - frame_a.r_0[3])/Lpp);
      Draft = -(P_f[3] + frame_a.r_0[3])/2;
//Interpolate values from regression tables
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
//Equations
      COF_pos.r_vect = {Lpp/2, 0, Draft/2} "Measure the speed on the point specified by the paper";
      der(Yaw) = absoluteAngularVelocity.w[3];
      Surge = absoluteVelocity.v[1];
      Sway = absoluteVelocity.v[2];
      Heave = absoluteVelocity.v[3];
      connect(frame_a, COB_pos.frame_a) annotation(
        Line(points = {{-100, 0}, {-26, 0}, {-26, 58}, {22, 58}}));
      connect(COB_pos.frame_b, B_ForceWorld.frame_b) annotation(
        Line(points = {{42, 58}, {66, 58}, {66, 48}}, color = {95, 95, 95}));
      connect(ShipMass.frame_a, frame_a) annotation(
        Line(points = {{36, -4}, {2.5, -4}, {2.5, 0}, {-100, 0}}));
      connect(absoluteAngularVelocity.frame_a, frame_a) annotation(
        Line(points = {{-70, 38}, {-82, 38}, {-82, 0}, {-100, 0}}, color = {95, 95, 95}));
      connect(COF_pos.frame_b, absoluteVelocity.frame_a) annotation(
        Line(points = {{-42, -26}, {-28, -26}}, color = {95, 95, 95}));
      connect(frame_a, COF_pos.frame_a) annotation(
        Line(points = {{-100, 0}, {-82, 0}, {-82, -26}, {-62, -26}}));
//Connect data
      shipData.Draft = Draft;
      shipData.Displacement = Disp;
      shipData.CoG = CoG;
      shipData.Angles = {Heel, Trim, Yaw};
      shipData.AngularSpeed = {der(Heel), der(Trim), der(Yaw)};
      shipData.LinearSpeed = {Surge, Sway, Heave};
      shipData.WorldSpeedOverGround = absoluteVelocityOverGround.v;
      shipData.WorldPosition = absolutePositionOverGround.r;
      YawDeg = -Yaw*180/Modelica.Constants.pi;
//Assert documentation
      assert(abs(Heel) < 0.35, "!W0001 [ShipModelTh] (" + getInstanceName() + "): Heel exceeds small movements theory for CoB position", level = AssertionLevel.warning);
      assert(abs(Trim) < 0.35, "!W0002 [ShipModelTh] (" + getInstanceName() + "): Trim exceeds small movements theory for CoB position", level = AssertionLevel.warning);
      assert(Draft > 0, "!W0003 [ShipModelTh] (" + getInstanceName() + "): Draft must be positive!", level = AssertionLevel.warning);
      connect(COF_pos.frame_b, absolutePositionOverGround.frame_a) annotation(
        Line(points = {{-42, -26}, {-38, -26}, {-38, -56}, {-26, -56}}, color = {95, 95, 95}));
      connect(COF_pos.frame_b, absoluteVelocityOverGround.frame_a) annotation(
        Line(points = {{-42, -26}, {-38, -26}, {-38, -82}, {-26, -82}}, color = {95, 95, 95}));
      annotation(
        Icon(graphics = {Rectangle(origin = {-0.01, 0}, borderPattern = BorderPattern.Engraved, extent = {{-99.99, 100}, {99.99, -100}}, radius = 15), Polygon(origin = {0, 3}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-56, 31}, {-56, 7}, {-78, 7}, {-78, -13}, {-62, -15}, {-56, -31}, {62, -31}, {70, -29}, {74, -25}, {76, -23}, {74, -19}, {70, -15}, {62, -13}, {78, 7}, {-42, 7}, {-42, 31}, {-56, 31}}), Line(origin = {-19.21, -5.26}, points = {{-52.1499, 33.1499}, {-52.1499, -22.8501}, {47.8501, -22.8501}}, arrow = {Arrow.Filled, Arrow.Filled}, arrowSize = 7), Line(origin = {76.23, -10.29}, points = {{-5.8536, 6.20711}, {16.1464, 6.20711}}), Line(origin = {80.3295, -6.61265}, points = {{-6, 0}, {8, 0}}), Line(origin = {82.0695, -9.45093}, points = {{-4, 0}, {4, 0}}), Line(origin = {-91.82, -9.66}, points = {{0.1464, 6.20711}, {12.1464, 6.20711}}), Text(origin = {-65, -68}, extent = {{-17, 14}, {17, -14}}, textString = "Th"), Rectangle(origin = {-65, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Rectangle(origin = {-60, 66}, extent = {{-24, 18}, {24, -18}}, radius = 5), Text(origin = {-64, 92}, extent = {{-12, 8}, {12, -8}}, textString = "k"), Rectangle(origin = {-19, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Line(origin = {-19.08, -71.19}, points = {{-16.916, 3.19338}, {17.084, 3.19338}}), Line(origin = {-17.1554, -72.7022}, points = {{-16.916, 3.19338}, {-6.916, 3.19338}}), Line(origin = {-15.2309, -74.0769}, points = {{-16.916, 3.19338}, {-10.916, 3.19338}}), Text(origin = {-17, -76}, rotation = 90, extent = {{-5, -16}, {5, 0}}, textString = "8"), Text(origin = {46, 59}, extent = {{-70, 29}, {70, -29}}, textString = "Mass, Inertia, 
  Floatation
  Forces", horizontalAlignment = TextAlignment.Left), Text(origin = {-47, 74}, extent = {{-5, 10}, {5, -10}}, textString = "Z"), Text(origin = {-61, 58}, extent = {{-5, 10}, {5, -10}}, textString = "P"), Text(origin = {-75, 58}, extent = {{-5, 10}, {5, -10}}, textString = "R"), Text(origin = {165, 70}, extent = {{-55, 10}, {55, -10}}, textString = DynamicSelect("Heading", (String(YawDeg, "+.1f") + " ºdeg")), horizontalAlignment = TextAlignment.Left), Text(origin = {165, 50}, extent = {{-55, 10}, {55, -10}}, textString = DynamicSelect("SpeedOG", (String(Surge, "+.1f") + " m/s")), horizontalAlignment = TextAlignment.Left)}),
        Documentation(info = "<html><head></head><body><div><font face=\"MS Shell Dlg 2\">Ship model simplified to small movements from level trim loading condition.&nbsp;</font></div><div><font face=\"MS Shell Dlg 2\">The phisics behind this model uses level trim hydrostatics to obtain the center of buoyancy position and apply the displacement force.&nbsp;</font></div><div><font face=\"MS Shell Dlg 2\">Centre of buoyancy is corrected by heel and trim using the floatation area inertia properties.</font></div><div><font face=\"MS Shell Dlg 2\">Ship mass and inertia is indicated on the model by use of radii of gyration or absolute inertia moments about the centre of gravity and parallel to frame_a.</font></div><div><font face=\"MS Shell Dlg 2\">Water level is assumed to be at Z=0 vertical world coordinate.</font></div><div><br></div><div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div><u>Limitations:</u></div><div><br></div><div>Only small movements of heel and trim are implemented, capsizing or similar situations should arise simulation errors.&nbsp;</div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><u><br></u></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">[Principles] Edward V. Lewis et al, \"Princiles of Naval Architecture\",&nbsp;</span><em style=\"font-family: 'MS Shell Dlg 2';\">SNAME</em><span style=\"font-family: 'MS Shell Dlg 2';\">, Second Revision, 1988</span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\">[<span style=\"background-color: rgb(255, 255, 255);\">ModMultibody</span>] \"The new Modelica MultiBody Library\", M. Otter, H. Elmqvist and S.E. Mattsson. Proceedings of the 3rd International Modelica Conference (2003)</div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">N/A</span></div><div><br></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div><u>Further development:</u></div></div></div></body></html>", revisions = "<html><head></head><body><div><span style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">Rev. 0.6&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">(15/03/2024): Added DynamicSelect for diagram animation</span></div><div><span style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">Rev. 0.5&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">(20/02/2024): Added speed and position in world coordinates (Speed Over Ground)</span></div><div><span style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">Rev. 0.4&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">(25/12/2023): Removed water depth connector. Assumed to be at Z=0 vertical world coordinate.</span></div><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.3&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(06/05/2023): Added animation forces selector.</span></div><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.2&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(01/03/2023): Added assert documentation</span></div><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.1&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(14/02/2023): Renovated icon and integration of ship data connector</span></div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">&nbsp;(17/06/2022): Initial release</span></body></html>"),
        Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})));
    end ShipModelTh;

    model HidrodynamicXYY "Hydrodinamic ship forces model"
      parameter Modelica.SIunits.Length Lpp = 100 "Length between perpendiculars [m]" annotation(
        Dialog(group = "Hidrostatics Properties"));
      parameter Modelica.SIunits.Length B = 20 "Moulded beam [m]" annotation(
        Dialog(group = "Hidrostatics Properties"));
      parameter Modelica.SIunits.Length Draft = 4 " Mean moulded draft [m]" annotation(
        Dialog(group = "Hidrostatics Properties"));
      parameter Real Cb = 0.693 "Ship block coefficient [-]" annotation(
        Dialog(group = "Hidrostatics Properties"));
      parameter Modelica.SIunits.Length Xg = 0.364 "Distance from Lpp/2 to CoG, positive fwd [m]" annotation(
        Dialog(group = "Hidrostatics Properties"));
      //Added Mass parameters
      parameter Real mx = 1/(Modelica.Constants.pi*(Lpp^2/(B*Draft*Cb*environment.SeaDensity))^0.5-14) "Added Mass parameter X direction *(around 5%) [% of displacement] (Brix, 1993)" annotation(
        Dialog(tab = "Added Mass Parameters", group = "Added Mass"));
      parameter Real my = (0.882 - 0.54*Cb*(1 - 1.6*Draft/B) - 0.156*(1 - 0.673*Cb)*Lpp/B + 0.826*(Draft/B)*(Lpp/B)*(1 - 0.678*Draft/B) - 0.638*Cb*(Draft/B)*(Lpp/B)*(1 - 0.669*Draft/B)) "Added Mass parameter Y direction [% of displacement] (Zhou et. al., 1983)" annotation(
        Dialog(tab = "Added Mass Parameters", group = "Added Mass"));
      parameter Real Jz = (Lpp/100*(33 - 76.85*Cb*(1 - 0.784*Cb) + 3.43*(Lpp/B)*(1 - 0.63*Cb)))^2 "Added Mass parameter Yaw direction [% of displacement] (Zhou et. al., 1983)" annotation(
        Dialog(tab = "Added Mass Parameters", group = "Added Mass"));
      //ERROR: on MANSIN use 1/100 instead of Lpp/100 !!"
      //Damping parameters
      parameter Real Resistance_Curve[:, 2] = {{9.1437e2, 3}, {-5.2863e3, 2}, {1.9657e4, 1}} "Resistance Vs Speed curve [N vs m/s]" annotation(
        Dialog(tab = "Resistance", group = "Resistance"));
      //X_Hull
      parameter Real X_vv = (1.15*Cb*B/Lpp - 0.18)*Draft/Lpp "Yoshimura and Masumoto (2011)" annotation(
        Dialog(tab = "Damping Parameters", group = "X_Hull"));
      parameter Real X_vvvv = (-6.68*Cb*B/Lpp + 1.1)*Draft/Lpp "Yoshimura and Masumoto (2011)" annotation(
        Dialog(tab = "Damping Parameters", group = "X_Hull"));
      parameter Real X_rr = (-0.0027 + 0.0076*Cb*Draft/B) "Lee and Shin (1998) *" annotation(
        Dialog(tab = "Damping Parameters", group = "X_Hull"));
      parameter Real X_vr = -0.117*my/100*(0.5 + Cb) "Lee and Shin (1998) *" annotation(
        Dialog(tab = "Damping Parameters", group = "X_Hull"));
      //Y_Hull
      parameter Real Y_v = (-Modelica.Constants.pi*(Draft/Lpp)^2*(1 + 0.4*Cb*B/Draft)) "Clarke et al. (1982)" annotation(
        Dialog(tab = "Damping Parameters", group = "Y_Hull"));
      parameter Real Y_vvv = (-0.6469*(1 - Cb)*(Draft/B) + 0.0027) "Lee and Shin (1998)" annotation(
        Dialog(tab = "Damping Parameters", group = "Y_Hull"));
      parameter Real Y_r = (-Modelica.Constants.pi*(Draft/Lpp)^2*(-0.32)) "Smitt (1970)" annotation(
        Dialog(tab = "Damping Parameters", group = "Y_Hull"));
      parameter Real Y_rrr = (-0.0233*Cb*Draft/B + 0.0063) "Lee and Shin (1998)" annotation(
        Dialog(tab = "Damping Parameters", group = "Y_Hull"));
      parameter Real Y_vrr = -(5.95*(1 - Cb)*Draft/B)*Draft/Lpp "Kijima et al. (1990a)" annotation(
        Dialog(tab = "Damping Parameters", group = "Y_Hull"));
      parameter Real Y_vvr = (1.5*Draft*Cb/B - 0.65)*Draft/Lpp "Kijima et al. (1990a)" annotation(
        Dialog(tab = "Damping Parameters", group = "Y_Hull"));
      //N_Hull
      parameter Real N_v = (-Modelica.Constants.pi*(Draft/Lpp)^2*(0.5 + 2.4*Draft/Lpp)) "Clarke et al. (1982)" annotation(
        Dialog(tab = "Damping Parameters", group = "N_Hull"));
      parameter Real N_vvv = (0.0348 - 0.5283*(1 - Cb)*Draft/B) "Lee and Shin (1998)" annotation(
        Dialog(tab = "Damping Parameters", group = "N_Hull"));
      parameter Real N_r = -Modelica.Constants.pi*(Draft/Lpp)^2*((1.3192 - 0.68228*Cb - 0.00019*(Lpp/Draft)^2)/Modelica.Constants.pi) "Khattab (1984)" annotation(
        Dialog(tab = "Damping Parameters", group = "N_Hull"));
      parameter Real N_rrr = (0.25*Cb*B/Lpp - 0.056)*(Draft/Lpp) "Yoshimura and Masumoto (2011)" annotation(
        Dialog(tab = "Damping Parameters", group = "N_Hull"));
      parameter Real N_vrr = ((0.5*Draft*Cb/B) - 0.05)*(Draft/Lpp) "Kijima et al. (1990a)" annotation(
        Dialog(tab = "Damping Parameters", group = "N_Hull"));
      parameter Real N_vvr = -(57.5*(Cb*B/Lpp)^2 - 18.4*(Cb*B/Lpp) + 1.6)*(Draft/Lpp) "Kijima et al. (1990a)" annotation(
        Dialog(tab = "Damping Parameters", group = "N_Hull"));
      //Animation
      parameter Boolean AnimationForces = true "Show force vectors on 3D animation" annotation(
        Dialog(tab = "Visualization", group = "3D Animation"));
      //Components
      ShipSIM.SubComponents.VariableTranslation AddMass_CoF annotation(
        Placement(visible = true, transformation(origin = {-40, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorque AddMass_ForceTorque(animation = false, forceColor = {255, 0, 0}, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_b, torqueColor = {255, 0, 255}) annotation(
        Placement(visible = true, transformation(origin = {-2, 38}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      ShipSIM.Interfaces.ShipDataInput shipData annotation(
        Placement(visible = true, transformation(origin = {100, 62}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.SubComponents.VariableTranslation Damping_CoF annotation(
        Placement(visible = true, transformation(origin = {-42, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorque Damping_ForceTorque(animation = AnimationForces, forceColor = {255, 0, 0}, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_b, torqueColor = {255, 0, 255}) annotation(
        Placement(visible = true, transformation(origin = {-6, -20}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      //Variables
      Real v;
      Real r;
      Real U;
      Real NonDimXY;
      Real NonDimN;
      Real ResistancePower "Resistance power";
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(
        Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      ShipSIM.SubComponents.ApparentSpeedXY Damping_apparentSpeedXY annotation(
        Placement(visible = true, transformation(origin = {-12, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    protected
      outer ShipSIM.Components.Environment environment;
      Real Res_Curve[size(Resistance_Curve, 1)];
    equation
//Connection with currents
//
//ADDED MASS
//
      AddMass_CoF.r_vect = {shipData.CoG[1], shipData.CoG[2], shipData.Draft/2} "Added mass inertia center of forces";
// Equations obtained from: Mathematical Modeling of Inland Vessel Maneuverability Considering Rudder Hydrodynamics, Jialun Liu
      AddMass_ForceTorque.force[1] = -shipData.Displacement*(mx*der(Damping_apparentSpeedXY.SpeedLocal[1]) - my*Damping_apparentSpeedXY.SpeedLocal[2]*shipData.AngularSpeed[3]);
      AddMass_ForceTorque.force[2] = -shipData.Displacement*(my*der(Damping_apparentSpeedXY.SpeedLocal[2]) + mx*Damping_apparentSpeedXY.SpeedLocal[1]*shipData.AngularSpeed[3]);
      AddMass_ForceTorque.force[3] = 0;
      AddMass_ForceTorque.torque[1] = 0;
      AddMass_ForceTorque.torque[2] = 0;
      AddMass_ForceTorque.torque[3] = -shipData.Displacement*Jz*der(shipData.AngularSpeed[3]);
      connect(frame_a, AddMass_CoF.frame_a) annotation(
        Line(points = {{-100, 0}, {-86, 0}, {-86, 38}, {-50, 38}}));
      connect(AddMass_CoF.frame_b, AddMass_ForceTorque.frame_b) annotation(
        Line(points = {{-30, 38}, {-12, 38}}, color = {95, 95, 95}));
//
//DAMPING
//
// Equations obtained from: Taimuri "A 6-DoF maneuvering model for the rapid estimation of hydrodynamic actions in deep and shallow waters", Ocean Engineering 218 (2020)
// Connect apparent speed (current)
      Damping_apparentSpeedXY.WorldSpeed = environment.CurrentVector;
//Resistance Curve
      for i in 1:size(Res_Curve, 1) loop
        Res_Curve[i] = Resistance_Curve[i, 1]*abs(Damping_apparentSpeedXY.SpeedLocal[1])^Resistance_Curve[i, 2];
      end for;
//End
      Damping_CoF.r_vect = {Lpp/2, 0, shipData.Draft/2} "Centro de fuerzas de Damping";
//MMG model
//Variables
      U = Damping_apparentSpeedXY.ApparentSpeed "Velocidad";
      if noEvent((U^2) < 0.01) then
//Avoid division by zero
        NonDimXY = 0.5*environment.SeaDensity*0.01^2*Lpp^2 "non-dimensionalization for X and Y";
        NonDimN = 0.5*environment.SeaDensity*0.01^2*Lpp^3 "non-dimensionalization for Yaw";
        v = 0 "non-dimensional Sway";
        r = shipData.AngularSpeed[3]*Lpp/0.01 "non-dimensional Yaw";
      else
        NonDimXY = 0.5*environment.SeaDensity*U^2*Lpp^2 "non-dimensionalization for X and Y";
        NonDimN = 0.5*environment.SeaDensity*U^2*Lpp^3 "non-dimensionalization for Yaw";
        v = Damping_apparentSpeedXY.SpeedLocal[2]/U "non-dimensional Sway";
        r = shipData.AngularSpeed[3]*Lpp/U "non-dimensional Yaw";
      end if;
//Forces
      ResistancePower = Damping_ForceTorque.force[1]*Damping_apparentSpeedXY.SpeedLocal[1];
      Damping_ForceTorque.force[1] = (-1*sign(Damping_apparentSpeedXY.SpeedLocal[1])*sum(Res_Curve)) + NonDimXY*(X_vv*v^2 + X_vvvv*v^4 + X_rr*r^2 + X_vr*v*r);
      Damping_ForceTorque.force[2] = NonDimXY*(Y_v*v + Y_vvv*v^3 + Y_r*r + Y_rrr*r^3 + Y_vrr*v*r^2 + Y_vvr*v^2*r);
      Damping_ForceTorque.force[3] = 0;
      Damping_ForceTorque.torque[1] = 0;
      Damping_ForceTorque.torque[2] = 0;
      Damping_ForceTorque.torque[3] = NonDimN*(N_v*v + N_vvv*v^3 + N_r*r + N_rrr*r^3 + N_vrr*v*r^2 + N_vvr*v^2*r);
      connect(Damping_CoF.frame_b, Damping_ForceTorque.frame_b) annotation(
        Line(points = {{-32, -20}, {-16, -20}}, color = {95, 95, 95}));
      connect(frame_a, Damping_CoF.frame_a) annotation(
        Line(points = {{-100, 0}, {-86, 0}, {-86, -20}, {-52, -20}}));
      connect(Damping_CoF.frame_b, Damping_apparentSpeedXY.frame_a) annotation(
        Line(points = {{-32, -20}, {-30, -20}, {-30, -60}, {-22, -60}}, color = {95, 95, 95}));
      annotation(
        Icon(graphics = {Rectangle(origin = {-0.01, 0}, borderPattern = BorderPattern.Engraved, extent = {{-99.99, 100}, {99.99, -100}}, radius = 15), Text(origin = {-65, -68}, extent = {{-17, 14}, {17, -14}}, textString = "Th"), Rectangle(origin = {-65, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Rectangle(origin = {-60, 66}, extent = {{-24, 18}, {24, -18}}, radius = 5), Polygon(origin = {-70, 93}, lineThickness = 0.5, points = {{0, 3}, {-4, -5}, {4, -5}, {0, 3}}), Text(origin = {-56, 94}, extent = {{-8, 10}, {8, -10}}, textString = "m"), Text(origin = {-75, 74}, extent = {{-5, 10}, {5, -10}}, textString = "X"), Text(origin = {-6, 58}, textColor = {200, 200, 200}, extent = {{-14, 10}, {14, -10}}, textString = "P"), Text(origin = {-20, 58}, textColor = {200, 200, 200}, extent = {{-14, 10}, {14, -10}}, textString = "R"), Text(origin = {-5, 92}, extent = {{-5, 8}, {5, -8}}, textString = "D"), Text(origin = {-6, 74}, extent = {{-14, 10}, {14, -10}}, textString = "Y"), Rectangle(origin = {-6, 66}, extent = {{-24, 18}, {24, -18}}, radius = 5), Text(origin = {-20, 74}, extent = {{-14, 10}, {14, -10}}, textString = "X"), Text(origin = {8, 74}, textColor = {200, 200, 200}, extent = {{-14, 10}, {14, -10}}, textString = "Z"), Text(origin = {8, 58}, extent = {{-14, 10}, {14, -10}}, textString = "Y"), Polygon(origin = {7, 6}, rotation = 35, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-63, 20}, {-63, -20}, {25, -20}, {39, -18}, {47, -16}, {53, -14}, {59, -10}, {63, -4}, {64, 0}, {63, 4}, {59, 10}, {53, 14}, {47, 16}, {39, 18}, {25, 20}, {-63, 20}}), Line(origin = {32.1218, 51.7006}, rotation = 35, points = {{-53.6268, 17.0932}, {-52.1499, -22.8501}, {37.8554, -23.1764}}, arrow = {Arrow.Filled, Arrow.Filled}, arrowSize = 7), Line(origin = {2.82808, 3.00096}, points = {{-11.1708, 4.82918}, {-11.1708, 4.82918}, {-11.1708, 0.82918}, {-9.17082, -5.17082}, {-3.17082, -9.17082}, {2.82918, -9.17082}, {6.82918, -7.17082}, {8.82918, -5.17082}, {10.8292, -1.17082}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Rectangle(origin = {-65, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Text(origin = {-65, -68}, extent = {{-17, 14}, {17, -14}}, textString = "Th"), Rectangle(origin = {-65, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Rectangle(origin = {-19, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Text(origin = {-65, -68}, extent = {{-17, 14}, {17, -14}}, textString = "Th"), Line(origin = {-19.08, -71.19}, points = {{-16.916, 3.19338}, {17.084, 3.19338}}), Text(origin = {-17, -76}, rotation = 90, extent = {{-5, -16}, {5, 0}}, textString = "8"), Line(origin = {-17.1554, -72.7022}, points = {{-16.916, 3.19338}, {-6.916, 3.19338}}), Line(origin = {-15.2309, -74.0769}, points = {{-16.916, 3.19338}, {-10.916, 3.19338}}), Text(origin = {78, -47}, extent = {{-70, 25}, {70, -25}}, textString = "Hydrodyn.
  Forces", horizontalAlignment = TextAlignment.Left), Text(origin = {-61, 74}, extent = {{-5, 10}, {5, -10}}, textString = "Y"), Text(origin = {-47, 74}, textColor = {200, 200, 200}, extent = {{-5, 10}, {5, -10}}, textString = "Z"), Text(origin = {-75, 58}, textColor = {200, 200, 200}, extent = {{-5, 10}, {5, -10}}, textString = "R"), Text(origin = {-61, 58}, textColor = {200, 200, 200}, extent = {{-5, 10}, {5, -10}}, textString = "P"), Text(origin = {-47, 58}, extent = {{-5, 10}, {5, -10}}, textString = "Y")}),
        Documentation(info = "<html><head></head><body><div class=\"htmlDoc\"><div style=\"font-family: 'MS Shell Dlg 2';\">HidrodynamicXYY provides hidrodynamic forces of Surge (X) , Sway (Y) and Yaw (Y) based on MMG standard method for ship maneuvering predictions.</div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-family: 'MS Shell Dlg 2';\">Current default equations for maneuvring parameters are based on empirical relations developed by various authors and referenced on [Jialun2020] and [Taimuri2020].</div><div style=\"font-family: 'MS Shell Dlg 2';\"><u><br></u></div><div style=\"font-family: 'MS Shell Dlg 2';\"><u>Limitations:</u></div><div style=\"font-family: 'MS Shell Dlg 2';\">Empirical equations provided as default parameters are only adequate for medium and large single propeller and rudder ships.</div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><u><br></u></div><div>[Yasukawa2015]<span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>Ghalib Taimuri et al, \"Introduction of MMG standard method for ship maneuvering predictions\", Journal of Marine Science and Technology, 20, 37-52, 2015, <a href=\"https://link.springer.com/article/10.1007/s00773-014-0293-y\">https://link.springer.com/article/10.1007/s00773-014-0293-y</a></div><div><u><br></u></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">[Jialun2020] Jialun Liu, \"Mathematical Modeling of Inland Vessel Maneuverability Considering Rudder Hydrodynamics\", Springer 2020,&nbsp;</span><a href=\"https://doi.org/10.1007/978-3-030-47475-1\" style=\"font-family: 'MS Shell Dlg 2';\">https://doi.org/10.1007/978-3-030-47475-1</a></div><div style=\"font-family: -webkit-standard;\"><br></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">[Taimuri2020] Ghalib Taimuri et al, \"A 6-DoF maneuvering model for the rapid estimation of hydrodynamic actions in deep and shallow waters\", Journal of Ocean Engineering, 2020,&nbsp;</span><a href=\"https://doi.org/10.1016/j.oceaneng.2020.108103\" style=\"font-family: 'MS Shell Dlg 2';\">https://doi.org/10.1016/j.oceaneng.2020.108103</a></div><div style=\"font-family: -webkit-standard;\"><br></div><div style=\"font-family: -webkit-standard;\">[<span style=\"background-color: rgb(255, 255, 255);\">ModMultibody</span>] \"The new Modelica MultiBody Library\", M. Otter, H. Elmqvist and S.E. Mattsson. Proceedings of the 3rd International Modelica Conference (2003)</div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div><font face=\"MS Shell Dlg 2\">mx, X_rr, X_vr factors need to be revised due differences detected during validation against [Taimuri2020]</font></div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div><u>Further development:</u></div></div></body></html>", revisions = "<html><head></head><body><div>Rev. 1.1&nbsp;<span style=\"font-size: 12px;\">[BPuente]&nbsp;</span>(06/05/2023): Added animation forces selector.</div><div><span style=\"font-size: 12px;\">Rev. 1.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-size: 12px;\">(06/03/2023): Full support with sea current</span></div><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.1&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(14/02/2023): First official release</span></div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(27/01/2023): Initial release</span></body></html>"));
    end HidrodynamicXYY;

    model HidrodynamicZRP "Hydrodinamic ship forces model"
      //extends Modelica.Icons.UnderConstruction;
      parameter Modelica.SIunits.Length Lpp = 100 "Length between perpendiculars [m]" annotation(
        Dialog(group = "Hidrostatics Properties"));
      //Added Mass parameters
      parameter Real mz = 0 "Added Mass parameter Z direction" annotation(
        Dialog(tab = "Added Mass Parameters", group = "Added Mass"));
      parameter Real Jr = 0 "Added Mass parameter Roll direction" annotation(
        Dialog(tab = "Added Mass Parameters", group = "Added Mass"));
      parameter Real Jp = 0 "Added Mass parameter Pitch direction" annotation(
        Dialog(tab = "Added Mass Parameters", group = "Added Mass"));
      //Damping parameters
      parameter Real Z_d = 0 "Heave damping coeff." annotation(
        Dialog(tab = "Damping Parameters", group = "Heave"));
      parameter Real R_d = 0 "Roll damping coeff." annotation(
        Dialog(tab = "Damping Parameters", group = "Roll"));
      parameter Real P_d = 0 "Pitch damping coeff." annotation(
        Dialog(tab = "Damping Parameters", group = "Pitch"));
      //Animation
      parameter Boolean AnimationForces = true "Show force vectors on 3D animation" annotation(
        Dialog(tab = "Visualization", group = "3D Animation"));
      //Components
      ShipSIM.SubComponents.VariableTranslation AddMass_CoF annotation(
        Placement(visible = true, transformation(origin = {-40, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorque AddMass_ForceTorque(animation = false, forceColor = {255, 0, 0}, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_b, torqueColor = {255, 0, 255}) annotation(
        Placement(visible = true, transformation(origin = {-2, 38}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      ShipSIM.Interfaces.ShipDataInput shipData annotation(
        Placement(visible = true, transformation(origin = {100, 62}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.SubComponents.VariableTranslation Damping_CoF annotation(
        Placement(visible = true, transformation(origin = {-42, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorque Damping_ForceTorque(animation = AnimationForces, forceColor = {255, 0, 0}, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_b, torqueColor = {255, 0, 255}) annotation(
        Placement(visible = true, transformation(origin = {-6, -20}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      //Variables
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(
        Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      ShipSIM.SubComponents.ApparentSpeedXY Damping_apparentSpeedXY annotation(
        Placement(visible = true, transformation(origin = {-12, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    protected
      outer ShipSIM.Components.Environment environment;
    equation
//Connection with currents
//
//ADDED MASS
//
      AddMass_CoF.r_vect = {shipData.CoG[1], shipData.CoG[2], shipData.Draft/2} "Added mass inertia center of forces";
// Equations obtained from: Mathematical Modeling of Inland Vessel Maneuverability Considering Rudder Hydrodynamics, Jialun Liu
      AddMass_ForceTorque.force[1] = 0;
      AddMass_ForceTorque.force[2] = 0;
      AddMass_ForceTorque.force[3] = -shipData.Displacement*(mz*der(shipData.LinearSpeed[3]));
      AddMass_ForceTorque.torque[1] = -shipData.Displacement*Jr*der(shipData.AngularSpeed[1]);
      AddMass_ForceTorque.torque[2] = -shipData.Displacement*Jp*der(shipData.AngularSpeed[2]);
      AddMass_ForceTorque.torque[3] = 0;
      connect(frame_a, AddMass_CoF.frame_a) annotation(
        Line(points = {{-100, 0}, {-86, 0}, {-86, 38}, {-50, 38}}));
      connect(AddMass_CoF.frame_b, AddMass_ForceTorque.frame_b) annotation(
        Line(points = {{-30, 38}, {-12, 38}}, color = {95, 95, 95}));
//
//DAMPING
//
// Connect apparent speed (current)
      Damping_apparentSpeedXY.WorldSpeed = environment.CurrentVector;
//End
      Damping_CoF.r_vect = {Lpp/2, 0, shipData.Draft/2} "Centro de fuerzas de Damping";
//Variables
//Forces
      Damping_ForceTorque.force[1] = 0;
      Damping_ForceTorque.force[2] = 0;
      Damping_ForceTorque.force[3] = -sign(shipData.LinearSpeed[3])*Z_d*shipData.LinearSpeed[3]^2;
      Damping_ForceTorque.torque[1] = -sign(shipData.AngularSpeed[1])*R_d*shipData.AngularSpeed[1]^2;
      Damping_ForceTorque.torque[2] = -sign(shipData.AngularSpeed[1])*R_d*shipData.AngularSpeed[2]^2;
      Damping_ForceTorque.torque[3] = 0;
      connect(Damping_CoF.frame_b, Damping_ForceTorque.frame_b) annotation(
        Line(points = {{-32, -20}, {-16, -20}}, color = {95, 95, 95}));
      connect(frame_a, Damping_CoF.frame_a) annotation(
        Line(points = {{-100, 0}, {-86, 0}, {-86, -20}, {-52, -20}}));
      connect(Damping_CoF.frame_b, Damping_apparentSpeedXY.frame_a) annotation(
        Line(points = {{-32, -20}, {-30, -20}, {-30, -60}, {-22, -60}}, color = {95, 95, 95}));
      annotation(
        Icon(graphics = {Rectangle(origin = {-0.01, 0}, borderPattern = BorderPattern.Engraved, extent = {{-99.99, 100}, {99.99, -100}}, radius = 15), Text(origin = {-65, -68}, extent = {{-17, 14}, {17, -14}}, textString = "Th"), Rectangle(origin = {-65, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Rectangle(origin = {-60, 66}, extent = {{-24, 18}, {24, -18}}, radius = 5), Polygon(origin = {-70, 93}, lineThickness = 0.5, points = {{0, 3}, {-4, -5}, {4, -5}, {0, 3}}), Text(origin = {-56, 94}, extent = {{-8, 10}, {8, -10}}, textString = "m"), Text(origin = {-75, 74}, textColor = {200, 200, 200}, extent = {{-5, 10}, {5, -10}}, textString = "X"), Text(origin = {-5, 92}, extent = {{-5, 8}, {5, -8}}, textString = "D"), Rectangle(origin = {-6, 66}, extent = {{-24, 18}, {24, -18}}, radius = 5), Rectangle(origin = {-65, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Text(origin = {-65, -68}, extent = {{-17, 14}, {17, -14}}, textString = "Th"), Rectangle(origin = {-65, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Rectangle(origin = {-19, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Text(origin = {-65, -68}, extent = {{-17, 14}, {17, -14}}, textString = "Th"), Line(origin = {-19.08, -71.19}, points = {{-16.916, 3.19338}, {17.084, 3.19338}}), Text(origin = {-17, -76}, rotation = 90, extent = {{-5, -16}, {5, 0}}, textString = "8"), Line(origin = {-17.1554, -72.7022}, points = {{-16.916, 3.19338}, {-6.916, 3.19338}}), Line(origin = {-15.2309, -74.0769}, points = {{-16.916, 3.19338}, {-10.916, 3.19338}}), Text(origin = {78, -47}, extent = {{-70, 25}, {70, -25}}, textString = "Hydrodyn.
    Forces", horizontalAlignment = TextAlignment.Left), Text(origin = {-61, 74}, textColor = {200, 200, 200}, extent = {{-5, 10}, {5, -10}}, textString = "Y"), Text(origin = {-47, 74}, extent = {{-5, 10}, {5, -10}}, textString = "Z"), Text(origin = {-75, 58}, extent = {{-5, 10}, {5, -10}}, textString = "R"), Text(origin = {-61, 58}, extent = {{-5, 10}, {5, -10}}, textString = "P"), Text(origin = {-47, 58}, textColor = {200, 200, 200}, extent = {{-5, 10}, {5, -10}}, textString = "Y"), Text(origin = {-21, 58}, extent = {{-5, 10}, {5, -10}}, textString = "R"), Text(origin = {-21, 74}, textColor = {200, 200, 200}, extent = {{-5, 10}, {5, -10}}, textString = "X"), Text(origin = {7, 74}, extent = {{-5, 10}, {5, -10}}, textString = "Z"), Text(origin = {7, 58}, textColor = {200, 200, 200}, extent = {{-5, 10}, {5, -10}}, textString = "Y"), Text(origin = {-7, 58}, extent = {{-5, 10}, {5, -10}}, textString = "P"), Text(origin = {-7, 74}, textColor = {200, 200, 200}, extent = {{-5, 10}, {5, -10}}, textString = "Y"), Rectangle(origin = {0, 6}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-44, 28}, {44, -28}}, radius = 10), Line(origin = {70.02, 6.07}, points = {{-25, 0}, {-8, 10}, {8, -10}, {25, 0}}, smooth = Smooth.Bezier), Line(origin = {-69.34, 5.68}, points = {{-25, 0}, {-8, -10}, {8, 10}, {25, 0}}, smooth = Smooth.Bezier)}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
        Documentation(info = "<html><head></head><body><div class=\"htmlDoc\"><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-family: 'MS Shell Dlg 2';\"><u>Limitations:</u></div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><br></div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div><br></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div><u>Further development:</u></div></div></body></html>", revisions = "<html><head></head><body><div><span style=\"font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]</span><span style=\"font-size: 12px;\">&nbsp;(01/12/2024): Initial pre-release</span></div></body></html>"));
    end HidrodynamicZRP;

    model ShipWind "Wind model of a ship"
      parameter Modelica.SIunits.Length Loa = 100 "Length over all [m]" annotation(
        Dialog(group = "Hidrostatics Properties"));
      parameter Modelica.SIunits.Length B = 20 "Moulded beam [m]" annotation(
        Dialog(group = "Hidrostatics Properties"));
      parameter Modelica.SIunits.Length Draft = 4 " Mean moulded draft [m]" annotation(
        Dialog(group = "Hidrostatics Properties"));
      parameter Modelica.SIunits.Area A_T = 316 "Transverse projected wind area [m2]" annotation(
        Dialog(tab = "Wind area properties", group = "Windage area properties"));
      parameter Modelica.SIunits.Area A_L = 1337 "Lateral projected wind area [m2]" annotation(
        Dialog(tab = "Wind area properties", group = "Windage area properties"));
      parameter Modelica.SIunits.Area A_0D = 451 "Lateral projected wind area of superstructure (all) [m2]" annotation(
        Dialog(tab = "Wind area properties", group = "Windage area properties"));
      parameter Modelica.SIunits.Area A_ss = 451 "Lateral projected wind area of aft superstructure [m2]" annotation(
        Dialog(tab = "Wind area properties", group = "Windage area properties"));
      parameter Modelica.SIunits.Length C = 0.85 "Distance from midship section to center of lateral projected wind area (positive forward) [m]" annotation(
        Dialog(tab = "Wind area properties", group = "Windage area properties"));
      parameter Modelica.SIunits.Length C_BR = 4.6 "Distance from midship section to center of A_ss (positive forward) [m]" annotation(
        Dialog(tab = "Wind area properties", group = "Windage area properties"));
      parameter Modelica.SIunits.Length H_BR = 17.5 "Height to top superstructure from waterline (Bridge) [m]" annotation(
        Dialog(tab = "Wind area properties", group = "Windage area properties"));
      parameter Modelica.SIunits.Length H_C = 6.71 "Height to center of lateral project wind area from waterline [m]" annotation(
        Dialog(tab = "Wind area properties", group = "Windage area properties"));
      parameter Boolean AnimationForces = true "Show force vectors on 3D animation" annotation(
        Dialog(tab = "Visualization", group = "3D Animation"));
      Real Cx;
      Real Cy;
      Real Cn;
      Modelica.SIunits.Angle phi "Angle of attack";
      Real q "1/2 rho V^2";
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(
        Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation COF_pos(animation = false, r = {Loa/2, 0, H_C + Draft}) annotation(
        Placement(visible = true, transformation(origin = {-38, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorque Wind_ForceTorque(animation = AnimationForces, forceColor = {0, 255, 0}, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_b, torqueColor = {0, 255, 0}) annotation(
        Placement(visible = true, transformation(origin = {24, 52}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      ShipSIM.SubComponents.ApparentSpeedXY apparentSpeedXY annotation(
        Placement(visible = true, transformation(origin = {26, -28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    protected
      outer ShipSIM.Components.Environment environment;
      parameter Real X_0 = -0.33 + 0.293*B*H_BR/A_T + 0.0193*C/H_C + 0.682*A_0D/Loa^2;
      parameter Real X_1 = -1.353 + 1.7*A_L/(Loa*B) + 2.87*Loa*H_C/A_L - 0.463*Loa*H_BR/A_L - 0.57*A_0D/A_L - 6.64*A_T/(Loa*B) - 0.0123*(A_T/(Loa^2))^(-1) + 0.0202*(H_C/Loa)^(-1);
      parameter Real X_3 = 0.83 - 0.413*(Loa*H_BR/A_L)^(-1) - 0.0827*A_L/A_T - 0.563*Loa*H_C/A_L + 0.804*A_0D/A_L - 5.67*A_0D/(Loa^2) - 0.0401*C/H_C - 0.132*C_BR/Loa;
      parameter Real X_5 = -0.0372 - 0.0075*(A_0D/A_L)^(-1) - 0.103*C_BR/Loa + 0.0921*A_L/(Loa*B);
      parameter Real Y_1 = 0.684 + 0.717*C_BR/Loa - 3.22*C/Loa + 0.0281*(A_0D/A_L)^(-1) + 0.0661*C/H_C + 0.298*(B*H_BR/A_T)^(-1);
      parameter Real Y_3 = -0.4 + 0.282*A_L/(Loa*B) + 0.307*Loa*H_C/A_L + 0.0519*C_BR/Loa + 0.0526*(H_BR/B)^(-1) - 0.0814*A_0D/A_L + 0.0582*(B*H_BR/A_T)^(-1);
      parameter Real Y_5 = 0.122 - 0.166*A_L/(Loa*B) - 0.0054*(H_BR/Loa)^(-1) - 0.0481*C_BR/Loa - 0.0136*(A_T/B^2)^(-1) + 0.0864*C/Loa - 0.0297*C_BR/Loa;
      parameter Real N_1 = 0.299 + 1.71*C/Loa + 0.183*Loa*H_C/A_L - 1.09*A_T/A_L - 0.0442*C/H_C - 0.289*A_L/(Loa*B) + 4.24*A_T/(Loa^2) - 0.0646*(B^2)/A_T + 0.0306*C_BR/Loa;
      parameter Real N_2 = 0.117 + 0.123*C_BR/Loa - 0.323*C/Loa + 0.0041*A_L/A_0D - 0.166*A_T/(B^2) - 0.0109*Loa/H_BR + 0.174*A_T/(B*H_BR) + 0.214*A_L/(Loa*B) - 1.06*A_L/(Loa^2);
      parameter Real N_3 = 0.023 + 0.0385*C_BR/Loa - 0.0339*A_T/(B*H_BR) + 0.0023*A_L/A_T;
    equation
//Transform wind vector to local coordinate system
      apparentSpeedXY.WorldSpeed = environment.WindVector;
      phi = apparentSpeedXY.AttackAngle;
      q = 0.5*environment.AirDensity*apparentSpeedXY.ApparentSpeed^2;
      Cx = X_0 + X_1*cos(phi) + X_3*cos(3*phi) + X_5*cos(5*phi);
      Cy = Y_1*sin(phi) + Y_3*sin(3*phi) + Y_5*sin(5*phi);
      Cn = N_1*sin(phi) + N_2*sin(2*phi) + N_3*sin(3*phi);
      Cx = Wind_ForceTorque.force[1]/(q*A_T);
      Cy = -Wind_ForceTorque.force[2]/(q*A_T);
      Wind_ForceTorque.force[3] = 0;
      Wind_ForceTorque.torque[1] = 0;
      Wind_ForceTorque.torque[2] = 0;
      Cn = -Wind_ForceTorque.torque[3]/(q*Loa*A_L);
      connect(frame_a, COF_pos.frame_a) annotation(
        Line(points = {{-100, 0}, {-48, 0}, {-48, 52}}));
      connect(Wind_ForceTorque.frame_b, COF_pos.frame_b) annotation(
        Line(points = {{14, 52}, {-28, 52}}));
      connect(COF_pos.frame_b, apparentSpeedXY.frame_a) annotation(
        Line(points = {{-28, 52}, {-24, 52}, {-24, -28}, {16, -28}}, color = {95, 95, 95}));
      annotation(
        Icon(graphics = {Rectangle(origin = {-0.01, 0}, borderPattern = BorderPattern.Engraved, extent = {{-99.99, 100}, {99.99, -100}}, radius = 15), Rectangle(origin = {-0.01, 0}, borderPattern = BorderPattern.Engraved, extent = {{-99.99, 100}, {99.99, -100}}, radius = 15), Line(origin = {76.23, -10.29}, points = {{-5.8536, 6.20711}, {16.1464, 6.20711}}), Line(origin = {-92.3031, -10.1431}, points = {{0.1464, 6.20711}, {188.146, 6.20711}}), Line(origin = {80.3295, -6.61265}, points = {{-6, 0}, {8, 0}}), Line(origin = {82.0695, -9.45093}, points = {{-4, 0}, {4, 0}}), Polygon(origin = {0, 15}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-78, -19}, {-78, -5}, {-56, -5}, {-56, 19}, {-42, 19}, {-42, -5}, {78, -5}, {68, -19}, {-70, -19}, {-78, -19}}), Line(origin = {-15.6252, 73.935}, points = {{21, 0}, {21, 6}, {24, 9}, {27, 12}, {33, 12}, {39, 12}, {42, 9}, {45, 6}, {45, 0}, {45, -6}, {39, -12}, {-45, -12}}), Line(origin = {28.9203, 39.1024}, points = {{21, 0}, {21, 6}, {24, 9}, {27, 12}, {33, 12}, {39, 12}, {42, 9}, {45, 6}, {45, 0}, {45, -6}, {39, -12}, {-45, -12}}), Text(origin = {24, -49}, extent = {{-70, 25}, {70, -25}}, textString = "Wind", horizontalAlignment = TextAlignment.Left)}),
        Documentation(revisions = "<html><head></head><body><div><span style=\"font-size: 12px;\">Rev. 0.0 [DFernandez] (08/03/2023): Initial release.</span></div></body></html>", info = "<html><head></head><body><div class=\"htmlDoc\"><div style=\"font-family: 'MS Shell Dlg 2';\">ShipWind evaluates the influence of wind on the ship.</div><div style=\"font-family: 'MS Shell Dlg 2';\">The following figure defines the principal characteristic parameters used in this model:</div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><img src=\"data:image/bmp;base64,Qk028wIAAAAAADYAAAAoAAAAkgEAAKAAAAABABgAAAAAAAAAAAAlFgAAJRYAAAAAAAAAAAAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Pz8/h4eH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////3JycnJycv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////0dHR2NjY////////////0dHR+/v7/////////Pz8r6+v/Pz8////////////////////29vbYWFhn5+f////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////j4+PcnJy////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////9SUlJfX1/////////s7OwICAjS0tL////////g4OAAAADh4eH///////////////////9kZGQEBARbW1v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Pj493d3f////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////5+fn5+fn////////////////////////////+/v7v7+/6+vr////////////////////////////////////////////////////r6+v5+fn///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////6GhoRAQEP///////6qqqgYGBuHh4f///////+Dg4AAAAOHh4f///////////////////0pKSm1tbf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4mJiZGRkf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1VVVXx8fP///////////////////////76+vjg4OAoKCkRERM3Nzf///////////4uLi3R0dP///////////////////+fn5z8/PwEBAR8fH8PDw////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////4eHhAAAAeXl5paWlOTk5Nzc3////////////4ODgAAAA4eHh////////////////////SkpKeHh4////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////ZmZmkZGR////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////U1NTb29v/////////////////////Pz8ISEhMzMztbW1MzMzRERE////////////YmJiISEh////////////////////UFBQNjY2xsbGLi4uSUlJ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////9/f0jIyMAAAAHBwcAAAB3d3f////////////g4OAAAADh4eH///////////////////9KSkp4eHj///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9oaGiRkZH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8sLCxvb2/////////////////////U1NQAAAC8vLz///+Xl5cPDw/5+fn///////9iYmIhISH////////////////h4eEFBQWbm5v////d3d2kpKT///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////2JiYl1dXaOjowAAAMbGxv///////////+Dg4AAAAOHh4f///////////////////0pKSnh4eP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////3d3d6Ghof///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////xQUFG9vb////////////////////7y8vAAAAMbGxv///7CwsAAAANLS0v///////2JiYldXV////////////////87OzgAAADQ0NGBgYGBgYHBwcP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////oaGhPz8/i4uLDQ0N+fn5////////////zs7OAAAAuLi46+vr////////////39/fMDAwSEhI3d3d////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////V1dXsbGx////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////FBQUQEBA1NTU7e3t7e3t9fX1////vLy8AQEB1NTU////sLCwAAAA0tLS////////YmJiODg4////////////////zs7OAAAAHR0dUlJSCgoKAQEB////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////S0tIDAwMZGRlHR0f////////////q6uoPDw8AAAAAAAB2dnb///////////9dXV0AAAAAAABMTEz///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9fX1+xsbH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8UFBQAAAAGBgYNDQ0NDQ26urr////k5OQAAAC8vLz///+mpqYQEBD6+vr///////9iYmIDAwOoqKj////////////5+fkVFRWUlJT///9JSUkpKSn///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP////////////////////////////////////////////////////////////////////////////////////////////////////z8/CQkJAAAAHd3d////////////////76+vgAAAKysrPb29v////////////Pz8zMzM05OTuHh4f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////29vb7Gxsf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////xQUFDk5OcPDw7m5ucTExPj4+P////7+/klJSS4uLnNzcwoKCk9PT////////////2JiYgAAAAMDA0FBQdXV1f///////4CAgBgYGFhYWAAAAIODg////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////UlJSAAAAxsbG////////////////5eXlBQUFe3t77+/v////////////////SkpKgoKC////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////iYmJsbGx////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////TU1Nb29v////////////////////////9fX1ampqTExMbm5u7+/v////////////s7OzmpqaqKioUVFRxsbG////////+vr6n5+fa2trmJiY+fn5////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////+vr69HR0f7+/v///////////////////+Hh4cFBQV2dnb////////////////U1NTn5+f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9zc3OhoaH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8YGBhjY2P///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Hx8fn5+f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1BQULGxsf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////xQUFAICAi4uLjw8PC8vL05OTv39/f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////UFBQoaGh////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////ra2tk5OTg4ODkZGRhYWFg4OD/v7+////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9QUFCxsbH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////15eXqGhof///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////2BgYAYGBgYGBgYGBgYGBgYGBgYGBrq6uv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+zs7EFBQSUlJSUlJSUlJSUlJVJSUtvb2////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////UFBQoaGh////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////TExMAAAALCwsPj4+Pj4+Pj4+Li4u1NTU////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////6Ojo9vb2////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////2dnZAAAAAAAAAAAAAAAAAAAAAAAALy8v/f39////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9fX1+hoaH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9bW1sAAADX19f////////////+/v7///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+zs7PLy8v////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////i4uIGBgYvLy/5+fn+/v7w8PBVVVUAAAC8vLz///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1BQUKGhof///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1tbWwAAAOfn5////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7Ozs8vLy////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9nZ2QAAABYWFvX19f///////7i4uAAAAHt7e////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////X19fn5+f////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////TExMAAAA5eXl////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////tbW1y8vL////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4uLiBgYGICAg+vr6////////0NDQAQEBcHBw////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9fX1+Tk5P///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9bW1sAAADZ2dn////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////BwcHIyMj////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////i4uIGBgYyMjL6+vr///////+EhIQAAACsrKz///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+/v79vb2////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////19fX52dnf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1tbWwAAAOfn5////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7Ozs76+vv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Li4gYGBioqKrGxsbGxsZWVlRAQEBUVFe/v7////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////z8/Px8fH////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////X19flZWV////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////V1dXAAAA19fX////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////s7Ozy8vL////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4uLiBgYGAAAAAAAAAAAAAAAAAAAAuLi4////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+zs7PAwMD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////x8fH4+Pj///9aWlqXl5f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9AQEAAAADi4uL///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+ZmZnGxsb////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////i4uIGBgYYGBiSkpKSkpJYWFgAAABRUVH+/v7///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7Ozs8XFxf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////0VFRTY2Nk9PTwICAggICEdHR4iIiDs7O25ubv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1tbWwAAANfX1////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4+Pj7u7u////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Li4gYGBjo6Ov///////////x4eHh0dHff39////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4ODgxMTE////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Pj4IiIiAAAAAAAAAAAAAAAAAAAAjY2N4ODg////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////TExMAAAA19fX////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////mpqau7u7////////////////////////////////////////////5+fn2tra////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4uLiBgYGSkpK////////////KCgoAAAA29vb////////////////////////////////////////////////////////////////////////////////////////////6Ojo6enp////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Dw8PCwsL////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////m5uYTExM+Pj4BAQEAAAAGBgYAAADCwsL///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9iYmIAAADX19f////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Dw8O7u7v////////////////////////////////////////////R0dGkpKT////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////m5uYJCQkrKyv39/f////k5OQODg4VFRXz8/P////////////////////////////////////////////////////////////////////////////////////////////Nzc2oqKj///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Li4ry8vP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8HBwS8vL+vr6yQkJAAAAIuLiycnJ5qamv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////2NjYwAAANfX1////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////6SkpLu7u////////////////////////////////////////////9LS0qSkpP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+fn5wkJCQAAADo6OiYmJhISEgAAAGlpaf///////////////////////////////////////////////////////////////////////////////////////////////87OzqioqP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////f39////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////s7Ozu7u7////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////r6+vKSkp6+vrJCQkAAAAZGRkJiYmmpqa////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////g4ODT09P8vLy////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////hISEu7u7////////////////////////////////////////////09PTpKSk////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////5+fnKSkpIiIiIiIiIiIiIiIiioqK9vb2////////////////////////////////////////////////////////////////////////////////////////////////4ODgra2t////////////////////////////////////////////////////////////////////////////////////////////////////q6urhYWFVVVVVlZWTk5OTk5OcnJy////////////////////////////////////AAD////////////////////////////////////t7e2ampqampqampqampqnp6f///////////////////////////////////////////////////////////////////+8vLy7u7v////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////f398TExNNTU0BAQEpKSkKCgoAAADS0tL///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+EhIS7u7v////////////////////////////////////////////R0dGkpKT////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Nzc2oqKj////////////////////////////////////////////////////////////////////////////////////////////////////BwcGjo6Ojo6Ojo6PMzMzi4uLn5+f///////////////////////////////////8AAP///////////////////////////////////9zc3Dk5OWdnZ35+fnh4eLKysv///////////////////////////////////////////////////////////////////8PDw7u7u////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+/v72RkZAICAgAAAAAAAHV1dS4uLgAAAIyMjPT09P///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4SEhLu7u////////////////////////////////////////////9ra2qSkpP////////////////////////////T09P////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////T09P///////////////////////////////9DQ0KioqP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////ubm5u7u7////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+/v7kZGRn5+fSEhIAAAAAAAAOTk5qampPT09uLi4////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////hISEu7u7////////////////////////////////////////////2trapKSk////////////////////3t7ek5OTUFBQfn5+////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////fHx8TExMoKCg4uLi////////////////////zMzMqKio////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////19fX3d3d5ubm////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Dw8O3t7f///////////////////////+2trZWVlZsbGz9/f3////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7+/tZWVlpaWn5+fn////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////y8vJiYmKxsbH09PT///////////////////+EhIS3t7f////////////////////////////////////////////a2tqkpKT////////k5OSnp6c8PDwHBwcAAAAAAAB8fHz///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8pKSkAAAAAAAANDQ1NTU2fn5/j4+P////////W1takpKT///////////////////////////////////////////////////////////////////////////////////////////+RkZETExMTExMTExMTExMeHh4aGhowMDAzMzNqamr///////////////////////////////8AAP////////////////////////////////////////////////////////f3983Nzc3NzdXV1f///////////////////////////////////////////////////////8PDw7u7u////////////93d3YeHhzMzMwAAAAAAABwcHPv7+////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////29vb42Njf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////97e3gAAAAAAAA4ODmFhYbGxsfX19f///////4SEhK+vr////////////////////////////////////////////9ra2n5+fqurq1xcXBMTEwAAAAAAAAAAAAAAAAAAADo6Oo6OjsbGxs3Nza6urs3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzb29vb29vbq6uomJiYyMjJiYmL29vaamprS0tLS0tK2trbe3t7KyssjIyM3Nzc3Nzc3Nzb29vb29vb29vby8vK2tra2tra2tra2tra2traOjo6enp52dnZ2dnZ2dnY6Ojp2dnRsbGwAAAAAAAAAAAAAAAAAAAAsLC15eXpCQkMnJyaioqP////////////////////////////////////////////////////////////////////////////////////////////n5+e7u7u7u7u7u7u7u7vLy8vHx8f///////////////////////////////////////////wAA////////////////////////////////ZmZmDQ0NDQ0NHx8fGhoaOzs7LCwsNDQ0NDQ0h4eH////////////////////////////////////////////////////////w8PDrq6u0NDQkpKSOTk5BAQEAAAAAAAAAAAAAAAADg4OxsbGq6urx8fH5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk19fX3t7e3Nzc19fX4ODg19fX19fXzMzM19fXysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK19fXysrKysrKysrK8fHxysrKysrK+vr6////////////8fHx8fHx8fHx8fHx8PDw5eXl8fHx7u7u5+fn7e3t5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk19fX5OTk19fX8vLy5OTk8fHx////////////5OTk3t7e19fX6+vr////////////////////2dnZ/f39////////5OTk5OTk5OTk7+/v9PT019fX5OTk0tLSysrK3d3d////////////////////b29vd3d3////////////////////////////////////////////8fHx8fHx8fHx6urq6+vr8fHx6Ojo7e3t5OTk5OTk8fHx////5eXl8fHx8PDw5OTk8/Pz////5OTk5OTk////8fHx5OTk3t7e+Pj45OTk19fXzs7O19fXysrKysrKysrKysrK19fX19fX1tbW19fXysrKysrK2tra////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8fHx9fX1+/v7////8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx////////8fHx8fHx////////8fHx8fHx8fHx5OTk8fHx8fHx5eXl/f393t7eAAAAAAAAAAAAAAAAAAAADw8PYGBgsLCwfHx8uLi4////////////////////////////////////////////2traSUlJUVFRCgoKAAAAAAAAAAAAAAAAAAAAAAAABwcHNDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0RERERERERERERERESEhIT09PREREU1NTU1NTU1NTU1NTXV1dVFRUCQkJAAAAAAAAAAAAAAAAAAAAAAAAKCgodXV1tLS0qKio////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////5+fn09PT09PT4+Pj39/f9/f37+/v////////////////////////////////////////////////////////////////////Dw8OxsbFoaGgGBgYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAbGxs6OjovLy88PDw8PDw8PDw8PDxMTExCQkI4ODhMTExRUVFKSkpUVFQpKSlGRkZVVVU+Pj4pKSlHR0dWVlYqKip2dnZlZWU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3NzcmJiYfHx8cHBw6OjokJCQvLy83Nzc/Pz83NzcgICAJCQkKCgoKCgoKCgoHBwcHBwcHBwcHBwcHBwcFBQUHBwcHBwcFBQUGBgYFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUSEhISEhISEhISEhIQEBAhISEeHh4zMzMwMDAgICArKys1NTU0NDQpKSk1NTUuLi4oKCgzMzMKCgoXFxclJSUXFxctLS0lJSUKCgpBQUEuLi4jIyMgICAHBwcICAgCAgIFBQUBAQEAAAADAwMKCgoKCgoKCgoKCgoKCgoDAwMCAgIKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoHBwcHBwcHBwcGBgYGBgYHBwcFBQUGBgYFBQUFBQUVFRUqKiojIyM2NjYWFhYFBQUpKSk3NzceHh4SEhIsLCw0NDQhISEgICA8PDwvLy8dHR0cHBwdHR0mJiY3Nzc3NzcqKiorKyseHh4sLCwsLCw3Nzc3Nzc3NzcKCgoPDw8gICA5OTkRERElJSUgICAPDw8KCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoHBwcXFxclJSU5OTknJycJCQkXFxcICAg1NTUJCQkzMzMXFxcmJiYpKSkpKSkrKysvLy8pKSkpKSk0NDQvLy8pKSkSEhItLS0qKiouLi4oKCgWFhYAAAAAAAAAAAAAAAAAAAAAAAAAAAATExMYGBiurq7////////////////////////////////////////////a2tqXl5f////z8/OioqJSUlIJCQkAAAAAAAAAAABubm7///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9BQUEAAAAAAAAAAAANDQ1ycnLU1NT8/Pz////W1taoqKj///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8PDw7u7u/////j4+LW1tV9fXxMTEwAAAAAAAAAAACkpKfb29vv7+/////39/f////////////////////////39/f////////39/f7+/vv7+/39/f7+/v39/f39/f7+/v////39/f////////////////////////////////////////////////////////////////////////////////////////////////z8/Pv7+/v7+/////z8/P39/f////////////z8/Pf39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/n5+fn5+fn5+fn5+fn5+fv7+/v7+/v7+/v7+/v7+/r6+vv7+/z8/Pv7+/z8/Pv7+/z8/P39/e3t7fT09Pv7+/n5+fv7+/v7+/f39/7+/v39/fn5+fn5+ff39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39y4uLn5+fvf39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/n5+ff39/f39/f39/f39/n5+fn5+fn5+fn5+fr6+vv7+/v7+/r6+vv7+/v7+/v7+/v7+/z8/P////////39/f39/fv7+/39/f39/f////////7+/vf39/j4+Ovr6/39/fj4+Pv7+/r6+vj4+Pf39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/n5+ff39/f39/f39/n5+fn5+fn5+fn5+fv7+/n5+fv7+/n5+cjIyAAAAAAAAAAAAAAAAAMDA0BAQLKysvr6+oSEhKurq////////////////////////////////////////////9ra2qOjo/////////////////Pz85OTky4uLgAAAH9/f////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////2JiYgoKCkhISKWlpff39/7+/v///////////9bW1pqamv///////////////////////////////////////////////////////////////////////////////+3t7ZGRkYWFhYWFhYWFhYWFhYWFhYWFhYWFhUxMTGVlZUZGRkZGRkZGRmBgYPz8/P///////////////////wAA/////////////////////Pz8j4+Pbm5uV1dXgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCycnJ////////////////////////////////////////////////w8PDrKys////////////////8PDwhISEISEhAAAAOjo6/f39////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////MTExoKCg////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7u7uAAAAAAAAIiIif39/3t7e/f39////////hISEurq6////////////////////////////////////////////2tratLS0/////////////////////////f3909PT1tbW////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7e3t6+vr/f39////////////////////////1tbWmJiY////////////////////////////////////////////////////////////////////////////////+vr6qKiofHx8fHx8fHx8fHx8fHx8jIyMtLS0u7u7u7u7u7u7u7u7u7u7ycnJ////////////////////////AAD////////////////////8/Py/v7++vr6fn5++vr6+vr6+vr6+vr62traIiIi+vr6+vr6+vr6jo6Pn5+f////////////////////////////////////////////////Dw8Orq6v////////////////////////+/v7Dw8Orq6v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9+fn6BgYH////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////u7u5/f3/AwMD+/v7///////////////////+Tk5Orq6v////////////////////////////////////////////a2tqVlZX////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////m5uaYmJj///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8PDw7u7u////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////21tbZGRkf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4WFhaurq/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////z8/PHx8f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////+fn59/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f3ra2tpaWl9/f39/f39/f39/f39/f3+Pj4////////+/v79/f39/f39/f39fX17e3t+vr65+fn5+fn+fn5/Pz8+fn5+vr6+vr6+/v7+fn5+/v79/f3+vr6+/v7+/v76enp6+vr+fn5+/v7+fn59/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f3+fn59/f39/f39/f39/f39/f35+fn5+fn5+fn5+fn6enp+/v72NjY5ubm19fX2NjY9vb22tra5eXl29vb+/v74eHh19fX4ODg+vr639/f0tLS+fn57e3t19fXx8fH1dXV9/f35+fn19fXubm59/f32NjYxcXFuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4KysrYWFhuLi4uLi4x8fHuLi4ubm55ubmuLi4uLi4uLi4uLi4uLi4uLi4v7+/39/fuLi4uLi4wsLCzc3NuLi44+Pj2tra1dXV9/f39/f35+fnx8fHycnJ1dXVtLS0nJycqKioo6Ojnp6euLi4sLCwmJiYmJiYmJiYmJiYmJiYmJiYmJiYlpaWioqKeXl5iIiIiIiIiIiIiIiIeXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5iIiIeXl5eXl5fHx8mZmZk5OTra2tkpKSkJCQkZGRkZGRuLi4uLi4uLi4uLi4q6urtbW1uLi4uLi4uLi4uLi4uLi4mZmZuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4kJCQjIyM/v7+////////////+/v72dnZ19fX19fX2NjY2NjY2NjY2NjY2NjY2NjY2NjY0tLSZmZmeHh4z8/P0NDQzs7OwsLCvb29uLi4uLi4uLi4/Pz8/////////Pz8xsbGuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4qampt7e3qKiop6enmpqaqKiopaWlnJyco6OjmJiYmJiYmJiYmJiYmJiYmJiYmJiYmJiYmJiYlZWVi4uLiIiIiIiIiIiIeXl5eXl5eXl5jo6O////////1NTUuLi4uLi4uLi4sLCwgYGBuLi4uLi4uLi4uLi4uLi4xcXFurq6uLi43d3d7e3teXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5Wlpaa2tr7+/vAAD///9ra2sKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoEBAQDAwMKCgoICAgKCgoKCgoBAQEDAwMKCgoKCgoICAgKCgoFBQUbGxv39/f///92dnYAAAAAAAAKCgoKCgonJyceHh4KCgoKCgosLCw+Pj4nJycuLi42NjY8PDw3Nzc/Pz8cHBweHh4hISEyMjI4ODhEREQ4ODhFRUU3NzcnJycdHR1JSUlJSUlJSUkzMzMKCgpBQUFJSUlJSUlJSUkQEBA1NTVJSUkaGhocHBxHR0dJSUkaGhoKCgobGxs3NzcKCgo9PT01NTUKCgoKCgoKCgoKCgoKCgojIyMQEBAKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoYGBgKCgoKCgoKCgoKCgoKCgoKCgoKCgoWFhYODg4lJSU3NzcoKCgaGhopKSkpKSk3NzcrKys0NDQpKSlEREQpKSkoKCgQEBAWFhYmJiYzMzNCQkI3Nzc1NTU6Ojo6OjpJSUlJSUlJSUlJSUlJSUkoKCg8PDxJSUlJSUlJSUlJSUlJSUlCQkIxMTFJSUkRERE0NDQ+Pj4DAwMEBAQ3NzdJSUkqKio6OjpISEgMDAwYGBgdHR0qKipJSUkkJCQgICA6OjpJSUkhISFCQkJJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlcXFxZWVlZWVljY2NYWFhgYGBhYWFoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGh3d3d4eHhaWlp5eXl5eXmIiIhpaWmIiIiIiIiCgoJvb29hYWFhYWGIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIh0dHR9fX2IiIiIiIiIiIhpaWmIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIhvb28ZGRnCwsL///////////+rq6tnZ2dpaWlZWVloaGhoaGhoaGhMTExpaWlQUFBTU1NTU1MfHx80NDRCQkI6OjpycnJubm5UVFR8fHxYWFhmZmbr6+v////////c3NwAAAA7OztJSUlJSUlJSUlPT09jY2NJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlsbGyDg4NJSUlfX19iYmJwcHBgYGBJSUlTU1OIiIhOTk5JSUlJSUlJSUlJSUlJSUlJSUlKSkqGhoZ4eHhcXFxlZWVYWFhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGh3d3d5eXmIiIiIiIh0dHQaGhry8vL///+dnZ2IiIiIiIiIiIhFRUUAAABnZ2fBwcHHx8fHx8fHx8fHx8fHx8fHx8fw8PD+/v62traIiIiIiIiIiIiIiIiIiIiIiIiXl5eIiIiIiIiIiIiIiIiIiIiTk5OMjIyIiIiIiIiIiIiIiIiIiIiIiIiZmZny8vIAAP///////////////////////////////////////////////////////////////////////////////////////////////////////+Pj49ra2v////Ly8v///////6ysrI+Pj/////////Ly8v///+Xl5eXl5f///////6WlpTMzM8nJyf////////z8/Obm5v////////////////////////////////////////Ly8ufn5+Tk5O/v7////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+fn57KystfX1/////////////////////n5+VdXVx8fH/Dw8P///////////////////////////////////////////////////////////////////////////////////////////////0BAQHJycv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////56enkRERP39/f///////////////////////////////////////////////////////5SUlKurq////////////////////////////////////////////+fn5woKCv////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////z8/DQ0NP///////////////////////2xsbAAAAKCgoP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////09PTnJyc////////////////////////////////YmJinp6e////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////29vbHR0dPj4+ERER7e3t////////////////9vb2GBgYAAAAvb29////////////////////////////////////////////////////////////////////////////////////////////////QEBAlZWV////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9/f3OTk5o6Oj////////////////////////////////////////////////////////n5+fnJyc////////////////////////////////////////////3t7eExMT/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Pz8QEBA////////////////////5ubmIiIiAAAAUVFR////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////T09OwsLD////////////////////////////6+voXFxfu7u7///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+cnJxkZGT9/f1PT0/Z2dn///////////////+/v78AAAAAAABpaWn///////////////////////////////////////////////////////////////////////////////////////////////9AQECNjY3///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+8vLwrKyv09PT///////////////////////////////////////////////////+YmJicnJz////////////////////////////////////////////q6uoHBwf////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////19fUmJib///////////////////+ZmZkAAAAAAAAQEBDr6+v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Pj47u7u////////////////////////////7Kysk5OTv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7Ozs7Kysvz8/P///////////7W1tbS0tP7+/kxMTICAgP///////////////////////////1paWgAAAAAAABcXF/X19f///////////////////////////////////////////////////////////////////////////////////////////0BAQHJycv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8nJybm5uaioqNbW1v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////z4+PoODg////////////////////////////////////////////////////5SUlJycnP///////////////////////////////////////////+rq6gcHB////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+7u7h0dHf////////////////z8/EpKSgAAAAAAAAAAAKGhof///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4+PjpaWl////////////////////////////Y2NjnZ2d////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Hh4eDQ0N7u7u////////////S0tLAAAA+Pj4QkJCgICA////////////////////////8PDwDw8PAAAAAAAAAAAAqKio////////////////////////////////////////////////////////////09PTgICAZ2dnlpaW9fX1////////////UFBQgYGB////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////29vbBwcHODg4SUlJvr6+////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1tbWExMT7Ozs////////////////////////////////////////////////pKSknJyc////////////////////////////////////////////6urqBwcH////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////6OjoGRkZ////////////////8fHxERERAAAAAAAAAAAAQkJC////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////j4+OcnJz///////////////////////////8jIyPs7Oz///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8eHh4mJib///////////////9LS0sAAAD4+PhYWFiAgID////a2tr///////////////+pqakAAAAAAAAAAAAAAABeXl7////////////////////////////////////////////////////8/Pyjo6MGBgYAAAAAAAAAAAA5OTn19fX///////9AQECgoKD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////ExMQ9PT3///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////99fX1kZGT///////////////////////////////////////////////+kpKScnJz////////////////////////////////////////////q6uoHBwf////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////6+vomJib///////////////+Xl5cAAAAAAAAAAAAAAAAQEBDr6+v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9PT08LCwv///////////////////////7q6uiIiIvv7+////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////x4eHiYmJv///////////////0tLSwAAAPj4+JiYmDExMbu7uwsLC+Pj4////////////1BQUAAAAAAAAAAAAAAAAA4ODvDw8P///////////////////////////////////////////////+jo6AoKChAQELm5ucXFxSMjIwAAAJaWlv///////1BQUHJycv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8zMzNPT0////////////////+Tk5L+/v+vr68TExD09Pf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+zs7BcXF93d3f///////////////////////////////////////////6SkpKOjo////////////////////////////////////////////+rq6gcHB////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+/v7/7+/v////////////////////////////////////////////////////////////////////////////////////////v7+y0tLf///////////////05OTgAAAAAAAAAAAAAAAAAAAJubm////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4+Pjy8vL////////////////////////c3NzdXV1////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Hh4eJiYm////////////////S0tLAAAA+Pj49/f3cHBwMzMzlZWV////////////9PT0R0dHQkJCFRUVCAgIPT09QUFBy8vL////////////////////////////////////////////////hYWFAAAAfn5+////////tra2AAAAZmZm////////UFBQgYGB////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////SUlJJSUl+/v7////////////dXV1AAAAra2txMTEPT09////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////jIyMXV1d/f39////////////////////////////////////////pKSks7Oz////////////////////////////////////////////+vr6BwcH////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////WVlZxsbG/////////////////////////////////////////////////////////////////////////////////////////f39Ozs7////////////////8/Pzz8/Po6OjFhYW2NjY39/f9PT0////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////j4+Pb29v///////////////////////8VFRXc3Nz///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8eHh4mJib///////////////9LS0sAAAD4+Pj///////////////////////////////////////+ZmZlcXFz7+/v////////////////////////////////////////////////////7+/s5OTkAAADNzc3////////q6upkZGSioqL///////9QUFCKior///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+JiYkAAADY2Nj///////////9FRUUAAADd3d3ExMQ9PT3////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////5+fkiIiLExMT///////////////////////////////////////+kpKScnJz////////////////////////////////////////////q6uoHBwf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9CQkK/v7/////////////////////////////////////////////////////////////////////////////////////////5+fkeHh7////////////////////////FxcUjIyP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Pj49DQ0P///////////////////8jIyCwsLPr6+v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////x4eHhYWFtDQ0MbGxsbGxsbGxh8fHwAAAPj4+P///////////////////////////////////////6GhoWBgYP///////////////////////////////////////////////////////////y8vLwgICObm5v///////////////////////////1BQULGxsf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7m5uQAAAJiYmP////////f39w0NDSEhIfv7+8TExD09Pf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////5ycnEVFRf7+/v///////////////////////////////////6SkpLu7u/////////////////////////////////////////////r6+iAgIP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////T09P///////0JCQr+/v/////////////////////////////////////////////////////////////////////////////////////////7+/jw8PP///////////////////////9fX1yMjI////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4+PjnJyc////////////////////dHR0jIyM////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Hh4eAAAAAAAAAAAAAAAAAAAAAAAAAAAA+Pj4////////////////////////////////////////oaGhYGBg////////////////////4ODg09PTpqamzc3NlJSUlZWVsrKyt7e3////9PT0Dw8PFRUV////////////////////////////////UFBQkZGR////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7OzsDAwMKioqdXV1dXV1WlpaAAAAbW1t////3Nzcfn5+////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+vr6Ozs7tLS0////////////////////////////////////pKSktra2////////////////////////////////////////////+vr6RkZG////////////////////////////////////////////////////////////////////////////////////////////////////////////q6urHh4e3t7e////////////6+vrHh4eQUFB////////a2trv7+//////////////////////////////////////////////////////////////////////////////////////////f39ODg4////////////////////////09PTIyMj////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+4uLicnJz///////////////////8uLi7t7e3///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8eHh4AAAA5OTlYWFhdXV1wcHACAgIAAAD4+Pj///////////////////////////////////////+hoaFgYGD///////////////////9NTU0AAAAAAAAEBAQAAAAAAAAAAAACAgLW1tbv7+8AAAAVFRX///////////////////////////////9QUFClpaX///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8qKioAAAAAAAAAAAAAAAAAAACdnZ3///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+7u7snJyfy8vL///////////////////////////////+kpKS/v7/////////////////////////////////////////////6+vobGxv////////////////////////////////////////////////////////////////////////////////////////////////////////////d3d0AAACUlJT////////////ExMQAAABfX1////////9lZWW/v7/////////////////////////////////////////////////////////////////////////////////////////5+fkiIiL////////////////////////JyckjIyP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////97e3re3t////////////////8fHx0xMTP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////x4eHiMjI/39/f///////////0ZGRgAAAPj4+P///////////////////////////////////////5SUlIuLi/////////////////////Pz88/Pz8DAwL6+vrCwsM7Ozq+vr9HR0f////b29hQUFBUVFf///////////////////////////////1BQUKysrP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////3l5eQAAAHR0dI+PjwgICAkJCeDg4P///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1tbW4WFhf///////////////////////////////6SkpNbW1v////////////////////////////////////////////r6+gcHB/////////////////////////////////////////////////////////////////////////////////////////////////////////////39/R8fH1RUVP///////////5GRkQAAAK6urv///8zMzDQ0NIqKiubm5v////////////////////////////////////////////////////////////////////////////////////b29g4ODv///////////////////////97e3iMjI////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4+Pjy8vL////////////////dXV1m5ub////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Hh4eJiYm////////////////S0tLAAAA+Pj4////////////////////////////8PDwUlJSXFxcFhYWEBAQLS0tVlZWyMjI////////////////////////////////////////////////Ly8vEBAQ9vb2////////////////////////////UFBQsbGx////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////qampAAAAqamp6+vrCgoKMTEx////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////2traISEh5eXl////////////////////////////pKSk29vb////////////////////////////////////////////+vr6BwcH////////////////////////////////////////////////////////////////////////////////////////////////////////////////XV1dEhISy8vL////6enpREREAAAA7u7u////TExMNDQ0NDQ0jIyM////////////////////////////////////////////////////////////////////////////////////9vb2CwsL////////////////////////wcHBIyMj////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////j4+Ourq7///////////////81NTXq6ur///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8eHh4mJib///////////////9LS0sAAAD4+Pj////////////////////////////4+PgqKioAAAAAAAAAAAAAAAAICAjp6en///////////////////////////////////////////////9MTEwAAADV1dX////////39/fHx8fd3d3///////9QUFCxsbH////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////j4+MGBgZpaWm1tbUAAAB7e3v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////97e3tzc3P///////////////////////////+kpKTb29v////////////////////////////////////////////6+vokJCT///////////////////////////////////////////////////////////////////////////////////////////////////////////////+NjY0AAAABAQEKCgoGBgYAAAAvLy/+/v7////////////////////////////////////////////////////////////////////////////////////////////////////////4+PgYGBj////////////////////////Ly8sjIyP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8XFxcnJyf///////////9/f3z8/P/7+/v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////x4eHiYmJv///////////////0tLSwAAAPj4+P///////////////////////////////4WFhQAAAAAAAAAAAAAAAERERP///////////////////////////////////////////////////4uLiwAAAImJif///////6+vrwAAAGZmZv///////1BQULGxsf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////xwcHCkpKXZ2dgAAAL29vf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+zs7BEREeLi4v///////////////////////6SkpMvLy/////////////////////////////////////////////r6+hgYGP///////////////////////////////////////////////////////////////////////////////////////////////////////////////729vQAAABYWFjo6OiEhIQAAAHx8fP////////////////////////////////////////////////////////////////////////////////////////////////////////////b29gsLC////////////////////////97e3iMjI////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4eHhnZ2d////////////hoaGioqK////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Hh4eJiYm////////////////S0tLDQ0N+fn5////////////////////////////////29vbCQkJAAAAAAAAAAAAs7Oz////////////////////////////////////////////////////39/fCgoKHR0dqKioubm5IiIiAAAAo6Oj////////UFBQsbGx////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////aWlpAAAAEBAQCwsL8vLy////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////e3t7R0dH////////////////////////pKSky8vL////////////////////////////////////////////+vr6BwcH////////////////////////////////////////////////////////////////////////////////////////////////////////////////7u7uDw8PZGRk////hISEAAAAvr6+////////////////////////////////////////////////////////////////////////////////////////////////////////////9vb2CwsL////////////////////////zs7OIyMj////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+0tLTa2tr///////////82Njba2tr////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////V1dXHx8f////////////////g4ODc3Nz///////////////////////////////////////81NTUAAAAAAAARERHx8fH///////////////////////////////////////////////////////+Pj48KCgoAAAAAAAAAAABKSkr4+Pj///////9QUFCxsbH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+pqakAAAAAAAAuLi7////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8/PwfHx/ExMT///////////////////+kpKS7u7v////////////////////////////////////////////6+voWFhb///////////////////////////////////////////////////////////////////////////////////////////////////////////////////8+Pj40NDT+/v41NTUWFhb29vb////////////////////////////////////////////////////////////////////////////////////////////////////////////29vYLCwv///////////////////////+urq4jIyP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Pj49vb2////////9/f3yYmJvn5+f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////5WVlQAAAAAAAFRUVP///////////////////////////////////////////////////////////////9ra2ouLi4KCgsHBwf///////////////1BQULGxsf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Pj4wYGBgAAAF5eXv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8nJyScnJ/7+/v///////////////6SkpNnZ2f////////////////////////////////////////////r6+jY2Nv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////35+fgAAAM7OzgoKCj4+Pv////////////////////////////////////////////////////////////////////////////////////////////////////////////////b29gsLC////////////////////////729vSMjI////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4+Pj29vb////////hoaGenp6////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////6urqCwsLAAAAwsLC////////////////////////////////////////////////////////////////////////////////////////////////UFBQsbGx////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////LCwsAwMDra2t/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////f39PDw8lpaW////////////////pKSkzMzM////////////////////////////////////////////+vr6FxcX////////////////////////////////////////////////////////////////////////////////////////////////////////////////////rq6uAAAAOzs7AAAAbm5u////////////////////////////////////////////////////////////////////////////////////////////////////////////////9vb2CwsL////////////////////////n5+fIyMj////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////r6+vl5eX///////84ODjKysr///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9iYmIcHBz4+Pj////////////////////////////5+fnGxsb////////////////////////////BwcHs7Oz///////////////////////9QUFCxsbH////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////o6Oji4uL6+vr////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Z2dkbGxv6+vr///////////+kpKTb29v////////////////////////////////////////////6+vpGRkb////////////////////////////////////////////////////////////////////////////////////////////////////////////////////d3d0BAQEAAAAAAAC+vr7////////////////////////////////////////////////////////////////////////////////////////////////////////////////29vYLCwv///////////////////////++vr4jIyP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////97e3i8vL////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7y8vOPj46ampoWFhfv7+3p6eu3t7f////////z8/NTU1HZ2dhsbGwAAANzc3P///////////////////////ykpKQUFBVtbW6Ojo/Pz8////////////1BQULGxsf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////3l5eWdnZ////////////6SkpNvb2/////////////////////////////////////////////r6+iYmJv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////z4+PgAAAAwMDPDw8P////////////////////////////////////////////////////////////////////////////////////////////////////////////////b29gsLC////////////////////////5+fnyMjI////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////h4eHeXl5////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1dXVR0dH4ODg6enpcXFxdnZ2/Pz85+fno6OjOjo6AAAAAAAAAAAAAAAAwMDA////////////////////+Pj4HBwcAAAAAAAAAAAABwcHWlpatLS09fX1PDw8sbGx////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7OzsIiIi0NDQ////////pKSk29vb////////////////////////////////////////////+vr6ExMT////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////X19fAAAALy8v////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9vb2CwsL////////////////////////n5+fNjY2////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////84ODjIyMj////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////U1NRTU1NDQ0NRUVGUlJQ8PDwLCwsAAAAAAAAAAAAAAAAAAAAAAAAjIyNNTU0uLi5dXV0uLi4uLi4qKioAAAAAAAAAAAAAAAAAAAAAAAAAAAATExMDAwOxsbH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+dnZ1ISEj///////+kpKTb29v////////////////////////////////////////////6+vo6Ojr////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////j4+ORkZG+vr7////////////////////////////////////////////////////////////////////////////////////////////////////////////////////29vYLCwv///////////////////////+fn59iYmL///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////93d3SgoKPr6+v////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////f39zo6OgUFBaenp8nJyYmJiSoqKgEBAQAAAAAAAAAAAAAAAAAAAJSUlNPT09PT09PT09PT09PT05mZmQ0NDQAAAAAAAAAAAAAAAA4ODllZWaOjowkJCbGxsf////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////z8/ERERLW1tf///6urq97e3v////////////////////////////////////////////r6+kZGRv////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////b29gsLC////////////////////////5+fn2JiYv///////////////////////////////////////////////3Z2disrKysrK5qamv///6Wlperq6vPz84yMjP///////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////eHh4iIiI////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8PDwTExMcnJysLCwNjY2vLy8////////zMzMioqKSkpKBwcHAAAAAAAA6enp////////////////////7OzsBgYGAAAAAgICQEBAmJiY8PDw////////ERERsbGx////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////xMTEOjo6+vr6////////////////////////////////////////////////////+vr6RkZG////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9vb2CwsL////////////////////////n5+fYmJi////////////////////////////////////////////////PDw8ycnJuLi4DAwM5ubmPz8/29vbkpKSeHh4////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////88PDza2tr///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////97e3uNjY35+fn////U1NQiIiLw8PD////////////////U1NSMjIwlJSXm5ub////////////////////29vZlZWWAgIDU1NT///////////////////8RERGxsbH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9JSUmIiIj////////////////////////////////////////////////////6+vpGRkb////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////29vYhISH///////////////////////+fn59iYmL///////////////////////////////////////////////9CQkL////4+PgeHh7Z2dk1NTXIyMgdHR3IyMj///////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9zc3Dw8PP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+bm5v///////////////9XV1fX19f////////////////////////b29v///////////////////////////////////////////////////////////xEREbGxsf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9PT0ywsLPDw8P////////////////////////////////////////////////r6+j4+Pv////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////r6+vv7+/////////////////f39/f39/f39/b29u/v7/b29u/v7/Dw8O/v7+/v7+/v7+/v7+/v7+/v7+vr6+zs7Orq6ufn5+3t7enp6efn5+fn59/f39/f39/f39/f38DAwBMTE////////////////////////5+fn2JiYv///////+Li4icnJ4WFhf////////////7+/jIyMl5eXvv7+yYmJmFhYUpKSjs7O////1xcXBEREQAAAMnJyf///////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////iIiIf39/////////////////////////////////////////////9vb29vb29vb29PT08PDw8/Pz7e3t7e3t8fHx+vr67e3t8/Pz9vb25+fn6+vr5+fn7Ozs7u7u9vb25eXl3Nzc3d3d9fX19/f3/////////////////////////////////////////////////////////////////////////////////f39+Pj49vb2////////////////////////////////////////9/f3/f399vb29vb29vb27u7u9vb29PT07+/v9vb27u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7e3t7e3t7e3t7e3t7e3t7e3t7e3t7e3t7e3t7e3t7e3t7e3t5eXl6urq5+fn5eXl5eXl3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc0dHRCgoKiYmJ3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzczc3Nzc3N5eXl1dXVzMzMzMzMvr6+zc3Nvb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29sLCwu7u7r6+vra2tvLy8ra2tnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dkJCQqqqqjo6Ojo6Ofn5+jo6Om5ubgICAjo6Ofn5+iIiIfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19bm5ufX19bm5ub29vfHx8bm5ucnJyenp6eHh4BQUFUFBQ39/f////////////////////////////////////////////+vr6AAAAIiIiXl5ePz8/Xl5eSUlJHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fGxsbHBwcHx8fHx8fHx8fHx8fFxcXFxcXFxcXFxcXERERHh4eGRkZKSkpHh4eGBgYGxsbFRUVEBAQHBwcHBwcHR0dHBwcGRkZHx8fGxsbGRkZGRkZGRkZIiIiIiIiIiIiISEhUVFR////////////////////////n5+fYmJi////////0dHRAAAAcnJy/////////////v7+AAAARUVF9/f3ERERk5OTTU1NS0tL////XFxcsLCwg4ODampq////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4+PghISEKCgocHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwVFRUVFRUVFRUTExMQEBATExMRERETExMgICA3NzcODg4SEhIlJSUJCQkMDAwXFxcaGhofHx8lJSUWFhYAAAAAAAAjIyMWFhYcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwbGxsXFxcVFRUcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwWFhYbGxsVFRUVFRUVFRUODg4VFRUUFBQPDw8VFRUODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4gICAODg4ODg4PDw8eHh4ODg4ODg4aGhogICATExMXFxcTExMZGRkhISEZGRkbGxsgICAlJSUlJSUlJSUlJSUlJSUlJSUaGhoJCQkAAAAAAAAAAAAVFRUbGxsXFxcJCQkFBQUbGxsDAwMAAAAAAAAAAAAAAAASEhIAAAAAAAAAAAAJCQkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHBwcHBwcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAbGxtOTk5kZGRfX19AQEAvLy9aWlpkZGRXV1dXV1dkZGQ7OztUVFRkZGRkZGRkZGRGRkZSUlJFRUVTU1NTU1MnJydUVFRBQUFISEhkZGRUVFRkZGRNTU1MTEw8PDw0NDROTk45OTklJSUlJSUlJSUyMjJkZGQ1NTVUVFRkZGRkZGRUVFRkZGRkZGRkZGRkZGRkZGRkZGRUVFRaWlpdXV1ubm5paWlzc3NjY2OBgYF1dXWCgoKDg4NjY2NWVlaEhIRxcXGDg4Nubm5tbW19fX2Dg4Pi4uL////////////////////////////////////////////+/v7Q0NCjo6O1tbXi4uK+vr7X19fi4uLi4uLi4uLi4uLi4uLi4uLi4uLGxsYyMjJWVlbi4uLi4uLi4uLi4uLi4uLi4uLf39+ysrLV1dXi4uLS0tLi4uLi4uLi4uLi4uK5ubm8vLyzs7Pi4uKnp6fPz8/i4uLi4uLDw8Pi4uLi4uLZ2dnq6urp6enu7u7p6enr6+uvr68SEhLk5OTw8PDw8PDw8PDw8PDw8PDw8PDw8PDw8PD39/f////////////39/f39/f///////////////////////+fn59iYmL////////R0dEAAABycnL////////////+/v4AAABFRUX9/f05OTn39/ejo6MVFRX///9OTk7R0dGrq6tjY2P///////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+jo6OXl5dXV1eXl5dXV1dXV1eXl5ampqdTU1OLi4tbW1qampsXFxbW1tbW1tbW1taamprq6utDQ0N3d3dLS0rW1tb29vby8vLW1tcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxdXV1ePj48fHx9XV1eDg4B0dHQAAAFRUVOXl5eXl5eXl5YqKigMDA1RUVODg4NXV1cjIyFJSUgAAAH5+fuXl5eXl5dPT00dHRwYGBsHBwdXV1dXV1cjIyBgYGA8PD7m5ueXl5bu7u4uLixERESAgIKampqampqampmdnZwAAAFVVVaamprW1taampkJCQgAAAICAgKampqampp2dnRYWFg8PD5+fn6amprW1tZmZmQQEBCsrKysrK1FRUfHx8ba2tsPDw8nJyfDw8MXFxcXFxe3t7fLy8uHh4ePj48nJyeLi4vT09ODg4PPz8/f39/////////////////////////f39+vr6+Xl5eXl5eXl5fT09Pj4+PX19evr6+jo6Pj4+Ofn59nZ2QsLC5+fn+Xl5fHx8eXl5eXl5eXl5evr6+Xl5eXl5W5ubhEREeXl5eXl5eXl5eXl5bS0tBUVFRMTE8zMzKqqqqampqampqampqampqampqampqSkpERERAAAAIaGhsHBwZGRkXx8fJ+fn3Z2dpWVlXZ2dn9/f3x8fAgICBwcHIaGhoaGhoaGhoaGhoaGhkJCQhwcHOnp6fn5+f////////j4+P////////////v7+/v7+/////j4+P///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1hYWIKCgv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Tk5B0dHf///////////////////////////////////////////////////////////////////////////////////5+fn2JiYv///////9HR0QAAAHJycv////////////7+/gAAAEVFRfz8/DExMRQUFA0NDXh4eP///3h4eA8PDw4ODqqqqv///////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////MTExfn5+IyMjl5eX////////////nZ2dDQ0Nra2t////////+fn5VVVVGhoa2NjY////////9fX1R0dHTExM9/f3////////0tLSGBgYcnJy////////////yMjIFRUVpKSk////////////h4eHHR0d3Nzc////////8/PzQkJCKCgo4+Pj////////19fXHx8fioqK////////////r6+vAwMDBQUFYmJi////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////ERERsbGx////////////////////////////////7+/vGRkZ4eHh////////////////zc3NFRUVY2Nj+/v7/////////////////////////////Pz8WFhYOjo66+vr////////////////////////////////tbW1ERERu7u7////////////////Ozs7lpaW////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////c3NzjY2N////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////5OTkHR0d////////////////////////////////////////////////////////////////////////////////////n5+fYmJi////////0dHRAAAAcnJy/////////////v7+AAAARUVF////8vLy6Ojo6enp/////////Pz86Ojo6+vr////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////89PT309PTW1tYdHR2NjY3///////////+dnZ0HBwepqan////////6+vpUVFQZGRnk5OT////////19fVHR0c9PT339/f////////S0tIaGhpubm76+vr////////IyMgUFBSkpKT////////+/v6IiIgdHR3c3Nz////////z8/NdXV0+Pj7s7Oz////////Y2NgeHh6Kior///////////+wsLACAgJ4eHj///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8RERGxsbH///////////////////////////////////9YWFiYmJj////////////////////Ozs4UFBSampr////////////////////////////////29vZkZGQ2Njbr6+v///////////////////////////////+2trYPDw+wsLD////////JycksLCz6+vr///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9eXl6mpqb////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////U1NQdHR3///////////////////////////////////////////////////////////////////////////////////+fn59iYmL////////R0dEAAABmZmb////////////+/v4AAABFRUX///////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////0JCQv///////9bW1h0dHY6Ojv///////////52dnRYWFs3Nzf////////r6+lNTUy0tLdjY2P////////X19UdHR01NTff39////////9LS0jMzM4uLi/r6+v///////8jIyBMTE6Wlpf////////7+/oiIiB4eHtzc3P////////39/UxMTE5OTuzs7P///////9/f3yQkJHt7e////////////3t7e319ff///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////xEREbGxsf///////////////////////////////////7Ozsz09Pf///////////////////////87OzhcXF5ycnP////////////////////////////////r6+mVlZTY2Nurq6v///////////////////////////////7q6uhISEsDAwP///ysrK5aWlv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////09PT56env///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Tk5B0dHf///////////////////////////////////////////////////////////////////////////////////5+fn2JiYv///////9HR0QAAAA8PD09PT09PT09PT0BAQAAAAEVFRf///////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8vLy5eXl////////////5eXl5OTk////////////////////PT099vb2////////1tbWJSUltLS0////////////np6eFRUVzs7O////////+vr6cHBwGhoa2NjY////////9fX1R0dHTExM9/f3////////1tbWJCQkioqK+/v7////////ycnJEhISpaWl/////////v7+iIiIHh4e3Nzc////////+vr6S0tLXl5e6+vr////////3t7eKCgoe3t7////////hISEfX19////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////ERERsbGx////////////////////////////////////+Pj4JCQk4uLi////////////////////////zs7OFhYWjIyM////////////////////////////////+fn5ZWVlNzc36enp////////////////////////////////u7u7FBQUW1tbKCgo+vr6////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////T09PsrKy////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////19fXHR0d////////////////////////////////////////////////////////////////////////////////////n5+fYmJi////////0dHRAAAAAAAAAAAAAAAAAAAAAAAAAAAARUVF////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////S0tIWFhYWFhZ6enr///+MjIwiIiIgICCJiYn///////////////8uLi57e3v////////////X19ccHByOjo7///////////+enp4UFBTOzs7////////+/v6Ojo47Ozvz8/P////////19fVHR0dNTU339/f////////W1tY0NDSUlJT////////////JyckRERGmpqb////////+/v6IiIgZGRnQ0ND////////7+/tXV1dGRkby8vL////////e3t4nJyd7e3v///+EhIR9fX3///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8RERGxsbH///////////////////////////////////////9lZWWMjIz////////////////////////////Pz88VFRWBgYH9/f3////////////////////////////5+flmZmY4ODjp6en///////////////////////////////+ioqIAAADFxcX///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9PT0+ysrL///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+lpaUdHR3///////////////////////////////////////////////////////////////////////////////////+fn59iYmL////////R0dEAAABAQED09PT09PT09PTz8/MAAABFRUX///////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7Gxsaamprm5uTQ0NP///2FhYcbGxry8vENDQ////////////////y4uLgAAAH19ff///////////9fX1xsbG4+Pj////////////5+fnxMTE8/Pz/////////z8/GNjYysrK+fn5/////////X19UZGRk1NTff39////////9XV1RgYGIaGhv///////////8rKyhAQEKampv////////7+/oiIiBkZGdHR0f////////X19VFRUTk5OfPz8////////9/f30ZGRnx8fFZWVn19ff///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////xEREb+/v////////////////////////////////////////8bGxioqKv///////////////////////////////9/f3xMTE42Njf////////////////////////////////j4+GZmZjg4OOjo6P///////////////////////////6mpqUdHR/39/f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////09PT7Kysv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////6WlpR0dHf///////////////////////////////////////////////////////////////////////////////////4+Pj2JiYv///////9HR0QAAAGBgYP////////////7+/gAAAEVFRf///////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7+/v/////////////////////////////////v7+/v7+n5+fUlJS/////f39////cXFxYWFh////////////////MjIyrq6uIyMjd3d39vb2////////19fXGhoaj4+P////////////n5+fEhISz8/P/////////f39f39/Pj4+8/Pz////////9fX1RUVFTU1N+Pj4////////4+PjFxcXd3d3////////////ysrKEBAQl5eX/////////v7+l5eXDg4Ozc3N/////////f39V1dXUVFR+fn5////////4uLiJCQkAQEBfX19////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////ERER0NDQ////////////////////////////////////////+Pj4HR0du7u7////////////////////////////////39/fIiIigICA/v7+////////////////////////////+Pj4Z2dnOTk59/f3////////////////////////SkpKp6en////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////T09PoqKi////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////paWlOzs7////////////////////////////////////////////////////////////////////////////////////f39/YmJi////////0dHRAAAAcnJy/////////////v7+AAAARUVF////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Dw8MBAQGvr6////////////////9YWFgYGBjl5eX///+srKwtLS3n5+f////w8PBiYmIwMDD+/v7///////////////9CQkL////h4eEiIiJ2dnb29vb////////Y2NgZGRmPj4/+/v7///////+goKARERHQ0ND////////7+/tTU1MfHx/j4+P////////29vZFRUVMTEz4+Pj////////U1NQWFhaHh4f+/v7////////KysoQEBCmpqb////////+/v6Xl5ctLS3s7Oz////////+/v5WVlZra2v+/v7////////h4eEiIiJ9fX3///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8RERHg4OD///////////////////////////////////////////+FhYUPDw/Nzc3////////////////////////////////R0dEhISF/f3/////////////////////////////////39/dYWFhZWVn39/f///////////////+3t7crKyv8/Pz///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9PT0+xsbH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+lpaVcXFz///////////////////////////////////////////////////////////////////////////////////+enp5iYmL////////R0dEAAABycnL////////////+/v4AAABFRUX///////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Li4gAAAFFRUf///////////+/v7w8PDzU1Nf///729vSwsLOfn5/7+/v///6KiojAwMO7u7v7+/v///////////////zc3N+jo6P///+jo6CsrK25ubv7+/v///////9jY2BkZGY+Pj/7+/v///////6CgoBISEs/Pz/////////r6+oODgy8vL/Pz8/////////b29kZGRkxMTPj4+P///////9XV1RYWFoeHh/7+/v///////8rKyiQkJLKysv///////////52dnTY2Ntvb2////////////1ZWVlVVVfT09P///////4SEhH19ff///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////xEREcHBwf///////////////////////////////////////////9PT0xMTEx4eHs3Nzf///////////////////////////////+Dg4CAgIK6urv///////////////////////////////+/v729vb1lZWfj4+P///////+/v7ygoKKampv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////09PT5OTk////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////6WlpVxcXP///////////////////////////////////////////////////////////////////////////////////2BgYGJiYv///////9HR0QAAAHJycv////////////7+/gAAAEVFRf///////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////MzMzICAg////////////zs7OAAAAhISE////lZWVWlpas7OzhISE////V1dXd3d3qKiojo6O////////////////Li4u0dHR////////4eHhQkJCfn5+/v7+////////2NjYGRkZkZGR////////////n5+fExMTzs7O////////////jo6OPz8/8fHx////////9fX1RkZGTExM+Pj4////////1dXVFxcXh4eH+/v75+fn3d3dycnJJSUloqKi////////////np6eGBgYysrK////////////VlZWNjY29vb2////dHR0bW1t////////////////////////////////////////////////////////////////////////////////////////////////////////////////////w8PD7+/v////////////////////ERER7u7u////////////////////////////////////////////////xMTENjY2FxcXfHx809PT////////////////////////////0dHRBQUFu7u7////////////////////////////////9vb2NjY2WFhYqampY2NjExMTTExM/Pz8////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////T09PsLCw////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////tLS0SkpK////////////////////////////////////////////////////////////////////////////////////YGBgYmJi////////9PT0iYmJq6ur/////////////v7+hISElpaW////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9zc3MDAwO1tbXp6enn5+d7e3sAAADExMT////19fVCQkIpKSmqqqr////V1dUrKysXFxenp6f///////////////89PT06Ojrw8PD////////p6elLS0t+fn77+/v////////Y2NglJSWRkZH+/v7///////+fn58UFBTOzs7///////////+NjY0rKyvY2Nj////////19fVGRkZMTEz39/f////////MzMwAAAAbGxsAAACDg4P////MzMwfHx+FhYX///////////+enp4YGBjOzs7///////////9WVlZeXl78/PyBgYF6enr///////////////////////////////////////////////////////////////////////////////////////////////////////////////////8mJiYGBgZPT0+fn5/v7+////////8RERGhoaH///////////////////////////////////////////////////////+1tbVGRkYMDAxSUlLMzMz+/v7////////////////////BwcEkJCS6urr////////////////////////m5ualpaUqKioEBAQzMzN+fn7ExMT7+/v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9PT09jY2P///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+lpaUVFRX29vb///////////////////////////////////////////////////////////////////////////////9gYGBfX1////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7OzswAAAAQEBBUVFQwMDAAAAAkJCenp6f////////////////////////////////Hx8f///////////////////zIyMhsbGzs7O/Dw8P////////f390xMTGJiYv39/f///////9jY2BkZGY+Pj/7+/v///////56enhUVFc3Nzf///////////42NjR0dHdjY2P////////X19UNDQ0xMTKWlpWZmZg4ODgAAAAAAAAAAAFNTU////////9LS0gQEBIWFhf///////////4GBgSsrK9vb2////////////0FBQWBgYDAwMGxsbPv7+/////////////////////////////////////////////////////////////////////////////////////////////////////////////39/SQkJAAAAAAAAAAAAAgICE9PT6KiogcHB7Gxsf///////////////////////////////////////////////////////////////9zc3IWFhQ8PD1xcXKysrP7+/v///////////////8DAwBgYGLm5uf////v7++Tk5Kampl1dXQ8PDzw8PIqKitjY2P///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1JSUpWVlf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7S0tCAgIP///////////////////////////////////////////////////////////////////////////////////29vb4aGhv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9/f3GhoaBQUFSkpKICAgAAAANDQ0////////////////////////////////////////////////////////////SUlJ7+/vWlpaOzs78PDw////////9vb2TExMfn5+/f39////////2NjYGRkZj4+P////////////oaGhIiIivb29////////////jIyMHR0d2NjY////8fHxNDQ0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAwMDcXFxcXFxSUlJAAAABAQESEhIcXFxSUlJHh4eAAAAFBQUXFxcUVFRVFRUGxsbAAAAAAAADAwMNTU1UFBQQUFBRERETk5OQUFBRkZGS0tLQUFBSUlJSUlJQUFBQUFBQUFBMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyLS0tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAUlJS/Pz8////////////////////////////////////////////////////////////////////9fX1lZWVCwsLPT09np6e9fX1////////////uLi4AgICYGBgNTU1FxcXTk5Ompqa6+vr////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////W1tboqKi////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////tLS0WFhY////////////////////////////////////////////////////////////////////////////////////YGBgkZGR////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8+Pj4/Pz////+/v78AAACDg4P///////////////////////////////////////////////////////////9LS0vw8PD6+vpaWlo7Ozvw8PD////////29vZHR0d/f3/9/f3////////Y2NgZGRmPj4////////////+hoaEiIiLNzc3///////////+MjIweHh7T09P29va0tLRISEgFBQUAAAAAAAAAAAAAAAAAAAAAAAAAAABubm6QkJCQkJCKiooVFRUdHR2Ojo6QkJCQkJB2dnYGBgZOTk6goKCdnZ2ioqI7Ozs3Nzevr6+goKCvr6+vr6+vr6+vr6+vr6+vr6+vr6+vr6+vr6+vr6+5ubnAwMDPz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/JyckVFRUAAAAAAAAAAAAAAAADAwMPDw8AAACVlZX///////////////////////////////////////////////////////////////////////////////+ampoAAAASEhIXFxeNjY3q6uqbm5svLy8KCgpFRUWZmZnr6+v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9PT0+ysrL///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+pqalLS0v///////////////////////////////////////////////////////////////////////////////////9vb2+RkZH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////3Jycg4ODvHx8X9/fwAAAMPDw////////////////////////////////////////////////////////////0xMTPPz8/////n5+Xx8fEdHR/f39////////+vr60xMTGJiYvX19f///////9jY2BoaGo+Pj////////////7GxsScnJ8zMzP///////////4uLixMTE9fX1////////9/f31paWgAAAAAAAAAAAAAAABcXFxwcHEFBQfX19f///////9nZ2R8fH4uLi/z8/P///////6GhoTAwMN/f3////////5OTk21tbf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////zU1NQAAAAAAABYWFm5ubsTExPf39x0dHdXV1f///////////////////////////////////////////////////////////////////////////////3Z2dgAAAM3NzbS0tGRkZBUVFUdHR6Wlperq6v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////15eXqKiov///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////6+vr0tLS////////////////////////////////////////////////////////////////////////////////////2VlZZGRkf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////uLi4AAAAr6+vPz8/ERER8fHx////////////////////////////////////////////////////////////PT09zMzM////////////b29vPDw87+/v////////9vb2S0tLVVVV/v7+////////19fXGxsbjo6O////////////vLy8IiIis7Oz////////////i4uLExMT09PT////////////i4uLBgYGGxsbCwsLbGxs4ODgKioqY2Nj////////////2dnZHx8fi4uL/Pz8////////paWlNTU14eHh////ZGRkbW1t////////////////////////////////////////////////////////////////////////////////////////////////////////////////////UVFRbm5urq6u7+/v////////////ERER4ODg////////////////////////////////////////////////////////////////////////////////JiYmAAAAY2Nj////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Xl5eoqKi////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////tLS0QkJC////////////////////////////////////////////////////////////////////////////////////ampqkZGR////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////u7u4EBAREREQFBQU9PT3///////////////////////////////////////////////////////////////89PT0wMDDp6en////////5+flbW1s8PDzv7+/////////39/dLS0tgYGD9/f3////////X19cbGxuNjY35+fn////////Ly8soKCizs7P7+/v///////+bm5sSEhLNzc3///////////91dXUjIyPOzs7s7Oz////g4OBDQ0NeXl7v7+/////////Y2NgfHx+Li4v8/Pz///////+srKwzMzPr6+tdXV1mZmb///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8gICDQ0ND////////////////////////////////////////////////////////////////////////////g4OAFBQUAAAAICAjz8/P///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9VVVWbm5v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+0tLRMTEz///////////////////////////////////////////////////////////////////////////////////9vb2+RkZH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////zs7OwAAAAAAAHNzc/////////////////////////////////////////////////////////////r6+jIyMiYmJjAwMOnp6f////////n5+VtbWzw8PPDw8P////////f390tLS35+fv7+/v///////9fX1x0dHbKysv///////////7y8vBsbG8HBwf///////////5ubmxwcHMjIyP///////////1xcXDMzM+Li4v////////j4+DIyMmlpafX19f///////9jY2B8fH7CwsP///////////6ysrCkpKRoaGmRkZP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////yAgIODg4P///////////////////////////////////////////////////////////////////////////6ampgAAAAAAAAAAAIyMjP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1dXV5mZmf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7S0tERERP///////////////////////////////////////////////////////////////////////////////////29vb4mJif///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////a2trAAAAAAAAo6Oj////////////////////////////////////////////////////////////////UlJS6+vrampqMDAw6enp////////+fn5WlpaPDw88PDw////////9/f3QkJCfn5+////////////1tbWHBwcfn5+////////////u7u7ICAgvb29////////////oKCgExMTxsbG/////////f39XV1dNDQ06urq////////7OzsUFBQZWVl////////////3t7eDg4Os7Oz////////////rKysCgoKbW1t////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////ICAg2NjY////////////////////////////////////////////////////////////////////////////ZmZmAAAAAAAAAAAAJSUl/v7+////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Xl5eoqKi////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////tLS0RERE////////////////////////////////////////////////////////////////////////39/f////////b29viYmJ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+qqqoAAAANDQ3l5eX///////////////////////////////////////////////////////////////9TU1P09PT8/PxqamowMDDp6en////////5+flaWlpHR0f8/Pz////////h4eEiIiJ+fn7////////////W1tYdHR2Ojo7///////////+rq6sxMTG9vb3///////////+pqakRERHHx8f////////8/PxgYGBDQ0Pq6ur////////29vZWVlZwcHD6+vr////////AwMAhISGoqKj///////////9tbW1kZGT////////////////////////////////////////////////////////////////////////////////////////r6+va2tr39/f////////////////x8fHw8PD///////////////////8gICDZ2dn///////////////////////////////////////////////////////////////////////////8mJiYAAAAAAAAAAAAAAADFxcX///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9eXl6ZmZn///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+9vb1MTEz///////////////////////////////////////////////////////////////////////////////////9vb2+RkZH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Dw8EtLS1paWvv7+////////////////////////////////////////////////////////////////0dHR+np6f////z8/I6OjjU1Nenp6f////////r6+lpaWlFRUfr6+v///////+Hh4Tw8PF5eXv///////////9vb2ygoKH5+fv///////////9HR0Tc3N729vf///////////6qqqh0dHcnJyf////////z8/GdnZ0JCQuvr6/////////X19SsrK3Fxcf///////////7i4uCEhIaioqP///////52dnWZmZv///////////////////////////////////////////////////////////////////////////////////+zs7BYWFiYmJioqKtbW1vDw8FNTU/v7+zw8PMTExP///////////////////yAgINbW1v///////////////////////////////////////////////////////////////////////+Dg4AUFBQAAAAAAAAAAAAAAAExMTP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////15eXpubm////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7W1tUJCQv///////////////////////////////////////////////////////////////////////////////////29vb4GBgf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Pz8PDw8x8fH////////////jIyMMDAw6enp////////+vr6WlpaYGBg8fHx////////5ubmIyMjbm5u////////////3NzcJycnmJiY+fn5////////u7u7EhISubm5////////////q6urKysr5OTk/////////Pz8ZWVlOjo66+vr////////5+fnNTU1b29v+vr6////////u7u7ICAgpKSk////b29vYmJi////////////////////////////////////////////////////////////////////////////////////0dHRKioq/v7+aWlpbW1t8vLyQ0ND4eHhKysr8vLy////////////////////ICAg2tra////////////////////////////////////////////////////////////////////////uLi4DQ0NAAAAAAAAAAAAFBQUb29v////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////aWlpkpKS////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////urq6PDw8////////////////////////////////////////////////////////////////////////////////////enp6hoaG////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////29vYmJiYRERG9vb3////////8/PxqamowMDDp6en////////6+vpZWVk6Ojri4uL////////y8vJXV1dra2v29vb////////m5uYmJiZ3d3f5+fn////////GxsYnJye6urr///////////+srKwvLy/k5OT////////6+vphYWEvLy/s7Oz////////f399FRUVsbGz6+vr////////U1NQbGxulpaVkZGRdXV3////////////////////////////////////////////////////////////////T09Pa2tr////////////Ly8slJSX///90dHR4eHj09PQZGRlFRUV0dHT///////////////////////8rKyvQ0ND////////////////////////////////////////////////////////////////////////////w8PC+vr48PDxvb2/09PT///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9jY2OSkpL///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+0tLQ8PDz///////////////////////////////////////////////////////////////////////////////////90dHSBgYH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////b29hoaGktLSwwMDL29vf////////z8/JGRkTQ0NOrq6v////////v7+1lZWTo6OvLy8v////////v7+z8/P2pqav///////////9ra2ioqKnZ2dvn5+f///////9zc3CkpKbu7u////////////6ysrB8fH8rKyv////////n5+WVlZTQ0NOHh4f////////z8/EBAQFxcXPr6+v///////8TExBMTEwQEBF1dXf///////////////////////////////////////////////////////8/PzzU1NQQEBAMDAy4uLtPT0////9fX1wEBAR8fHwoKCtTU1PX19RYWFgsLCzc3N/b29v///////////////////yQkJNDQ0P///////////////////////////////////////////////////////////////////////////////////2xsbJiYmP////////////////////////////////////////n5+VFRUYCAgL6+vvr6+v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////15eXpKSkv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////6SkpDw8PP///////////////////////////////////////////////////////////////////////////////////29vb4GBgf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////v7+UlJS6enprq6uExMTvb29////////////oqKiJCQk6urq////////+/v7aGhoOTk54+Pj////////5OTkLy8vampq6enp////////5eXlKSkpdnZ2+fn5////////s7OzFRUVvLy8/////////v7+rKysCwsLvb29////////+vr6bW1tOjo69/f3////////5eXlMzMzXFxc+/v7////////yMjIDw8PXV1d////////////////////////////////////////////////////3NzcISEhAAAAXFxcSkpKAAAAFRUV8PDwz8/PExMTvr6+JycnycnJ9fX1NDQ04+PjKCgowMDA////////////////////ICAg0NDQ////////////////////////////////////////////////////////////////////////////////////hISEi4uL////////////////////////////////////////7+/vDw8PAAAAAAAAFhYWV1dXtra2+/v7////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////a2trkpKS////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wcHBPDw8////////////////////////////////////////////////////////////////////////////////////fHx8gYGB////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////39/clJSXo6Oj///+xsbETExO9vb3///////////+YmJgjIyPn5+f////////8/PxnZ2cqKiry8vL////////09PRaWlppaWn////////////m5uYyMjKUlJT///////////+/v78UFBS+vr7////////+/v6urq4jIyPZ2dn////////9/f1sbGxNTU339/f////////v7+85OTmKior7+/v///////9iYmJdXV3///////////////////////////////////////////////////96enoAAACFhYX+/v78/PxDQ0MAAACfn5/Z2dkjIyPT09MfHx+srKzk5OQtLS3CwsIXFxfIyMj///////////////////8wMDCoqKj////////////////////////////////g4ODIyMj19fXx8fHx8fHx8fHx8fHx8fHLy8u4uLjKysq3t7fS0tJ4eHhMTEzIyMjIyMjHx8e3t7eqqqq4uLi0tLSoqKioqKioqKiKiooBAQEAAAAAAAAAAAAAAAAAAAAmJiZzc3O1tbXx8fH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9hYWGSkpL///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+3t7c8PDz///////////////////////////////////////////////////////////////////////////////////9ycnKBgYH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////b29iAgIOjo6P///////7GxsRISEq+vr/////////39/YODgyUlJejo6P////////z8/HV1dSoqKuTk5P////////z8/GVlZV5eXv///////////+bm5jQ0NHx8fPr6+v///////729vRUVFbGxsf///////////66urioqKtnZ2f////////7+/mxsbEVFReLi4v////////Dw8Dk5OVtbW/z8/P///3R0dF1dXf///////////////////////////////////////////////////ygoKAsLC+Hh4f///////6GhoQAAAJ2dndzc3Dk5OTs7O09PT/Dw8Pf3909PTzk5OXx8fP39/f///////////////////y4uLikpKUFBQTQ0NBUVFUFBQTMzMzIyMjIyMjU1NT09PTk5ORAQEAsLCz8/PzExMSkpKTk5OS4uLjk5OTs7OxEREQICAgICAgAAAAAAABwcHAAAAAAAAAAAAA4ODhEREU1NTTs7OycnJwgICAAAAAAAAAAAAAAAAAAAAAAAAAAAAAsLCzo6OtnZ2f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////15eXltbW8XFxcXFxcXFxcXFxcXFxcXFxZOTk7i4uKamppGRkYaGhpycnLW1tbW1ta2tra6urrW1tZCQkJCQkLGxsaampqampqampqampqWlpaWlpaWlpaWlpaWlpaWlpaWlpYyMjFFRUTw8PP///////////////////////////////////////////////////////////////////////+Tk5IaGhoaGhjIyMkNDQ4aGhoaGhubm5v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8vLyCwsLYmJi0dHR0dHRycnJPj4+CQkJpaWlwsLCwsLCwsLCODg4ERERrq6uwsLCwsLCv7+/HR0dJiYmtbW1wsLCwsLCr6+vAAAAUVFRubm5wsLCwsLCkJCQAAAAWlpavr6+wsLCwsLCY2NjEBAQk5OTwsLCwsLCwsLCREREBwcHq6urwsLCwsLCsrKyCAgIJCQksbGxvLy8o6OjfX19AAAAW1tbpKSkQ0NDXV1d////////////////////////////////////////////////6+vrCwsLSkpK/v7+/////////f39+fn5/Pz8////////////////////////////////////////////////////////////MDAwz8/P/////f39+vr6/////f39/f39/f39/f39////////+vr6+vr6/////f39/Pz8/v7+/f39////////+/v7+fn5pKSkHBwc9/f3/Pz8+fn5+fn5+fn5+vr6+/v7/////f39/Pz85OTkCAgIAAAAAAAAAAAACgoKPDw8k5OT5+fn/f39////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////w8PDXl5ePDw8WlpaEBAQAAAAAAAAAAAAAAAADg4ODg4OAAAAAAAAAAAAAAAAJSUlNDQ0AAAAAAAAHR0dAAAAAAAAAAAAAAAAAAAAAAAAAAAALi4uS0tLS0tLGxsbFxcXioqKkJCQlJSUyMjI////////////////////////////////////////////////////////////////////////3d3dCQkJAAAAAAAAAAAAAAAAHh4e+Pj4////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+/v6VlZVUVFQvLy8vLy8vLy83Nzc/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8nJycAAAAaGho/Pz8UFBQAAAAdHR0/Pz8/Pz8/Pz8PDw8AAAAxMTE/Pz8/Pz87OzsAAAAVFRU/Pz8/Pz8/Pz82NjYAAAAKCgpOTk5OTk5bW1sVFRUAAAAAAABdXV3////////////////+/v7+/v7+/v7+/v7+/v7+/v7////////Hx8cAAABMTEz///////////////////////////////////////////////////////////////////////////////////8wMDDQ0ND////////////////////////////////////////////////////////////////////////////////////ExMQeHh78/Pz////////////////////////////////////w8PAREREAAAAyMjKIiIjIyMj+/v7///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9iYmJubm78/Pz8/Pz8/Pz9/f39/f38/Pz8/Pz8/Pz8/Pz+/v7+/v78/Pz8/Pz9/f38/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz+/v7///////+RkZFvb2/////////////////////////////////////////////////////////////////////////////////////////+/v5GRkYAAAAAAAAAAAAAAABnZ2f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////zo6OsbGxv///+fn5ykpKWJiYv39/f///////76+vhAQEHR0dP///////////7GxsRcXF9nZ2f///////////2trayMjI/Ly8v////////Hx8RgYGAAAAF1dXf///////+rq6l5eXjc3Nx4eHh4eHh4eHhYWFh8fH3Z2dv7+/re3twAAAExMTP///////////////////////////////////////////////////////////////////////////////////zAwMNDQ0P///////////////////////////////////////////////////////////////////////////////////+Pj4yEhIfz8/P///////////////////////////////////////7m5udjY2P///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////2JiYp6env///////////////////////////////////////////////////////////////////////////////////////////////5GRkW9vb////////////////////////////////////////////////////////////////////////////////////////////6WlpQAAAAAAAAAAAAAAALe3t////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Ojo6w8PD////////8/PzLS0tZWVl+/v7////////zc3NJCQkoaGh////////////wMDAJycn2NjY////////9fX1VVVVTExM5+fn////////1NTUFBQUXV1d////////+vr6ZWVlZWVlZWVlZWVlSUlJJSUlJSUlXV1d+Pj4uLi4AAAATExM////////////////////////////////////////////////////////////////////////////////////MDAw0NDQ////////////////////////////////////////////////////////////////////////////////////8fHxIyMj/Pz8////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////YmJinp6e////////////////////////////////////////////////////////////////////////////////////////////////kZGRb29v////////////////////////////////////////////////////////////////////////////////////////////4+PjEhISAAAAAAAALCws+fn5////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////86Ojo6Ojr4+Pj////////l5eU4ODhlZWX7+/v////////Nzc0zMzOgoKD///////////+5ubkcHBzY2Nj////////19fVGRkZOTk74+Pj///////9kZGRbW1v////////////////////////////////////////////////S0tIGBgZMTEz///////////////////////////////////////////////////////////////////////////////////8wMDDCwsL///////////////////////////////////////////////////////////////////////////////////////8zMzPp6en///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9iYmKenp7///////////////////////////////////////////////////////////////////////////////////////////////+RkZFtbW3///////////////////////////////////////////////////////////////////////////////////////////////9kZGQAAAAAAABoaGj///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////zo6OgAAAFZWVvb29v///////+Xl5Tw8PGVlZfv7+////////+zs7CEhIaCgoP///////////5ubmx0dHdjY2P////////X19VhYWDExMeXl5f///2RkZF1dXf///////////////////////////////////////////////+vr6wsLC0xMTP////////////////z8/P7+/v///////////////////////////////////////////////////////////zAwMM3Nzf///////////////////////////////////////////////////////////////////////////////////////ykpKc3Nzf///////////////////////////////////////////////////////////////////////////////////////////+zs7ISEhO/v7////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////2JiYpGRkf///////////////////////////////////////////////////////////////////////////////////////////////56enmJiYv///////////////////////////////////////////////////////////////////////////////////////////////6enpwAAAAoKCt7e3v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////RkZGlZWVOzs7VFRU+vr6////////5OTkOzs7VVVV+/v7////////zMzMFRUVn5+f////////////i4uLISEh2NjY////////////enp6TU1N+Pj4Z2dnTU1N////////////////////////////////////////////////////KioqFBQU9fX1////////qampJiYmpqam////////////////////////////////////////////////////////////MDAwxMTE////////////////////////////////////////////////////////////////////////////////////////MjIy19fX////////////////////////////////////////////////////////////////////////////////////////////x8fHAAAAqKio////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////YmJil5eX////////////////////////////////////////////////////////////////////////+/v7/v7++vr6+vr69/f3+/v7jY2NbGxs////////////////////////////////////////////////////////////////////////////////////////////////6urqCgoKSUlJ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8+Pj67u7v29vZtbW1KSkr29vb////////z8/M8PDxWVlb6+vr////////Ly8sWFhafn5////////////+np6ceHh7Y2Nj///////////93d3dNTU06OjpSUlL///////////////////////////////////////////////////9qamoAAAChoaH////7+/tBQUEAAADAwMD///////////////////////////////////////////////////////////8wMDDMzMz///////////////////////////////////////////////////////////////////////////////////////8qKirKysr////////////////////////////////////////////////////////////////////////////////////////////W1tYAAACgoKD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9nZ2cLCwsvLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8kJCQuLi4jIyMjIyMdHR0oKCgRERFoaGj////////////////09PStra2Ojo6Ojo6Dg4N9fX2Kiop+fn5wcHBubm5ubm5ubm5ubm5ubm5ubm54eHiAgICAgICAgICAgICAgIAQEBApKSl+fn5ubm56enpjY2N0dHRycnJvb297e3uQkJD///////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////0VFRZSUlOnp6c7OzhkZGUlJSdfX1+np6enp6a2trQAAAFVVVdvb2+np6dnZ2YKCggQEBG5ubtnZ2dnZ2dnZ2SgoKBwcHLS0tNXV1crKysDAwAYGBgAAAFhYWP///////////////////////////////////////////////////9fX1wYGBggICCwsLCIiIgAAABkZGfHx8f///////////////////////////////////////////////////////////zU1NcDAwP///////////////////////////////////////////////////////////////////////////////////////2pqapaWlv///////////////////////////////////////////////////////////////////////////////////////////9HR0QAAAKampv////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////T09MLCwpOTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk6CgoKWlpZOTk7KystLS0tPT097e3t7e3ubm5vb29v////////////////n5+bOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs8LCwtLS0tLS0tLS0tLS0tLS0tLS0urq6v///////////////////9jY2NjY2Pj4+NLS0vDw8N7e3t/f39vb29PT0/Ly8v///////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////fn5+GBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYJycnJycnJycnJCQkKysrJycnNTU1KSkpf39/////////////////////////////////////////////////////////oqKiJycnFxcXGBgYNjY21tbW////////////////////////////////////////////////////////////////MDAwxsbG////////////////////////////////////////////////////////////////////////////////////////b29vkZGR////////////////////////////////////////////////////////////////////////////////////////////1tbWAAAAm5ub////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////39/f8/Pz///////////////////////////////////////////////////////////////////////////+pqanp6en///////////////////////////////////////////////////////////////////////////////////////9ra2uMjIz///////////////////////////////////////////////////////////////////////////////////////////+hoaEAAACrq6v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////f39/n5+ff39/39/f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////3x8fH19ff///////////////////////////////////////////////////////////////////////////////+Dg4HJycnFxcT4+PgAAAEVFRXFxcXFxcc3Nzf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////kZGRICAgICAgGBgYGhoaGBgYLCwsMjIyLy8vnZ2d////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////tLS0TExM////////////////////////////////////////////////////////////////////////////////wcHBEBAQGBgYCAgIAAAACgoKFhYWGBgYfn5+////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////6+vp2dnYDAwMAAAAAAAAAAAAAAAAAAAAAAACMjIz///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+0tLRMTEz////////////////////////////////////////////////////////////////////////////////////w8PD39/epqakAAACUlJT19fX39/f6+vr///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////5mZmQMDAwAAAAAAAAAAAAAAAAAAAIyMjP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7S0tD09Pf///////////////////////////////////////////////////////////////////////////////////////////6enpwAAAIyMjP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////w8PDERERAAAAAAAAAAAAAAAAGhoaZ2dn39/f////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////6urqCAgI/f39////////////////////////////////////////////////////////////////////////////////////////1tbWAAAAm5ub////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////l5eUwMDAAAAAAAABdXV26urpsbGw2NjZTU1Ojo6Pd3d3////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////09PQDAwP9/f3///////////////////////////////////////////////////////////////////////////////////////+np6cAAACMjIz///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////f3911dXSQkJOfn5/////////r6+qysrHl5eS4uLkVFRaSkpOvr6/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////r6+h8fH/39/f///////////////////////////////////////////////////////////////////////////////////////6enpwAAAIyMjP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+/v79/f3////////////////////////9vb2sbGxZGRkJycnW1tbzs7O////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////MzMz/f39////////////////////////////////////////////////////////////////////////////////////////09PTGxsbsrKy////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+/v7y8vKmpqZSUlI4ODh6enrX19f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9DQ0PAwMD////////////////////////////////////////////////////////////////////////////////////////+/v75+fn///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////39/djY2I2NjTQ0NDIyMoyMjN7e3v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////zMzM76+vv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Pz8z8/PdHR0FRUVQEBAnZ2d7e3t////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Q0NDvr6+////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9/f2zs7NRUVEhISFgYGCvr6/+/v7///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+BgYGurq7///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Hh4ZKSklJSUiIiImBgYN7e3v7+/v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4KCgn9/f////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7+/voKCgMzMzMzMznZ2d3d3d////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////goKCf39/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Ozs5zc3MnJydNTU2ioqL7+/v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+CgoJ/f3////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////r6+rS0tD8/PygoKIKCgsvLy/r6+v///////////////////////////////////////////////////////////////////////////////////////////////////////////////7Ozs2xsbP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7Ozsfn5+JCQkKSkpi4uL3Nzc////////////////////////////////////////////////////////////////////////////////////////////////////////wcHBQEBA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4+Pi2trZdXV0SEhJaWlqpqanx8fH////////////////////////////////////////////////////////////////////////////////////////////BwcE7Ozv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+zs7Kenp0xMTBoaGklJScbGxvn5+f///////////////////////////////////////////////////////////////////////////////8HBwQEBAf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4eHhe3t7KSkpHx8fh4eH19fX////////////////////////////////////////////////////////////////////////5eXlAgIC////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////JyclaWloNDQ1HR0eoqKjy8vL///////////////////////////////////////////////////////////////8DAwP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+vr64qKijs7OxkZGVpaWra2tvLy8v///////////////////////////////////////////////////wMDA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4eHhe3t7ISEhGBgYdXV12NjY////////////////////////////////////////////Ghoa9vb2////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////19fW8vLxmZmYaGhpERESsrKzi4uL///////////////////////////////9bW1vo6Oj////////////////////////////////AwMDAwMD////////X19ewsLC+vr729vb///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////X19ZWVlT4+PhUVFU1NTdLS0v///////////////////////////////////////////////////////////4mJiQ0NDQMDA3p6ev///ywsLBAQEBERES4uLvDw8P///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////0NDQfn5+tra2////////////////////////////////////////////////////////9PT0FRUVvb29iYmJFRUV9PT0FhYWpqam3t7eJSUli4uL////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////l5eUSEhLz8/Pi4uIEBATKysoWFhasrKz///+FhYU8PDz///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Xl5RwcHP///////xwcHLGxsRYWFqysrP///4uLizc3N////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////5eXlHBwc////////HBwc5eXlFhYWrKys////i4uLNzc3////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////x8fHk5OT////////////////////k5OTx8fHl5eUcHBz////d3d0BAQHl5eUWFhasrKz///99fX1TU1P///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1dXVxUVFf///////////////7OzswQEBKOjo+rq6hcXF6qqqoqKijExMf7+/hYWFmpqaoaGhgkJCcDAwP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////gICAAAAA0dHR////////////cHBwBAQE3d3d////p6enGBgYJycnt7e3////e3t7MTExR0dHv7+//v7+////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AwMAAAACSkpL///////////9BQUEiIiL////////////9/f39/f3////////////9/f3+/v7///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7+/hEREUJCQurq6tzc3MLCwgAAAFJSUv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////UFBQAAAAAAAAAAAAAAAAAAAAkpKS////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+BgYEAAAA3NzdXV1cODg4AAADQ0ND///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////76+vgAAALGxsf7+/jExMQ8PD/X19f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8PDwAwMDgYGB4ODgAAAAT09P////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////89PT1GRkaRkZEAAACCgoL///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////2FhYQwMDBQUFAEBAcXFxf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////sLCwAAAAAAAAEhIS////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////g4OAAAAAAAABSUlL///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////v7+xUVFQAAAJKSkv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////pKSkf39/6urq////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAA=\"><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-family: 'MS Shell Dlg 2';\">&nbsp;</div><div style=\"font-family: 'MS Shell Dlg 2';\">L=Loa: Length over all (m).</div><div style=\"font-family: 'MS Shell Dlg 2';\">B: Breadth (m).</div><div style=\"font-family: 'MS Shell Dlg 2';\">A_T: Transverse projected area (m<sup>2</sup>).</div><div style=\"font-family: 'MS Shell Dlg 2';\">A_L: Lateral projected area (m<sup>2</sup>).</div><div style=\"font-family: 'MS Shell Dlg 2';\">A_0D: Lateral projected area of superstructure (A_ss) and LNG tanks, containers etc. on the deck (m<sup>2</sup>).</div><div style=\"font-family: 'MS Shell Dlg 2';\">C: Distance from midship section to center of lateral projected area (m).</div><div style=\"font-family: 'MS Shell Dlg 2';\">C_BR: Distance from midship section to center of the A_ss (m).</div><div style=\"font-family: 'MS Shell Dlg 2';\">H_BR:Height to top of superstructure (bridge) (m).</div><div style=\"font-family: 'MS Shell Dlg 2';\">H_C: Height to center of lateral projected area (m).</div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-family: 'MS Shell Dlg 2';\"><u><br></u></div><div style=\"font-family: 'MS Shell Dlg 2';\"><u>Limitations:</u></div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-family: 'MS Shell Dlg 2';\">The present method is more reliable than the Isherwood method due to it takes into account a greater number of examples and different types of ships. However this method has the following limitations:</div><div style=\"font-family: 'MS Shell Dlg 2';\"><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>- The type of ship will be tanker, cargo ship, container ship, passenger ship, fishing boat, research vessel, tug boat, LNG carrier, PCC, <span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Naval&nbsp;vessel or speed boat.</div><div style=\"font-family: 'MS Shell Dlg 2';\"><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>- The height of wind force is take into account in the center of lateral projected area.&nbsp;</div><div style=\"font-family: 'MS Shell Dlg 2';\"><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>- C<sub>k</sub> is not estimated according to this method. It is calculated taking into account the real force and moment of this model.</div><div><div><u>References:</u></div><div><u><br></u></div><div><span style=\"font-family: 'MS Shell Dlg 2';\">[Fujiwara] T. Fujiwara, M. Ueno, T. Nimura, \"An estimation method of wind forces and moments acting on ships\", Journal of the Society of Naval Architects of Japan - January 1998,</span><a href=\"http://dx.doi.org/10.2534/jjasnaoe1968.1998.77\" style=\"font-family: 'MS Shell Dlg 2';\">http://dx.doi.org/10.2534/jjasnaoe1968.1998.77</a></div></div><div><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div><br></div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><u>Further development:</u></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\">- Wind profile</div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><br></div></body></html>"));
    end ShipWind;
    annotation(
      Icon(graphics = {Polygon(origin = {0, 3}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-56, 31}, {-56, 7}, {-78, 7}, {-78, -13}, {-62, -15}, {-56, -31}, {62, -31}, {70, -29}, {74, -25}, {76, -23}, {74, -19}, {70, -15}, {62, -13}, {78, 7}, {-42, 7}, {-42, 31}, {-56, 31}})}));
  end Ship;

  package Propulsion "Components relative to ship propulsion"
    model Propeller1Q "Wageningen B-Series 1Q Propeller model"
      parameter Real Diameter(unit = "m") = 4 "Propeller Diameter [m]" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Real Z = 4 "Number of blades" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Real P_D = 1 "Pitch-diameter ratio" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Real Ae_Ao = 0.3 "Blade area ratio" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Modelica.SIunits.Density Density_Prop = 7600 "Propeller density [kg/m3]" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Real Inertia(unit = "kg.m2") = 0.0002744*Ae_Ao*(Ae_Ao + 3)*Density_Prop*Diameter^5 "Inertia moment of propeller" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Real Add_Inertia(unit = "kg.m2") = 0.3*Inertia "Added (water) Inertia moment of propeller" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Real w_ini(unit = "rad/s") = 0.1 "initial speed" annotation(
        Dialog(tab = "Initialization", group = "Speed"));
      parameter Modelica.SIunits.Length Lpp = 100 "Length between perpendiculars [m]" annotation(
        Dialog(group = "Ship parameters"));
      parameter Modelica.SIunits.Length B = 20 "Moulded beam [m]" annotation(
        Dialog(group = "Ship parameters"));
      parameter Real Cb = 0.693 "Ship block coefficient [-]" annotation(
        Dialog(group = "Ship parameters"));
      parameter Real Cp = 0.75 "Ship prismatic coefficient [-]" annotation(
        Dialog(group = "Ship parameters"));
      parameter Real lcb = -0.75 "%lcb from Lpp/2 (0.75% Aft -> -0.75), positive fwd" annotation(
        Dialog(group = "Ship parameters"));
      parameter Real Fa = -2 "Aft body factor [-2 (U shape),0 (N shape),+2 (V shape)]" annotation(
        Dialog(group = "Ship parameters"));
      parameter Modelica.SIunits.Length Rudder_distance = Diameter*1.2 "Distance from propeller to rudder denter of gravity" annotation(
        Dialog(group = "Rudder interaction"));
      parameter Real WakeFraction = 0.1*B/Lpp + 0.149 + (((0.05*B)/(Lpp)) + 0.449)/((585 - 5027*B/Lpp + 11700*((B/Lpp)^2))*(0.98 - Cb)^3 + 1) + 0.025*Fa/(100*(Cb - 0.7)^2 + 1) - 0.18 + (0.00756/((Diameter/Lpp) + 0.002)) "Harvald 1983 - Single screw" annotation(
        Dialog(tab = "Factors", group = "Propeller-hull factors"));
      parameter Real ThrustDeduction = (0.625*B/Lpp + 0.08) + (0.165 - 0.25*B/Lpp)/((525 - 8060*B/Lpp + 20300*(B/Lpp)^2)*(0.98 - Cb)^3 + 1) - 0.01*Fa + 2*(Diameter/Lpp - 0.04) "Harvald 1983 - Single screw" annotation(
        Dialog(tab = "Factors", group = "Propeller-hull factors"));
      parameter Real RotativeRelative = 0.9922 - 0.05908*Ae_Ao + 0.07424*(Cp - 0.0225*lcb) "Holtrop 1988a - Single screw" annotation(
        Dialog(tab = "Factors", group = "Propeller-hull factors"));
      parameter Boolean AnimationForces = true "Show force vectors on 3D animation" annotation(
        Dialog(tab = "Visualization", group = "3D Animation"));
      //parameter Real ShaftEfficiency=0.98 "0.98 direct coupling / 0.96-0.97 with gearbox" annotation(Dialog(tab = "Factors", group = "Efficiencies"));
      Modelica.SIunits.Velocity ShipSpeed "Ship speed [m/s]";
      Modelica.Mechanics.Rotational.Sources.Torque torque annotation(
        Placement(visible = true, transformation(origin = {-50, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Components.Inertia inertia(J = Inertia, w(fixed = false, start = w_ini)) annotation(
        Placement(visible = true, transformation(origin = {34, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange annotation(
        Placement(visible = true, transformation(origin = {100, 34}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
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
      Real Thrust(unit = "N");
      Real ShaftPower(unit = "W");
      // Parameters of interaction with rudder obtained from: Brix, J.E., 1993. Manoeuvring Technical Manual. Seehafen-Verl., Hamburg
      Real C_th;
      Modelica.SIunits.Velocity V_inf;
      Modelica.SIunits.Length r_inf;
      Modelica.SIunits.Length r_x;
      Modelica.SIunits.Length V_x;
      Modelica.SIunits.Length Delta_r;
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(
        Placement(visible = true, transformation(origin = {100, 2}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, 40}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorque ForceTorque_Ship(animation = AnimationForces, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_b) annotation(
        Placement(visible = true, transformation(origin = {26, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Components.Inertia added_inertia(J = Add_Inertia) annotation(
        Placement(visible = true, transformation(origin = {-4, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      output Modelica.Blocks.Interfaces.RealOutput Propeller_flow_diameter "Diameter of the propeller water flow reaching to rudder [m]" annotation(
        Placement(visible = true, transformation(origin = {-94, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-101, 40}, extent = {{9, -9}, {-9, 9}}, rotation = 0)));
      output Modelica.Blocks.Interfaces.RealOutput Propeller_speed "Speed of water flow inside the Propeller_flow_diameter [m/s]" annotation(
        Placement(visible = true, transformation(origin = {-94, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-101, -8.88178e-16}, extent = {{9, -9}, {-9, 9}}, rotation = 0)));
      ShipSIM.SubComponents.ApparentSpeedXY apparentSpeedXY annotation(
        Placement(visible = true, transformation(origin = {28, -70}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape PropellerVisualizer(color = {255, 0, 0}, height = Diameter, length = Diameter/10, shapeType = "cylinder", width = Diameter) annotation(
        Placement(visible = true, transformation(origin = {24, -36}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      output Modelica.Blocks.Interfaces.RealOutput Wake_Fraction "Wake fraction coefficient" annotation(
        Placement(transformation(origin = {-94, -30}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-100, -40}, extent = {{8, -8}, {-8, 8}}, rotation = -0)));
    protected
      outer ShipSIM.Components.Environment environment;
    equation
      Wake_Fraction = WakeFraction;
// Calculate apparent speed including currents
      apparentSpeedXY.WorldSpeed = environment.CurrentVector;
      ShipSpeed = apparentSpeedXY.SpeedLocal[1];
//Calculation of propeller openwater characteristic
      AdvanceSpeed = ShipSpeed*(1 - WakeFraction);
      J = AdvanceSpeed/(der(flange.phi)*(1/(2*Modelica.Constants.pi))*Diameter) "Advance ratio equation";
      Kt = Thrust_Kt/(environment.SeaDensity*(der(flange.phi)*(1/(2*Modelica.Constants.pi)))^2*Diameter^4) "Thrust coeficient equation";
      Kq = Torque_Kq/(environment.SeaDensity*(der(flange.phi)*(1/(2*Modelica.Constants.pi)))^2*Diameter^5) "Torque coeficient equation";
      Nu_zero = J/(2*Modelica.Constants.pi)*(Kt/Kq) "Open water efficiency";
      (Kt, Kq) = ShipSIM.Functions.PropellerFunctions.WageningenB_Kt_Kq(J, P_D, Ae_Ao, Z);
/*
        This model calculates the following efficiencies:
        - Nu_b: propeller efficiency behind hull
        - Nu_hull: hull efficiency
        - Nu_propulsive: overall propulsive efficiency
        */
//Efficiencies
      Nu_b = Nu_zero*RotativeRelative;
      Nu_hull = (1 - ThrustDeduction)/(1 - WakeFraction);
      Nu_propulsive = Nu_b*Nu_hull;
//Thrust and torque
      Thrust = Thrust_Kt*(1 - ThrustDeduction);
      ThrustPower = ShaftPower*Nu_propulsive;
      rpm = der(flange.phi)*(1/(2*Modelica.Constants.pi))*60;
      ThrustPower = Thrust*ShipSpeed;
      ShaftPower = der(flange.phi)*torque.tau;
      ForceTorque_Ship.force = {Thrust, 0, 0};
      ForceTorque_Ship.torque = {torque.tau, 0, 0};
//Rudder interaction: Brix, J.E., 1993. Manoeuvring Technical Manual. Seehafen-Verl., Hamburg
      C_th = (8*(der(flange.phi))^2*Diameter^2*Kt/(Modelica.Constants.pi*AdvanceSpeed^2))^0.5;
      V_inf = AdvanceSpeed*(1 + C_th)^0.5;
      r_inf = (Diameter/2)*(0.5*(1 + AdvanceSpeed/V_inf))^0.5;
      r_x = (Diameter/2)*(0.14*(r_inf/(Diameter/2))^3 + (r_inf/(Diameter/2))*(Rudder_distance/(Diameter/2))^1.5)/(0.14*(r_inf/(Diameter/2))^3 + (Rudder_distance/(Diameter/2))^1.5);
      V_x = V_inf*(r_inf/r_x)^2;
// turbulence correction and final result
      Delta_r = 0.15*Rudder_distance*((V_inf*r_inf^2 - AdvanceSpeed*r_x^2)/(V_inf*r_inf^2 + AdvanceSpeed*r_x^2));
      Propeller_flow_diameter = 2*(r_x + Delta_r);
      Propeller_speed = (V_x - AdvanceSpeed)*(r_x^2/(r_x + Delta_r)^2) + AdvanceSpeed;
      connect(flange, inertia.flange_b) annotation(
        Line(points = {{100, 34}, {58, 34}, {58, 66}, {44, 66}}));
      connect(ForceTorque_Ship.frame_b, frame_a) annotation(
        Line(points = {{36, 0}, {59, 0}, {59, 2}, {100, 2}}, color = {95, 95, 95}));
      connect(added_inertia.flange_b, inertia.flange_a) annotation(
        Line(points = {{6, 66}, {24, 66}}));
      connect(torque.flange, added_inertia.flange_a) annotation(
        Line(points = {{-40, 66}, {-14, 66}}));
//Assert documentation
      assert(J > 0, "!W0001 [Propeller1Q] (" + getInstanceName() + "): Advace ratio " + String(J) + " must be positive!", level = AssertionLevel.warning);
      assert(Z >= 2 and Z <= 7, "!W0002 [Propeller1Q] (" + getInstanceName() + "): Number of blades must be between 2 and 7", level = AssertionLevel.warning);
      assert(Ae_Ao >= 0.3 and Ae_Ao <= 1.05, "!W0003 [Propeller1Q] (" + getInstanceName() + "): Expanded area ratio must be between 0.3 and 1.05", level = AssertionLevel.warning);
      assert(P_D >= 0.5 and P_D <= 1.4, "!W0004 [Propeller1Q] (" + getInstanceName() + "): Pitch-diameter ratio must be between 0.5 and 1.4", level = AssertionLevel.warning);
      connect(frame_a, apparentSpeedXY.frame_a) annotation(
        Line(points = {{100, 2}, {64, 2}, {64, -70}, {38, -70}}));
      connect(PropellerVisualizer.frame_a, frame_a) annotation(
        Line(points = {{34, -36}, {64, -36}, {64, 2}, {100, 2}}, color = {95, 95, 95}));
      annotation(
        Icon(graphics = {Text(origin = {0, 70}, extent = {{-94, 10}, {94, -10}}, textString = "B-Series"), Polygon(origin = {23, 0}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{15, 12}, {15, 26}, {5, 48}, {-7, 60}, {-13, 58}, {-15, 52}, {-15, 34}, {-1, 12}, {-1, -12}, {-15, -34}, {-15, -52}, {-13, -58}, {-7, -60}, {5, -48}, {15, -26}, {15, 12}}, smooth = Smooth.Bezier), Polygon(origin = {26, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, points = {{16, 12}, {16, -12}, {-6, -12}, {-12, -8}, {-16, -4}, {-16, 4}, {-12, 8}, {-6, 12}, {16, 12}}), Ellipse(origin = {24, 0}, rotation = -45, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{2, 22}, {-2, -22}}), Rectangle(origin = {71, 0}, fillColor = {200, 200, 200}, fillPattern = FillPattern.CrossDiag, extent = {{29, 6}, {-29, -6}}), Line(origin = {-30, 40}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-29.9957, 19.9494}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-30, -0.101291}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-30, -19.8062}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-29.6543, -39.8569}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Rectangle(origin = {-65, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Text(origin = {-65, -68}, extent = {{-17, 14}, {17, -14}}, textString = "1Q")}),
        Diagram,
        Documentation(info = "<html><head></head><body><div>Ship propeller model (1 quadrant) based on Kt, Kq curves according to Wageningen B-Series curves.&nbsp;</div><div>This model has incorporated empirical values of the following parameters:</div><div>- Rotative relative efficiency</div><div>- Thrust deduction coefficient</div><div>- Wake factor coefficient</div><div><br></div><div>Output is the thrust force of the propeller and mechanical torque on the shaft.</div><div><br></div><div><i><b>NOTE</b></i>:</div><div>Torque does not include shaft efficiency.</div><div>Thrust output value is effective thrust to be compared directly to the resistance curve.</div><div><br></div><div><u>Limitations</u>:</div><div><br></div><div>2 &lt;= Z &lt;= 7 (number of blades)</div><div>0.30 &lt;= Ae/Ao &lt;= 1.05 (expaded area ratio)</div><div>0.5 &lt;= P/D &lt;= 1.40 (pitch-diameter ratio)</div><div>Rn &lt;= 2x10^6 (Reynolds number)</div><div><br></div><div><u>References</u>:</div><div><br></div><div><span style=\"font-family: 'MS Shell Dlg 2';\">[Oosterveld1975] M.W.C. Oosterveld and P. Van Oossanen, \"Further computer-analyzed data of the wageningen B-screw series\", International Shipbuilding Progress, Vol. 22, No. 251, July 1975</span></div><p>[Harvald1983]&nbsp;Harvald S.A., \"Resistance and Propulsion of Ships\", Wiley 1983, ISBN 0-89464-754-7</p><p>[Holtrop1984]&nbsp;Holtrop J., \"A Statistical Re-analysis of Resistance and Propulsion Data\", ISP, Vol.31</p><p>[Brix1993]<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Brix J., \"Manoeuvring technical manual\", Hamburg: Seehafen Verlag</p><p><u>Know issues</u>:</p><div>- Only works with forward speed and J&gt;0. The other three quadrants are not developed.</div><div><br></div><div><u>Further development</u>:</div><div><br></div><div>- Include corrections for Rn &gt; 2x10^6&nbsp;</div><div>- Cavitation warning</div></body></html>", revisions = "<html><head></head><body><div>Rev. 1.3&nbsp;<span style=\"font-size: 12px;\">[BPuente]&nbsp;</span>(17/12/2023): Added wake fraction coefficient output to the rudder</div><div>Rev. 1.2&nbsp;<span style=\"font-size: 12px;\">[BPuente]</span>&nbsp;(06/05/2023): Added animation forces selector.</div><div><span style=\"font-size: 12px;\">Rev. 1.1&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-size: 12px;\">(10/04/2023): Full environment support. Added propeller 3D drawing.</span></div><div><span style=\"font-size: 12px;\">Rev. 1.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-size: 12px;\">(06/03/2023): Full support with sea current.</span></div><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.2&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(01/03/2023): Added assert documentation.</span></div><div>Rev. 0.1&nbsp;<span style=\"font-size: 12px;\">[BPuente]</span>&nbsp;(14/02/2023): Major changes</div><div>Rev. 0.0&nbsp;<span style=\"font-size: 12px;\">[BPuente]</span>&nbsp;(11/08/2021): Initial release</div></body></html>"));
    end Propeller1Q;

    model Propeller4Q "Wageningen B-Series 4Q Propeller model"
      parameter Real w_ini(unit = "rad/s") = 0.1 "initial speed" annotation(
        Dialog(tab = "Initialization", group = "Speed"));
      parameter Modelica.SIunits.Length Lpp = 100 "Length between perpendiculars [m]" annotation(
        Dialog(group = "Ship parameters"));
      parameter Modelica.SIunits.Length B = 20 "Moulded beam [m]" annotation(
        Dialog(group = "Ship parameters"));
      parameter Real Cb = 0.693 "Ship block coefficient [-]" annotation(
        Dialog(group = "Ship parameters"));
      parameter Real Cp = 0.75 "Ship prismatic coefficient [-]" annotation(
        Dialog(group = "Ship parameters"));
      parameter Real lcb = -0.75 "%lcb from Lpp/2 (0.75% Aft -> -0.75), positive fwd" annotation(
        Dialog(group = "Ship parameters"));
      parameter Real Fa = -2 "Aft body factor [-2 (U shape),0 (N shape),+2 (V shape)]" annotation(
        Dialog(group = "Ship parameters"));
      //Propeller parameters
      parameter ShipSIM.Types.Propeller4Q PropModel "Wageningen-B propeller model" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Real Ae_Ao = 1.0 "Blade area ratio" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Real P_D = 1 "Pitch-diameter ratio" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Modelica.SIunits.Distance h_prop = 4 "Depth of propeller hub from waterline [m]" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Modelica.SIunits.Diameter Diameter = 4 "Propeller Diameter [m]" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Modelica.SIunits.Density Density_Prop = 7600 "Propeller density [kg/m3]" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Real Inertia(unit = "kg.m2") = 0.0002744*(1)*((1) + 3)*Density_Prop*Diameter^5 "Inertia moment of propeller" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Real Add_Inertia(unit = "kg.m2") = 0.3*Inertia "Added (water) Inertia moment of propeller" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Real WakeFraction = 0.1*B/Lpp + 0.149 + (((0.05*B)/(Lpp)) + 0.449)/((585 - 5027*B/Lpp + 11700*((B/Lpp)^2))*(0.98 - Cb)^3 + 1) + 0.025*Fa/(100*(Cb - 0.7)^2 + 1) - 0.18 + (0.00756/((Diameter/Lpp) + 0.002)) "Harvald 1983 - Single screw" annotation(
        Dialog(tab = "Factors", group = "Propeller-hull factors"));
      parameter Real ThrustDeduction = (0.625*B/Lpp + 0.08) + (0.165 - 0.25*B/Lpp)/((525 - 8060*B/Lpp + 20300*(B/Lpp)^2)*(0.98 - Cb)^3 + 1) - 0.01*Fa + 2*(Diameter/Lpp - 0.04) "Harvald 1983 - Single screw" annotation(
        Dialog(tab = "Factors", group = "Propeller-hull factors"));
      parameter Real RotativeRelative = 0.9922 - 0.05908*Ae_Ao + 0.07424*(Cp - 0.0225*lcb) "Holtrop 1988a - Single screw" annotation(
        Dialog(tab = "Factors", group = "Propeller-hull factors"));
      parameter Modelica.SIunits.Length Rudder_distance = Diameter*1.2 "Distance from propeller to rudder denter of gravity" annotation(
        Dialog(group = "Rudder interaction"));
      parameter Boolean AnimationForces = true "Show force vectors on 3D animation" annotation(
        Dialog(tab = "Visualization", group = "3D Animation"));
      //Components
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(
        Placement(visible = true, transformation(origin = {100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, 40}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      ShipSIM.SubComponents.ApparentSpeedXY apparentSpeedXY annotation(
        Placement(visible = true, transformation(origin = {-10, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange annotation(
        Placement(visible = true, transformation(origin = {100, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Components.Inertia inertia(J = Inertia, w(fixed = false, start = w_ini)) annotation(
        Placement(visible = true, transformation(origin = {62, 66}, extent = {{10, 10}, {-10, -10}}, rotation = -180)));
      Modelica.Mechanics.Rotational.Components.Inertia added_inertia(J = Add_Inertia) annotation(
        Placement(visible = true, transformation(origin = {22, 66}, extent = {{10, 10}, {-10, -10}}, rotation = -180)));
      Modelica.Mechanics.Rotational.Sources.Torque torque annotation(
        Placement(visible = true, transformation(origin = {-18, 66}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorque forceAndTorque(animation = AnimationForces, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_b) annotation(
        Placement(visible = true, transformation(origin = {-64, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      //Visualizers
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape PropellerVisualizer(color = {255, 120, 0}, height = Diameter, length = Diameter/10, shapeType = "cylinder", width = Diameter) annotation(
        Placement(visible = true, transformation(origin = {-8, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      //Public variables
      Real rpm(unit = "rpm") "Revolutions per minute";
      Real Nu_zero "Open water efficiency";
      Real Nu_b "Propeller efficiency - behind hull";
      Real Nu_hull "Hull efficiency = 1-t/1-w";
      Real Nu_propulsive "Overall propulsive efficiency";
      //intermediate variables
      Real Va "Advance speed";
      Real Vr "Relative speed";
      Real T "Thrust obtained from 4 Quadrant graphs";
      Real Q "Torque obtained from 4 Quadrant graphs";
      Real n "revolutions per second";
      Real Ct "Thrust coefficient";
      Real Cq "Torque coefficient";
      // Data
      Real Beta "Advance Angle at 70% radious";
      Real Thrust "Thrust corrected by factors";
      Real ShaftPower(unit = "W");
      Real ThrustPower(unit = "W");
      // Parameters of Burrill cavitation chart for Wageningen-B merchant Ships
      Real Thrust_Load "Adimensional thrust load coefficient";
      Real Cavitation_Number "Sigma cavitation number at 0.7R";
      Real Cavitation_Warning "Percentage of cavitation limit for merchant ships (Burrill diagram)";
      // Parameters of interaction with rudder obtained from: Brix, J.E., 1993. Manoeuvring Technical Manual. Seehafen-Verl., Hamburg
      Real C_th;
      Modelica.SIunits.Velocity V_inf;
      Modelica.SIunits.Length r_inf;
      Modelica.SIunits.Length r_x;
      Modelica.SIunits.Length V_x;
      Modelica.SIunits.Length Delta_r;
      //Components
      output Modelica.Blocks.Interfaces.RealOutput Propeller_speed annotation(
        Placement(visible = true, transformation(origin = {-94, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-101, 0}, extent = {{9, -9}, {-9, 9}}, rotation = 0)));
      output Modelica.Blocks.Interfaces.RealOutput Propeller_flow_diameter annotation(
        Placement(visible = true, transformation(origin = {-94, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-101, 40}, extent = {{9, -9}, {-9, 9}}, rotation = 0)));
      output Modelica.Blocks.Interfaces.RealOutput Wake_Fraction "Wake fraction coefficient" annotation(
        Placement(transformation(origin = {-94, -30}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-100, -40}, extent = {{8, -8}, {-8, 8}}, rotation = -0)));
    protected
      outer ShipSIM.Components.Environment environment;
      parameter Real T_Q[31, 5] = ShipSIM.Functions.PropellerFunctions.WageningenB_4Q_Matrix(PropModel);
      Real CT_aux[size(T_Q, 1)];
      Real CQ_aux[size(T_Q, 1)];
    equation
      Wake_Fraction = WakeFraction;
// Connect apparent speed (current)
      apparentSpeedXY.WorldSpeed = environment.CurrentVector;
//Determine absolute speed
/*
     apparentSpeedXY.SpeedLocal[1] -> Speed of water perpendicular to propeller plane. Positive when water flow impacts on the suction face (normal propeller operation)
     apparentSpeedXY.SpeedLocal[2] -> Speed of water transversal to propeller plane. Positive when the water flow impact on the port face of the propeller with POD angle=0.
     */
//Variables calculation
      Va = apparentSpeedXY.SpeedLocal[1]*(1 - WakeFraction) "advance speed, wake fraction corrected";
      Vr = (Va^2 + (0.7*Modelica.Constants.pi*n*Diameter)^2)^0.5 "Relative speed to propeller blade";
      n = der(flange.phi)*(1/(2*Modelica.Constants.pi)) "revolutions per second";
      rpm = n*60;
//Beta calculation
      if noEvent(abs(n) <= Modelica.Constants.eps) then
//propeller stopped
        if noEvent(Va >= 0) then
          Beta = Modelica.Constants.pi/2 "Speed ahead with propeller stopped";
        else
          Beta = 3*Modelica.Constants.pi/2 "Speed astern with propeller stopped";
        end if;
      else
        if noEvent(Va >= 0 and n > 0) then
          Beta = Modelica.Math.atan(Va/(0.7*Modelica.Constants.pi*n*Diameter)) "Speed ahead and propeller ahead";
        elseif noEvent(Va >= 0 and n < 0) then
          Beta = Modelica.Constants.pi + Modelica.Math.atan(Va/(0.7*Modelica.Constants.pi*n*Diameter)) "Speed ahead and propeller astern";
        elseif noEvent(Va < 0 and n < 0) then
          Beta = Modelica.Constants.pi + Modelica.Math.atan(Va/(0.7*Modelica.Constants.pi*n*Diameter)) "Speed astern and propeller astern";
        else
          Beta = 2*Modelica.Constants.pi + Modelica.Math.atan(Va/(0.7*Modelica.Constants.pi*n*Diameter)) "Speed astern and propeller ahead";
        end if;
      end if;
//Ct, Cq, T & Q calculation
      if noEvent(abs(Vr) <= Modelica.Constants.eps) then
//Trivial solution when speeds are zero!
        Ct = 0;
        Cq = 0;
        T = 0;
        Q = 0;
        Nu_zero = 0 "Open water efficiency";
        CT_aux = fill(0, size(T_Q, 1));
        CQ_aux = fill(0, size(T_Q, 1));
      else
        Ct = T/(0.5*environment.SeaDensity*((Vr)^2)*(Modelica.Constants.pi/4)*Diameter^2);
        Cq = Q/(0.5*environment.SeaDensity*((Vr)^2)*(Modelica.Constants.pi/4)*Diameter^3);
//Calculation of Ct and Cq
        for i in 1:size(T_Q, 1) loop
          CT_aux[i] = T_Q[i, 2]*Modelica.Math.cos(T_Q[i, 1]*Beta) + T_Q[i, 3]*Modelica.Math.sin(T_Q[i, 1]*Beta);
          CQ_aux[i] = T_Q[i, 4]*Modelica.Math.cos(T_Q[i, 1]*Beta) + T_Q[i, 5]*Modelica.Math.sin(T_Q[i, 1]*Beta);
        end for;
        Ct = (1/100)*sum(CT_aux);
        Cq = (-1/1000)*sum(CQ_aux);
/*
         In literature Nu_zero is (0.7*Ct/2*Cq)*tan(Beta), but since Nu_zero=(thrust power)/(torque power)=((Va*T)/(Q*n*2*pi))=...
         ...=(Va*Kt)/(2*pi*n*Kq*D)=(J*Kt)/(2*pi*Kq)!!
         Then in this case:
         Nu_zero=(Va*Ct)/(2*pi*n*D*Cq)
         This avoids and simplify the case where tan(Beta) is +-infinite!
         */
        if noEvent(abs(n*Cq) <= Modelica.Constants.eps) then
          Nu_zero = Modelica.Constants.inf*sign(Va)*sign(n)*sign(Cq) "Avoid division by zero using +- inf";
        else
          Nu_zero = (Va*Ct)/(2*Modelica.Constants.pi*n*Diameter*Cq) "Open water efficiency";
        end if;
      end if;
//Efficiencies
      Nu_b = Nu_zero*RotativeRelative;
      Nu_hull = (1 - ThrustDeduction)/(1 - WakeFraction);
      Nu_propulsive = Nu_b*Nu_hull;
// Real Thrust and torque
      Thrust = T*(1 - ThrustDeduction);
      ThrustPower = Thrust*apparentSpeedXY.SpeedLocal[1];
      ThrustPower = ShaftPower*Nu_propulsive;
      ShaftPower = der(flange.phi)*torque.tau "torque applied to rotating shaft";
//Outputs
      forceAndTorque.force = {Thrust, 0, 0} "force in propeller reference axis";
      forceAndTorque.torque = {torque.tau, 0, 0} "torque in propeller reference axis";
// Propeller cavitation warning (Burrill chart)
      if noEvent(abs(Vr) <= Modelica.Constants.eps) then
        Thrust_Load = 0;
        Cavitation_Number = 0;
        Cavitation_Warning = 0;
      else
        Thrust_Load = abs(T)/(0.5*environment.SeaDensity*((Vr)^2)*((Modelica.Constants.pi*(Diameter^2)*(1.067 - 0.229*P_D))/(4*Ae_Ao)));
        Cavitation_Number = (1.01325E5 - 2289.945 + environment.SeaDensity*9.80665*h_prop)/(0.5*environment.SeaDensity*(Vr^2));
        Cavitation_Warning = ShipSIM.Functions.PropellerFunctions.CavitationLimit_MS(Thrust_Load, Cavitation_Number);
      end if;
//Rudder interaction: Brix, J.E., 1993. Manoeuvring Technical Manual. Seehafen-Verl., Hamburg
      if noEvent(Va > 0 and n > 0 and Ct > 0) then
//Normal propeller operation
        C_th = (8*(der(flange.phi))^2*Diameter^2*((Ct*Modelica.Constants.pi/8)*((Va/(n*Diameter))^2 + (0.7*Modelica.Constants.pi)^2))/(Modelica.Constants.pi*Va^2))^0.5 "Formula adapted to 4Q propeller";
        V_inf = Va*(1 + C_th)^0.5;
        r_inf = (Diameter/2)*(0.5*(1 + Va/V_inf))^0.5;
        r_x = (Diameter/2)*(0.14*(r_inf/(Diameter/2))^3 + (r_inf/(Diameter/2))*(Rudder_distance/(Diameter/2))^1.5)/(0.14*(r_inf/(Diameter/2))^3 + (Rudder_distance/(Diameter/2))^1.5);
        V_x = V_inf*(r_inf/r_x)^2;
// turbulence correction and final result
        Delta_r = 0.15*Rudder_distance*((V_inf*r_inf^2 - Va*r_x^2)/(V_inf*r_inf^2 + Va*r_x^2));
        Propeller_flow_diameter = 2*(r_x + Delta_r);
        Propeller_speed = (V_x - Va)*(r_x^2/(r_x + Delta_r)^2) + Va;
      else
//Remain to implement other quadrants!!!
        C_th = 0;
        V_inf = Va;
        r_inf = 0;
        r_x = 0;
        V_x = 0;
        Delta_r = 0;
        Propeller_flow_diameter = 0;
        Propeller_speed = Va;
      end if;
//Connections
      connect(flange, inertia.flange_b) annotation(
        Line(points = {{100, 66}, {72, 66}}));
      connect(inertia.flange_a, added_inertia.flange_b) annotation(
        Line(points = {{52, 66}, {32, 66}}));
      connect(added_inertia.flange_a, torque.flange) annotation(
        Line(points = {{12, 66}, {-8, 66}}));
      connect(frame_a, forceAndTorque.frame_b) annotation(
        Line(points = {{100, 0}, {34, 0}, {34, 16}, {-54, 16}}));
      connect(frame_a, apparentSpeedXY.frame_a) annotation(
        Line(points = {{100, 0}, {34, 0}, {34, 16}, {-34, 16}, {-34, -12}, {-20, -12}}));
      connect(frame_a, PropellerVisualizer.frame_a) annotation(
        Line(points = {{100, 0}, {34, 0}, {34, 16}, {-34, 16}, {-34, -38}, {-18, -38}}));
//Assert documentation
      assert(Cavitation_Warning < 1, "!W0001 [Propeller4Q] (" + getInstanceName() + "): Cavitation in propeller!!", level = AssertionLevel.warning);
      annotation(
        Icon(graphics = {Text(origin = {0, 70}, extent = {{-94, 10}, {94, -10}}, textString = "B-Series"), Polygon(origin = {23, 0}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{15, 12}, {15, 26}, {5, 48}, {-7, 60}, {-13, 58}, {-15, 52}, {-15, 34}, {-1, 12}, {-1, -12}, {-15, -34}, {-15, -52}, {-13, -58}, {-7, -60}, {5, -48}, {15, -26}, {15, 12}}, smooth = Smooth.Bezier), Polygon(origin = {26, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, points = {{16, 12}, {16, -12}, {-6, -12}, {-12, -8}, {-16, -4}, {-16, 4}, {-12, 8}, {-6, 12}, {16, 12}}), Ellipse(origin = {24, 0}, rotation = -45, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{2, 22}, {-2, -22}}), Rectangle(origin = {71, 0}, fillColor = {200, 200, 200}, fillPattern = FillPattern.CrossDiag, extent = {{29, 6}, {-29, -6}}), Line(origin = {-30, 40}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-29.9957, 19.9494}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-30, -0.101291}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-30, -19.8062}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-29.6543, -39.8569}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Rectangle(origin = {-65, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Text(origin = {-65, -68}, extent = {{-17, 14}, {17, -14}}, textString = "4Q")}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
        Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})),
        Documentation(info = "<html><head></head><body><div>Ship propeller model (4 quadrant) based on Ct, Cq curves according to Wageningen B-Series curves.&nbsp;</div><div>This model has incorporated empirical values of the following parameters:</div><div>- Rotative relative efficiency</div><div>- Thrust deduction coefficient</div><div>- Wake factor coefficient</div><div><br></div><div>Output is the thrust force of the propeller and mechanical torque on the shaft.</div><div><br></div><div><i><b>NOTE</b></i>:</div><div>Torque does not include shaft efficiency.</div><div>Thrust output value is effective thrust to be compared directly to the resistance curve.</div><div><br></div><div><u>Limitations</u>:</div><div><br></div><div>Propeller-rudder interaction only implemented in first quadrant (normal propeller operation).</div><div><br></div><div><u>References</u>:</div><div><br></div><div><font face=\"MS Shell Dlg 2\"><i>See Propeller1Q and POD4Q models.</i></font></div><div><font face=\"MS Shell Dlg 2\"><i><br></i></font></div><div><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[Roddy]</td><td>Robert F. Roddy, David E. Hess, Will Faller, \"Neural network predictions of the 4-quadrant Wageningen propeller series\", David Taylor Model Basin - April 2006,&nbsp;<a href=\"https://apps.dtic.mil/sti/pdfs/ADA455497.pdf\">NSWCCD-50-TR-2006/004</a><br><br></td></tr></tbody></table></div><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[Burrill]</td><td>L.C. Burrill, \"The Phenomenon of Cavitation\", Int. Shipbuilding Prog., 1955, Vol.2, No.15</td></tr></tbody></table><p><u>Know issues</u>:</p><div><br></div><div><u>Further development</u>:</div><div><br></div><div>- Propeller rudder interaction on other quadrants</div><div>- Oblique flow forces calculation</div></body></html>", revisions = "<html><head></head><body><div>Rev. 0.4&nbsp;<span style=\"font-size: 12px;\">[BPuente]&nbsp;</span>(17/12/2023): Added wake fraction coefficient output to the rudder</div><div>Rev. 0.3&nbsp;<span style=\"font-size: 12px;\">[BPuente]&nbsp;</span>(01/08/2023): Compatibility with Modelon&nbsp;<span style=\"font-size: 12px;\">(GitHub #4)</span></div><div>Rev. 0.2&nbsp;<span style=\"font-size: 12px;\">[BPuente]</span>&nbsp;(06/05/2023): Added animation forces selector.</div><div>Rev. 0.1&nbsp;<span style=\"font-size: 12px;\">[BPuente]</span>&nbsp;(23/04/2023): Cavitation warning and implementation of propeller-rudder interact. on 1st Quadrant</div><div>Rev. 0.0&nbsp;<span style=\"font-size: 12px;\">[BPuente]</span>&nbsp;(22/04/2023): Initial release</div></body></html>"));
    end Propeller4Q;

    model POD4Q "Wageningen B-Series POD model"
      parameter Real InitialPODAngle(unit = "deg") = 0 "Initial POD position [deg, +Port]" annotation(
        Dialog(group = "POD parameters"));
      parameter Real CenterOfPropeller[3](each unit = "m") = {-2, 0, -3} "Center of propeller hub from frame_a [m] {x,y,z}" annotation(
        Dialog(group = "POD parameters"));
      parameter Real MaxPODAngularSpeed(unit = "deg/s") = 2.5 "Maximum POD angular speed [deg/s]" annotation(
        Dialog(group = "POD parameters"));
      parameter Real w_ini(unit = "rad/s") = 0.1 "initial speed" annotation(
        Dialog(tab = "Initialization", group = "Speed"));
      parameter ShipSIM.Types.Propeller4Q PropModel "Wageningen-B propeller model" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Real Ae_Ao = 1.0 "Blade area ratio" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Real P_D = 1 "Pitch-diameter ratio" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Modelica.SIunits.Distance h_prop = 4 "Depth of propeller hub from waterline [m]" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Modelica.SIunits.Diameter Diameter = 4 "Propeller Diameter [m]" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Modelica.SIunits.Density Density_Prop = 7600 "Propeller density [kg/m3]" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Real Inertia(unit = "kg.m2") = 0.0002744*(1)*((1) + 3)*Density_Prop*Diameter^5 "Inertia moment of propeller" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Real Add_Inertia(unit = "kg.m2") = 0.3*Inertia "Added (water) Inertia moment of propeller" annotation(
        Dialog(group = "Propeller parameters"));
      parameter Real WakeFraction = 0.1 "User input" annotation(
        Dialog(tab = "Factors", group = "Propeller-hull factors"));
      parameter Real ThrustDeduction = 0.2 "User input" annotation(
        Dialog(tab = "Factors", group = "Propeller-hull factors"));
      parameter Real RotativeRelative = 1.1 "User input" annotation(
        Dialog(tab = "Factors", group = "Propeller-hull factors"));
      parameter Boolean AnimationForces = true "Show force vectors on 3D animation" annotation(
        Dialog(tab = "Visualization", group = "3D Animation"));
      //Components
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation Forces_pos(animation = false, r = CenterOfPropeller) annotation(
        Placement(visible = true, transformation(origin = {0, 16}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Nonlinear.SlewRateLimiter PODSpeedLimiter(Rising = MaxPODAngularSpeed, initType = Modelica.Blocks.Types.Init.InitialState, strict = true, y_start = InitialPODAngle) annotation(
        Placement(visible = true, transformation(origin = {-28, 76}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Position POD_angle(exact = true, useSupport = true) annotation(
        Placement(visible = true, transformation(origin = {42, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Joints.Revolute Servo(animation = false, n = {0, 0, 1}, phi(fixed = false, start = 0), useAxisFlange = true) annotation(
        Placement(visible = true, transformation(origin = {42, 46}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Math.Gain Deg_to_Rad(k = -Modelica.Constants.pi/180) annotation(
        Placement(visible = true, transformation(origin = {10, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(
        Placement(visible = true, transformation(origin = {70, 100}, extent = {{-16, -16}, {16, 16}}, rotation = 90), iconTransformation(origin = {56, 102}, extent = {{-16, -16}, {16, 16}}, rotation = 90)));
      input Modelica.Blocks.Interfaces.RealInput POD_Order "Rudder angle current order" annotation(
        Placement(visible = true, transformation(origin = {-103, 75}, extent = {{-9, -9}, {9, 9}}, rotation = 0), iconTransformation(origin = {-99, 93}, extent = {{-9, -9}, {9, 9}}, rotation = 0)));
      output Modelica.Blocks.Interfaces.RealOutput POD_position "Current rudder angle position" annotation(
        Placement(visible = true, transformation(origin = {-92, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-103, 75}, extent = {{9, -9}, {-9, 9}}, rotation = 0)));
      ShipSIM.SubComponents.ApparentSpeedXY apparentSpeedXY annotation(
        Placement(visible = true, transformation(origin = {-10, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange annotation(
        Placement(visible = true, transformation(origin = {100, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {22, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Components.Inertia inertia(J = Inertia, w(fixed = false, start = w_ini)) annotation(
        Placement(visible = true, transformation(origin = {92, 38}, extent = {{-10, 10}, {10, -10}}, rotation = 90)));
      Modelica.Mechanics.Rotational.Components.Inertia added_inertia(J = Add_Inertia) annotation(
        Placement(visible = true, transformation(origin = {92, 12}, extent = {{-10, 10}, {10, -10}}, rotation = 90)));
      Modelica.Mechanics.Rotational.Sources.Torque torque annotation(
        Placement(visible = true, transformation(origin = {92, -18}, extent = {{10, 10}, {-10, -10}}, rotation = -90)));
      Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorque forceAndTorque(animation = AnimationForces, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_b) annotation(
        Placement(visible = true, transformation(origin = {-64, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      //Visualizers
      Modelica.Mechanics.MultiBody.Visualizers.FixedFrame fixedFrame(animation = true, length = 2) annotation(
        Placement(visible = true, transformation(origin = {-10, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape PropellerVisualizer(color = {255, 120, 0}, height = Diameter, length = Diameter/10, shapeType = "cylinder", width = Diameter) annotation(
        Placement(visible = true, transformation(origin = {-8, -68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape PODCaseVisualizer(color = {0, 255, 200}, height = Diameter/3, length = Diameter*0.55, r_shape = {Diameter*0.15, 0, 0}, shapeType = "cylinder", width = Diameter/3) annotation(
        Placement(visible = true, transformation(origin = {22, -68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape PODShaftVisualizer(color = {0, 255, 200}, height = Diameter/6, length = CenterOfPropeller[3], lengthDirection = {0, 0, 1}, r_shape = {0, 0, 0}, shapeType = "cylinder", width = Diameter/6) annotation(
        Placement(visible = true, transformation(origin = {56, -68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      //Public variables
      Real rpm(unit = "rpm") "Revolutions per minute";
      Real Nu_zero "Open water efficiency";
      Real Nu_b "Propeller efficiency - behind hull";
      Real Nu_hull "Hull efficiency = 1-t/1-w";
      Real Nu_propulsive "Overall propulsive efficiency";
      //intermediate variables
      Real Va "Advance speed";
      Real Vr "Relative speed";
      Real T "Thrust obtained from 4 Quadrant graphs";
      Real Q "Torque obtained from 4 Quadrant graphs";
      Real n "revolutions per second";
      Real Ct "Thrust coefficient";
      Real Cq "Torque coefficient";
      // Data
      Real Beta "Advance Angle at 70% radious";
      Real Thrust "Thrust corrected by factors";
      Real ShaftPower(unit = "W");
      Real ThrustPower(unit = "W");
      // Parameters of Burrill cavitation chart for Wageningen-B merchant Ships
      Real Thrust_Load "Adimensional thrust load coefficient";
      Real Cavitation_Number "Sigma cavitation number at 0.7R";
      Real Cavitation_Warning "Percentage of cavitation limit for merchant ships (Burrill diagram)";
    protected
      outer ShipSIM.Components.Environment environment;
      parameter Real T_Q[31, 5] = ShipSIM.Functions.PropellerFunctions.WageningenB_4Q_Matrix(PropModel);
      Real CT_aux[size(T_Q, 1)];
      Real CQ_aux[size(T_Q, 1)];
    equation
// Connect apparent speed (current)
      apparentSpeedXY.WorldSpeed = environment.CurrentVector;
//Determine absolute speed
/*
      apparentSpeedXY.SpeedLocal[1] -> Speed of water perpendicular to propeller plane. Positive when water flow impacts on the suction face (normal propeller operation)
      apparentSpeedXY.SpeedLocal[2] -> Speed of water transversal to propeller plane. Positive when the water flow impact on the port face of the propeller with POD angle=0.
      */
//Variables calculation
      Va = apparentSpeedXY.SpeedLocal[1]*(1 - WakeFraction) "advance speed, wake fraction corrected";
      Vr = (Va^2 + (0.7*Modelica.Constants.pi*n*Diameter)^2)^0.5 "Relative speed to propeller blade";
      n = der(flange.phi)*(1/(2*Modelica.Constants.pi)) "revolutions per second";
      rpm = n*60;
//Beta calculation
      if noEvent(abs(n) <= Modelica.Constants.eps) then
//propeller stopped
        if noEvent(Va >= 0) then
          Beta = Modelica.Constants.pi/2 "Speed ahead with propeller stopped";
        else
          Beta = 3*Modelica.Constants.pi/2 "Speed astern with propeller stopped";
        end if;
      else
        if noEvent(Va >= 0 and n > 0) then
          Beta = Modelica.Math.atan(Va/(0.7*Modelica.Constants.pi*n*Diameter)) "Speed ahead and propeller ahead";
        elseif noEvent(Va >= 0 and n < 0) then
          Beta = Modelica.Constants.pi + Modelica.Math.atan(Va/(0.7*Modelica.Constants.pi*n*Diameter)) "Speed ahead and propeller astern";
        elseif noEvent(Va < 0 and n < 0) then
          Beta = Modelica.Constants.pi + Modelica.Math.atan(Va/(0.7*Modelica.Constants.pi*n*Diameter)) "Speed astern and propeller astern";
        else
          Beta = 2*Modelica.Constants.pi + Modelica.Math.atan(Va/(0.7*Modelica.Constants.pi*n*Diameter)) "Speed astern and propeller ahead";
        end if;
      end if;
//Ct, Cq, T & Q calculation
      if noEvent(abs(Vr) <= Modelica.Constants.eps) then
//Trivial solution when speeds are zero!
        Ct = 0;
        Cq = 0;
        T = 0;
        Q = 0;
        Nu_zero = 0 "Open water efficiency";
        CT_aux = fill(0, size(T_Q, 1));
        CQ_aux = fill(0, size(T_Q, 1));
      else
        Ct = T/(0.5*environment.SeaDensity*((Vr)^2)*(Modelica.Constants.pi/4)*Diameter^2);
        Cq = Q/(0.5*environment.SeaDensity*((Vr)^2)*(Modelica.Constants.pi/4)*Diameter^3);
//Calculation of Ct and Cq
        for i in 1:size(T_Q, 1) loop
          CT_aux[i] = T_Q[i, 2]*Modelica.Math.cos(T_Q[i, 1]*Beta) + T_Q[i, 3]*Modelica.Math.sin(T_Q[i, 1]*Beta);
          CQ_aux[i] = T_Q[i, 4]*Modelica.Math.cos(T_Q[i, 1]*Beta) + T_Q[i, 5]*Modelica.Math.sin(T_Q[i, 1]*Beta);
        end for;
        Ct = (1/100)*sum(CT_aux);
        Cq = (-1/1000)*sum(CQ_aux);
/*
          In literature Nu_zero is (0.7*Ct/2*Cq)*tan(Beta), but since Nu_zero=(thrust power)/(torque power)=((Va*T)/(Q*n*2*pi))=...
          ...=(Va*Kt)/(2*pi*n*Kq*D)=(J*Kt)/(2*pi*Kq)!!
          Then in this case:
          Nu_zero=(Va*Ct)/(2*pi*n*D*Cq)
          This avoids and simplify the case where tan(Beta) is +-infinite!
          */
        if noEvent(abs(n*Cq) <= Modelica.Constants.eps) then
          Nu_zero = Modelica.Constants.inf*sign(Va)*sign(n)*sign(Cq) "Avoid division by zero using +- inf";
        else
          Nu_zero = (Va*Ct)/(2*Modelica.Constants.pi*n*Diameter*Cq) "Open water efficiency";
        end if;
      end if;
//Efficiencies
      Nu_b = Nu_zero*RotativeRelative;
      Nu_hull = (1 - ThrustDeduction)/(1 - WakeFraction);
      Nu_propulsive = Nu_b*Nu_hull;
// Real Thrust and torque
      Thrust = T*(1 - ThrustDeduction);
      ThrustPower = Thrust*apparentSpeedXY.SpeedLocal[1];
      ThrustPower = ShaftPower*Nu_propulsive;
      ShaftPower = der(flange.phi)*torque.tau "torque applied to rotating shaft";
//Outputs
      forceAndTorque.force = {Thrust, 0, 0} "force in propeller reference axis";
      forceAndTorque.torque = {torque.tau, 0, 0} "torque in propeller reference axis";
// Propeller cavitation warning (Burrill chart)
      if noEvent(abs(Vr) <= Modelica.Constants.eps) then
        Thrust_Load = 0;
        Cavitation_Number = 0;
        Cavitation_Warning = 0;
      else
        Thrust_Load = abs(T)/(0.5*environment.SeaDensity*((Vr)^2)*((Modelica.Constants.pi*(Diameter^2)*(1.067 - 0.229*P_D))/(4*Ae_Ao)));
        Cavitation_Number = (1.01325E5 - 2289.945 + environment.SeaDensity*9.80665*h_prop)/(0.5*environment.SeaDensity*(Vr^2));
        Cavitation_Warning = ShipSIM.Functions.PropellerFunctions.CavitationLimit_MS(Thrust_Load, Cavitation_Number);
      end if;
//Connections
      connect(POD_angle.phi_ref, Deg_to_Rad.y) annotation(
        Line(points = {{30, 76}, {21, 76}}, color = {0, 0, 127}));
      connect(POD_angle.flange, Servo.support) annotation(
        Line(points = {{52, 76}, {58, 76}, {58, 56}, {48, 56}}));
      connect(POD_angle.support, Servo.axis) annotation(
        Line(points = {{42, 66}, {42, 56}}));
      connect(Servo.frame_b, Forces_pos.frame_a) annotation(
        Line(points = {{32, 46}, {29, 46}, {29, 16}, {10, 16}}));
      connect(fixedFrame.frame_a, Forces_pos.frame_b) annotation(
        Line(points = {{-20, -38}, {-29, -38}, {-29, 16}, {-10, 16}}, color = {95, 95, 95}));
      connect(PODSpeedLimiter.y, Deg_to_Rad.u) annotation(
        Line(points = {{-13, 76}, {-2, 76}}, color = {0, 0, 127}));
      connect(Servo.frame_a, frame_a) annotation(
        Line(points = {{52, 46}, {70, 46}, {70, 100}}, color = {95, 95, 95}));
      connect(POD_Order, PODSpeedLimiter.u) annotation(
        Line(points = {{-102, 76}, {-44, 76}}, color = {0, 0, 127}));
      connect(apparentSpeedXY.frame_a, Forces_pos.frame_b) annotation(
        Line(points = {{-20, -12}, {-28, -12}, {-28, 16}, {-10, 16}}, color = {95, 95, 95}));
      connect(PODSpeedLimiter.y, POD_position) annotation(
        Line(points = {{-12, 76}, {-10, 76}, {-10, 40}, {-92, 40}}, color = {0, 0, 127}));
      connect(PropellerVisualizer.frame_a, Forces_pos.frame_b) annotation(
        Line(points = {{-18, -68}, {-28, -68}, {-28, 16}, {-10, 16}}, color = {95, 95, 95}));
      connect(PODCaseVisualizer.frame_a, Forces_pos.frame_b) annotation(
        Line(points = {{12, -68}, {4, -68}, {4, -80}, {-28, -80}, {-28, 16}, {-10, 16}}, color = {95, 95, 95}));
      connect(Servo.frame_b, PODShaftVisualizer.frame_a) annotation(
        Line(points = {{32, 46}, {30, 46}, {30, -68}, {46, -68}}, color = {95, 95, 95}));
      connect(flange, inertia.flange_b) annotation(
        Line(points = {{100, 66}, {92, 66}, {92, 48}}));
      connect(inertia.flange_a, added_inertia.flange_b) annotation(
        Line(points = {{92, 28}, {92, 22}}));
      connect(added_inertia.flange_a, torque.flange) annotation(
        Line(points = {{92, 2}, {92, -8}}));
      connect(forceAndTorque.frame_b, Forces_pos.frame_b) annotation(
        Line(points = {{-54, 16}, {-10, 16}}, color = {95, 95, 95}));
//Assert documentation
      assert(Cavitation_Warning < 1, "!W0001 [Propeller4Q] (" + getInstanceName() + "): Cavitation in propeller!!", level = AssertionLevel.warning);
      annotation(
        Icon(graphics = {Text(origin = {4, -76}, extent = {{-94, 10}, {94, -10}}, textString = "B-Series"), Polygon(origin = {-5, 0}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{15, 12}, {15, 26}, {5, 48}, {-7, 60}, {-13, 58}, {-15, 52}, {-15, 34}, {-1, 12}, {-1, -12}, {-15, -34}, {-15, -52}, {-13, -58}, {-7, -60}, {5, -48}, {15, -26}, {15, 12}}, smooth = Smooth.Bezier), Polygon(origin = {-2, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, points = {{16, 12}, {16, -12}, {-6, -12}, {-12, -8}, {-16, -4}, {-16, 4}, {-12, 8}, {-6, 12}, {16, 12}}), Ellipse(origin = {-4, 0}, rotation = -45, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{2, 22}, {-2, -22}}), Rectangle(origin = {53, 0}, fillColor = {200, 200, 200}, fillPattern = FillPattern.CrossDiag, borderPattern = BorderPattern.Engraved, extent = {{33, 22}, {-33, -22}}, radius = 10), Line(origin = {-50.8495, 40}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-50.8452, 19.9494}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-50.8495, -0.101291}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-50.8495, -19.8062}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-50.5038, -39.8569}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Rectangle(origin = {-65, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Text(origin = {-65, -68}, extent = {{-17, 14}, {17, -14}}, textString = "4Q"), Rectangle(origin = {56, 61}, fillColor = {200, 200, 200}, fillPattern = FillPattern.CrossDiag, extent = {{10, 39}, {-10, -39}}), Line(origin = {-42, 93.03}, points = {{-58, 0}, {48, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 14), Line(origin = {-33.74, 75.06}, points = {{-58, 0}, {48, 0}}, color = {200, 200, 200}, arrow = {Arrow.Filled, Arrow.None}, arrowSize = 14)}),
        Diagram,
        Documentation(info = "<html><head></head><body><div>This POD model takes into account the use of a set of 14 Wageningen B-Series propellers modeled with four quadrant Ct and Cq coefficients. These propeller model is selected by means of a combo box.</div><div>This model only uses the flow perpendicular to the propeller disc to determine Va.</div><div><br></div><div><u>Limitations</u>:</div><div><br></div><div>There is no implemented:</div><div>- Wake fraction, thrust deduction and rotative relative factors (with empirical formulae)</div><div>- Forces due to flow transversal to the propeller</div><div>- POD blind angles due to ship hull interaction</div><div><br></div><div><u>References</u>:</div><div><br></div><div><i>See Propeller1Q for other references</i></div><div><br></div><div><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[Roddy]</td><td>Robert F. Roddy, David E. Hess, Will Faller, \"Neural network predictions of the 4-quadrant Wageningen propeller series\", David Taylor Model Basin - April 2006,&nbsp;<a href=\"https://apps.dtic.mil/sti/pdfs/ADA455497.pdf\">NSWCCD-50-TR-2006/004</a></td></tr></tbody></table></div><div><br></div><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[Burrill]</td><td>L.C. Burrill, \"The Phenomenon of Cavitation\", Int. Shipbuilding Prog., 1955, Vol.2, No.15</td></tr></tbody></table><p><u>Know issues</u>:</p><div><br></div><div><br></div><div><u>Further development</u>:</div><div><br></div><div>- Implement POD blind angles</div><div>- Implement Wake fraction, thrust deduction and rotative relative factors (with empirical formulae)</div><div>- Oblique flow forces calculation</div><div><br></div></body></html>", revisions = "<html><head></head><body><div>Rev. 0.3&nbsp;<span style=\"font-size: 12px;\">[BPuente]&nbsp;</span>(01/08/2023): Compatibility with Modelon&nbsp;<span style=\"font-size: 12px;\">(GitHub #4)</span></div><div><font face=\"MS Shell Dlg 2\">Rev. 0.2&nbsp;</font><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span>(06/05/2023): Added animation forces selector.</div><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.1&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(23/04/2023): Cavitation warning</span></div><div>Rev. 0.0&nbsp;<span style=\"font-size: 12px;\">[BPuente]</span>&nbsp;(22/04/2023): Initial release</div></body></html>"));
    end POD4Q;

    model Rudder "Rudder model"
      import Modelica.SIunits.Conversions.to_deg;
      parameter Real C(unit = "m") = 2 "Rudder chord [m]";
      parameter Real s(unit = "m") = 3.5 "Rudder span [m]";
      parameter Real InitialRudderAngle(unit = "deg") = 0 "Initial rudder position [deg, +Port]";
      parameter Real CenterOfForces[3](each unit = "m") = {0.05*C, 0, -s/2 - 0.1*s} "Center of rudder forces from frame_a [m] {x,y,z}";
      parameter Real MaxRudderAngle(unit = "deg") = 35 "Maximum rudder angle [deg]";
      parameter Real MaxRudderAngularSpeed(unit = "deg/s") = 2.5 "Maximum rudder angular speed [deg/s]";
      parameter Boolean AnimationForces = true "Show force vectors on 3D animation" annotation(
        Dialog(tab = "Visualization", group = "3D Animation"));
      //Module data
      parameter ShipSIM.Records.WingProfile.WingData wingData annotation(
        Placement(visible = true, transformation(origin = {82, 86}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
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
      Modelica.Blocks.Tables.CombiTable2D Cl_Table(extrapolation = Modelica.Blocks.Types.Extrapolation.HoldLastPoint, smoothness = Modelica.Blocks.Types.Smoothness.LinearSegments, table = wingData.Cl) annotation(
        Placement(visible = true, transformation(origin = {30, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Tables.CombiTable2D Cd_Table(extrapolation = Modelica.Blocks.Types.Extrapolation.HoldLastPoint, smoothness = Modelica.Blocks.Types.Smoothness.LinearSegments, table = wingData.Cd) annotation(
        Placement(visible = true, transformation(origin = {30, -32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Tables.CombiTable2D Cm_Table(extrapolation = Modelica.Blocks.Types.Extrapolation.HoldLastPoint, smoothness = Modelica.Blocks.Types.Smoothness.LinearSegments, table = wingData.Cm) annotation(
        Placement(visible = true, transformation(origin = {30, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
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
        Placement(transformation(origin = {96, -64}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {95, 40}, extent = {{-9, -9}, {9, 9}}, rotation = 180)));
      ShipSIM.SubComponents.ApparentSpeedXY apparentSpeedXY annotation(
        Placement(visible = true, transformation(origin = {88, -18}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Blocks.Interfaces.RealInput Wake_Fraction "Wake fraction coefficient" annotation(
        Placement(transformation(origin = {97, -87}, extent = {{-11, -11}, {11, 11}}), iconTransformation(origin = {96, -40}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
    protected
      outer ShipSIM.Components.Environment environment;
      parameter Real Surf(unit = "m2") = C*s "Proyected surface of rudder";
      parameter Real Asp(unit = "") = s/C "Aspect Ratio of the rudder";
      parameter Real Cn_Asp_Correction(unit = "") = 1/(1 + (2.25/Asp)) "Aspect ratio correction to Normal force = Cl*cos(th) + Cd*sen(th)";
      //intermediate variables
      Real Beta_inter;
    equation
// Connect Cl,Cd,Cm tables
      Cl_Table.u1 = to_deg(Beta);
      Cd_Table.u1 = to_deg(Beta);
      Cm_Table.u1 = to_deg(Beta);
      Cl_Table.u2 = Re;
      Cd_Table.u2 = Re;
      Cm_Table.u2 = Re;
      Cd = Cd_Table.y*Cn_Asp_Correction "Corrected by aspect ratio";
      Cl = Cl_Table.y*Cn_Asp_Correction "Corrected by aspect ratio";
      Cm = Cm_Table.y;
      if noEvent(WaterSpeed > 0) then
//Determine attack angle
        Beta_inter = (Water_Speed_XY[1]*(-Modelica.Math.cos(Alpha)) + Water_Speed_XY[2]*(-Modelica.Math.sin(Alpha)))/WaterSpeed;
// Avoid errors reaching +-1
        if noEvent(Beta_inter <= (-0.99999999)) then
          Beta = Modelica.Math.acos(-1);
        elseif noEvent(Beta_inter >= 0.99999999) then
          Beta = Modelica.Math.acos(1);
        else
          Beta = Modelica.Math.acos(Beta_inter);
        end if;
        if noEvent(Water_Speed_XY[1]*(-Modelica.Math.sin(Alpha)) - Water_Speed_XY[2]*(-Modelica.Math.cos(Alpha)) >= 0) then
          Sign = -1;
        else
          Sign = 1;
        end if;
//Calculate forces and moments
        Drag = Cd*0.5*environment.SeaDensity*Surf*WaterSpeed^2;
        Lift = Cl*0.5*environment.SeaDensity*Surf*WaterSpeed^2;
        Moment = Cm*0.5*environment.SeaDensity*Surf*C*WaterSpeed^2;
//Translate forces and moments to rudder stock and apply
        Drag_Vect = Water_Speed_XY/WaterSpeed "Normalized vector with water direction (same direction as drag)";
        Lift_Vect = {-Drag_Vect[2], Drag_Vect[1]}*Sign "Normalized vector perpendicular to water direction, adjusted with the direction";
        F_Drag.force = {Drag*Drag_Vect[1], Drag*Drag_Vect[2], 0};
        F_Lift.force = {Lift*Lift_Vect[1], Lift*Lift_Vect[2], 0};
        M_Moment.torque = {0, 0, Moment*Sign};
      else
//If speed is zero
        Sign = 1;
        Beta = 0;
        Drag = 0;
        Lift = 0;
        Moment = 0;
        Drag_Vect = {0, 0};
        Lift_Vect = {0, 0};
        F_Drag.force = {0, 0, 0};
        F_Lift.force = {0, 0, 0};
        M_Moment.torque = {0, 0, 0};
        Beta_inter = 0;
      end if;
// Connect apparent speed (current)
      apparentSpeedXY.WorldSpeed = environment.CurrentVector;
//Determine absolute speed
//Average water speed on X direction taking into account the propeller flow
      if Propeller_flow_diameter >= s then
        Water_Speed_XY[1] = -Propeller_speed;
      else
        Water_Speed_XY[1] = -(Propeller_speed*Propeller_flow_diameter + apparentSpeedXY.SpeedLocal[1]*(1 - Wake_Fraction)*(s - Propeller_flow_diameter))/s;
      end if;
      Water_Speed_XY[2] = -apparentSpeedXY.SpeedLocal[2]*(1 - Wake_Fraction);
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
        Icon(graphics = {Polygon(origin = {-9, -4}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{43, 10}, {37, -70}, {-23, -70}, {-43, 70}, {33, 70}, {33, 22}, {23, 22}, {23, 10}, {43, 10}}), Polygon(origin = {24, 44}, points = {{10, -38}, {-10, -38}, {-10, -26}, {0, -26}, {0, 52}, {10, 52}, {10, -38}}), Line(origin = {-42, 93.03}, points = {{-58, 0}, {48, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 14), Line(origin = {-33.74, 75.06}, points = {{-58, 0}, {48, 0}}, color = {200, 200, 200}, arrow = {Arrow.Filled, Arrow.None}, arrowSize = 14), Line(origin = {61.3685, 19.9921}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {61.6441, -0.142118}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {61.5786, -20.1318}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {61.6724, 40.05}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {62.0283, -59.9355}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {61.7244, -40.1816}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {61.6724, 59.804}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Rectangle(origin = {-69, -61}, lineColor = {64, 64, 64}, fillColor = {255, 215, 136}, fillPattern = FillPattern.Solid, extent = {{-25, -19}, {25, 19}}, radius = 10), Line(origin = {-69.1667, -54.2886}, points = {{-25, 0}, {25, 0}}), Line(origin = {-69.2244, -60}, points = {{0, 18}, {0, -20}}), Line(origin = {-69.1667, -68}, points = {{-25, 0}, {25, 0}}), Rectangle(origin = {-69, -61}, lineColor = {64, 64, 64}, fillColor = {255, 215, 136}, fillPattern = FillPattern.Solid, extent = {{-25, -19}, {25, 19}}, radius = 10), Line(origin = {-69.2244, -60}, points = {{0, 18}, {0, -20}}), Line(origin = {-69.1667, -68}, points = {{-25, 0}, {25, 0}}), Line(origin = {-69.1667, -54.2886}, points = {{-25, 0}, {25, 0}}), Text(origin = {0, -114}, extent = {{-98, 10}, {98, -10}}, textString = "%wingData"), Text(origin = {-90, 30}, extent = {{-30, 10}, {30, -10}}, textString = DynamicSelect("Angle", (String(Rudder_position, "+.1f") + " º")), horizontalAlignment = TextAlignment.Left)}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
        Documentation(revisions = "<html><head></head><body><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 2.1&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(15/03/2024): Added DynamicSelect for diagram animation</span></div><div>Rev. 2.0&nbsp;<span style=\"font-size: 12px;\">[BPuente]&nbsp;</span>(17/12/2023): Changed Cl,Cd,Cm factor from function to wingData table interpolation. There are big mistakes in previous Cl,Cd,Cm function. Included aspect ratio correction and wake factor input to correct water speed</div><div>Rev. 1.3&nbsp;<span style=\"font-size: 12px;\">[BPuente]&nbsp;</span>(01/08/2023): Compatibility with Modelon&nbsp;<span style=\"font-size: 12px;\">(GitHub #4)</span></div><div>Rev. 1.2&nbsp;<span style=\"font-size: 12px;\">[BPuente]&nbsp;</span>&nbsp;(06/05/2023): Added animation forces selector.</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><span style=\"font-family: -webkit-standard;\">Rev. 1.1&nbsp;</span>[BPuente]&nbsp;<span style=\"font-family: -webkit-standard;\">(10/04/2023): Full environment support.</span></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><span style=\"font-family: -webkit-standard;\">Rev. 1.0&nbsp;</span>[BPuente]&nbsp;<span style=\"font-family: -webkit-standard;\">(06/03/2023): Full support with sea current.</span></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><span style=\"font-family: -webkit-standard;\">Rev. 0.2&nbsp;</span>[BPuente]&nbsp;<span style=\"font-family: -webkit-standard;\">(24/02/2023): Rudder representation fixed.</span></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><span style=\"font-family: -webkit-standard;\">Rev. 0.1 [BPuente] (26/01/2023): Connection with propeller speed and get speed from frame.</span></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><span style=\"font-family: -webkit-standard;\">Rev. 0.0&nbsp;</span>[BPuente]<span style=\"font-family: -webkit-standard;\">&nbsp;(26/07/2022): First release</span></div></body></html>", info = "<html><head></head><body><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">Ship rudder model, based on a Cl,Cd,Cm record data, with the following connections:</span></p><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">- frame_a: connect to the position of the rudder servo</span></p><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">- Rudder_Order: Desired angle of the rudder (+ stbd)</span></p><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">- Rudder_position: Current angle of the rudder</span></p><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">- Propeller_speed: connect with propeller flow speed output</span></p><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">- Propeller_flow_diameter: connect with propeller flow diameter output</span></p><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">The Cl and Cd are corrected by rudder aspect ratio.</span></p><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div class=\"htmlDoc\" style=\"font-size: 12px;\"><div><br></div><div><i><b>NOTE</b></i>:</div><div>Water speed is obtained from rudder center of forces using apparent speed and X-direction is corrected by the propeller flow.</div><div><br></div><div><u>Limitations:</u></div><div>Rudder weight and inertia is not considered. Not considered rudder aspect ratio correction. Propeller water rotation influence on rudder is not considered.</div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"></div></div><div style=\"font-family: -webkit-standard;\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[Jialun2016]</td><td>Jialun Liu, Frans Quadvlieg, Robert Hekkenberg, \"Impacts of the rudder profile on manoeuvring performance of ships\", Delft University of Technology, 2016,&nbsp;<a href=\"https://doi.org/10.1016/j.oceaneng.2016.07.064\">DOI:https://doi.org/10.1016/j.oceaneng.2016.07.064</a></td></tr></tbody></table></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div><br></div></div><div class=\"htmlDoc\" style=\"font-size: 12px;\"><div><u>Further development:</u></div><div>Correct rudder forces due to open ends of the profile. Enhance limitations.</div><div><br></div><div><br></div></div></div></body></html>"));
    end Rudder;
    annotation(
      Icon(graphics = {Rectangle(origin = {76, 0}, fillColor = {200, 200, 200}, fillPattern = FillPattern.CrossDiag, extent = {{12, 6}, {-12, -6}}), Polygon(origin = {45, 0}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{15, 12}, {15, 26}, {5, 48}, {-7, 60}, {-13, 58}, {-15, 52}, {-15, 34}, {-1, 12}, {-1, -12}, {-15, -34}, {-15, -52}, {-13, -58}, {-7, -60}, {5, -48}, {15, -26}, {15, 12}}, smooth = Smooth.Bezier), Polygon(origin = {48, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, points = {{16, 12}, {16, -12}, {-6, -12}, {-12, -8}, {-16, -4}, {-16, 4}, {-12, 8}, {-6, 12}, {16, 12}}), Polygon(origin = {2, 40}, points = {{10, -38}, {-10, -38}, {-10, -26}, {0, -26}, {0, 52}, {10, 52}, {10, -38}}), Polygon(origin = {-31, -8}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{43, 10}, {37, -70}, {-23, -70}, {-43, 70}, {33, 70}, {33, 22}, {23, 22}, {23, 10}, {43, 10}})}));
  end Propulsion;

  package AlternativePropulsion "Components relative to alternative ship propulsion"
    model WingSail "WingSail model"
      import Modelica.SIunits.Conversions.to_deg;
      parameter Modelica.SIunits.Distance C = 7 "Chord [m]";
      parameter Modelica.SIunits.Distance s = 20 "span [m]";
      parameter Real InitialSailAngle = 0 "Initial rudder position [deg, +Port]";
      parameter Modelica.SIunits.Distance AxisPos = 0.35*C "Distance from attack edge to wing axis [m, +aft]";
      parameter Real MaxSailAngularSpeed = 1 "Sail rotation speed [deg/s]";
      parameter Boolean AnimationForces = true "Show force vectors on 3D animation" annotation(
        Dialog(tab = "Visualization", group = "3D Animation"));
      //Module data
      parameter ShipSIM.Records.WingProfile.WingData wingData annotation(
        Placement(visible = true, transformation(origin = {-58, 86}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(
        Placement(visible = true, transformation(origin = {0, -100}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {0, -100}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(
        Placement(visible = true, transformation(origin = {0, 100}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {0, 100}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
      input Modelica.Blocks.Interfaces.RealInput Sail_Order "Sail angle order" annotation(
        Placement(visible = true, transformation(origin = {-107, -39}, extent = {{-13, -13}, {13, 13}}, rotation = 0), iconTransformation(origin = {-95, -59}, extent = {{-9, -9}, {9, 9}}, rotation = 0)));
      output Modelica.Blocks.Interfaces.RealOutput Sail_position annotation(
        Placement(visible = true, transformation(origin = {-96, -74}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-95, -81}, extent = {{-9, -9}, {9, 9}}, rotation = 0)));
      output Modelica.Blocks.Interfaces.RealOutput AttackAngle annotation(
        Placement(visible = true, transformation(origin = {-98, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-95, 79}, extent = {{-9, -9}, {9, 9}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Position Sail_angle(exact = true, useSupport = true) annotation(
        Placement(visible = true, transformation(origin = {-4, -70}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
      Modelica.Mechanics.MultiBody.Joints.Revolute Servo(animation = false, n = {0, 0, 1}, phi(fixed = false, start = 0), useAxisFlange = true) annotation(
        Placement(visible = true, transformation(origin = {24, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      Modelica.Blocks.Math.Gain Deg_to_Rad(k = -Modelica.Constants.pi/180) annotation(
        Placement(visible = true, transformation(origin = {-38, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Nonlinear.SlewRateLimiter SailSpeedLimiter(Rising = MaxSailAngularSpeed, initType = Modelica.Blocks.Types.Init.InitialState, strict = true, y_start = InitialSailAngle) annotation(
        Placement(visible = true, transformation(origin = {-68, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation Forces_pos(animation = true, r = {AxisPos - 0.25*C, 0, s/2}) annotation(
        Placement(visible = true, transformation(origin = {0, 4}, extent = {{10, -10}, {-10, 10}}, rotation = -90)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation TopEnd_pos(animation = true, r = {-(AxisPos - 0.25*C), 0, s/2}) annotation(
        Placement(visible = true, transformation(origin = {0, 72}, extent = {{10, -10}, {-10, 10}}, rotation = -90)));
      Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorque forceAndTorque(animation = AnimationForces, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_b) annotation(
        Placement(visible = true, transformation(origin = {42, 34}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      ShipSIM.SubComponents.ApparentSpeedXY apparentSpeedXY annotation(
        Placement(visible = true, transformation(origin = {42, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedFrame fixedFrame(animation = true, length = 2) annotation(
        Placement(visible = true, transformation(origin = {56, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape SailVisualizer(animation = true, height = s, length = C, lengthDirection = {-1, 0, 0}, r_shape = {AxisPos, 0, s/2}, width = 0.18*C) annotation(
        Placement(visible = true, transformation(origin = {56, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Tables.CombiTable2D Cl_Table(extrapolation = Modelica.Blocks.Types.Extrapolation.HoldLastPoint, smoothness = Modelica.Blocks.Types.Smoothness.LinearSegments, table = wingData.Cl) annotation(
        Placement(visible = true, transformation(origin = {-58, 54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Tables.CombiTable2D Cd_Table(extrapolation = Modelica.Blocks.Types.Extrapolation.HoldLastPoint, smoothness = Modelica.Blocks.Types.Smoothness.LinearSegments, table = wingData.Cd) annotation(
        Placement(visible = true, transformation(origin = {-58, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Tables.CombiTable2D Cm_Table(extrapolation = Modelica.Blocks.Types.Extrapolation.HoldLastPoint, smoothness = Modelica.Blocks.Types.Smoothness.LinearSegments, table = wingData.Cm) annotation(
        Placement(visible = true, transformation(origin = {-58, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      // Variables
      Real Sign "Sign of the attack angle";
      Real Re "Reynolds number of the sail";
      Real Drag "Drag Force";
      Real Lift "Lift Force";
      Real Moment "Moment";
      Real Drag_Vect[3] "Normalized vector of drag";
      Real Lift_Vect[3] "Normalized vector of lift";
      Real Cd "Drag coefficient";
      Real Cl "Lift coefficient";
      Real Cm "Moment coefficient";
    protected
      outer ShipSIM.Components.Environment environment;
      parameter Modelica.SIunits.Area Surf = C*s "Proyected surface of WingSail";
    equation
// Connect apparent speed (wind)
      apparentSpeedXY.WorldSpeed = environment.WindVector;
// Calculate Re and connect attack angle
      AttackAngle = apparentSpeedXY.AttackAngleSigned;
      Sign = sign(apparentSpeedXY.AttackAngleSigned);
      Cl_Table.u1 = to_deg(abs(apparentSpeedXY.AttackAngleSigned));
      Cd_Table.u1 = to_deg(abs(apparentSpeedXY.AttackAngleSigned));
      Cm_Table.u1 = to_deg(abs(apparentSpeedXY.AttackAngleSigned));
      Re = apparentSpeedXY.ApparentSpeed*C/environment.AirKViscosity;
      Cl_Table.u2 = Re;
      Cd_Table.u2 = Re;
      Cm_Table.u2 = Re;
      Cd = Cd_Table.y;
      Cl = Cl_Table.y;
      Cm = Cm_Table.y;
//Calculate forces and moments
      Drag = Cd*0.5*environment.AirDensity*Surf*apparentSpeedXY.ApparentSpeed^2;
      Lift = Cl*0.5*environment.AirDensity*Surf*apparentSpeedXY.ApparentSpeed^2;
      Moment = Cm*0.5*environment.AirDensity*Surf*C*apparentSpeedXY.ApparentSpeed^2;
      Drag_Vect = Modelica.Math.Vectors.normalize(-1*apparentSpeedXY.SpeedLocal) "Vector of drag = -1*vector of apparent wind";
      Lift_Vect = {-Drag_Vect[2], Drag_Vect[1], 0}*Sign "Normalized vector perpendicular to apparent wind, adjusted with the direction";
      forceAndTorque.force = Drag*Drag_Vect + Lift*Lift_Vect;
      forceAndTorque.torque = {0, 0, -Moment*Sign};
// Connections
      connect(Sail_angle.flange, Servo.support) annotation(
        Line(points = {{-4, -80}, {4, -80}, {4, -76}, {14, -76}}));
      connect(frame_a, Servo.frame_a) annotation(
        Line(points = {{0, -100}, {0, -90}, {24, -90}, {24, -80}}));
      connect(Sail_angle.support, Servo.axis) annotation(
        Line(points = {{6, -70}, {14, -70}}));
      connect(Deg_to_Rad.y, Sail_angle.phi_ref) annotation(
        Line(points = {{-26, -40}, {-4, -40}, {-4, -58}}, color = {0, 0, 127}));
      connect(SailSpeedLimiter.y, Deg_to_Rad.u) annotation(
        Line(points = {{-56, -40}, {-50, -40}}, color = {0, 0, 127}));
      connect(SailSpeedLimiter.u, Sail_Order) annotation(
        Line(points = {{-80, -40}, {-89, -40}, {-89, -38}, {-106, -38}}, color = {0, 0, 127}));
      connect(SailSpeedLimiter.y, Sail_position) annotation(
        Line(points = {{-56, -40}, {-56, -74}, {-96, -74}}, color = {0, 0, 127}));
      connect(Servo.frame_b, Forces_pos.frame_a) annotation(
        Line(points = {{24, -60}, {24, -26}, {0, -26}, {0, -6}}, color = {95, 95, 95}));
      connect(Forces_pos.frame_b, TopEnd_pos.frame_a) annotation(
        Line(points = {{0, 14}, {0, 62}}, color = {95, 95, 95}));
      connect(TopEnd_pos.frame_b, frame_b) annotation(
        Line(points = {{0, 82}, {0, 100}}, color = {95, 95, 95}));
      connect(fixedFrame.frame_a, Servo.frame_b) annotation(
        Line(points = {{46, 0}, {24, 0}, {24, -60}}, color = {95, 95, 95}));
      connect(SailVisualizer.frame_a, Servo.frame_b) annotation(
        Line(points = {{46, -24}, {24, -24}, {24, -60}}, color = {95, 95, 95}));
      connect(apparentSpeedXY.frame_a, Forces_pos.frame_b) annotation(
        Line(points = {{32, 60}, {0, 60}, {0, 14}}, color = {95, 95, 95}));
      connect(forceAndTorque.frame_b, Forces_pos.frame_b) annotation(
        Line(points = {{32, 34}, {0, 34}, {0, 14}}, color = {95, 95, 95}));
      annotation(
        Icon(graphics = {Polygon(fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{30, -80}, {-30, -80}, {-30, 88}, {-10, 88}, {30, 88}, {30, -80}}), Rectangle(origin = {0, -85}, extent = {{-10, 5}, {10, -5}}), Line(origin = {62.0283, -59.9355}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {61.3685, 19.9921}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {61.6724, 40.05}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {61.6441, -0.142118}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {61.5786, -20.1318}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {61.6724, 59.804}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {61.7244, -40.1816}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {-26.1775, -80.107}, points = {{-58, 0}, {-8, 0}}, color = {200, 200, 200}, arrow = {Arrow.Filled, Arrow.None}, arrowSize = 14), Line(origin = {-34.5718, -59.8956}, points = {{-58, 0}, {2, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 14), Rectangle(origin = {-65, -21}, lineColor = {64, 64, 64}, fillColor = {255, 215, 136}, fillPattern = FillPattern.Solid, extent = {{-25, -19}, {25, 19}}, radius = 10), Line(origin = {-65, -14.2886}, points = {{-25, 0}, {25, 0}}), Line(origin = {-65, -28}, points = {{-25, 0}, {25, 0}}), Line(origin = {-65.0577, -20}, points = {{0, 18}, {0, -20}})}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
        Diagram,
        Documentation(info = "<html><head></head><body><div><u>Working Principles</u>:</div><div>Wingsail model with the following functions:</div><div><br></div><div>- The sail is oriented by means of a input at constant speed</div><div>- The sail is to be used with a record of the Cl, Cd and Cm profile coefficients.</div><div>- Indication of the current attack angle is provided as output</div><div><br></div><div>This sail receives the apparent wind on X and Y coordinates and calculates the force applied to the wingsail that is translated to the ship using frame_a connector.</div><div><br></div><div><b>IMPORTANT</b>: wingData coefficients shall be based on the following non-dimensional ratio:</div><div><br></div><div>C_l = F_l / (0.5 * rho * V^2 * chord * spam)</div><div><br></div><div><u>Limitations</u>:</div><div>- There is no modelled the inertia of the wingsail. This inertia is to be included into ship own inertia.</div><div>- Only takes into account the X and Y components of the wind.</div><div>- The sail can be stackable with other components, but there is not modelled the efect of other sails or superstructures on the wind flow.</div><div><br></div><div><u>References</u>:</div><div>For wing coefficients:</div><div><br></div><div><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[SAND8O-2114]</td><td>Robert E. Sheldahl, Paul C. Klimas, \"Aerodynamic Characteristics of Seven Symmetrical Airfoil Sections Through 180-Degree Angle of Attack for Use in Aerodynamic Analysis of Vertical Axis Wind Turbines\", Sandia National Laboratories, SAND8O-2144, March 1981,&nbsp;<a href=\"https://www.osti.gov/servlets/purl/6548367\">https://doi.org/10.2172/6548367</a></td></tr></tbody></table></div><p><u>Know issues</u>:</p><div><u>Further development</u>:</div><div>- Include wind speed profile Vs height.</div><div>- Include a polar wind reduction for use with other sails or superstructures.</div></body></html>", revisions = "<html><head></head><body><div>Rev. 0.2&nbsp;<span style=\"font-size: 12px;\">[BPuente]</span>&nbsp;(17/12/2023): Corrected use of Cd, Cl and Cm due to non-dimension correlation.</div><div>Rev. 0.1&nbsp;<span style=\"font-size: 12px;\">[BPuente]</span>&nbsp;(06/05/2023): Added animation forces selector.</div><span style=\"font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-size: 12px;\">(04/05/2023): Initial release</span></body></html>"));
    end WingSail;
    annotation(
      Icon(graphics = {Polygon(origin = {10, 6}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{30, -70}, {-30, -70}, {-30, 0}, {-10, 70}, {30, 70}, {30, -70}}), Rectangle(origin = {55, -2}, extent = {{-15, 2}, {15, -2}}), Rectangle(origin = {-43, -2}, extent = {{-23, 2}, {23, -2}}), Rectangle(origin = {-74, -2}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-8, 22}, {8, -22}}), Rectangle(origin = {10, -69}, extent = {{-10, 5}, {10, -5}})}));
  end AlternativePropulsion;

  package Machines "Components relative to ship main machinery"
    model Crane "Crane model"
      parameter Modelica.SIunits.Length PedestalHeight "Height of pedestal [m]" annotation(
        Dialog(group = "Crane geometry"));
      parameter Modelica.SIunits.Length BoomLength "Length of boom [m]" annotation(
        Dialog(group = "Crane geometry"));
      parameter Real PedestalInitialAngle(unit = "deg") = 0 "Initial rotation of pedestal from X axis [deg]" annotation(
        Dialog(tab = "Initialization", group = "Crane initial position"));
      parameter Real BoomInitialAngle(unit = "deg") = 90 "Initial angle of boom from vertical [deg]" annotation(
        Dialog(tab = "Initialization", group = "Crane initial position"));
      parameter Real PedestalSpeed(unit = "deg/s") = 2 "Pedestal rotation speed [deg/s]" annotation(
        Dialog(group = "Crane characteristics"));
      parameter Real BoomSpeed(unit = "deg/s") = 4 "Boom inclination speed [deg/s]" annotation(
        Dialog(group = "Crane characteristics"));
      parameter Real Cable_k(unit = "N/m") "Cable elasticity [N/m]" annotation(
        Dialog(group = "Cable characteristics"));
      parameter Modelica.SIunits.Force CableRotureStrenght "Cable roture strenght [N]" annotation(
        Dialog(group = "Cable characteristics"));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(
        Placement(visible = true, transformation(origin = {0, -100}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {0, -100}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation Pedestal(animation = true, r = {0, 0, PedestalHeight}, width = 1) annotation(
        Placement(visible = true, transformation(origin = {0, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      Modelica.Mechanics.MultiBody.Joints.Revolute revolute(animation = false, n = {0, 0, 1}, useAxisFlange = true) annotation(
        Placement(visible = true, transformation(origin = {0, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(animation = false, n = {0, 1, 0}, useAxisFlange = true) annotation(
        Placement(visible = true, transformation(origin = {0, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation Boom(animation = true, r = {0, 0, BoomLength}, width = 1) annotation(
        Placement(visible = true, transformation(origin = {12, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Position PedestalPos(exact = true, useSupport = true) annotation(
        Placement(visible = true, transformation(origin = {-32, -70}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
      Modelica.Mechanics.Rotational.Sources.Position BoomPos(exact = true, useSupport = true) annotation(
        Placement(visible = true, transformation(origin = {-32, -10}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
      Modelica.Blocks.Math.Gain BoomdegRad(k = -Modelica.Constants.pi/180) annotation(
        Placement(visible = true, transformation(origin = {-51, 7}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
      Modelica.Blocks.Math.Gain PedestaldegRad(k = -Modelica.Constants.pi/180) annotation(
        Placement(visible = true, transformation(origin = {-51, -51}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
      Modelica.Blocks.Nonlinear.SlewRateLimiter slewRateLimiterBoom(Rising = BoomSpeed, initType = Modelica.Blocks.Types.Init.InitialState, strict = true, y_start = BoomInitialAngle) annotation(
        Placement(visible = true, transformation(origin = {-76, 6}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
      Modelica.Blocks.Nonlinear.SlewRateLimiter slewRateLimiterPedestal(Rising = PedestalSpeed, initType = Modelica.Blocks.Types.Init.InitialState, strict = true, y_start = PedestalInitialAngle) annotation(
        Placement(visible = true, transformation(origin = {-75, -49}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput BoomSetAngle "Angle of the boom from vertical Vs time" annotation(
        Placement(visible = true, transformation(origin = {-120, 6}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-95, 59}, extent = {{-9, -9}, {9, 9}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput PedestalSetAngle "Orientation of pedestal from X axis Vs time" annotation(
        Placement(visible = true, transformation(origin = {-116, -50}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-95, -61}, extent = {{-9, -9}, {9, 9}}, rotation = 0)));
      ShipSIM.SubComponents.Cable cable(RotureStrenght = CableRotureStrenght, k = Cable_k) annotation(
        Placement(visible = true, transformation(origin = {44, 14}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput CableLength "Cable length from boom extreme to frame_b Vs time" annotation(
        Placement(visible = true, transformation(origin = {108, 14}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {103, 21}, extent = {{-9, -9}, {9, 9}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(
        Placement(visible = true, transformation(origin = {100, -14}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {100, -20}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    equation
      connect(frame_a, revolute.frame_a) annotation(
        Line(points = {{0, -100}, {0, -80}}));
      connect(revolute.frame_b, Pedestal.frame_a) annotation(
        Line(points = {{0, -60}, {0, -48}}, color = {95, 95, 95}));
      connect(Pedestal.frame_b, revolute1.frame_a) annotation(
        Line(points = {{0, -28}, {0, -20}}, color = {95, 95, 95}));
      connect(revolute1.frame_b, Boom.frame_a) annotation(
        Line(points = {{0, 0}, {0, 32}, {2, 32}}, color = {95, 95, 95}));
      connect(revolute.axis, PedestalPos.support) annotation(
        Line(points = {{-10, -70}, {-22, -70}}));
      connect(PedestalPos.flange, revolute.support) annotation(
        Line(points = {{-32, -80}, {-10, -80}, {-10, -76}}));
      connect(BoomPos.support, revolute1.axis) annotation(
        Line(points = {{-22, -10}, {-10, -10}}));
      connect(BoomPos.flange, revolute1.support) annotation(
        Line(points = {{-32, -20}, {-10, -20}, {-10, -16}}));
      connect(PedestaldegRad.y, PedestalPos.phi_ref) annotation(
        Line(points = {{-45.5, -51}, {-45.5, -58}, {-32, -58}}, color = {0, 0, 127}));
      connect(BoomdegRad.y, BoomPos.phi_ref) annotation(
        Line(points = {{-45.5, 7}, {-45.5, 2}, {-32, 2}}, color = {0, 0, 127}));
      connect(slewRateLimiterBoom.y, BoomdegRad.u) annotation(
        Line(points = {{-69, 6}, {-64.5, 6}, {-64.5, 7}, {-57, 7}}, color = {0, 0, 127}));
      connect(slewRateLimiterPedestal.y, PedestaldegRad.u) annotation(
        Line(points = {{-68, -48}, {-62, -48}, {-62, -51}, {-57, -51}}, color = {0, 0, 127}));
      connect(PedestalSetAngle, slewRateLimiterPedestal.u) annotation(
        Line(points = {{-116, -50}, {-100, -50}, {-100, -48}, {-84, -48}}, color = {0, 0, 127}));
      connect(BoomSetAngle, slewRateLimiterBoom.u) annotation(
        Line(points = {{-120, 6}, {-84, 6}}, color = {0, 0, 127}));
      connect(cable.SetLenght, CableLength) annotation(
        Line(points = {{54, 14}, {108, 14}}, color = {0, 0, 127}));
      connect(Boom.frame_b, cable.frame_a) annotation(
        Line(points = {{22, 32}, {44, 32}, {44, 24}}, color = {95, 95, 95}));
      connect(cable.frame_b, frame_b) annotation(
        Line(points = {{44, 4}, {44, -14}, {100, -14}}));
      assert(BoomSetAngle > 90, "!W0001 [Crane] (" + getInstanceName() + "): Boom angle cannot be greater than 90º deg!", level = AssertionLevel.warning);
      annotation(
        Diagram,
        Icon(graphics = {Rectangle(origin = {0, -69}, extent = {{-10, 27}, {10, -27}}), Rectangle(origin = {0, -38}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-20, 4}, {20, -4}}), Rectangle(origin = {0, -29}, extent = {{-10, 5}, {10, -5}}), Polygon(origin = {25, 27}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-35, -51}, {31, 51}, {35, 49}, {-15, -51}, {-35, -51}}), Line(origin = {60, 22}, points = {{0, 54}, {0, -48}, {4, -48}, {4, -54}, {-4, -54}, {-4, -48}, {0, -48}})}),
        Documentation(info = "<html><head></head><body><div>Crane model to be used in operation simulations.</div><div><br></div><div><u>Working Principle:</u></div><div><u><br></u></div><div>This crane model has two main movements:</div><div>- Rotation of the base among vertical axis (full -180º/+180º)</div><div>- Inclination of the boom from vertical line (up to 90º)</div><div><br></div><div>In addition, a cable is modelled between the boom extreme to the frame B.</div><div>This crane is controllable in those three inputs.</div><div><br></div><div><u>Limitations</u>:</div><div><br></div><div>The inclination of the crane is limited to 90º from vertical.</div><div><br></div><div><u>References</u>:</div><div><br></div><div>N/A</div><p><u>Know issues</u>:</p><p>The cable has no damping, for this reason the weight can maintain a continuous oscillation movement among the equilibrium.</p><div><u>Further development</u>:</div><div><br></div><div>Introduce cable damping.</div><div><br></div></body></html>", revisions = "<html><head></head><body>Rev. 0.0&nbsp;<span style=\"font-size: 12px;\">[BPuente]&nbsp;</span>(14/10/2023): Initial release.</body></html>"));
    end Crane;

    model SimpleDieselEngine
      Modelica.Blocks.Nonlinear.SlewRateLimiter slewRateLimiter annotation(
        Placement(visible = true, transformation(origin = {-126, 60}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
      Modelica.Blocks.Nonlinear.Limiter RPM_limiter(uMax = 2200, uMin = 0) annotation(
        Placement(visible = true, transformation(origin = {-104, 60}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput RPM_demand annotation(
        Placement(visible = true, transformation(origin = {-154, 60}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {146, 80}, extent = {{14, -14}, {-14, 14}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Components.Inertia inertia(J = 15, w(displayUnit = "rpm", fixed = true, start = 157.0796326794897)) annotation(
        Placement(visible = true, transformation(origin = {109, 33}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sensors.MultiSensor multiSensor annotation(
        Placement(visible = true, transformation(origin = {56, 32}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Torque torque annotation(
        Placement(visible = true, transformation(origin = {-48, 30}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a annotation(
        Placement(visible = true, transformation(origin = {149, 33}, extent = {{-7, -7}, {7, 7}}, rotation = 0), iconTransformation(origin = {-150, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Nonlinear.VariableLimiter variableLimiter annotation(
        Placement(visible = true, transformation(origin = {-86, 26}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
      Modelica.Blocks.Tables.CombiTable1Ds MaxTorqueTable(extrapolation = Modelica.Blocks.Types.Extrapolation.HoldLastPoint, table = [600, 1500; 800, 2000; 900, 2750; 1100, 5300; 1200, 5500; 2100, 5500; 2300, 500]) annotation(
        Placement(visible = true, transformation(origin = {-122, 32}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
      Modelica.Blocks.Math.Gain RPM(k = 60/(2*Modelica.Constants.pi)) annotation(
        Placement(visible = true, transformation(origin = {-44, 48}, extent = {{4, -4}, {-4, 4}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression Torque_lowlimit annotation(
        Placement(visible = true, transformation(origin = {-123, 13}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
      Modelica.Blocks.Continuous.Integrator Joules annotation(
        Placement(visible = true, transformation(origin = {123, -35}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
      Modelica.Blocks.Continuous.Integrator Fuel_g annotation(
        Placement(visible = true, transformation(origin = {118, -62}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
      Modelica.Blocks.Math.Gain kWh(k = 1/3600000) annotation(
        Placement(visible = true, transformation(origin = {140, -34}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput KWh annotation(
        Placement(visible = true, transformation(origin = {155, -33}, extent = {{-7, -7}, {7, 7}}, rotation = 0), iconTransformation(origin = {90, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Blocks.Math.Gain Fuel_kg(k = 1/1000) annotation(
        Placement(visible = true, transformation(origin = {138, -62}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
      Modelica.Blocks.Math.Gain gain(k = 1/1000) annotation(
        Placement(visible = true, transformation(origin = {138, -76}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput Fuel annotation(
        Placement(visible = true, transformation(origin = {156, -62}, extent = {{-8, -8}, {8, 8}}, rotation = 0), iconTransformation(origin = {50, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Blocks.Interfaces.RealOutput Inst_Fuel annotation(
        Placement(visible = true, transformation(origin = {156, -76}, extent = {{-8, -8}, {8, 8}}, rotation = 0), iconTransformation(origin = {10, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Blocks.Continuous.LimPID pid(Td = 0.01, k = 300, yMax = 6000, yMin = 0) annotation(
        Placement(visible = true, transformation(origin = {-78, 60}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
      Modelica.Blocks.Math.Gain h_to_s(k = 1/3600) annotation(
        Placement(visible = true, transformation(origin = {102, -62}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
      Modelica.Blocks.Math.Product product annotation(
        Placement(visible = true, transformation(origin = {86, -70}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
      Modelica.Blocks.Tables.CombiTable1Ds SFOCtable(extrapolation = Modelica.Blocks.Types.Extrapolation.HoldLastPoint, table = [605, 185; 907.5, 179; 1028.5, 178; 1210, 182]) annotation(
        Placement(visible = true, transformation(origin = {64, -58}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
      Modelica.Blocks.Math.Gain W_to_kW(k = 1/1000) annotation(
        Placement(visible = true, transformation(origin = {44, -48}, extent = {{4, -4}, {-4, 4}}, rotation = 90)));
    equation
      connect(RPM_demand, slewRateLimiter.u) annotation(
        Line(points = {{-154, 60}, {-133, 60}}, color = {0, 0, 127}));
      connect(slewRateLimiter.y, RPM_limiter.u) annotation(
        Line(points = {{-119.4, 60}, {-111.4, 60}}, color = {0, 0, 127}));
      connect(torque.flange, multiSensor.flange_a) annotation(
        Line(points = {{-42, 30}, {35, 30}, {35, 32}, {50, 32}}));
      connect(multiSensor.flange_b, inertia.flange_a) annotation(
        Line(points = {{62, 32}, {62, 33}, {102, 33}}));
      connect(inertia.flange_b, flange_a) annotation(
        Line(points = {{116, 33}, {149, 33}}));
      connect(MaxTorqueTable.y[1], variableLimiter.limit1) annotation(
        Line(points = {{-115.4, 32}, {-99.4, 32}, {-99.4, 31}, {-93.4, 31}}, color = {0, 0, 127}));
      connect(Torque_lowlimit.y, variableLimiter.limit2) annotation(
        Line(points = {{-115.3, 13}, {-105.3, 13}, {-105.3, 21}, {-93.3, 21}}, color = {0, 0, 127}));
      connect(Fuel_g.y, Fuel_kg.u) annotation(
        Line(points = {{124.6, -62}, {132.6, -62}}, color = {0, 0, 127}));
      connect(Fuel_kg.y, Fuel) annotation(
        Line(points = {{142.4, -62}, {156.4, -62}}, color = {0, 0, 127}));
      connect(RPM_limiter.y, pid.u_s) annotation(
        Line(points = {{-97.4, 60}, {-85.4, 60}}, color = {0, 0, 127}));
      connect(pid.u_m, RPM.y) annotation(
        Line(points = {{-78, 52.8}, {-78, 48}, {-48, 48}}, color = {0, 0, 127}));
      connect(pid.y, variableLimiter.u) annotation(
        Line(points = {{-71.4, 60}, {-97.4, 60}, {-97.4, 26}, {-93, 26}}, color = {0, 0, 127}));
      connect(gain.y, Inst_Fuel) annotation(
        Line(points = {{142.4, -76}, {156.4, -76}}, color = {0, 0, 127}));
      connect(h_to_s.y, Fuel_g.u) annotation(
        Line(points = {{106.4, -62}, {111.4, -62}}, color = {0, 0, 127}));
      connect(h_to_s.y, gain.u) annotation(
        Line(points = {{106.4, -62}, {106.4, -76}, {133.4, -76}}, color = {0, 0, 127}));
      connect(product.y, h_to_s.u) annotation(
        Line(points = {{92.6, -70}, {93.6, -70}, {93.6, -62}, {96.6, -62}}, color = {0, 0, 127}));
      connect(SFOCtable.y[1], product.u1) annotation(
        Line(points = {{70.6, -58}, {73.6, -58}, {73.6, -66}, {78.6, -66}}, color = {0, 0, 127}));
      connect(multiSensor.power, W_to_kW.u) annotation(
        Line(points = {{52, 25}, {43.4, 25}, {43.4, -41}, {43.7, -41}, {43.7, -43}, {44, -43}}, color = {0, 0, 127}));
      connect(W_to_kW.y, SFOCtable.u) annotation(
        Line(points = {{44, -52.4}, {49.1, -52.4}, {49.1, -58.4}, {56.2, -58.4}}, color = {0, 0, 127}));
      connect(variableLimiter.y, torque.tau) annotation(
        Line(points = {{-79.4, 26}, {-76.6, 26}, {-76.6, 30}, {-55.4, 30}}, color = {0, 0, 127}));
      connect(multiSensor.power, Joules.u) annotation(
        Line(points = {{52, 25}, {52, -35}, {117, -35}}, color = {0, 0, 127}));
      connect(Joules.y, kWh.u) annotation(
        Line(points = {{128.5, -35}, {131.5, -35}, {131.5, -34}, {135, -34}}, color = {0, 0, 127}));
      connect(kWh.y, KWh) annotation(
        Line(points = {{144.4, -34}, {146.8, -34}, {146.8, -33}, {155.8, -33}}, color = {0, 0, 127}));
      connect(W_to_kW.y, product.u2) annotation(
        Line(points = {{44, -52.4}, {44, -74.4}, {78, -74.4}}, color = {0, 0, 127}));
      connect(RPM.y, MaxTorqueTable.u) annotation(
        Line(points = {{-48.4, 48}, {-78.4, 48}, {-78.4, 44}, {-136.4, 44}, {-136.4, 32}, {-130.4, 32}}, color = {0, 0, 127}));
      connect(multiSensor.w, RPM.u) annotation(
        Line(points = {{60, 26}, {76, 26}, {76, 48}, {-39, 48}}, color = {0, 0, 127}));
    protected
      annotation(
        uses(Modelica(version = "3.2.3")),
        experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-6, Interval = 0.002),
        Icon(coordinateSystem(extent = {{-150, -100}, {150, 100}}), graphics = {Rectangle(origin = {0, -10}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-120, 70}, {120, -70}}), Rectangle(origin = {-136, -40}, fillColor = {80, 80, 80}, fillPattern = FillPattern.Solid, extent = {{-4, 30}, {4, -30}}), Rectangle(origin = {-126, -40}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-6, 6}, {6, -6}}), Rectangle(origin = {0, -40}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-120, 40}, {120, -40}}), Line(origin = {-80, 30}, points = {{0, 30}, {0, -30}}), Line(origin = {-39.865, 29.6864}, points = {{0, 30}, {0, -30}}), Line(origin = {0.27004, 29.6864}, points = {{0, 30}, {0, -30}}), Line(origin = {40.0915, 30}, points = {{0, 30}, {0, -30}}), Line(origin = {80.2265, 30}, points = {{0, 30}, {0, -30}}), Ellipse(origin = {-120, 60}, fillColor = {80, 80, 80}, fillPattern = FillPattern.Solid, extent = {{-20, 20}, {20, -20}}), Line(origin = {-1, 0}, points = {{-149, 98}, {149, -98}, {149, -98}, {149, -98}}, color = {255, 0, 0}, thickness = 1.25)}),
        Diagram(coordinateSystem(extent = {{-150, -100}, {150, 100}})),
        Documentation(info = "<html><head></head><body><div><br></div><div><div class=\"htmlDoc\"><div style=\"font-family: 'MS Shell Dlg 2';\"><u>Limitations:</u></div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><div><div><u>References:</u></div><div><br></div></div><div><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div><br></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><u>Further development:</u></div></div></body></html>", revisions = "<html><head></head><body><span style=\"font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]</span><span style=\"font-size: 12px;\">&nbsp;(01/12/2024): Initial pre-release</span></body></html>"));
    end SimpleDieselEngine;
    annotation(
      Icon(graphics = {Rectangle(origin = {-1, 51}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-25, 17}, {25, -17}}), Ellipse(origin = {0, 40}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-4, 4}, {4, -4}}), Line(origin = {-0.880158, 64.9556}, points = {{-25, 0}, {25, 0}, {25, 0}}), Line(origin = {-0.880158, 61.4272}, points = {{-25, 0}, {25, 0}, {25, 0}}), Rectangle(origin = {0, 3}, extent = {{-8, 31}, {8, -31}}), Ellipse(origin = {0, -46}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-26, 26}, {26, -26}}), Ellipse(origin = {0, -46}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-14, 14}, {14, -14}})}));
  end Machines;

  package Electrical "Components relative to ship electrical equipment"
    model OnOffConsumer "Consumer using an on-off switch"
      extends ShipSIM.Components.Electrical.Internal.RandomStart;
      parameter Boolean getIntegrators = false "=true, calculate average values" annotation(
        Evaluate = true,
        HideResult = true,
        choices(checkBox = true));
      parameter Real StartTable[:, 2] = {{0, 1}, {1, 0.4}, {2, 0.8}, {3, 1}, {4, 1.5}, {5, 1}} "Table Time Vs Power for starting period" annotation(
        Dialog(tab = "Factors", group = "Power Factors"));
      parameter Real CycleTable[:, 2] = {{0, 1}, {1, 0.9}, {2, 1.1}, {3, 0.9}, {4, 1.1}, {5, 0.9}, {6, 1.1}, {7, 0.9}, {8, 1}} "Table Time Vs Power for operating period" annotation(
        Dialog(tab = "Factors", group = "Power Factors"));
      parameter Real NominalPower = 1000 "Nominal Power (faceplate power)" annotation(
        Dialog(tab = "Factors", group = "Power Factors"));
      parameter Real Kr = 0.85 "Percentage of nominal power used (0-1]" annotation(
        Dialog(tab = "Factors", group = "Power Factors"));
      Modelica.Blocks.Interfaces.RealOutput y "Actual power" annotation(
        Placement(visible = true, transformation(origin = {102, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {102, 2.22045e-16}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
      ShipSIM.Components.Electrical.Internal.Integrators Integrators if getIntegrators;
    protected
      Modelica.Blocks.Tables.CombiTable1D StartInterpolation(extrapolation = Modelica.Blocks.Types.Extrapolation.HoldLastPoint, table = StartTable) annotation(
        Placement(visible = true, transformation(origin = {-58, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Tables.CombiTable1D CycleInterpolation(extrapolation = Modelica.Blocks.Types.Extrapolation.HoldLastPoint, table = CycleTable) annotation(
        Placement(visible = true, transformation(origin = {-58, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Logical.Timer timer annotation(
        Placement(visible = true, transformation(origin = {-58, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      parameter Real Tstart = StartTable[size(StartTable, 1), 1];
      parameter Real Tcycle = CycleTable[size(CycleTable, 1), 1];
      Real Tinternal(start = 0) "Cycle time";
    equation
      Tinternal = if (timer.y < Tstart) then timer.y else Tcycle*(((timer.y - Tstart)/Tcycle) - integer(floor((timer.y - Tstart)/Tcycle)));
      StartInterpolation.u[1] = Tinternal;
      CycleInterpolation.u[1] = Tinternal;
      if Work then
        y = (if (timer.y < Tstart) then StartInterpolation.y[1] else CycleInterpolation.y[1])*NominalPower*Kr;
      else
        y = 0;
      end if;
      timer.u = Work;
      connect(y, Integrators.u);
      connect(Integrators.Work, Work);
      annotation(
        uses(Modelica(version = "3.2.3")),
        Icon(graphics = {Rectangle(origin = {-14, 12}, rotation = 35, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, extent = {{-4, 23}, {4, -23}}), Ellipse(origin = {-6, 0}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-11, 12}, {11, -12}}), Rectangle(rotation = 90, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-39, 6}, {39, -6}})}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
        Documentation(info = "<html><head></head><body><div><u>Working Principles</u>:</div><div><br></div><div>This component will provide an output while the cycle is in ON.</div><div><br></div><div>This component provides a real output using \"On\" \"Off\" random cycles with the following characteristics:</div><div><br></div><div>- <b>NominalPower</b>: Nominal output signal, to be multiplied by the StartTable/CycleTable and Kr</div><div>- <b>StartTable</b>: Non-dimensional table of the signal at start period. Only used when trggers from OFF to ON.</div><div>- <b>CycleTable</b>: Non-dimensional table of the signal at cycle period. Used and repeated after the end of StartTable.</div><div>- <b>Kr</b>: Percentage of the NominalPower used for the signal (gain)</div><div><br></div><div>For the random ON/OFF cycles, the following parameters apply:</div><div><br></div><div>- <b>Seed</b>: Seed to feed the random nuber generator. If two components have the same parameters and also the same seed (not being zero), then produce the same result</div><div>- <b>Kt</b> and <b>Kt_dev</b>: Percentage of \"On\" time and their typical deviation</div><div>- <b>StartsHour</b> and <b>StartsHour_dev</b>: Number of \"On\" starts on an hour with their typical deviation.</div><div><br></div><div>Internally we can find the following variables:</div><div><br></div><div>- <b>SimultaneousFactor</b>: Percentage of time in \"ON\" status.</div><div>- <b>AveragePower</b>: Average value of the output signal.&nbsp;</div><div><br></div><div><u>Limitations</u>:</div><div>Since \"On\" time cannot be negative, the output is truncated to +-3*typical deviation, and the minimum cannot be below zero.&nbsp;</div><div>On this cases, if we put a mean value of Kt=3 with a Kt_dev=2, then the distribution is truncated to (0,9], producing a mean value that does not match with 3.</div><div><br></div><div><u>References</u>:</div><div><br></div><div><u>Know issues</u>:</div><div><u><br></u></div><div><u>Further development</u>:</div></body></html>", revisions = "<html><head></head><body><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.2 [BPuente] (23/11/2024): Optional average values, off by default to increase simulation speed.</span></div><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.1 [BPuente] (16/11/2024): Bugfix release</span></div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">&nbsp;(14/05/2023): Initial release</span></body></html>"));
    end OnOffConsumer;

    model TriggerConsumer "Consumer using a trigger switch"
      extends ShipSIM.Components.Electrical.Internal.RandomStart;
      parameter Boolean getIntegrators = false "=true, calculate average values" annotation(
        Evaluate = true,
        HideResult = true,
        choices(checkBox = true));
      parameter Real StartTable[:, 2] = {{0, 0}, {1, 0.4}, {2, 0.8}, {3, 1}, {4, 1.5}, {5, 1}} "Table Time Vs Power for starting period" annotation(
        Dialog(tab = "Factors", group = "Power Factors"));
      parameter Real CycleTable[:, 2] = {{0, 1}, {1, 0.9}, {2, 1.1}, {3, 0.9}, {4, 1.1}, {5, 0.9}, {6, 1.1}, {7, 0.9}, {8, 0}} "Table Time Vs Power for operating period, shall end in zero" annotation(
        Dialog(tab = "Factors", group = "Power Factors"));
      parameter Real NominalPower = 1000 "Nominal Power in kW (faceplate power)" annotation(
        Dialog(tab = "Factors", group = "Power Factors"));
      parameter Real Kr = 0.85 "Percentage of nominal power used (0-1]" annotation(
        Dialog(tab = "Factors", group = "Power Factors"));
      Modelica.Blocks.Interfaces.RealOutput y annotation(
        Placement(visible = true, transformation(origin = {102, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {102, 2.22045e-16}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
      ShipSIM.Components.Electrical.Internal.Integrators Integrators if getIntegrators;
    protected
      Modelica.Blocks.Interfaces.BooleanOutput Working;
      Modelica.Blocks.Sources.BooleanExpression booleanExpression(y = true) annotation(
        Placement(visible = true, transformation(origin = {-78, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Logical.Less less annotation(
        Placement(visible = true, transformation(origin = {12, 56}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Logical.LogicalSwitch logicalSwitch annotation(
        Placement(visible = true, transformation(origin = {-38, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      Modelica.Blocks.Sources.RealExpression timesignal(y = time) annotation(
        Placement(visible = true, transformation(origin = {-66, 78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Math.Add add(k2 = -1) annotation(
        Placement(visible = true, transformation(origin = {12, 84}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Discrete.TriggeredSampler triggeredSampler annotation(
        Placement(visible = true, transformation(origin = {-22, 78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Tables.CombiTable1D StartInterpolation(extrapolation = Modelica.Blocks.Types.Extrapolation.HoldLastPoint, table = StartTable) annotation(
        Placement(visible = true, transformation(origin = {-58, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Tables.CombiTable1D CycleInterpolation(extrapolation = Modelica.Blocks.Types.Extrapolation.HoldLastPoint, table = CycleTable) annotation(
        Placement(visible = true, transformation(origin = {-58, -68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      parameter Real Tstart = StartTable[size(StartTable, 1), 1];
      parameter Real Tcycle = CycleTable[size(CycleTable, 1), 1];
    equation
      StartInterpolation.u[1] = add.y;
      CycleInterpolation.u[1] = add.y - Tstart;
      if Working then
        y = (if (add.y < Tstart) then StartInterpolation.y[1] else CycleInterpolation.y[1])*NominalPower*Kr;
      else
        y = 0;
      end if;
      less.u2 = Tstart + Tcycle;
      Working = less.y;
      connect(y, Integrators.u);
      connect(Integrators.Work, Working);
      logicalSwitch.u3 = Work;
      connect(logicalSwitch.y, triggeredSampler.trigger) annotation(
        Line(points = {{-38, 61}, {-38, 62}, {-22, 62}, {-22, 65}}, color = {255, 0, 255}));
      connect(add.y, less.u1) annotation(
        Line(points = {{23, 84}, {28, 84}, {28, 56}, {23, 56}}, color = {0, 0, 127}));
      connect(timesignal.y, add.u1) annotation(
        Line(points = {{-55, 78}, {-47, 78}, {-47, 96}, {-1, 96}, {-1, 90}}, color = {0, 0, 127}));
      connect(less.y, logicalSwitch.u2) annotation(
        Line(points = {{1, 56}, {-5, 56}, {-5, 46}, {-23, 46}, {-23, 32}, {-38.5, 32}, {-38.5, 38}, {-38, 38}}, color = {255, 0, 255}));
      connect(logicalSwitch.u1, booleanExpression.y) annotation(
        Line(points = {{-46, 38}, {-46, 16}, {-67, 16}}, color = {255, 0, 255}));
      connect(triggeredSampler.y, add.u2) annotation(
        Line(points = {{-11, 78}, {-1, 78}}, color = {0, 0, 127}));
      connect(timesignal.y, triggeredSampler.u) annotation(
        Line(points = {{-55, 78}, {-35, 78}}, color = {0, 0, 127}));
      annotation(
        uses(Modelica(version = "3.2.3")),
        Icon(graphics = {Line(origin = {8, 0}, points = {{0, 0}}), Rectangle(origin = {8, 18}, fillColor = {200, 200, 200}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-15, 8}, {15, -8}}), Ellipse(origin = {8, 26}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-15, 8}, {15, -8}}), Ellipse(origin = {8, 10}, fillColor = {200, 200, 200}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-15, 8}, {15, -8}}, endAngle = 180, closure = EllipseClosure.Chord), Polygon(origin = {8, 10}, points = {{-24, 30}, {54, 30}, {28, -24}, {-52, -24}, {-46, -12}, {-24, 30}}), Rectangle(origin = {-4, -19}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-40, 5}, {40, -5}}), Polygon(origin = {52, 16}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{10, 24}, {10, 14}, {-16, -40}, {-16, -30}, {-16, -30}, {10, 24}})}),
        Documentation(info = "<html><head></head><body><div><u>Working Principles</u>:</div><div><br></div><div>This component will provide a complete StartTable+CycleTable sequence when a change from OFF to ON occurs (trigger event). After trigger, the complete cycle is executed, irrelevant to the ON/OFF internal signals produced.</div><div>When the cycle finishes, a next cycle will trigger when a OFF-&gt;ON event raises. &nbsp;</div><div><br></div><div>This component provides a real output using \"On\" \"Off\" random cycles with the following characteristics:</div><div><br></div><div>-&nbsp;<b>NominalPower</b>: Nominal output signal, to be multiplied by the StartTable/CycleTable and Kr</div><div>-&nbsp;<b>StartTable</b>: Non-dimensional table of the signal at start period. Only used when trggers from OFF to ON.</div><div>-&nbsp;<b>CycleTable</b>: Non-dimensional table of the signal at cycle period. Used and repeated after the end of StartTable.</div><div>-&nbsp;<b>Kr</b>: Percentage of the NominalPower used for the signal (gain)</div><div><br></div><div>For the random ON/OFF cycles, the following parameters apply:</div><div><br></div><div>-&nbsp;<b>Seed</b>: Seed to feed the random nuber generator. If two components have the same parameters and also the same seed (not being zero), then produce the same result</div><div>-&nbsp;<b>Kt</b>&nbsp;and&nbsp;<b>Kt_dev</b>: Percentage of \"On\" time and their typical deviation</div><div>-&nbsp;<b>StartsHour</b>&nbsp;and&nbsp;<b>StartsHour_dev</b>: Number of \"On\" starts on an hour with their typical deviation.</div><div><br></div><div>Internally we can find the following variables:</div><div><br></div><div>-&nbsp;<b>SimultaneousFactor</b>: Percentage of time in \"ON\" status.</div><div>-&nbsp;<b>AveragePower</b>: Average value of the output signal.&nbsp;</div><div><br></div><div><u>Limitations</u>:</div><div>Since \"On\" time cannot be negative, the output is truncated to +-3*typical deviation, and the minimum cannot be below zero.&nbsp;</div><div>On this cases, if we put a mean value of Kt=3 with a Kt_dev=2, then the distribution is truncated to (0,9], producing a mean value that does not match with 3.</div><div><br></div><div><u>References</u>:</div><div><br></div><div><u>Know issues</u>:</div><div><br></div><div>Always starts on.</div><div><u><br></u></div><div><u>Further development</u>:</div></body></html>", revisions = "<html><head></head><body><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.2 [BPuente] (23/11/2024): Optional average values, off by default to increase simulation speed.</span></div><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.1 [BPuente] (16/11/2024): Bugfix release</span></div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">&nbsp;(14/05/2023): Initial release</span></body></html>"));
    end TriggerConsumer;

    model StartGenerator
      extends ShipSIM.Components.Electrical.Internal.RandomStart;
      Modelica.Blocks.Interfaces.BooleanOutput y annotation(
        Placement(visible = true, transformation(origin = {106, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      y = Work;
      annotation(
        Icon(graphics = {Rectangle(fillColor = {210, 210, 210}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, extent = {{-100, 100}, {100, -100}}), Polygon(origin = {0, -6}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid, points = {{-80, 88}, {-88, 66}, {-72, 66}, {-80, 88}}), Polygon(origin = {-6, -2}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid, points = {{90, -70}, {68, -62}, {68, -78}, {90, -70}}), Line(origin = {0.754467, -3.01771}, points = {{-80, -70}, {-40, -70}, {-40, 44}, {0, 44}, {0, -70}, {40, -70}, {40, 44}, {79, 44}}), Line(origin = {3.77247, -3.01771}, points = {{-90, -70}, {72, -70}}, color = {255, 0, 255}), Line(origin = {0.754467, 0.754427}, points = {{-80, 66}, {-80, -82}}, color = {255, 0, 255})}),
        Documentation(info = "<html><head></head><body><div><u>Working Principles</u>:</div><div>This component provides a random start and stop cycles using the following parameters:</div><div>- <b>Seed</b>: Seed to feed the random nuber generator. If two components have the same parameters and also the same seed (not being zero), then produce the same result</div><div>- <b>Kt</b> and <b>Kt_dev</b>: Percentage of \"On\" time and their typical deviation</div><div>- <b>StartsHour</b> and <b>StartsHour_dev</b>: Number of \"On\" starts on an hour with their typical deviation.</div><div><br></div><div>The output is \"true\" (ON) or \"false\" (OFF)</div><div><br></div><div><u>Limitations</u>:</div><div>Since \"On\" time cannot be negative, the output is truncated to +-3*typical deviation, and the minimum cannot be below zero.&nbsp;</div><div>On this cases, if we put a mean value of Kt=3 with a Kt_dev=2, then the distribution is truncated to (0,9], producing a mean value that does not match with 3.</div><div><br></div><div><u>References</u>:</div><div><br></div><div><u>Know issues</u>:</div><div><u><br></u></div><div><u>Further development</u>:</div></body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(14/05/2023): Initial release</span></body></html>"));
    end StartGenerator;

    package Internal
      extends Modelica.Icons.InternalPackage;

      model RandomStart
        parameter Integer Seed = 0 "Random seed, Zero for automatic seed" annotation(
          Dialog(tab = "Factors", group = "Start Factors"));
        parameter Real Kt(min = Modelica.Constants.eps, max = 1) = 0.5 "Percentage of running time (0-1]" annotation(
          Dialog(tab = "Factors", group = "Start Factors"));
        parameter Real Kt_dev = 0.1 "Tipical deviation of Kt" annotation(
          Dialog(tab = "Factors", group = "Start Factors"));
        parameter Real StartsHour(min = 0) = 10 "Number of starts in a hour, greater than zero" annotation(
          Dialog(tab = "Factors", group = "Start Factors"));
        parameter Real StartsHour_dev = 2 "Typical deviation of number of starts on a hour" annotation(
          Dialog(tab = "Factors", group = "Start Factors"));
        Modelica.Blocks.Interfaces.BooleanOutput Work;
        final parameter Real MeanWorkingTime = Kt*3600/StartsHour;
        final parameter Real MeanStopTime = (1 - Kt)*3600/StartsHour;
        discrete Real NextStep;
      protected
        final parameter Real SamplingRate = max(1, floor(min(((Kt - 3*Kt_dev)*3600/(StartsHour + 3*StartsHour_dev)), ((1 - (Kt - 3*Kt_dev))*3600/(StartsHour + 3*StartsHour_dev)))*100)/100) "Set the sampling rate to a 1/100th seconds";
        Modelica.Blocks.Noise.TruncatedNormalNoise NoiseKt(enableNoise = true, fixedLocalSeed = Seed, samplePeriod = SamplingRate, sigma = max(0.0001, (NoiseKt.y_max - NoiseKt.y_min)/6), useAutomaticLocalSeed = if (Seed == 0) then true else false, useGlobalSeed = false, y_max = min(0.9999, Kt + 3*Kt_dev), y_min = max(0.0001, Kt - 3*Kt_dev)) annotation(
          Placement(visible = true, transformation(origin = {-10, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Noise.TruncatedNormalNoise NoiseStartsHour(enableNoise = true, fixedLocalSeed = Seed, samplePeriod = SamplingRate, sigma = max(0.0001, (NoiseStartsHour.y_max - NoiseStartsHour.y_min)/6), useAutomaticLocalSeed = if (Seed == 0) then true else false, useGlobalSeed = false, y_max = StartsHour + 3*StartsHour_dev, y_min = max(0.0001, StartsHour - 3*StartsHour_dev)) annotation(
          Placement(visible = true, transformation(origin = {-10, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      initial equation
// Provides randomness at initial condition
        if Kt == 1 then
          Work = true;
          NextStep = Modelica.Constants.inf;
        else
          if NoiseKt.y <= Kt then
            Work = false;
            NextStep = ceil(((1 - (NoiseKt.y))*3600/(NoiseStartsHour.y))*100)/100 "Rounding events to 1/100th sec";
          else
            Work = true;
            NextStep = ceil(((NoiseKt.y)*3600/(NoiseStartsHour.y))*100)/100 "Rounding events to 1/100th sec";
          end if;
        end if;
      equation
        when time >= pre(NextStep) then
          if pre(Work) then
            Work = false;
            NextStep = time + ceil(((1 - (NoiseKt.y))*3600/(NoiseStartsHour.y))*100)/100 "Rounding events to 1/100th sec";
          else
            Work = true;
            NextStep = time + ceil(((NoiseKt.y)*3600/(NoiseStartsHour.y))*100)/100 "Rounding events to 1/100th sec";
          end if;
        end when;
        annotation(
          experiment(StartTime = 0, StopTime = 5000, Tolerance = 1e-06, Interval = 0.2),
          Documentation(info = "<html><head></head><body><div><u>Working Principles</u>:</div><div>This component provides a random start and stop cycles using the following parameters:</div><div>- Seed: Seed to feed the random number generator. If two components have the same parameters and also the same seed (not being zero), then produce the same result</div><div>- Kt and Kt_dev: Percentage of \"On\" time and their typical deviation</div><div>- StartsHour and StartsHour_dev: Number of \"On\" starts on an hour with their typical deviation.</div><div><br></div><div><u>Limitations</u>:</div><div>Since \"On\" time cannot be negative, the output is truncated to +-3*typical deviation, and the minimum cannot be below zero.&nbsp;</div><div>On this cases, if we put a mean value of Kt=3 with a Kt_dev=2, then the distribution is truncated to (0,9], producing a mean value that does not match with 3.</div><div><br></div><div><u>References</u>:</div><div><br></div><div><u>Know issues</u>:</div><div><u><br></u></div><div><u>Further development</u>:</div><div><br></div></body></html>", revisions = "<html><head></head><body><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.1 [BPuente] (16/11/2024): Bugfix release</span></div><span style=\"font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-size: 12px;\">(14/05/2023): Initial release</span></body></html>"));
      end RandomStart;

      model Integrators
        Real SimultaneousFactor "Percentage of time that the consumer is working";
        Real AveragePower "Average power";
        Modelica.Blocks.Interfaces.BooleanInput Work annotation(
          Placement(transformation(origin = {-106, 60}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-96, 60}, extent = {{-20, -20}, {20, 20}})));
        Modelica.Blocks.Interfaces.RealInput u annotation(
          Placement(transformation(origin = {-106, -20}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-96, -20}, extent = {{-20, -20}, {20, 20}})));
      protected
        Modelica.Blocks.Continuous.Integrator integratorWork annotation(
          Placement(transformation(origin = {26, 24}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Blocks.Continuous.Integrator integratorAvg annotation(
          Placement(transformation(origin = {22, -14}, extent = {{10, -10}, {-10, 10}})));
      equation
        integratorAvg.u = u;
        if Work then
          integratorWork.u = 1;
        else
          integratorWork.u = 0;
        end if;
        SimultaneousFactor = if (time > 0) then integratorWork.y/time else 0;
        AveragePower = if (time > 0) then integratorAvg.y/time else 0;
        annotation(
          Documentation(info = "<html><head></head><body><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">This component provides average values of signal \"u\" and working time (percent).</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><u>Limitations</u>:</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><u>References</u>:</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><u>Know issues</u>:</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><u><br></u></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><u>Further development</u>:</div></body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(23/11/2024): Initial release</span></body></html>"));
      end Integrators;
    end Internal;
    annotation(
      Icon(graphics = {Line(origin = {-3, 45}, points = {{-72, -55}, {-42, -55}}), Line(origin = {9, 54}, points = {{31, -49}, {71, -49}}), Line(origin = {6.2593, 48}, points = {{53.7407, -58}, {53.7407, -93}, {-66.2593, -93}, {-66.2593, -58}}), Line(origin = {1, 50}, points = {{-61, -45}, {-61, -10}, {-26, -10}}), Rectangle(origin = {20.31, 82.86}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-45.31, -57.86}, {4.69, -27.86}}), Line(origin = {7, 50}, points = {{18, -10}, {53, -10}, {53, -45}}), Line(origin = {-2, 55}, points = {{-83, -50}, {-33, -50}}), Line(origin = {8, 48}, points = {{32, -58}, {72, -58}}), Line(origin = {-3, 45}, points = {{-72, -55}, {-42, -55}}), Line(origin = {9, 54}, points = {{31, -49}, {71, -49}})}));
  end Electrical;

  package AntiHeelingSystem "Components relative to antiheeling system"
    model AntiHeeling "Ship Antiheeling System"
      parameter Modelica.SIunits.Length B = 24.3 "Ship Design Beam" annotation(
        Dialog(group = "Tanks Properties"));
      parameter Modelica.SIunits.Length b = 6.35 "Antiheeling Tanks Beam" annotation(
        Dialog(group = "Tanks Properties"));
      parameter Real V_tk(unit = "m^3") = 211.47 "Volume of each Anti-Heeling Tank" annotation(
        Dialog(group = "Tanks Properties"));
      parameter Modelica.SIunits.Density rho = 1.025 "Antiheeling Tanks Liguid Density" annotation(
        Dialog(group = "Tanks Properties"));
      parameter Real Q(unit = "m^3/h") = 200 annotation(
        Dialog(group = "Pump Properties"));
      parameter Real max_angle(unit = "deg") = 0.1 "Maximum Admissible Heel" annotation(
        Dialog(group = "On/Off Controller Properties"));
      Real v_max(unit = "m^3") "Maximum Volume to overflow through tanks";
      Modelica.Blocks.Interfaces.RealInput ship_heel "Ship model heel" annotation(
        Placement(visible = true, transformation(origin = {-106, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput ah_output[2] annotation(
        Placement(visible = true, transformation(origin = {102, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {102, 0}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
      Real M_adr(unit = "t*m") "Righting moment from A/H system";
      Real pump_flow(unit = "m^3/h") "Flow rate from pump";
      Real comp_rate(unit = "t*m/min") "Compensation rate of anti-heeling system moment";
      Modelica.Blocks.Logical.TriggeredTrapezoid triggeredTrapezoid(amplitude = Q, offset = 0.001, rising = 10) annotation(
        Placement(visible = true, transformation(origin = {60, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Logical.Not not1 annotation(
        Placement(visible = true, transformation(origin = {26, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Logical.OnOffController onOffController(bandwidth = max_angle) annotation(
        Placement(visible = true, transformation(origin = {-14, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression realExpression(y = max_angle/2 + 0.001) annotation(
        Placement(visible = true, transformation(origin = {-70, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression realExpression1(y = abs(ship_heel)) annotation(
        Placement(visible = true, transformation(origin = {-72, -44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(
        Placement(visible = true, transformation(origin = {2, 98}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {2, 98}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
      Modelica.Mechanics.MultiBody.Forces.WorldTorque torque(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_b) annotation(
        Placement(visible = true, transformation(origin = {-16, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      //  Real indicator_pendiente;
      //  Real der_m_esc;
      Real M_tks(unit = "t*m") "Moment produced by tanks";
      Real M_max(unit = "t*m") "Max. Moment to compensate between tanks";
    equation
//  der_m_esc = der(ship_data[1]);
      v_max = V_tk*0.40;
//  if der_m_esc == 0 then
//    indicator_pendiente = 1;
//  elseif ship_data[1] >= 0 and der_m_esc > 0 then
//    indicator_pendiente = 1;
//  elseif ship_data[1] <= 0 and der_m_esc < 0 then
//    indicator_pendiente = 1;
//  else
//    indicator_pendiente = -1;
//  end if;
      M_max = rho*v_max*(B - b);
      der(M_tks) = sign(ship_heel)*1*pump_flow/3600*rho*(B - b);
      comp_rate = Q*(B - b)*rho/60;
      if abs(M_tks) > M_max then
        M_adr = M_max*sign(ship_heel);
      else
        M_adr = M_tks;
      end if;
      ah_output = {ship_heel, pump_flow};
      if time < 500 then
        pump_flow = 0;
      else
        pump_flow = triggeredTrapezoid.y;
      end if;
// Momento
      torque.torque = {-M_adr*Modelica.Constants.g_n*1000, 0, 0};
      connect(not1.y, triggeredTrapezoid.u) annotation(
        Line(points = {{37, -34}, {48, -34}}, color = {255, 0, 255}));
      connect(onOffController.y, not1.u) annotation(
        Line(points = {{-3, -34}, {13, -34}}, color = {255, 0, 255}));
      connect(realExpression.y, onOffController.reference) annotation(
        Line(points = {{-59, -16}, {-43, -16}, {-43, -28}, {-27, -28}}, color = {0, 0, 127}));
      connect(realExpression1.y, onOffController.u) annotation(
        Line(points = {{-61, -44}, {-27, -44}, {-27, -40}}, color = {0, 0, 127}));
      connect(torque.frame_b, frame_a) annotation(
        Line(points = {{-6, 60}, {2, 60}, {2, 98}}, color = {95, 95, 95}));
    initial equation
      M_tks = 0;
      annotation(
        Icon(graphics = {Line(origin = {0.0529281, 0.240565}, points = {{-60, 60}, {-60, -40}, {-40, -60}, {40, -60}, {60, -40}, {60, 60}, {-60, 60}}), Line(origin = {-49.9471, 10.5843}, points = {{-10, -50}, {10, -50}, {10, 50}}), Line(origin = {50.0529, 10.2406}, points = {{-10, 50}, {-10, -50}, {10, -50}}), Rectangle(origin = {-50, -5}, fillColor = {200, 200, 200}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-10, -35}, {10, 35}}), Rectangle(origin = {50, -20}, fillColor = {200, 200, 200}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-10, -20}, {10, 20}}), Rectangle(origin = {0, -53}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Polygon(origin = {-50, -50}, fillColor = {200, 200, 200}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-10, 10}, {10, -10}, {10, 10}, {10, 10}, {-10, 10}}), Line(origin = {-50, -50}, points = {{-10, 10}, {10, -10}}), Polygon(origin = {50, -50}, fillColor = {200, 200, 200}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-10, 10}, {10, 10}, {-10, -10}, {-10, 10}}), Line(origin = {50, -50}, points = {{-10, -10}, {10, 10}}), Line(origin = {-40, -50}, points = {{0, 110}, {0, -10}}), Line(origin = {39.925, -49.4777}, points = {{0, 110}, {0, -10}})}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
        Documentation(info = "<html><head></head><body><!--StartFragment-->This anti-heeling model works by the action of a modified On/Off controller monitoring the ship's heel angle.<div><br></div><div>If the ship is been acted by a heeling moment which provides a heel angle greater than the maximum set angle, then the controller will start the anti-heeling system to provoke a compensing moment to return the ship to the 0 degrees of heel.</div><div><br></div><div>The model has parametrized the tanks properties and the pump rate flow.</div><div><br></div><div><div class=\"htmlDoc\"><div style=\"font-family: 'MS Shell Dlg 2';\"><u>Limitations:</u></div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-family: 'MS Shell Dlg 2';\">Only modellized the effect of the anti-heeling system on the ship stabillity.</div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><u><br></u></div><div><div><font face=\"MS Shell Dlg 2\">[IS2008]<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>International Marine Organization, \"International Code on Intact Stability 2008\", IMO 2020</font></div><div><font face=\"MS Shell Dlg 2\">[NCarnerero]<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Noé Carnerero Durán, \"Simulación del comportamiento de tanques anti-escora a partir de herramientas de modelado acausal\", Proyecto Fin de Carrera, Grado en Arquitectura Naval, July 2023, https://oa.upm.es/75126/</font></div></div><div><br></div><div style=\"font-family: -webkit-standard;\"><br></div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">For quick changes on the heel angle sign, the controller won't detect the change on the water flow until the heel angle changes of sign, these should be corrected by the apply of an Integer controller in the system.</span></div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><u>Further development:</u></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><u><br></u></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\">Optimizing the controlling system with an Integer part.</div><!--EndFragment--></body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0 [NCarnerero] (22/10/2023): Initial release</span></body></html>"));
    end AntiHeeling;

    model Tank "Tank model for antiheeling system"
      parameter Modelica.SIunits.Length CoG_trans = 8.77 "Transversal Position of CoG tank";
      parameter Real V(unit = "m^3") = 211.47 "Volume of each Anti-Heeling Tank";
      parameter Modelica.SIunits.Length H = 5 "Antihheling Tanks Height";
      parameter Real rho(unit = "t/m^3") = 1.025 "Antiheeling Tanks Liguid Density";
      Real Q(unit = "m^3/h") "Pump flow rate";
      Real tank_pressure(unit = "bar") "Tank Pressure at lowest point";
      Real volume(unit = "m^3") "Tank Volume";
      Real fill_level(unit = "%") "Tank fill percentage";
      Real initial_volume(unit = "m^3") "Initial volume in A/H tank";
      Modelica.Blocks.Interfaces.RealInput ah_input[2] annotation(
        Placement(visible = true, transformation(origin = {0, 16}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {0, -82}, extent = {{-12, -12}, {12, 12}}, rotation = -90)));
      Real M_input(unit = "t*m") "Heeling Moment external to ship";
    protected
      Real indi_pos "-1 -> board +1 -> starboard";
      Real indi_moment;
      Real inter_volume;
      Real der_m_esc;
      //      Real indicator_pendiente;
    equation
      ah_input[1] = M_input;
      ah_input[2] = Q;
      der_m_esc = der(M_input);
      initial_volume = 0.45*V;
//if der_m_esc == 0 then
//  indicator_pendiente = 1;
//elseif M_input >= 0 and der_m_esc > 0 then
//  indicator_pendiente = 1;
//elseif M_input <= 0 and der_m_esc < 0 then
//  indicator_pendiente = 1;
//else
//  indicator_pendiente = -1;
//end if;
      if M_input > 0 then
        indi_moment = 1;
      else
        indi_moment = -1;
      end if;
      if CoG_trans < 0 then
        indi_pos = -1;
      else
        indi_pos = 1;
      end if;
      der(inter_volume) = -sign(indi_pos)*sign(M_input)*Q/3600;
      if inter_volume > 0.85*V then
        volume = 0.85*V;
      elseif inter_volume < 0.05*V then
        volume = 0.05*V;
      else
        volume = inter_volume;
      end if;
      fill_level = volume/V*100;
      tank_pressure = volume/V*H*rho*9.81/100;
    initial equation
      inter_volume = initial_volume;
      annotation(
        Icon(graphics = {Rectangle(extent = {{-60, 80}, {60, -80}}), Line(origin = {0, 0.88}, points = {{-60, -1.85633}, {-40, 4.14367}, {-20, -3.85633}, {0, 2.14367}, {20, -3.85633}, {40, 2.14367}, {60, -1.85633}, {60, -5.85633}}, color = {0, 0, 255}), Text(origin = {1, 43}, extent = {{-35, 17}, {35, -17}}, textString = "%name")}),
        Documentation(info = "<html><head></head><body><!--StartFragment-->This is a simple tank model used as an extension of the anti-heeling model.<div><br></div><div>By introducing it's transversal location and height, and connecting it with the anti-heeling system model the user con visualize the real volume and fill level of the tank during the functioning of the anti-heeling system.</div><div><br></div><div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><div class=\"htmlDoc\"><div><u>Limitations:</u></div><div><br></div><div>Tank model simplified as a simple prismatic geometry, so the fill of each tank is linear.</div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><u><br></u></div><div><div><font face=\"MS Shell Dlg 2\">[IS2008]<span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>International Marine Organization, \"International Code on Intact Stability 2008\", IMO 2020</font></div><div><font face=\"MS Shell Dlg 2\">[NCarnerero]<span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>Noé Carnerero Durán, \"Simulación del comportamiento de tanques anti-escora a partir de herramientas de modelado acausal\", Proyecto Fin de Carrera, Grado en Arquitectura Naval, July 2023, https://oa.upm.es/75126/</font></div></div><div style=\"font-family: -webkit-standard;\"><br></div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\">N/A</div><div style=\"font-family: -webkit-standard;\"><br></div></div><div class=\"htmlDoc\"><u>Further development:</u></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div></div><!--EndFragment--></body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0 [NCarnerero] (22/10/2023): Initial release</span></body></html>"));
    end Tank;
    annotation(
      Icon(graphics = {Line(origin = {-46.86, 0}, points = {{-21, 0}, {21, 0}}, thickness = 0.5), Line(origin = {-48.92, 19.2}, points = {{-38, -69.5404}, {2, 30.4596}, {42, -69.5404}, {42, -69.5404}}, thickness = 0.5), Line(origin = {46.73, -0.32}, points = {{-30, 0}, {30, 0}}, thickness = 0.5), Line(origin = {76.14, -0.95}, points = {{-10, -50}, {10, 50}}, thickness = 0.5), Line(origin = {17.03, -0.3}, points = {{-10, -50}, {10, 50}, {10, 50}}, thickness = 0.5)}, coordinateSystem(extent = {{-100, -100}, {100, 100}})));
  end AntiHeelingSystem;

  package AutoPilot "Components relative to autopilot system"
    model SimpleAutoPilot "Simple Autopilot model"
      parameter Real Waypoints[:, 3] = {{1000, 0, 3}, {5000, 2000, 5}, {10000, 1000, 8}, {20000, 1000, 5}} "Waypoint table with the format X,Y,Speed [m, m, m/s]: {{0,0,10},{1,1,10}}" annotation(
        Dialog(group = "Route Definition"));
      parameter Modelica.SIunits.Length PointTolerance = 100 "Tolerance to reach waypoint [m]" annotation(
        Dialog(group = "Route Definition"));
      parameter Real k_rudder = 10 "Proportional factor for Rudder" annotation(
        Dialog(group = "PD Tunning parameters"));
      parameter Real k_shaft = 5000 "Proportional factor for shaft" annotation(
        Dialog(group = "PD Tunning parameters"));
      parameter Real Td_rudder = 40 "Derivative factor for Rudder" annotation(
        Dialog(group = "PD Tunning parameters"));
      parameter Real Td_shaft = 0.0001 "Derivative factor for shaft" annotation(
        Dialog(group = "PD Tunning parameters"));
      Modelica.SIunits.Length Pos[2] "Current ship position: X, Y [m, m]";
      Modelica.SIunits.Length Des[2] "Current destination objective: X, Y [m, m]";
      Modelica.SIunits.Velocity Speed[2] "Current ship speed: Vx, Vy [m/s, m/s]";
      Modelica.SIunits.Velocity SpeedModule(min = 0) "Current ship speed module [m/s]";
      Modelica.SIunits.Velocity DesiredSpeed "Current desired ship speed [m/s]";
      Modelica.SIunits.Length DistanceToDestination(min = 0) "Current distance to destination [m]";
      Modelica.SIunits.Angle CourseDifference "Angle between desired course and actual course [rad]";
      discrete Integer i;
      Interfaces.ShipDataInput shipDataInput annotation(
        Placement(transformation(origin = {-100, 0}, extent = {{-10, -8}, {10, 8}}), iconTransformation(origin = {-100, 0}, extent = {{10, -8}, {-10, 8}}, rotation = -0)));
      Modelica.Blocks.Interfaces.RealOutput Rudder annotation(
        Placement(transformation(origin = {102, 70}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {104, 60}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Blocks.Interfaces.RealOutput ShaftSpeed annotation(
        Placement(transformation(origin = {100, -58}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {104, -60}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Blocks.Continuous.LimPID PD_Rudder(controllerType = Modelica.Blocks.Types.SimpleController.PD, yMax = 35, withFeedForward = false, Td = Td_rudder, initType = Modelica.Blocks.Types.InitPID.NoInit, xd_start = 0, y_start = 0, k = k_rudder, strict = false) annotation(
        Placement(transformation(origin = {8, 62}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Blocks.Continuous.LimPID PD_Propeller(controllerType = Modelica.Blocks.Types.SimpleController.PD, yMax = 300, yMin = 0.0001, Td = Td_shaft, initType = Modelica.Blocks.Types.InitPID.SteadyState, xd_start = 0, y_start = 0.001, k = k_shaft, strict = false, homotopyType = Modelica.Blocks.Types.LimiterHomotopy.NoHomotopy) annotation(
        Placement(transformation(origin = {4, -30}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Blocks.Sources.RealExpression Ref annotation(
        Placement(transformation(origin = {-28, 62}, extent = {{-10, -10}, {10, 10}})));
    initial equation
      i = 1;
    equation
      DesiredSpeed = Waypoints[i, 3];
      Des[:] = Waypoints[i, 1:2];
      Pos[:] = shipDataInput.WorldPosition[1:2];
      Speed[:] = der(Pos);
      SpeedModule = Modelica.Math.Vectors.length(Speed);
      CourseDifference = ShipSIM.Functions.Others.signed_angle_btw_vectors_2D(Speed, (Des - Pos));
      DistanceToDestination = Modelica.Math.Vectors.length(Des - Pos) "Modulo del vector entre posicion actual y destino";
// Conexiones:
      PD_Propeller.u_m = SpeedModule - DesiredSpeed;
      PD_Rudder.u_m = CourseDifference;
      when DistanceToDestination < PointTolerance then
        i = pre(i) + 1;
      end when;
      connect(Ref.y, PD_Rudder.u_s) annotation(
        Line(points = {{-17, 62}, {-4, 62}}, color = {0, 0, 127}));
      connect(PD_Rudder.y, Rudder) annotation(
        Line(points = {{20, 62}, {102, 62}, {102, 70}}, color = {0, 0, 127}));
      connect(PD_Propeller.y, ShaftSpeed) annotation(
        Line(points = {{16, -30}, {46, -30}, {46, -58}, {100, -58}}, color = {0, 0, 127}));
      connect(Ref.y, PD_Propeller.u_s) annotation(
        Line(points = {{-16, 62}, {-12, 62}, {-12, -30}, {-8, -30}}, color = {0, 0, 127}));
      annotation(
        Icon(graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}), Rectangle(origin = {21, -43}, rotation = -55, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, extent = {{-6, 38}, {6, -38}}), Ellipse(origin = {-1, -59}, rotation = -90, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-18, 19}, {18, -19}}), Rectangle(origin = {0, -70}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-57, 10}, {57, -10}}), Ellipse(origin = {51, -22}, fillPattern = FillPattern.Solid, extent = {{-17, 16}, {17, -16}}), Line(origin = {-13.5139, 63.3782}, points = {{-79.7929, -15}, {-39.7929, 40}, {0.207107, -40}, {40.2071, -15}, {80.2071, -15}}, smooth = Smooth.Bezier), Polygon(origin = {66, 47}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-16, 9}, {-16, -7}, {4, -7}, {16, 1}, {4, 9}, {4, 9}, {-16, 9}})}),
        experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-06, Interval = 0.002),
        Documentation(info = "<html><head></head><body><div><font face=\"MS Shell Dlg 2\">This simple autopilot model uses two PD, one for the rudder and other for the propeller, to control the ship track.</font></div><div><font face=\"MS Shell Dlg 2\"><br></font></div><div><font face=\"MS Shell Dlg 2\">Ship's track is introduced as a list of waypoints whith the X and Y coordinates, along with the desired ship speed.</font></div><div><font face=\"MS Shell Dlg 2\"><br></font></div><div><font face=\"MS Shell Dlg 2\">To tune this autopilot, start first with the proportional factors and then with the derivative factors.</font></div><div><br></div><div><div class=\"htmlDoc\"><div style=\"font-family: 'MS Shell Dlg 2';\"><u>Limitations:</u></div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-family: 'MS Shell Dlg 2';\"><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><br></div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div><font face=\"MS Shell Dlg 2\">The PD produces high frequency rudder and propeller order. This shall be adressed using a filter or tunning the PD adequately.&nbsp;</font></div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><u>Further development:</u></div></div></body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0 [BPuente] (7/9/2024): Initial Release</span></body></html>"));
    end SimpleAutoPilot;
    annotation(
      Icon(graphics = {Rectangle(origin = {35, 13}, rotation = -55, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, extent = {{-6, 38}, {6, -38}}), Ellipse(origin = {0, -16}, rotation = -90, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-23, 24}, {23, -24}}), Rectangle(origin = {0, -30}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-79, 10}, {79, -10}}), Ellipse(origin = {73, 40}, fillPattern = FillPattern.Solid, extent = {{-17, 16}, {17, -16}})}));
  end AutoPilot;

  package DataProcessing "Components relative to data processing"
    model PeakSampler "Discrete sampling of signal peaks"
      Modelica.Blocks.Interfaces.RealInput u "Connector of Real input signal" annotation(
        Placement(visible = true, transformation(origin = {0, 0}, extent = {{-140, -20}, {-100, 20}}, rotation = 0), iconTransformation(origin = {-114, 0}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
      discrete Modelica.Blocks.Interfaces.RealOutput y(start = 0) "Connector of Real output signal" annotation(
        Placement(visible = true, transformation(origin = {0, 0}, extent = {{100, -10}, {120, 10}}, rotation = 0), iconTransformation(origin = {114, 2.22045e-16}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
    protected
      Modelica.Blocks.Logical.ZeroCrossing zeroCrossing annotation(
        Placement(visible = true, transformation(origin = {-10, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      zeroCrossing.u = der(u);
      zeroCrossing.enable = true;
      when zeroCrossing.y == true then
        y = u;
      end when;
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(lineColor = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Line(points = {{-80, 68}, {-80, -80}}, color = {192, 192, 192}), Polygon(lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid, points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}}), Line(points = {{-90, 0}, {68, 0}}, color = {192, 192, 192}), Polygon(lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid, points = {{90, 0}, {68, 8}, {68, -8}, {90, 0}}), Line(points = {{-80, 0}, {-75.2, 32.3}, {-72, 50.3}, {-68.7, 64.5}, {-65.5, 74.2}, {-62.3, 79.3}, {-59.1, 79.6}, {-55.9, 75.3}, {-52.7, 67.1}, {-48.6, 52.2}, {-43, 25.8}, {-35, -13.9}, {-30.2, -33.7}, {-26.1, -45.9}, {-22.1, -53.2}, {-18.1, -55.3}, {-14.1, -52.5}, {-10.1, -45.3}, {-5.23, -32.1}, {8.44, 13.7}, {13.3, 26.4}, {18.1, 34.8}, {22.1, 38}, {26.9, 37.2}, {31.8, 31.8}, {38.2, 19.4}, {51.1, -10.5}, {57.5, -21.2}, {63.1, -25.9}, {68.7, -25.9}, {75.2, -20.5}, {80, -13.8}}, smooth = Smooth.Bezier), Ellipse(origin = {-60, 80}, lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-6, 6}, {6, -6}}), Ellipse(origin = {-18, -54}, lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-6, 6}, {6, -6}}), Ellipse(origin = {24, 36}, lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-6, 6}, {6, -6}}), Ellipse(origin = {66, -26}, lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-6, 6}, {6, -6}}), Text(textColor = {0, 0, 255}, extent = {{-150, 150}, {150, 110}}, textString = "%name")}),
        Documentation(info = "<html><head></head><body><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><div>This block sends in the output the maximum and minimum values of the signal using discrete variables.</div><div><u><br></u></div><div><u>Limitations:</u></div><div><br></div><div>The input signal shall be derivable in order to obtain der(u)=0 points.</div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><br></div></div><div style=\"font-family: -webkit-standard;\"><div><span style=\"font-family: 'MS Shell Dlg 2';\">N/A</span></div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\">It was tested with \"X^3\" function to know if how works with a \"der(u)=0\" that is NOT a maximum/minimum. In this case, this block does not provide response on this event. This is the expected working, but it is not sure that always present this behaviour.</div><div style=\"font-family: -webkit-standard;\"><br></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><u>Further development:</u></div></body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">&nbsp;(09/12/2023): Initial release</span></body></html>"));
    end PeakSampler;

    model RainflowCounter "Rainflow method counter"
      parameter Integer StackSize = 20 "Size of the segments stack, increase as desired if stack overflow";
      discrete Integer N_max(start = 1, fixed = true) "Maximum index on stack history";
      //Rainflow matrix output
      parameter Real InitialRange "Intial value of Range scale" annotation(
        Dialog(group = "Rainflow matrix output"));
      parameter Real FinalRange "Final value of Range scale" annotation(
        Dialog(group = "Rainflow matrix output"));
      parameter Integer RangeIntervals "Number of Range intervals" annotation(
        Dialog(group = "Rainflow matrix output"));
      parameter Real InitialLevel "Intial value of Level scale" annotation(
        Dialog(group = "Rainflow matrix output"));
      parameter Real FinalLevel "Final value of Level scale" annotation(
        Dialog(group = "Rainflow matrix output"));
      parameter Integer LevelIntervals "Number of Level intervals" annotation(
        Dialog(group = "Rainflow matrix output"));
      discrete Real RainflowMatrix[RangeIntervals + 2, LevelIntervals + 2] "Consolidated Rainflow matrix";
      discrete Real min_max_Range[2] "Minimum [1] and maximum [2] Range values";
      discrete Real min_max_Level[2] "Minimum [1] and maximum [2] Level values";
      //TEST OUTPUT
      //discrete Real Sol[4, 10](start = zeros(4,10),each fixed=true);
      //discrete Integer N_Sol(start = 1,fixed=true);
      Modelica.Blocks.Interfaces.RealInput u "Connector of Real input signal" annotation(
        Placement(visible = true, transformation(origin = {0, 0}, extent = {{-140, -20}, {-100, 20}}, rotation = 0), iconTransformation(origin = {-114, 0}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
      discrete Modelica.Blocks.Interfaces.RealVectorOutput OngoingRainflowMatrix[RangeIntervals + 2, LevelIntervals + 2] "Rainflow matrix included segments in stack" annotation(
        Placement(transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}), transformation(origin = {100, 0}, extent = {{-14, -14}, {14, 14}})));
    protected
      discrete Integer N_Cre(start = 0, fixed = true) "Last index on crescent stack";
      discrete Integer N_Dec(start = 0, fixed = true) "Last index on decrescent stack";
      discrete Real Cre[StackSize, 2](start = zeros(StackSize, 2), each fixed = true) "Stack of crescent bars";
      discrete Real Dec[StackSize, 2](start = zeros(StackSize, 2), each fixed = true) "Stack of decrescent bars";
      discrete Real InitialThree[3](start = zeros(3), each fixed = true) "First initial three values";
      discrete Real ini_fin[2](start = zeros(2), each fixed = true) "Next bar initial and final values";
      discrete Integer InitialCount(start = 0, fixed = true);
      discrete Boolean CreFlag(start = true, fixed = true) "True if the next bar is a crescent bar, false for decrescent";
      discrete Real NextValue(start = 0, fixed = true);
      discrete Boolean min_max_flag(start = true, fixed = true) "Flag to set the first value of min max ranges and levels";
      discrete Boolean OutOfMatrix(start = false, fixed = true) "Flag to warning out of matrix";
      discrete Boolean OngoingOutOfMatrixCre(start = false, fixed = true) "Flag to warning out of matrix";
      discrete Boolean OngoingOutOfMatrixDec(start = false, fixed = true) "Flag to warning out of matrix";
    initial algorithm
      RainflowMatrix := zeros(RangeIntervals + 2, LevelIntervals + 2);
      for i in 3:size(RainflowMatrix, 1) loop
        RainflowMatrix[i, 1] := InitialRange + ((FinalRange - InitialRange)/(RangeIntervals))*(i - 3);
        RainflowMatrix[i, 2] := InitialRange + ((FinalRange - InitialRange)/(RangeIntervals))*(i - 2);
        RainflowMatrix[1, i] := InitialLevel + ((FinalLevel - InitialLevel)/(LevelIntervals))*(i - 3);
        RainflowMatrix[2, i] := InitialLevel + ((FinalLevel - InitialLevel)/(LevelIntervals))*(i - 2);
      end for;
      OngoingRainflowMatrix := RainflowMatrix;
    algorithm
      when (u <> NextValue) then
        NextValue := u;
// Error proof on compilation for Array matrix (more than 2 dimensions). Perhaps an OpenModelica issue?¿
        Cre := Cre;
        Dec := Dec;
//Sol:=Sol;
        RainflowMatrix := RainflowMatrix;
// END of error proof code
//
//********************************************
//
//      RAINFLOW ALGORITHM INITIALIZATION
//
//********************************************
//
        if InitialCount < 2 then
//Initial recopile data
          InitialCount := InitialCount + 1;
          InitialThree[InitialCount] := NextValue;
        elseif InitialCount == 2 then
//Initial start
          InitialCount := InitialCount + 1;
          InitialThree[InitialCount] := NextValue;
          if InitialThree[3] > InitialThree[2] then
            Cre[1, 1] := InitialThree[2];
            Cre[1, 2] := InitialThree[3];
            Dec[1, 1] := InitialThree[1];
            Dec[1, 2] := InitialThree[2];
            CreFlag := false "Next bar is a descrecent";
          else
            Cre[1, 1] := InitialThree[1];
            Cre[1, 2] := InitialThree[2];
            Dec[1, 1] := InitialThree[2];
            Dec[1, 2] := InitialThree[3];
            CreFlag := true "Next bar is a crescent";
          end if;
          N_Cre := 1;
          N_Dec := 1;
          ini_fin[1] := InitialThree[2];
          ini_fin[2] := InitialThree[3];
        else
//Rainflow Algorithm, get new bar:
          ini_fin[1] := ini_fin[2];
          ini_fin[2] := NextValue;
//
//********************************************
//
//      RAINFLOW CRESCENT ALGORITHM
//
//********************************************
//
          if CreFlag then
            CreFlag := false;
            if (ini_fin[1] > Cre[N_Cre, 1]) and (ini_fin[2] < Cre[N_Cre, 2]) then
//Create a new bar on the stack (bar inside last bar)
              N_Cre := N_Cre + 1;
              Cre[N_Cre, 1] := ini_fin[1];
              Cre[N_Cre, 2] := ini_fin[2];
              N_max := max(N_max, N_Cre);
            elseif (ini_fin[1] <= Cre[N_Cre, 1]) then
//The new bar starts before the last bar on the stack
              while (ini_fin[1] <= Cre[N_Cre, 1]) loop
//Extracts all bars that start after the new bar
//
//  EXPORT RESULT
//
//(Sol, N_Sol) := ShipSIM.Functions.DataFunctions.AddRainflowData(Cre[N_Cre, 1], Cre[N_Cre, 2], Sol, N_Sol);
                (RainflowMatrix, min_max_Range, min_max_Level, min_max_flag, OutOfMatrix) := ShipSIM.Functions.DataFunctions.AddRainflowMatrix(Cre[N_Cre, 1], Cre[N_Cre, 2], RainflowMatrix, min_max_Range, min_max_Level, min_max_flag);
                N_Cre := N_Cre - 1;
                if (N_Cre == 0) then
                  break;
                end if;
              end while;
//Create the new bar
              N_Cre := N_Cre + 1;
              Cre[N_Cre, 1] := ini_fin[1];
              Cre[N_Cre, 2] := ini_fin[2];
              N_max := max(N_max, N_Cre);
            else
//The new bar starts and ends after the start of last bar ( ini > Cre(N) and fin> = Cre(N) )
//
//  EXPORT RESULT
//
//(Sol, N_Sol) := ShipSIM.Functions.DataFunctions.AddRainflowData(ini_fin[1], Cre[N_Cre, 2], Sol, N_Sol);
              (RainflowMatrix, min_max_Range, min_max_Level, min_max_flag, OutOfMatrix) := ShipSIM.Functions.DataFunctions.AddRainflowMatrix(ini_fin[1], Cre[N_Cre, 2], RainflowMatrix, min_max_Range, min_max_Level, min_max_flag);
              Cre[N_Cre, 2] := ini_fin[2];
//Extends the last bar
            end if;
//Propagate the changes up to the top of the Stack
            if (N_Cre > 1) then
              while (Cre[N_Cre, 1] > Cre[N_Cre - 1, 1]) and (Cre[N_Cre, 2] >= Cre[N_Cre - 1, 2]) loop
//
//  EXPORT RESULT
//
//(Sol, N_Sol) := ShipSIM.Functions.DataFunctions.AddRainflowData(Cre[N_Cre, 1], Cre[N_Cre - 1, 2], Sol, N_Sol);
                (RainflowMatrix, min_max_Range, min_max_Level, min_max_flag, OutOfMatrix) := ShipSIM.Functions.DataFunctions.AddRainflowMatrix(Cre[N_Cre, 1], Cre[N_Cre - 1, 2], RainflowMatrix, min_max_Range, min_max_Level, min_max_flag);
                Cre[N_Cre - 1, 2] := Cre[N_Cre, 2];
//Extends the last bar
                N_Cre := N_Cre - 1;
                if (N_Cre == 1) then
                  break;
                end if;
              end while;
            end if;
          else
//
//********************************************
//
//      RAINFLOW DECRESCENT ALGORITHM
//
//********************************************
//
            CreFlag := true;
            if (ini_fin[1] < Dec[N_Dec, 1]) and (ini_fin[2] > Dec[N_Dec, 2]) then
//Create a new bar on the stack (bar inside last bar)
              N_Dec := N_Dec + 1;
              Dec[N_Dec, 1] := ini_fin[1];
              Dec[N_Dec, 2] := ini_fin[2];
              N_max := max(N_max, N_Dec);
            elseif (ini_fin[1] >= Dec[N_Dec, 1]) then
//The new bar starts before the last bar on the stack
              while (ini_fin[1] >= Dec[N_Dec, 1]) loop
//Extracts all bars that start after the new bar
//
//  EXPORT RESULT
//
//(Sol, N_Sol) := ShipSIM.Functions.DataFunctions.AddRainflowData(Dec[N_Dec, 1], Dec[N_Dec, 2], Sol, N_Sol);
                (RainflowMatrix, min_max_Range, min_max_Level, min_max_flag, OutOfMatrix) := ShipSIM.Functions.DataFunctions.AddRainflowMatrix(Dec[N_Dec, 1], Dec[N_Dec, 2], RainflowMatrix, min_max_Range, min_max_Level, min_max_flag);
                N_Dec := N_Dec - 1;
                if (N_Dec == 0) then
                  break;
                end if;
              end while;
//Create the new bar
              N_Dec := N_Dec + 1;
              Dec[N_Dec, 1] := ini_fin[1];
              Dec[N_Dec, 2] := ini_fin[2];
              N_max := max(N_max, N_Dec);
            else
//The new bar starts and ends after the start of last bar ( ini > Cre(N) and fin> = Cre(N) )
//
//  EXPORT RESULT
//
//(Sol, N_Sol) := ShipSIM.Functions.DataFunctions.AddRainflowData(ini_fin[1], Dec[N_Dec, 2], Sol, N_Sol);
              (RainflowMatrix, min_max_Range, min_max_Level, min_max_flag, OutOfMatrix) := ShipSIM.Functions.DataFunctions.AddRainflowMatrix(ini_fin[1], Dec[N_Dec, 2], RainflowMatrix, min_max_Range, min_max_Level, min_max_flag);
              Dec[N_Dec, 2] := ini_fin[2];
//Extends the last bar
            end if;
//Propagate the changes up to the top of the Stack
            if (N_Dec > 1) then
              while (Dec[N_Dec, 1] < Dec[N_Dec - 1, 1]) and (Dec[N_Dec, 2] <= Dec[N_Dec - 1, 2]) loop
//
//  EXPORT RESULT
//
//(Sol, N_Sol) := ShipSIM.Functions.DataFunctions.AddRainflowData(Dec[N_Dec, 1], Dec[N_Dec - 1, 2], Sol, N_Sol);
                (RainflowMatrix, min_max_Range, min_max_Level, min_max_flag, OutOfMatrix) := ShipSIM.Functions.DataFunctions.AddRainflowMatrix(Dec[N_Dec, 1], Dec[N_Dec - 1, 2], RainflowMatrix, min_max_Range, min_max_Level, min_max_flag);
                Dec[N_Dec - 1, 2] := Dec[N_Dec, 2];
//Extends the last bar
                N_Dec := N_Dec - 1;
                if (N_Dec == 1) then
                  break;
                end if;
              end while;
            end if;
          end if;
        end if;
//
//********************************************
//
//      END RAINFLOW DECRESCENT ALGORITHM
//
//********************************************
//
//
//********************************************
//
//      ADD ONGOING SEGMENTS
//
//********************************************
//
        OngoingRainflowMatrix := RainflowMatrix;
        for i in 1:N_Cre loop
          (OngoingRainflowMatrix, OngoingOutOfMatrixCre) := ShipSIM.Functions.DataFunctions.SimpleAddRainflowMatrix(Cre[i, 1], Cre[i, 2], OngoingRainflowMatrix);
        end for;
        for i in 1:N_Dec loop
          (OngoingRainflowMatrix, OngoingOutOfMatrixDec) := ShipSIM.Functions.DataFunctions.SimpleAddRainflowMatrix(Dec[i, 1], Dec[i, 2], OngoingRainflowMatrix);
        end for;
      end when;
//Assert documentation
      assert(N_max <= StackSize, "!W0001 [RainflowCounter] (" + getInstanceName() + "): Stack size is not sufficient! Increase the stack size parameter!", level = AssertionLevel.error);
      assert(InitialRange < FinalRange, "!W0002 [RainflowCounter] (" + getInstanceName() + "): Final Range must be greater than Initial Range", level = AssertionLevel.error);
      assert(InitialLevel < FinalLevel, "!W0003 [RainflowCounter] (" + getInstanceName() + "): Final Level must be greater than Initial Level", level = AssertionLevel.error);
      assert(OutOfMatrix == false, "!W0004 [RainflowCounter] (" + getInstanceName() + "): Some data are out of result matrix range! Extend the range!", level = AssertionLevel.warning);
      assert((OngoingOutOfMatrixCre == false) and (OngoingOutOfMatrixDec == false), "!W0005 [RainflowCounter] (" + getInstanceName() + "): Some ONGOING data are out of result matrix range! Extend the range!", level = AssertionLevel.warning);
//
      annotation(
        Icon(graphics = {Rectangle(lineColor = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Line(origin = {79.4691, 9.7089}, points = {{-80, 68}, {-80, -80}}, color = {192, 192, 192}), Polygon(origin = {-80, -2}, rotation = 180, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid, points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}}), Line(origin = {-0.719178, 77.6712}, points = {{-90, 0}, {68, 0}}, color = {192, 192, 192}), Polygon(origin = {0, 78}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid, points = {{90, 0}, {68, 8}, {68, -8}, {90, 0}}), Line(origin = {-4.04365, 10.9831}, points = {{-35.9563, 67.0169}, {36.0437, 47.0169}, {-3.95635, 39.0169}, {50.0437, 23.0169}, {-49.9563, 5.01687}, {-9.95635, -10.9831}, {-29.9563, -16.9831}, {48.0437, -40.9831}, {-29.9563, -66.9831}}), Line(origin = {5.89, 46.11}, points = {{-39.8887, 31.8887}, {26.1113, 13.8887}, {26.1113, -6.1113}, {42.1113, -10.1113}, {42.1113, -32.1113}}, color = {255, 0, 0}, pattern = LinePattern.Dash, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 5), Line(origin = {-16.92, 23.08}, points = {{40.9246, 34.9246}, {4.9246, 28.9246}, {4.9246, 2.9246}, {-41.0754, -5.0754}, {-41.0754, -35.0754}, {-41.0754, -35.0754}}, color = {255, 0, 0}, pattern = LinePattern.Dash, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 5), Line(origin = {-0.15, -16.85}, points = {{-45.8473, 32.8473}, {-11.8473, 18.8473}, {-11.8473, 6.84729}, {46.1527, -11.1527}, {46.1527, -33.1527}}, color = {255, 0, 0}, pattern = LinePattern.Dash, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 5), Line(origin = {15.0238, 45.2322}, points = {{-14, 4}, {14, -4}, {14, -4}}, color = {255, 0, 0}, pattern = LinePattern.Dash), Line(origin = {12.98, 30.72}, points = {{22, 4}, {-22, -4}}, color = {255, 0, 0}, pattern = LinePattern.Dash), Line(origin = {-26.31, -2}, points = {{7, 2}, {-7, -2}, {-7, -2}}, color = {255, 0, 0}, pattern = LinePattern.Dash), Line(origin = {-21.21, -7.67}, points = {{-7, 2}, {7, -2}}, color = {255, 0, 0}, pattern = LinePattern.Dash), Line(origin = {-0.87, -45.87}, points = {{38.8675, 15.8675}, {-39.1325, -10.1325}, {-39.1325, -16.1325}, {-39.1325, -16.1325}}, color = {255, 0, 0}, pattern = LinePattern.Dash, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 5), Text(textColor = {0, 0, 255}, extent = {{-150, 150}, {150, 110}}, textString = "%name")}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
        Documentation(info = "<html><head></head><body><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">This block perform a rainflow counting method for the discrete maximum/minimum peak values of their input.</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">The rainflow counting algorithm proposed here was developed by the author in order to provide the following characteristics:</div><div><ul><li><font face=\"MS Shell Dlg 2\"><b>Real time counting</b>: The vast majority of similar algorithms need a complete time set before start the counting and some of them perform a dual pass over the data, making non suitable for real time counting. The method implemented here only adds data to the previous calculated one at real time, so it is indicated for real time monitoring.</font></li><li><font face=\"MS Shell Dlg 2\"><b>Fixed memory:</b>&nbsp;Since Modelica does not allow relocate memory dynamically, this algorithm uses two stacks that stores the ongoing cycles. It was tested that a smell stack size of 10 values is enough for large varying timeseries. By default, the stack size is 20 and the user can change it as parameter. If a stack overflow occurs, an assertion is raised to advise the user to increase the stack size.</font></li><li><font face=\"MS Shell Dlg 2\"><b>Fixed Matrix Output: </b>The output is a fixed matrix with customizable size and ranges as parameters.</font></li><li><font face=\"MS Shell Dlg 2\"><b>Easy to understand and simple algorithm:</b>&nbsp;The algorithm developed here is based on a visual bar stack that enhances the understanding, developing and debugging. This algorithm was validated with other more complex rainflow counting methods with the same result in all the situations, without limitations.</font></li></ul><div><font face=\"MS Shell Dlg 2\">Parameters:</font></div></div><div><ul><li><font face=\"MS Shell Dlg 2\">Initial, Final and Interval of the Ranges</font></li><li><font face=\"MS Shell Dlg 2\">Initial, Final and Interval of the Levels</font></li><li><font face=\"MS Shell Dlg 2\">Stack Size</font></li></ul><div><font face=\"MS Shell Dlg 2\">Input: <span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Signal of the maximum/minimum values alternatively</font></div></div><div><font face=\"MS Shell Dlg 2\"><br></font></div><div><font face=\"MS Shell Dlg 2\">Output:&nbsp;<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Rainflow matrix:</font></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">The output is a RealVectorOutput with Range intervals as rows and Level intervals as columns where the fisrt two values of each row/column is the interval and then a point on the matrix is the counting for this Range &amp; Interval.</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div><div><font face=\"MS Shell Dlg 2\"><u>Working principles</u>:</font></div><div><font face=\"MS Shell Dlg 2\"><br></font></div><div><font face=\"MS Shell Dlg 2\">Rainflow counting can be splitted into crescent and decrescent ranges and levels, being the algorithm similar for both situations. Let imagine that each crescent range (initial-final) is a bar that is placed on top of a bar stack and compared with the previous one:</font></div><div><font face=\"MS Shell Dlg 2\"><br></font></div><div><font face=\"MS Shell Dlg 2\"><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>a) <b>If the new bar fits inside the last bar</b>: the new bar is placed at the end of the stack.</font></div><div><font face=\"MS Shell Dlg 2\"><br></font></div><div><font face=\"MS Shell Dlg 2\"><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>b)<b> If the new bar starts before the last bar's start</b>: &nbsp;Extract as results the previous bar recursively until this condition is true. After this, the new bar is placed at the end of the bar stack.</font></div><div><font face=\"MS Shell Dlg 2\"><br></font></div><div><font face=\"MS Shell Dlg 2\"><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>c) <b>If the new bar starts and ends after the last bar's start and end</b>: Extract as result the range from new bar start to last bar end and set the last bar end equal to new bar end. The new bar is discarded.</font></div><div><font face=\"MS Shell Dlg 2\"><br></font></div><div><font face=\"MS Shell Dlg 2\">After the above operations, the condition c) is propagated recursively from the bottom to the stack until this condition applies, taking as \"new\" bar the last bar of the stack.</font></div><div><font face=\"MS Shell Dlg 2\"><br></font></div><div><font face=\"MS Shell Dlg 2\">In a similar way decrescent bars are processed.</font></div></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2';\"><div class=\"htmlDoc\"><div style=\"font-size: 12px;\"><u>Limitations:</u></div><div style=\"font-size: 12px;\"><br></div><div style=\"font-size: 12px;\">This block is developed for real-time signal usage. It is noted that the algorithm needs to record in a stack the ongoing crescent and decrescent segments. This stack is continuously re-written during data collection, but is possible that the default size is not sufficient on some simulations.</div><div style=\"font-size: 12px;\">In this case, an assert message is raised in order to increase the size parameter.</div><div style=\"font-size: 12px;\"><br></div><div><div style=\"font-size: 12px; font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-size: 12px; font-family: -webkit-standard;\"><u><br></u></div><div style=\"font-size: 12px; font-family: -webkit-standard;\">(pending to be published by Basilio Puente Varela)</div><div style=\"font-size: 12px; font-family: -webkit-standard;\"><u><br></u></div><div style=\"font-size: 12px; font-family: -webkit-standard;\"><u>License:</u></div><div style=\"font-size: 12px; font-family: -webkit-standard;\"><u><br></u></div><div style=\"font-family: -webkit-standard;\"><!--StartFragment--><span property=\"dct:title\" style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">Modelica RainflowCounter&nbsp;</span><span style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">© 2023&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">by&nbsp;</span><span property=\"cc:attributionName\" style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">Basilio Puente Varela&nbsp;</span><span style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">is licensed under</span><span style=\"color: rgb(51, 51, 51); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">&nbsp;</span><a href=\"https://creativecommons.org/licenses/by-nc-nd/4.0/?ref=chooser-v1\" target=\"_blank\" rel=\"license noopener noreferrer\" style=\"box-sizing: inherit; color: rgb(209, 69, 0); cursor: pointer; text-decoration: none; background-color: rgb(255, 255, 255); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2;\">CC BY-NC-ND 4.0&nbsp;<span data-v-a0d4e8a8=\"\" class=\"icon\" style=\"font-size: var(--icon-sprite-size); box-sizing: inherit; font-style: inherit; display: inline-flex; height: 1em; width: 1em; align-items: center; white-space: nowrap; vertical-align: middle; margin-right: 3px;\"><img data-v-a0d4e8a8=\"\" width=\"20\" height=\"20\" src=\"https://chooser-beta.creativecommons.org/img/cc-logo.f0ab4ebe.svg\" style=\"box-sizing: inherit; height: auto; max-width: 100%; border-style: none; margin-right: 3px;\"><img data-v-a0d4e8a8=\"\" width=\"20\" height=\"20\" src=\"https://chooser-beta.creativecommons.org/img/cc-by.21b728bb.svg\" style=\"box-sizing: inherit; height: auto; max-width: 100%; border-style: none; margin-right: 3px;\"><img data-v-a0d4e8a8=\"\" width=\"20\" height=\"20\" src=\"https://chooser-beta.creativecommons.org/img/cc-nc.218f18fc.svg\" style=\"box-sizing: inherit; height: auto; max-width: 100%; border-style: none; margin-right: 3px;\"><img data-v-a0d4e8a8=\"\" width=\"20\" height=\"20\" src=\"https://chooser-beta.creativecommons.org/img/cc-nd.de89fdeb.svg\" style=\"box-sizing: inherit; height: auto; max-width: 100%; border-style: none; margin-right: 3px;\"></span></a><!--EndFragment-->

</div><div style=\"font-size: 12px; font-family: -webkit-standard;\"><br></div></div><div style=\"font-size: 12px; font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"></span></div><div style=\"font-size: 12px; font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">This algorithm was developed by Basilio Puente Varela,&nbsp;</span><span style=\"font-family: Arial, sans-serif; font-size: 13.333333015441895px;\">©</span><span style=\"font-family: 'MS Shell Dlg 2';\">&nbsp;all rights are reserved. Contact for permission on other uses.</span></div><div style=\"font-size: 12px; font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-size: 12px; font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-size: 12px; font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-size: 12px; font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">N/A</span></div><div style=\"font-size: 12px;\"><br></div></div><div class=\"htmlDoc\" style=\"font-size: 12px;\"><u>Further development:</u></div></div></body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(09/12/2023): Initial release</span></body></html>"));
    end RainflowCounter;
    
    model FatigueCounter
  Modelica.Blocks.Interfaces.RealVectorInput OngoingRainflowMatrix[:,:] annotation(
        Placement(transformation(origin = {-100, 0}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-100, 0}, extent = {{-20, -20}, {20, 20}})));
    equation
    
    annotation(
        Icon(graphics = {Rectangle(lineColor = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}})}));
end FatigueCounter;
    
    
    
    annotation(
      Icon(graphics = {Line(points = {{-90, 0}, {68, 0}}, color = {192, 192, 192}), Polygon(lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid, points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}}), Polygon(lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid, points = {{90, 0}, {68, 8}, {68, -8}, {90, 0}}), Line(points = {{-80, 68}, {-80, -80}}, color = {192, 192, 192}), Line(origin = {-6.06203, 10.1294}, points = {{-65.938, -18.1294}, {-27.938, 37.8706}, {-19.938, 15.8706}, {0.0620331, 37.8706}, {4.06203, 1.87057}, {18.062, 21.8706}, {30.062, -38.1294}, {60.062, 27.8706}, {66.062, 9.87057}})}));
  end DataProcessing;

  package Others "Other miscellaneous components"
    model EnvironmentHeatTransfer "Base model as source of environmental data"
      import Modelica.SIunits.Conversions.from_deg;
      import ShipSIM.Functions.Others.min_max;
      //*********** SOLAR PARAMETERS *************
      parameter Integer startDay(final min = 1, final max = 31) = 1 "Day" annotation(
        Dialog(tab = "Solar", group = "Starting Time"));
      parameter Integer startMonth(final min = 1, final max = 12) = 1 "Month" annotation(
        Dialog(tab = "Solar", group = "Starting Time"));
      parameter Integer startYear = 2018 "Year" annotation(
        Dialog(tab = "Solar", group = "Starting Time"));
      parameter Integer TimeZone = 1 "Time zone" annotation(
        Dialog(tab = "Solar", group = "Starting Time"));
      parameter Modelica.SIunits.Angle longitude = -0.1438785943756596 "Longitude (Positive East)" annotation(
        Dialog(tab = "Solar", group = "Panel position"));
      parameter Modelica.SIunits.Angle latitude = 0.7579392485634024 "Latitude (Positive North)" annotation(
        Dialog(tab = "Solar", group = "Panel position"));
      parameter Modelica.SIunits.Irradiance irradianceRef = 1000 "Reference solar irradiance" annotation(
        Dialog(tab = "Solar", group = "Solar nominal irradiance"));
      parameter Boolean Use_Real_Irradiance = true "Use a time table file of real irradiance" annotation(
        Dialog(tab = "Solar", group = "Irradiance Data Table"),
        Evaluate = true,
        HideResult = true,
        choices(checkBox = true));
      parameter String SunfileName = "NoName" "File where table is included [sec - W/m2]" annotation(
        Dialog(tab = "Solar", group = "Irradiance Data Table", enable = Use_Real_Irradiance, loadSelector(filter = "Text files (*.txt);;MATLAB MAT-files (*.mat)", caption = "Open file in which table is present")));
      parameter String SuntableName = "NoName" "Table name on file" annotation(
        Dialog(tab = "Solar", group = "Irradiance Data Table", enable = Use_Real_Irradiance));
      //*********** AIR PARAMETERS *************
      parameter String TempfileName = "NoName" "File where table is included [sec - Temp K]" annotation(
        Dialog(tab = "Air", group = "Air Temperature Data Table", loadSelector(filter = "Text files (*.txt);;MATLAB MAT-files (*.mat)", caption = "Open file in which table is present")));
      parameter String TemptableName = "NoName" "Table name on file" annotation(
        Dialog(tab = "Air", group = "Air Temperature Data Table"));
      parameter String HumfileName = "NoName" "File where table is included [sec - %RH]" annotation(
        Dialog(tab = "Air", group = "Air Humidity Data Table", loadSelector(filter = "Text files (*.txt);;MATLAB MAT-files (*.mat)", caption = "Open file in which table is present")));
      parameter String HumtableName = "NoName" "Table name on file" annotation(
        Dialog(tab = "Air", group = "Air Humidity Data Table"));
      //*********** WIND PARAMETERS *************
      parameter String WSpeedfileName = "NoName" "File where table is included [sec - Km/h]" annotation(
        Dialog(tab = "Air", group = "Wind Speed Data Table", loadSelector(filter = "Text files (*.txt);;MATLAB MAT-files (*.mat)", caption = "Open file in which table is present")));
      parameter String WSpeedtableName = "NoName" "Table name on file" annotation(
        Dialog(tab = "Air", group = "Wind Speed Data Table"));
      parameter String WDirfileName = "NoName" "File where table is included [sec - ºDeg (0=N, 90=E)]" annotation(
        Dialog(tab = "Air", group = "Wind Direction Data Table", loadSelector(filter = "Text files (*.txt);;MATLAB MAT-files (*.mat)", caption = "Open file in which table is present")));
      parameter String WDirtableName = "NoName" "Table name on file" annotation(
        Dialog(tab = "Air", group = "Wind Direction Data Table"));
      Modelica.Blocks.Tables.CombiTable1D HumidityData(fileName = HumfileName, tableName = HumtableName, tableOnFile = true) annotation(
        Placement(transformation(origin = {-12, 10}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
      Modelica.Blocks.Tables.CombiTable1D WSpeedData(fileName = WSpeedfileName, tableName = WSpeedtableName, tableOnFile = true) annotation(
        Placement(visible = true, transformation(origin = {-8, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Tables.CombiTable1D WDirData(fileName = WDirfileName, tableName = WDirtableName, tableOnFile = true) annotation(
        Placement(transformation(origin = {-52, -66}, extent = {{-10, -10}, {10, 10}})));
      ShipSIM.Components.Others.Solar.SolarIrradiation solarIrradiation(Calculation_on_Panel = false, TimeZone = TimeZone, Use_Real_Irradiance = true, fileName = SunfileName, irradianceRef = irradianceRef, latitude = latitude, longitude = longitude, startDay = startDay, startMonth = startMonth, startYear = startYear, tableName = SuntableName) annotation(
        Placement(visible = true, transformation(origin = {-46, 72}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      ShipSIM.Components.Others.HeatTransfer.TemperatureDataset AirTemperature(TempfileName = TempfileName, TemptableName = TemptableName) annotation(
        Placement(visible = true, transformation(origin = {74, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b Air_Temp annotation(
        Placement(visible = true, transformation(origin = {100, -58}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b Sky_Temp annotation(
        Placement(visible = true, transformation(origin = {100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput SunHeight(unit = "deg") "Sun height above horizon in [deg]" annotation(
        Placement(visible = true, transformation(origin = {-94, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-102, 60}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput SunVector[3] "World frame X,Y,Z direction of the sunrays" annotation(
        Placement(visible = true, transformation(origin = {-92, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-102, 10}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput WindVector[3] "World frame X,Y,Z direction of the wind" annotation(
        Placement(visible = true, transformation(origin = {-2, -98}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-30, -102}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
      Modelica.Blocks.Interfaces.RealOutput WindSpeed(unit = "m/s") "Wind speed in [m/s]" annotation(
        Placement(visible = true, transformation(origin = {36, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {10, -102}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Blocks.Interfaces.RealOutput WindDir(unit = "deg") "Wind direction in [deg], 0 = wind from the North, 90=wind from east" annotation(
        Placement(transformation(origin = {-36, -98}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-70, -102}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Blocks.Interfaces.RealOutput CloudRatio "ratio of clouds in the sky (=0 sunny, =1 cloud cover)" annotation(
        Placement(transformation(origin = {92, -100}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {80, -102}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Blocks.Interfaces.RealOutput LocalHour "Hour of the day without saving time change" annotation(
        Placement(transformation(origin = {-94, -80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-100, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
      Modelica.Blocks.Interfaces.RealOutput RH annotation(
        Placement(transformation(origin = {-94, -42}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-102, -30}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
      //VARIABLES
      Real Tdp "Dew Point Temperature";
      Real Vp "Vapour pressure[hPa]";
    protected
      Modelica.Blocks.Math.Gain kmh_to_ms(k = 1000/3600) annotation(
        Placement(visible = true, transformation(origin = {28, -62}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature SkyTemp annotation(
        Placement(visible = true, transformation(origin = {72, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Math.Mean CloudMean(f = 1/1800) "renew the cloud mean each half hour" annotation(
        Placement(transformation(origin = {58, 10}, extent = {{-10, -10}, {10, 10}})));
      Real LastCloudAvg(final start = 0, fixed = true);
      Real e_sky;
    equation
      LocalHour = solarIrradiation.LocalHour;
//Calculate the cloud ratio
      when solarIrradiation.IsDay == false then
//When IsDay changes to false
        LastCloudAvg = pre(CloudMean.y);
      end when;
      if solarIrradiation.IsDay then
        CloudMean.u = 1 - min_max(solarIrradiation.SolarIrradiationRatio, 0, 1);
        CloudRatio = CloudMean.u;
      else
        CloudMean.u = LastCloudAvg;
        CloudRatio = LastCloudAvg;
      end if;
//Connect time to data
      HumidityData.u[1] = time;
      WSpeedData.u[1] = time;
      WDirData.u[1] = time;
//Get values
//Wind Vector
      WindVector = WindSpeed*{-sin(from_deg(WindDir)), -cos(from_deg(WindDir)), 0};
//Other
      Tdp = Air_Temp.T - ((100 - RH*100)/5) "Valid for RH>50%";
      Vp = (RH)*6.1121*exp((18.678 - (Air_Temp.T - 273.15)/234.4)*((Air_Temp.T - 273.15)/(257.14 + (Air_Temp.T - 273.15))));
      e_sky = (0.82 - 0.25*10^(-0.0945*Vp))*(1 + 0.21*(CloudRatio)^(2.5));
      SkyTemp.T = Air_Temp.T*(e_sky^(1/4));
      connect(AirTemperature.port_AirTemp, Air_Temp) annotation(
        Line(points = {{84, -59.2}, {102, -59.2}, {102, -58.2}, {100, -58.2}}, color = {191, 0, 0}));
      connect(SkyTemp.port, Sky_Temp) annotation(
        Line(points = {{82, 60}, {100, 60}}, color = {191, 0, 0}));
      connect(WDirData.y[1], WindDir) annotation(
        Line(points = {{-41, -66}, {-35, -66}, {-35, -98}, {-36, -98}}, color = {0, 0, 127}));
      connect(solarIrradiation.SunHeight, SunHeight) annotation(
        Line(points = {{-58, 80}, {-68, 80}, {-68, 20}, {-94, 20}}, color = {0, 0, 127}));
      connect(solarIrradiation.SunVector, SunVector) annotation(
        Line(points = {{-58, 72}, {-64, 72}, {-64, -14}, {-92, -14}}, color = {0, 0, 127}, thickness = 0.5));
      connect(kmh_to_ms.y, WindSpeed) annotation(
        Line(points = {{28, -72}, {22, -72}, {22, -100}, {36, -100}}, color = {0, 0, 127}));
      connect(WSpeedData.y[1], kmh_to_ms.u) annotation(
        Line(points = {{4, -34}, {28, -34}, {28, -50}}, color = {0, 0, 127}));
      connect(HumidityData.y[1], RH) annotation(
        Line(points = {{-22, 10}, {-44, 10}, {-44, -42}, {-94, -42}}, color = {0, 0, 127}));
//Assert documentation
      assert(RH > 0.5, "!W0001 [EnvironmentHeatTransfer] (" + getInstanceName() + "): Dew Point temperature equation not valid for RH < 50%", level = AssertionLevel.warning);
      annotation(
        Diagram,
        Icon(graphics = {Ellipse(origin = {-43, 54}, lineColor = {255, 170, 85}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, extent = {{-27, 26}, {27, -26}}), Line(origin = {-68.44, 44.9}, points = {{-19.5604, -34.9036}, {24.4396, 9.09641}, {-19.5604, 17.0964}}, color = {255, 255, 0}, pattern = LinePattern.Dash), Polygon(origin = {2, -30}, lineColor = {191, 0, 0}, fillColor = {191, 0, 0}, fillPattern = FillPattern.Solid, points = {{52, -20}, {52, 20}, {90, 0}, {52, -20}}), Line(origin = {0.634438, -30.4531}, points = {{-2, 0}, {64, 0}}, color = {191, 0, 0}), Line(origin = {2.22054, 49.1692}, points = {{-2, 0}, {64, 0}}, color = {191, 0, 0}), Polygon(origin = {2, 50}, lineColor = {191, 0, 0}, fillColor = {191, 0, 0}, fillPattern = FillPattern.Solid, points = {{52, -20}, {52, 20}, {90, 0}, {52, -20}}), Text(origin = {68, 12}, extent = {{0, 0}, {-86, -82}}, textString = "Air
      K"), Line(origin = {-62.3266, -58.8139}, rotation = 180, points = {{18, 0}, {-54, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {-62.4704, -78.6521}, rotation = 180, points = {{18, 0}, {-56, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Rectangle(extent = {{-100, 100}, {100, -100}}), Text(origin = {68, 94}, extent = {{0, 0}, {-86, -82}}, textString = "Sky
      K")}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
        Documentation(revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(09/12/2023): Initial release</span></body></html>", info = "<html><head></head><body><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">This component generates the environmental variables to be used in heat transfer simulations. The component reads the following time tables of:</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">- Real sun horizontal irradiation</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">- Real air temperature</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">- Real air humidity</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">- Real wind speed</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">- Real wind direction</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">And produces the sun and wind vector (south = {0,-1,0}, East = {1,0,0}), cloud coverage (based on irradiation), Dew point temperature, sky temperature for radiation.</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><u>Limitations:</u></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><div class=\"htmlDoc\"><div><br></div><div>Sky temperature depends on the cloud covering. Night values are estimated by the last half hour value of the day.</div><div>Dew point temperature is precise when RH &gt; 50%</div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><br></div></div><div style=\"font-family: -webkit-standard;\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[Lienhard]</td><td>John H. Lienhard IV, John H. Lienhard V, \"A Heat Transfer Textbook\", Phlogiston Press, 3rd Edition, 2006</td></tr><tr><td>[ThSysEng]</td><td>Michael J. Moran, Howard N. Shapiro, Bruce R. Munson, David P. DeWitt, \"Introduction to Thermal Systems Engineering\", John Wiley &amp; Sons, Inc., 1st Edition, 2003</td></tr><tr><td>[Nahon]</td><td>R. Nahon, O. Blanpain, B. Beckers, \"Impact of the anisotropy of the sky vault emissivity on the building envelope radiative budget\", First International Conference on Urban Physics, September 2016,&nbsp;<a href=\"https://www.researchgate.net/publication/315292999_Impact_of_the_anisotropy_of_the_sky_vault_emissivity_on_the_building_envelope_radiative_budget\">https://www.researchgate.net/publication/315292999_Impact_of_the_anisotropy_of_the_sky_vault_emissivity_on_the_building_envelope_radiative_budget</a><br><br></td></tr></tbody></table></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">N/A</span></div><div><br></div></div><div class=\"htmlDoc\"><u>Further development:</u></div></div></body></html>"));
    end EnvironmentHeatTransfer;

    package Solar "Solar irradiation models"
      model SolarIrradiation "Model of solar irradiation"
        import Modelica.SIunits.Conversions.from_deg;
        import Modelica.SIunits.Conversions.to_deg;
        import ShipSIM.Functions.Others.dayOfTheYear;
        import ShipSIM.Functions.Others.min_max;
        parameter Integer startDay(final min = 1, final max = 31) = 1 "Day" annotation(
          Dialog(group = "Starting Time"));
        parameter Integer startMonth(final min = 1, final max = 12) = 1 "Month" annotation(
          Dialog(group = "Starting Time"));
        parameter Integer startYear = 2018 "Year" annotation(
          Dialog(group = "Starting Time"));
        parameter Integer TimeZone = 1 "Time zone" annotation(
          Dialog(group = "Starting Time"));
        parameter Modelica.SIunits.Angle longitude = -0.1438785943756596 "Longitude (Positive East)" annotation(
          Dialog(group = "Panel position"));
        parameter Modelica.SIunits.Angle latitude = 0.7579392485634024 "Latitude (Positive North)" annotation(
          Dialog(group = "Panel position"));
        parameter Modelica.SIunits.Irradiance irradianceRef = 1000 "Reference solar irradiance" annotation(
          Dialog(group = "Solar nominal irradiance"));
        parameter Boolean Use_Real_Irradiance = true "Use a time table file of real irradiance" annotation(
          Dialog(group = "Table data definition"),
          Evaluate = true,
          HideResult = true,
          choices(checkBox = true));
        parameter String fileName = "NoName" "File where table is included [sec - W/m2]" annotation(
          Dialog(group = "Table data definition", enable = Use_Real_Irradiance, loadSelector(filter = "Text files (*.txt);;MATLAB MAT-files (*.mat)", caption = "Open file in which table is present")));
        parameter String tableName = "NoName" "Table name on file" annotation(
          Dialog(group = "Table data definition", enable = Use_Real_Irradiance));
        parameter Boolean Calculation_on_Panel = true "Use the inclination of panel, if not horizontal panel results are provided" annotation(
          Dialog(group = "Panel Input"),
          Evaluate = true,
          HideResult = true,
          choices(checkBox = true));
        Modelica.Blocks.Interfaces.RealInput Panelgamma if Calculation_on_Panel "Inclination angle of area from horizontal [rad]" annotation(
          Placement(visible = true, transformation(origin = {-120, 60}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput Panelazimuth if Calculation_on_Panel "Azimuth of area from South direction [rad]" annotation(
          Placement(visible = true, transformation(origin = {-120, -60}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, -60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealOutput IrradianceOnPanel(unit = "W/m2") "Real Irradiance on panel surface [W/m2]" annotation(
          Placement(transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {116, -74}, extent = {{-20, -20}, {20, 20}})));
        Modelica.Blocks.Interfaces.RealOutput SunHeight(unit = "deg") "Sun height above horizont in [deg]" annotation(
          Placement(transformation(origin = {102, -44}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {116, 76}, extent = {{-20, -20}, {20, 20}})));
        Modelica.Blocks.Interfaces.RealOutput SunVector[3] "World frame X,Y,Z direction of the sunrays" annotation(
          Placement(transformation(origin = {104, -74}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {116, 0}, extent = {{-20, -20}, {20, 20}})));
        Modelica.Blocks.Interfaces.RealOutput SolarIrradiationRatio "Ratio from real to theoric irradiation (cloud sky) [-]" annotation(
          Placement(visible = true, transformation(origin = {0, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-2.22045e-16, -106}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
        Modelica.SIunits.Irradiance PanelRefIrradiance "Reference irradiance on the inclined plane in w/m^2";
        Modelica.SIunits.Irradiance RealIrradiance "Real irradiance of the sun according to data table in w/m^2";
        Modelica.SIunits.Irradiance RefIrradianceHorizontal "Direct irradiance on the horizontal in W/m^2";
        Real RatioHorizontal "Ratio between horizontal measurement/reference horizontal";
        Modelica.SIunits.Conversions.NonSIunits.Time_hour trueMeanTimeHours "True mean time in unit hours";
        Boolean IsDay "true=day, false=night";
        Real LocalHour "Hour of the day without time change";
      protected
        Real gamma;
        Real azimuth;
        Real Ratio "Ratio between inclined panel/horizontal panel";
        Modelica.Blocks.Tables.CombiTable1D DatosIrradiacion(fileName = fileName, tableName = tableName, tableOnFile = true) annotation(
          Placement(visible = true, transformation(origin = {0, -72}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Integer startDayOfYear(start = dayOfTheYear(startDay, startMonth, startYear), fixed = true) "Start day of year in simulation";
        Integer dayOfYear(final start = dayOfTheYear(startDay, startMonth, startYear), fixed = true) "Actual day of year";
        Integer daysOfYear(final start = dayOfTheYear(31, 12, startYear), fixed = true) "Total number of days of year";
        Integer year(final start = startYear, fixed = true) "Actual year";
        Modelica.SIunits.Angle Jprime(final start = dayOfTheYear(startDay, startMonth, startYear)/dayOfTheYear(31, 12, startYear)*2*Modelica.Constants.pi) "Equivalent Angle of the day of the year w.r.t. total number of days";
        Real delta_J;
        Real timeequation_J;
        Modelica.SIunits.Conversions.NonSIunits.Time_day localTimeDays "Local time in days";
        Integer localDays "Locale day";
        Modelica.SIunits.Time localTime "Local time";
        Modelica.SIunits.Conversions.NonSIunits.Time_hour localTimeHours "Local time in unit hours";
        Modelica.SIunits.Conversions.NonSIunits.Time_hour LocalMeanTimeHours "Local mean time in unit hours";
        Modelica.SIunits.Angle hoursAngle "Hours angle";
        Modelica.SIunits.Angle sunHeight "Sun height";
        Modelica.SIunits.Angle sunAzimuth1 "Sun azimuth before 12 p.m.";
        Modelica.SIunits.Angle sunAzimuth2 "Sun azimuth after 12 p.m.";
        Modelica.SIunits.Angle SunAzimuth;
        Modelica.SIunits.Angle angleOfIncidence "Angle of incidence between a vector in sun direction and a normal vector";
      algorithm
// Calculate ratio of day w.r.t. total number of days of a year as equivalent angle
        when sample(24*3600, 24*3600) then
          dayOfYear := mod(pre(dayOfYear), pre(daysOfYear)) + 1;
        end when;
        when startDayOfYear + localDays == daysOfYear + 1 then
          startDayOfYear := 1;
          year := pre(year) + 1;
          daysOfYear := dayOfTheYear(31, 12, year);
        end when;
// One full year is reached
// Reset start day of year
// Increment year
// Determined actual number of total days of year
        Ratio := min_max(PanelRefIrradiance/max(RefIrradianceHorizontal, Modelica.Constants.small), 0, 10);
        if Use_Real_Irradiance then
          RatioHorizontal := min_max(DatosIrradiacion.y[1]/max(RefIrradianceHorizontal, Modelica.Constants.small), 0, 3);
          IrradianceOnPanel := Ratio*DatosIrradiacion.y[1];
        else
          RatioHorizontal := 1;
          IrradianceOnPanel := PanelRefIrradiance;
        end if;
      equation
        SolarIrradiationRatio = RatioHorizontal;
//if Use_Real_Irradiance then
        DatosIrradiacion.u[1] = time;
//end if;
        if not Calculation_on_Panel then
          gamma = 0;
          azimuth = 0;
        else
          gamma = Panelgamma;
          azimuth = Panelazimuth;
        end if;
//Sun irradiance
        SunHeight = sunHeight*180/Modelica.Constants.pi;
        Jprime = dayOfYear/daysOfYear*2*Modelica.Constants.pi;
        delta_J = from_deg(0.3948 - 23.2559*cos(Jprime + from_deg(9.1)) - 0.3915*cos(2*Jprime + from_deg(5.4)) - 0.1764*cos(3*Jprime + from_deg(26)));
        timeequation_J = 0.0066 + 7.3525*cos(Jprime + from_deg(85.9)) + 9.9359*cos(2*Jprime + from_deg(108.9)) + 0.3387*cos(3*Jprime + from_deg(105.2));
// Zeit LZ = time
        localTime = time;
// Convert time into unit hours
        localTimeHours = localTime/3600;
// Convert time into unit days
        localTimeDays = localTimeHours/24;
// Convert time from real days into integer days (floor)
        localDays = integer(floor(localTimeDays));
// Calculate locale mean time
        LocalMeanTimeHours = localTimeHours - TimeZone + 4/60*longitude*180/Modelica.Constants.pi;
// cos(latitude)*tan(...)
        trueMeanTimeHours = LocalMeanTimeHours + timeequation_J/60;
        hoursAngle = from_deg((12 - trueMeanTimeHours)*15);
        sunHeight = to_deg(asin(cos(hoursAngle)*cos(latitude)*cos(delta_J) + sin(latitude)*sin(delta_J)))*(Modelica.Constants.pi/180);
        sunAzimuth1 = Modelica.Constants.pi - acos(min_max((sin(sunHeight)*sin(latitude) - sin(delta_J))/(cos(sunHeight)*cos(latitude)), -1, 1));
        sunAzimuth2 = Modelica.Constants.pi + acos(min_max((sin(sunHeight)*sin(latitude) - sin(delta_J))/(cos(sunHeight)*cos(latitude)), -1, 1));
        SunAzimuth = if mod(trueMeanTimeHours, 24) <= 12 then sunAzimuth1 else sunAzimuth2;
        angleOfIncidence = acos(min_max((-cos(sunHeight)*sin(gamma)*cos(SunAzimuth - azimuth)) + sin(sunHeight)*cos(gamma), -1, 1));
        RefIrradianceHorizontal = if sunHeight < 0 then 0 else irradianceRef*sin(sunHeight);
        PanelRefIrradiance = if angleOfIncidence > Modelica.Constants.pi/2 then 0 else if abs(sin(sunHeight)) < 1E-5 then 0 else RefIrradianceHorizontal*(cos(angleOfIncidence)/sin(sunHeight));
// Sun Vector calculation
        if sunHeight > 0 then
          RealIrradiance = irradianceRef*RatioHorizontal;
          SunVector = {-cos((sunHeight))*sin(SunAzimuth), -cos((sunHeight))*cos(SunAzimuth), -sin((sunHeight))}*RealIrradiance;
          IsDay = true;
        else
          RealIrradiance = 0;
          SunVector = {0, 0, 0};
          IsDay = false;
        end if;
        LocalHour = (localTimeDays - localDays)*24;
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Ellipse(lineColor = {255, 170, 85}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, extent = {{-40, 40}, {40, -40}}), Polygon(lineColor = {255, 170, 85}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, points = {{30, 48}, {80, 80}, {38, 36}, {30, 48}}), Polygon(lineColor = {255, 170, 85}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, points = {{-10, 50}, {0, 80}, {12, 50}, {-10, 50}}), Polygon(lineColor = {255, 170, 85}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, points = {{-42, 30}, {-84, 78}, {-30, 42}, {-42, 30}}), Polygon(lineColor = {255, 170, 85}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, points = {{-54, -6}, {-86, 10}, {-52, 12}, {-54, -6}}), Polygon(lineColor = {255, 170, 85}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, points = {{-40, -34}, {-92, -62}, {-50, -18}, {-40, -34}}), Polygon(lineColor = {255, 170, 85}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, points = {{-4, -48}, {-28, -92}, {-22, -42}, {-4, -48}}), Polygon(lineColor = {255, 170, 85}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, points = {{46, 20}, {92, 24}, {50, 6}, {46, 20}}), Text(textColor = {0, 0, 255}, extent = {{-150, 150}, {150, 110}}, textString = "%name"), Rectangle(origin = {124, -96}, fillColor = {255, 215, 136}, extent = {{-60, 20}, {-30, 40}}), Rectangle(origin = {94, -56}, fillColor = {255, 215, 136}, fillPattern = FillPattern.Solid, extent = {{-60, -20}, {-30, 0}}), Rectangle(origin = {124, -56}, fillColor = {255, 215, 136}, extent = {{-60, 20}, {-30, 40}}), Rectangle(origin = {124, -116}, fillColor = {255, 215, 136}, extent = {{-60, 20}, {-30, 40}}), Rectangle(origin = {94, -56}, fillColor = {255, 215, 136}, fillPattern = FillPattern.Solid, extent = {{-60, 20}, {-30, 40}}), Rectangle(origin = {124, -76}, fillColor = {255, 215, 136}, extent = {{-60, 20}, {-30, 40}}), Rectangle(origin = {94, -56}, fillColor = {255, 215, 136}, fillPattern = FillPattern.Solid, extent = {{-60, 0}, {-30, 20}}), Rectangle(origin = {94, -56}, fillColor = {255, 215, 136}, fillPattern = FillPattern.Solid, extent = {{-60, -40}, {-30, -20}}), Line(origin = {-43, -71}, points = {{5, 17}, {-5, -15}}), Line(origin = {-33, -86}, points = {{31, 0}, {-31, 0}}), Line(origin = {-35, -54}, points = {{-33, 30}, {33, -30}, {33, -30}}), Polygon(visible = false, lineColor = {255, 170, 85}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, points = {{34, -38}, {84, -92}, {22, -48}, {34, -38}}), Polygon(visible = false, lineColor = {255, 170, 85}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, points = {{48, -14}, {90, -48}, {40, -28}, {48, -14}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          Documentation(info = "<html><head></head><body><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">Component adapted from [PhotoVoltaics] to enable the use of real irradiance data corrected by panel orientation.</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">The solar irradiance is based on:</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">- Panel orientation (inputs)</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">- Geographic position</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">- Day and time of the year</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">- Optional: Time table of horizontal irradiance on external CSV file</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">The output is:</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">- Solar irradiance on panel</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">- Sun height above horizont</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><u><br></u></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><u>Limitations:</u></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><div class=\"htmlDoc\"><div><br></div><div>N/A</div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><br></div></div><div style=\"font-family: -webkit-standard;\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[PhotoVoltaics]</td><td>Christian Kral, Jovan Brkic, Muaz Ceran, Mohamed Elmoghazy, Ramazan Kavlak, \"PhotoVoltaics Modelica Library 1.6.0\", Library published under the BSD-3-Clause. Copyright 2016-2019.</td></tr></tbody></table></div><div style=\"font-family: -webkit-standard;\"></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u><br></u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">N/A</span></div><div><br></div></div><div class=\"htmlDoc\"><u>Further development:</u></div><div class=\"htmlDoc\"><u><br></u></div><div class=\"htmlDoc\"><u>Original Component License (before forking):</u></div><div class=\"htmlDoc\"><u><br></u></div><div class=\"htmlDoc\"><h4><span style=\"font-weight: normal;\">The following issues on orginal code was corrected:</span></h4><div><span style=\"font-weight: normal;\">- Use of \"acos\" on extreme values (-1,1)</span></div><div><span style=\"font-weight: normal;\">- SunAzimuth uses now true mean time</span></div><h4><span style=\"font-weight: normal;\"><i>PhotoVoltaics Modelica Library</i></span></h4><h4><span style=\"font-weight: normal;\"><i>License</i></span></h4><p>This library is published under the&nbsp;<a href=\"https://opensource.org/licenses/BSD-3-Clause\">BSD-3-Clause</a>.</p><p>Copyright 2016-2019 Christian Kral, Jovan Brkic, Muaz Ceran, Mohamed Elmoghazy, Ramazan Kavlak. All rights reserved.</p><p>Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:</p><ol><li>Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.</li><li>Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.</li><li>Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.</li></ol><p>THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.</p></div></div></body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(19/11/2023): Initial release</span></body></html>"));
      end SolarIrradiation;

      model IrradiationOnPlane "Irradiance value on inclined plane"
        Modelica.Blocks.Interfaces.RealInput SunVector[3] annotation(
          Placement(transformation(origin = {-98, 0}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-96, 60}, extent = {{-16, -16}, {16, 16}})));
        Modelica.Blocks.Interfaces.RealInput PlaneVector[3] annotation(
          Placement(transformation(origin = {-94, -70}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-96, -60}, extent = {{-16, -16}, {16, 16}})));
        Modelica.Blocks.Interfaces.RealOutput Irradiance annotation(
          Placement(transformation(origin = {104, -14}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {106, 0}, extent = {{-14, -14}, {14, 14}})));
      algorithm
        Irradiance := max(-SunVector*Modelica.Math.Vectors.normalize(PlaneVector), 0);
        annotation(
          Icon(graphics = {Rectangle(extent = {{-100, 100}, {100, -100}})}),
          Documentation(info = "<html><head></head><body><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">Component that takes the scalar product of the vectors:</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">- SunVector: Vector of the sun's rays where it modulus is the total irradiance [W/m^2]</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">- PlaneVector: Normal vector pointing to the sky of the surface plane.</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">The irradiance output shows the [W/m^2] irradiance of the surface, taking into account the sun ray direction and surface normal.</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><u><br></u></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><u>Limitations:</u></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><div class=\"htmlDoc\"><div><br></div><div>The irradiance is only provided if the plane normal points to the sun. If the sun rays impact on the back face of the plane, then the irradiation is zero.</div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><br></div></div><div style=\"font-family: -webkit-standard;\">N/A</div><div style=\"font-family: -webkit-standard;\"><br></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">N/A</span></div><div><br></div></div><div class=\"htmlDoc\"><u>Further development:</u></div></div></body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(19/11/2023): Initial release</span></body></html>"));
      end IrradiationOnPlane;

      model SunScreen "Calculates the shadow percentage due to a sun screen"
        parameter Modelica.SIunits.Length d "Horizontal distance from blocking point to window [m]";
        parameter Modelica.SIunits.Length h "Vertical distance from upper window edge to blocking point, positive upward [m]";
        parameter Modelica.SIunits.Length WindowHeight "Window height [m]";
        Modelica.Blocks.Interfaces.RealInput SunHeight(unit = "deg") "Sun height above horizont in [deg]" annotation(
          Placement(transformation(origin = {-106, 60}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-94, 0}, extent = {{-12, -12}, {12, 12}})));
        Modelica.Blocks.Interfaces.RealOutput SunCoeff "Percentage of the window illuminated by the sun" annotation(
          Placement(visible = true, transformation(origin = {102, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {102, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        final parameter Real Th_inf = atan(h/d);
        final parameter Real Th_sup = atan((h + WindowHeight)/d);
        //protected
        Real I;
        Real i;
        Real A;
        Real P;
        Real p;
      equation
        i = (d^2 + h^2)^0.5;
        if h > 0 then
          A = Modelica.Constants.pi - atan(d/h);
        elseif h < 0 then
          A = -atan(d/h);
        else
          A = Modelica.Constants.pi/2;
        end if;
        if (SunHeight*Modelica.Constants.pi/180) >= Th_sup then
          SunCoeff = 0;
          I = 0;
          P = 0;
          p = 0;
        elseif (SunHeight*Modelica.Constants.pi/180) <= 0 then
          SunCoeff = 0;
          I = 0;
          P = 0;
          p = 0;
        elseif (SunHeight*Modelica.Constants.pi/180) <= Th_inf then
          SunCoeff = 1;
          I = 0;
          P = 0;
          p = 0;
        else
          P = Modelica.Constants.pi - I - A;
          I = Modelica.Constants.pi/2 - max(0, (SunHeight*Modelica.Constants.pi/180));
          p = (i/sin(I))*sin(P);
          SunCoeff = 1 - p/WindowHeight;
        end if;
        annotation(
          Icon(graphics = {Line(origin = {-10.0283, 0.17082}, points = {{70, 99.8292}, {-50, 59.8292}, {-50, 39.8292}, {10, 59.8292}, {10, -80.1708}, {70, -80.1708}, {70, -80.1708}}), Rectangle(origin = {0, -30}, fillColor = {120, 120, 120}, fillPattern = FillPattern.Forward, extent = {{-2, 30}, {2, -30}}), Line(origin = {45.02, 40.09}, points = {{-25, 0}, {-25, -40}}, arrow = {Arrow.Filled, Arrow.Filled}, arrowSize = 6), Line(origin = {45.02, 0.0617511}, points = {{-25, 0}, {-25, -60}}, arrow = {Arrow.Filled, Arrow.Filled}, arrowSize = 6), Line(origin = {45.02, -9.85001}, points = {{-45, 40}, {-105, 40}}, arrow = {Arrow.Filled, Arrow.Filled}, arrowSize = 6), Text(origin = {33, 21}, extent = {{-11, 13}, {11, -13}}, textString = "h"), Text(origin = {47, -31}, extent = {{-21, 15}, {21, -15}}, textString = "Window
      Height"), Text(origin = {-33, 17}, extent = {{-11, 13}, {11, -13}}, textString = "d")}),
          Documentation(revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(09/12/2023): Initial release</span></body></html>", info = "<html><head></head><body><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">This component calculates the shadow percentage of a surface fitted with a upper sun screen.</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><u>Limitations:</u></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><u><br></u></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">It is assumed a infinite length of the sun screen.</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><div class=\"htmlDoc\"><div><br></div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><br></div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u><br></u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">N/A</span></div><div><br></div></div><div class=\"htmlDoc\"><u>Further development:</u></div></div></body></html>"));
      end SunScreen;

      model SunIrradianceMultibody "Multibody panel orientation for sun irradiance"
        parameter Boolean animation = true annotation(
          Dialog(group = "Animation"));
        parameter Modelica.SIunits.Length Scale = 1 annotation(
          Dialog(group = "Animation"));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(
          Placement(transformation(origin = {-2, -96}, extent = {{-16, -16}, {16, 16}}), iconTransformation(origin = {0, -100}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
        Modelica.Blocks.Interfaces.RealOutput Irradiance annotation(
          Placement(transformation(origin = {104, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {105, -1}, extent = {{-13, -13}, {13, 13}})));
        Modelica.Blocks.Interfaces.RealInput SunVector[3] annotation(
          Placement(transformation(origin = {2, 100}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-94, 60}, extent = {{-14, -14}, {14, 14}})));
        IrradiationOnPlane irradiationOnPlane annotation(
          Placement(transformation(origin = {0, 4}, extent = {{-10, -10}, {10, 10}})));
        Real PlaneVector[3];
        Modelica.Mechanics.MultiBody.Visualizers.FixedArrow PlaneArrow(animation = animation, n = {0, 0, 1}, length = Scale, color = {255, 0, 0}) annotation(
          Placement(transformation(origin = {38, -76}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Mechanics.MultiBody.Visualizers.FixedShape PlaneVisualizer(color = {255, 0, 0}, height = Scale/20, length = Scale, r_shape = {-Scale/2, 0, 0}, width = Scale) annotation(
          Placement(transformation(origin = {18, -44}, extent = {{-10, -10}, {10, 10}})));
      equation
        connect(irradiationOnPlane.SunVector, SunVector) annotation(
          Line(points = {{-10, 4}, {-20, 4}, {-20, 12}, {-30, 12}, {-30, 100}, {2, 100}}, color = {0, 0, 127}, thickness = 0.5));
        connect(irradiationOnPlane.Irradiance, Irradiance) annotation(
          Line(points = {{10, 2}, {104, 2}, {104, 0}}, color = {0, 0, 127}));
        irradiationOnPlane.PlaneVector = PlaneVector;
        PlaneVector = Modelica.Mechanics.MultiBody.Frames.resolve1(frame_a.R, {0, 0, 1});
        connect(frame_a, PlaneArrow.frame_a) annotation(
          Line(points = {{-2, -96}, {-2, -76}, {28, -76}}));
        connect(PlaneVisualizer.frame_a, frame_a) annotation(
          Line(points = {{8, -44}, {-2, -44}, {-2, -96}}, color = {95, 95, 95}));
        annotation(
          Icon(graphics = {Rectangle(origin = {3, -10}, rotation = 40, extent = {{-91, 2}, {91, -2}}), Line(origin = {-11, 6}, points = {{13, -14}, {-13, 14}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 10), Line(origin = {3, 65}, points = {{-51, 13}, {51, -13}}, color = {170, 170, 0}, pattern = LinePattern.Dash, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-14.7966, 49.428}, points = {{-51, 13}, {51, -13}}, color = {170, 170, 0}, pattern = LinePattern.Dash, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-34.8178, 33.411}, points = {{-51, 13}, {51, -13}}, color = {170, 170, 0}, pattern = LinePattern.Dash, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-52.6144, 17.839}, points = {{-47, 13}, {51, -13}}, color = {170, 170, 0}, pattern = LinePattern.Dash, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-71.3008, 3.15678}, points = {{-29, 9}, {51, -13}}, color = {170, 170, 0}, pattern = LinePattern.Dash, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-89.0974, -12.4152}, points = {{-11, 5}, {51, -13}}, color = {170, 170, 0}, pattern = LinePattern.Dash, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-106.449, -24.2356}, points = {{7, -1}, {51, -13}}, color = {170, 170, 0}, pattern = LinePattern.Dash, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-124.246, -39.5551}, points = {{25, -5}, {51, -13}}, color = {170, 170, 0}, pattern = LinePattern.Dash, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7)}),
          Documentation(revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(19/11/2023): Initial release</span></body></html>", info = "<html><head></head><body><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">Extension of ShipSIM.Components.Others.Solar.IrradianceOnPlane to be used with multibody frame connections.</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">Initially, if any rotations are made in frame_a, the surface points to +Z.</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">The scale of the animation only affects to the visual scale of the animation.</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><u><br></u></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><u>Limitations:</u></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><div class=\"htmlDoc\"><div><br></div><div>The irradiance is only provided if the plane normal points to the sun. If the sun rays impact on the back face of the plane, then the irradiation is zero.</div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><br></div></div><div style=\"font-family: -webkit-standard;\">N/A</div><div style=\"font-family: -webkit-standard;\"><br></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">N/A</span></div><div><br></div></div><div class=\"htmlDoc\"><u>Further development:</u></div></div></body></html>"));
      end SunIrradianceMultibody;

      model ConvRadSunWall "Full ext. convection + radiation + sun irradiation model"
        //Parameters
        parameter Modelica.SIunits.Length WallHeight "Wall height [m]" annotation(
          Dialog(tab = "Dimensions", group = "Wall dimensions"));
        parameter Modelica.SIunits.Area Surf "Wall surface [m2]" annotation(
          Dialog(tab = "Dimensions", group = "Wall dimensions"));
        parameter Real Norm[3] = {0, -1, 0} "Surface normal pointing outside" annotation(
          Dialog(tab = "Dimensions", group = "Wall orientation"));
        parameter Modelica.SIunits.Length d = 0 "Horizontal distance from blocking point to window [m]" annotation(
          Dialog(tab = "Solar", group = "Sun Screen"));
        parameter Modelica.SIunits.Length h = 0 "Vertical distance from upper wall edge to blocking point, positive upward [m]" annotation(
          Dialog(tab = "Solar", group = "Sun Screen"));
        parameter Real vieFacSky(final min = 0, final max = 1) "View factor from receiving surface to sky (=0.5 for vertical wall, =1 for roofs)" annotation(
          Dialog(tab = "Radiation", group = "Radiation Factors"));
        parameter Real e "Surface radiation emisivity (0 to 1) [-]" annotation(
          Dialog(tab = "Radiation", group = "Radiation Factors"));
        parameter Boolean OnOffSunIrrad = true "Activate the Sun irradiation" annotation(
          Dialog(tab = "Solar", group = "Sun Irradiation Factors"));
        parameter Real minSunHeight = 10 "Minimum sun height to consider irradiation [deg]" annotation(
          Dialog(tab = "Solar", group = "Sun Irradiation Factors"));
        parameter Real ab "Surface irradiation absorption (0 to 1) [-]" annotation(
          Dialog(tab = "Solar", group = "Sun Irradiation Factors"));
        parameter Real GlassFactor = 0.75 "Percentage of glass in the area, considered for irradiation transmittance (0 to 1)" annotation(
          Dialog(tab = "Solar", group = "Sun Irradiation Factors"));
        parameter Real tr "Surface irradiation transmittance (0 to 1) [-]" annotation(
          Dialog(tab = "Solar", group = "Sun Irradiation Factors"));
        parameter Real ShadowFactor = 0 "Shadow Factor, applies globally, do not duplicate with sun screen! (0=no shadows to 1=full shadow) [-]" annotation(
          Dialog(tab = "Solar", group = "Sun Irradiation Factors"));
        //Components
        Modelica.Blocks.Interfaces.RealInput WindVector[3] "Wind vector X,Y,Z in [m/s]" annotation(
          Placement(visible = true, transformation(origin = {60, 106}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {0, 96}, extent = {{-14, -14}, {14, 14}}, rotation = -90)));
        Modelica.Blocks.Interfaces.RealInput SunVector[3] "Sunray direction with W/m2 as modulus" annotation(
          Placement(visible = true, transformation(origin = {-104, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-94, 80}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput SunHeight(unit = "deg") "Sun height above horizont in [deg]" annotation(
          Placement(visible = true, transformation(origin = {-104, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-94, 40}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
        Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_Sky annotation(
          Placement(visible = true, transformation(origin = {-100, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_Wall annotation(
          Placement(transformation(origin = {100, -20}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_Transmission annotation(
          Placement(visible = true, transformation(origin = {0, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatAbsorption annotation(
          Placement(visible = true, transformation(origin = {44, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatTransmission annotation(
          Placement(visible = true, transformation(origin = {0, -74}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        Modelica.Thermal.HeatTransfer.Components.BodyRadiation RadiationSky(Gr = vieFacSky*e*Surf) annotation(
          Placement(transformation(origin = {-54, -50}, extent = {{10, -10}, {-10, 10}})));
        Modelica.Thermal.HeatTransfer.Components.BodyRadiation RadiationAir(Gr = (1 - vieFacSky)*e*Surf) annotation(
          Placement(transformation(origin = {-54, -16}, extent = {{10, -10}, {-10, 10}})));
        ShipSIM.Components.Others.Solar.IrradiationOnPlane irradiationOnPlane annotation(
          Placement(visible = true, transformation(origin = {-68, 74}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        ShipSIM.Components.Others.HeatTransfer.ConvectionFactors.ExternalConvection externalConvection(Norm = Norm, Surf = Surf) annotation(
          Placement(visible = true, transformation(origin = {60, -4}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_Air annotation(
          Placement(visible = true, transformation(origin = {-100, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      protected
        ShipSIM.Components.Others.Solar.SunScreen sunScreen(WindowHeight = WallHeight, d = d, h = h) annotation(
          Placement(visible = true, transformation(origin = {-40, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Math.Product product annotation(
          Placement(visible = true, transformation(origin = {0, 56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Math.Gain Absorptance(k = ab*Surf*(1 - ShadowFactor)) annotation(
          Placement(visible = true, transformation(origin = {28, 56}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
        Modelica.Blocks.Math.Gain Transmittance(k = tr*Surf*(1 - ShadowFactor)*GlassFactor) annotation(
          Placement(visible = true, transformation(origin = {1.33227e-15, -44}, extent = {{-8, -8}, {8, 8}}, rotation = -90)));
      equation
        if OnOffSunIrrad then
          if SunHeight >= minSunHeight then
            product.u1 = irradiationOnPlane.Irradiance;
          else
            product.u1 = 0;
          end if;
        else
          product.u1 = 0;
        end if;
        irradiationOnPlane.PlaneVector = Norm;
        connect(SunVector, irradiationOnPlane.SunVector) annotation(
          Line(points = {{-104, 80}, {-78, 80}}, color = {0, 0, 127}, thickness = 0.5));
        connect(SunHeight, sunScreen.SunHeight) annotation(
          Line(points = {{-104, 40}, {-49, 40}}, color = {0, 0, 127}));
        connect(sunScreen.SunCoeff, product.u2) annotation(
          Line(points = {{-30, 40}, {-12, 40}, {-12, 50}}, color = {0, 0, 127}));
        connect(HeatTransmission.port, port_Transmission) annotation(
          Line(points = {{0, -84}, {0, -100}}, color = {191, 0, 0}));
        connect(HeatAbsorption.port, port_Wall) annotation(
          Line(points = {{54, 20}, {78, 20}, {78, -20}, {100, -20}}, color = {191, 0, 0}));
        connect(port_Wall, RadiationSky.port_a) annotation(
          Line(points = {{100, -20}, {-26, -20}, {-26, -50}, {-44, -50}}, color = {191, 0, 0}));
        connect(RadiationSky.port_b, port_Sky) annotation(
          Line(points = {{-64, -50}, {-88, -50}, {-88, -20}, {-100, -20}}, color = {191, 0, 0}));
        connect(Absorptance.y, HeatAbsorption.Q_flow) annotation(
          Line(points = {{35, 56}, {38, 56}, {38, 38}, {24, 38}, {24, 20}, {34, 20}}, color = {0, 0, 127}));
        connect(product.y, Absorptance.u) annotation(
          Line(points = {{12, 56}, {21, 56}}, color = {0, 0, 127}));
        connect(Transmittance.y, HeatTransmission.Q_flow) annotation(
          Line(points = {{0, -52}, {0, -64}}, color = {0, 0, 127}));
        connect(product.y, Transmittance.u) annotation(
          Line(points = {{12, 56}, {14, 56}, {14, 6}, {0, 6}, {0, -34}}, color = {0, 0, 127}));
        connect(WindVector, externalConvection.WindVector) annotation(
          Line(points = {{60, 106}, {60, 6}}, color = {0, 0, 127}, thickness = 0.5));
        connect(port_Wall, externalConvection.port_Solid) annotation(
          Line(points = {{100, -20}, {74, -20}, {74, -4}, {70, -4}}, color = {191, 0, 0}));
        connect(externalConvection.port_Fluid, port_Air) annotation(
          Line(points = {{50, -4}, {-14, -4}, {-14, 10}, {-100, 10}}, color = {191, 0, 0}));
        connect(port_Wall, RadiationAir.port_a) annotation(
          Line(points = {{100, -20}, {-26, -20}, {-26, -16}, {-44, -16}}, color = {191, 0, 0}));
        connect(RadiationAir.port_b, port_Air) annotation(
          Line(points = {{-64, -16}, {-74, -16}, {-74, 10}, {-100, 10}}, color = {191, 0, 0}));
        annotation(
          Icon(graphics = {Rectangle(origin = {0, -30}, fillColor = {120, 120, 120}, fillPattern = FillPattern.Forward, extent = {{-2, 30}, {2, -30}}), Line(origin = {-10.0283, 0.17082}, points = {{70, 99.8292}, {-50, 59.8292}, {-50, 39.8292}, {10, 59.8292}, {10, -80.1708}, {70, -80.1708}, {70, -80.1708}}), Line(origin = {-37, 6}, points = {{-37, 38}, {33, -32}}, color = {162, 162, 0}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {21, -48}, points = {{-17, 14}, {17, -14}}, pattern = LinePattern.Dash, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-40.03, -44.78}, points = {{30.0301, -3.22361}, {8.03005, 4.77639}, {-9.96995, -5.22361}, {-29.9699, 4.77639}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7, smooth = Smooth.Bezier), Line(origin = {-38.7317, -59.0613}, points = {{30.0301, -3.22361}, {8.03005, 4.77639}, {-9.96995, -5.22361}, {-29.9699, 4.77639}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7, smooth = Smooth.Bezier), Text(textColor = {0, 0, 255}, extent = {{-150, 150}, {150, 110}}, textString = "%name"), Line(origin = {-46, -52}, points = {{0, -24}, {0, 44}}, color = {0, 0, 255}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 12), Line(origin = {-26.2009, -52.3246}, points = {{0, -24}, {0, 44}}, color = {0, 0, 255}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 12)}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
          Diagram,
          Documentation(revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(09/12/2023): Initial release</span></body></html>", info = "<html><head></head><body><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">Complete model of a wall exposed to the weather, including:</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">- Sun irradiation (absorption and transmission), using a sun screen</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">- Wall radiation</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">- Wall external convection due to wind</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><u><br></u></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><u>Limitations:</u></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><div class=\"htmlDoc\"><div><br></div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><br></div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">See each sub component.</span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u><br></u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">N/A</span></div><div><br></div></div><div class=\"htmlDoc\"><u>Further development:</u></div></div></body></html>"));
      end ConvRadSunWall;
      annotation(
        Icon(graphics = {Polygon(lineColor = {255, 170, 85}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, points = {{34, -38}, {84, -92}, {22, -48}, {34, -38}}), Polygon(lineColor = {255, 170, 85}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, points = {{-40, -34}, {-92, -62}, {-50, -18}, {-40, -34}}), Polygon(lineColor = {255, 170, 85}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, points = {{-42, 30}, {-84, 78}, {-30, 42}, {-42, 30}}), Polygon(lineColor = {255, 170, 85}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, points = {{48, -14}, {90, -48}, {40, -28}, {48, -14}}), Polygon(lineColor = {255, 170, 85}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, points = {{-4, -48}, {-28, -92}, {-22, -42}, {-4, -48}}), Polygon(lineColor = {255, 170, 85}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, points = {{-10, 50}, {0, 80}, {12, 50}, {-10, 50}}), Polygon(lineColor = {255, 170, 85}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, points = {{46, 20}, {92, 24}, {50, 6}, {46, 20}}), Ellipse(lineColor = {255, 170, 85}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, extent = {{-40, 40}, {40, -40}}), Polygon(lineColor = {255, 170, 85}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, points = {{-54, -6}, {-86, 10}, {-52, 12}, {-54, -6}}), Polygon(lineColor = {255, 170, 85}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, points = {{30, 48}, {80, 80}, {38, 36}, {30, 48}})}));
    end Solar;

    package HeatTransfer "Heat transfer components"
      package ConvectionFactors "Components for heat convection"
        model ConvectionHorizontalCylinder "Convection heat factor over an horizontal cylinder (natural+forced)"
          extends ShipSIM.Components.Others.HeatTransfer.ConvectionFactors.Internal.ConvectionBaseClass;
          Modelica.Blocks.Interfaces.RealInput u_inf "Fluid steady velocity [m/s]" annotation(
            Placement(transformation(origin = {0, -108}, extent = {{-20, 20}, {20, -20}}, rotation = 90), iconTransformation(origin = {0, -94}, extent = {{-14, -14}, {14, 14}}, rotation = 90)));
          parameter Modelica.SIunits.Length D "Diameter of the Cylinder [m]" annotation(
            Dialog(group = "Geometric Properties"));
          parameter Modelica.SIunits.Length L "Length of the Cylinder [m]" annotation(
            Dialog(group = "Geometric Properties"));
          parameter Modelica.SIunits.ThermalConductivity k = 0.024 "Fluid thermal conductivity [W/m*K]";
          parameter Modelica.SIunits.KinematicViscosity v = 1.562e-5 "Fluid kinematic viscosity [m^2/s]";
          parameter Modelica.SIunits.Density rho = 1.184 "Fluid density [Kg/m^3]";
          parameter Modelica.SIunits.SpecificHeatCapacity Cp = 1007 "Fluid specific heat capacity [J/Kg*K]";
          parameter Modelica.SIunits.CubicExpansionCoefficient beta = 0.003354016 "Fluid thermal expansion coefficient [1/K]";
          final parameter Modelica.SIunits.ThermalDiffusivity alpha = k/(rho*Cp) "Fluid thermal diffusivity (=k/(rho*Cp))";
          //non-dimensional numbers:
          Real Re_D "Reynolds number";
          final parameter Real Pr = v/alpha "Prandtl number";
          Real Pe_D "Pecklet number";
          Real Ra_D "Rayleight number";
          Real Nu_D_f "Nusselt forced convection";
          Real Nu_D_n "Nusselt natural convection";
        equation
          Area = Modelica.Constants.pi*D*L "Total external surface area [m^2]";
//non-dimensional numbers:
          Re_D = (u_inf*D)/v;
//Pr = v / alpha;
          Pe_D = Re_D*Pr;
          Ra_D = (Modelica.Constants.g_n*beta*abs(solid.T - fluid.T)*D^3)/(v*alpha);
          if u_inf == 0 then
            Nu_D_f = 0;
          else
            if Pe_D < 0.2 then
              Nu_D_f = 1/(0.8237 - 0.5*log(Pe_D)) "Nakai-Okazaki relation - Obtained from reference [Lienhard]";
            else
              if Re_D < 4000 then
                Nu_D_f = 0.3 + ((0.62*(Re_D^(1/2))*(Pr^(1/3)))/((1 + (0.4/Pr)^(2/3))^(1/4)));
              elseif Re_D > 20000 and Re_D < 400000 then
                Nu_D_f = 0.3 + ((0.62*(Re_D^(1/2))*(Pr^(1/3)))/((1 + (0.4/Pr)^(2/3))^(1/4)))*(1 + (Re_D/282000)^(1/2));
              else
                Nu_D_f = 0.3 + ((0.62*(Re_D^(1/2))*(Pr^(1/3)))/((1 + (0.4/Pr)^(2/3))^(1/4)))*(1 + (Re_D/282000)^(5/8))^(4/5) "Churchill and Bernstein";
              end if;
            end if;
          end if;
          Nu_D_n = (0.6 + 0.387*(Ra_D^(1/6))*(1 + (0.559/Pr)^(9/16))^(-8/27))^2 "Natural convection";
          h = max(Nu_D_f, Nu_D_n)*(k/D);
// Assertion
          assert(Ra_D >= 1e-5, "!W0001 [ConvectionHorizontalCylinder] (" + getInstanceName() + "): Natural convection only applicable for Ra_D >= 1e-5", level = AssertionLevel.warning);
          assert(Re_D < 1e7, "!W0002 [ConvectionHorizontalCylinder] (" + getInstanceName() + "): Forced convection correlation has no data above Re_D > 1e7", level = AssertionLevel.warning);
          annotation(
            Icon(graphics = {Line(points = {{-60, -20}, {76, -20}}, color = {191, 0, 0}), Rectangle(origin = {2, 0}, lineColor = {255, 255, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-62, 80}, {98, -80}}), Line(points = {{40, 80}, {40, -80}}, color = {0, 127, 255}, arrow = {Arrow.Open, Arrow.None}, arrowSize = 20), Line(points = {{56, -30}, {76, -20}}, color = {191, 0, 0}), Line(points = {{56, 30}, {76, 20}}, color = {191, 0, 0}), Line(origin = {5.00662, 0}, points = {{-34, 80}, {-5, 0}, {-34, -80}}, color = {0, 127, 255}, arrow = {Arrow.Open, Arrow.None}, arrowSize = 20, smooth = Smooth.Bezier), Text(origin = {-10, 228}, textColor = {0, 0, 255}, extent = {{-150, -90}, {150, -130}}, textString = "%name"), Line(points = {{76, 80}, {76, -80}}, color = {0, 127, 255}, arrow = {Arrow.Open, Arrow.None}, arrowSize = 20), Line(points = {{56, 10}, {76, 20}}, color = {191, 0, 0}), Line(points = {{-60, 20}, {76, 20}}, color = {191, 0, 0}), Line(points = {{6, 80}, {6, -80}}, color = {0, 127, 255}, arrow = {Arrow.Open, Arrow.None}, arrowSize = 20), Line(points = {{56, -10}, {76, -20}}, color = {191, 0, 0}), Line(points = {{100, 0}, {100, 0}}, color = {0, 127, 255}), Line(origin = {-0.513104, -40.0221}, points = {{-60, 20}, {76, 20}}, color = {191, 0, 0}), Polygon(origin = {-54, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Backward, points = {{-36, 80}, {-8, 80}, {22, 60}, {32, 36}, {36, -2}, {32, -38}, {18, -64}, {-8, -80}, {-36, -80}, {-36, -80}, {-36, 80}, {-36, 80}}, smooth = Smooth.Bezier)}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
            Documentation(info = "<html><head></head><body><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">Convection heat transfer on a horizontal cylinder.</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">Convective heat transfer coefficient based on:</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">- Churchill and Bernstein correlations for forced convection, enhanced by Re number as stated in the reference [Lienhard] and including the Nakai-Okazaki relation for Pe&lt;0.2</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">- Churchill and Chu correlation for natural convection</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">With the following limits of applicability:</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">- Natural convection: &nbsp;Ra_D&gt;=1E-5</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">Fluid properties computed at mean temperature between wall and external fluid.</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">(Air at 20ºC are set as default properties)</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><u><br></u></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><u>Limitations:</u></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><div class=\"htmlDoc\"><div><br></div><div>The model is limited to:</div><div>- Horizontal cylinder (infinite length based) with air flow upwards.</div><div>- Transition between natural and forced convection (low fluid speeds) is not calculated, and the greater of the two factors is used. This produces a lower convective factor because on this transition zone both effects are complemented resulting in a greater heat transfer ratio.</div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><br></div></div><div style=\"font-family: -webkit-standard;\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[Lienhard]</td><td>John H. Lienhard IV, John H. Lienhard V, \"A Heat Transfer Textbook\", Phlogiston Press, 3rd Edition, 2006</td></tr></tbody></table></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u><br></u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">N/A</span></div><div><br></div></div><div class=\"htmlDoc\"><u>Further development:</u></div><div class=\"htmlDoc\"><u><br></u></div><div class=\"htmlDoc\">Include a best estimation for the natural to forced convection transition zone.</div></div></body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(19/11/2023): Initial release</span></body></html>"));
        end ConvectionHorizontalCylinder;

        model InternalConvection "Internal convection inside a building"
          parameter Modelica.SIunits.Area Surf "Wall surface [m2]";
          parameter ShipSIM.Types.WallType WallType "Type of Wall";
          Modelica.Thermal.HeatTransfer.Components.Convection intconvection annotation(
            Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
          Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_Solid annotation(
            Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
          Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_Fluid annotation(
            Placement(visible = true, transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
          Real K;
          Real hi(start = 0);
        equation
          if WallType == ShipSIM.Types.WallType.Floor then
            if port_Solid.T <= port_Fluid.T then
              K = 0.76;
            else
              K = 1.51;
            end if;
          elseif WallType == ShipSIM.Types.WallType.Ceil then
            if port_Solid.T <= port_Fluid.T then
              K = 1.51;
            else
              K = 0.76;
            end if;
          elseif WallType == ShipSIM.Types.WallType.Wall then
            K = 1.3;
          else
            K = 1.3;
          end if;
          if abs(port_Solid.T - port_Fluid.T) <= Modelica.Constants.eps then
            hi = 0;
          else
            hi = K*abs(port_Solid.T - port_Fluid.T)^(1/3) "This equation produces initialization failures";
          end if;
          intconvection.Gc = hi*Surf;
          connect(port_Solid, intconvection.solid) annotation(
            Line(points = {{-100, 0}, {-10, 0}}, color = {191, 0, 0}));
          connect(intconvection.fluid, port_Fluid) annotation(
            Line(points = {{10, 0}, {100, 0}}, color = {191, 0, 0}));
          annotation(
            Icon(graphics = {Line(points = {{-34, -80}, {-44, -60}}, color = {0, 127, 255}), Line(points = {{40, -80}, {50, -60}}, color = {0, 127, 255}), Line(points = {{-34, -80}, {-24, -60}}, color = {0, 127, 255}), Line(points = {{56, -30}, {76, -20}}, color = {191, 0, 0}), Line(points = {{-60, -20}, {76, -20}}, color = {191, 0, 0}), Line(points = {{76, 80}, {76, -80}}, color = {0, 127, 255}), Line(points = {{76, -80}, {86, -60}}, color = {0, 127, 255}), Line(points = {{56, -10}, {76, -20}}, color = {191, 0, 0}), Line(points = {{6, -80}, {16, -60}}, color = {0, 127, 255}), Line(points = {{40, -80}, {30, -60}}, color = {0, 127, 255}), Line(points = {{-34, 80}, {-34, -80}}, color = {0, 127, 255}), Line(points = {{-60, 20}, {76, 20}}, color = {191, 0, 0}), Line(points = {{40, 80}, {40, -80}}, color = {0, 127, 255}), Line(points = {{56, 10}, {76, 20}}, color = {191, 0, 0}), Rectangle(fillColor = {192, 192, 192}, fillPattern = FillPattern.Backward, extent = {{-90, 80}, {-60, -80}}), Line(points = {{76, -80}, {66, -60}}, color = {0, 127, 255}), Line(points = {{56, 30}, {76, 20}}, color = {191, 0, 0}), Line(points = {{6, 80}, {6, -80}}, color = {0, 127, 255}), Line(points = {{6, -80}, {-4, -60}}, color = {0, 127, 255}), Text(origin = {0, 230}, textColor = {0, 0, 255}, extent = {{-150, -90}, {150, -130}}, textString = "%name")}),
            Documentation(revisions = "<html><head></head><body><div><span style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">Rev. 0.1&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">(09/12/2023): Solved initialization issue</span></div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(09/12/2023): Initial release</span></body></html>", info = "<html><head></head><body><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">Internal heat transfer convection factor depending on the surface inclination and temperature difference.</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><u><br></u></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><u>Limitations:</u></div><div style=\"font-size: 12px;\"><div class=\"htmlDoc\"><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-family: 'MS Shell Dlg 2';\"><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><br></div></div><div style=\"font-family: -webkit-standard;\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[Buildings]</td><td>Lawrence Berkeley National Laboratory, \"Modelica Buildings Library\", Copyright © 1998-2023 The Regents of the University of California (through Lawrence Berkeley National Laboratory), subject to receipt of any required approvals from U.S. Department of Energy.<br><br></td></tr></tbody></table></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div><font face=\"MS Shell Dlg 2\">N/A</font></div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><u>Further development:</u></div></div></body></html>"));
        end InternalConvection;

        model ExternalConvection "External convection factor for buildings"
          import ShipSIM.Functions.Others.angle_btw_vectors;
          import Modelica.SIunits.Conversions.to_deg;
          parameter Modelica.SIunits.Area Surf "Wall surface [m2]";
          parameter Real Norm[3] = {0, -1, 0} "Surface normal pointing outside";
          Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_Solid annotation(
            Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
          Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_Fluid annotation(
            Placement(visible = true, transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
          Modelica.Blocks.Interfaces.RealInput WindVector[3] "Wind vector X,Y,Z in [m/s]" annotation(
            Placement(visible = true, transformation(origin = {-98, 90}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {2.22045e-16, 96}, extent = {{-14, -14}, {14, 14}}, rotation = -90)));
          Modelica.Thermal.HeatTransfer.Components.Convection extconvection annotation(
            Placement(transformation(origin = {-4, 0}, extent = {{-10, -10}, {10, 10}})));
          Real W;
          Real Angle;
          Real WindSpeed;
          Real he;
        equation
          WindSpeed = Modelica.Math.Vectors.length(WindVector);
          Angle = to_deg(angle_btw_vectors(WindVector, -Norm)) "Calculate the angle between vectors";
          if Angle > 100 then
            W = 0.5;
          else
            W = 1;
          end if;
          he = W*(7.13*WindSpeed^(0.78) + 5.35*exp(-0.6*WindSpeed)) "Nusselt-Jürges correlation";
          extconvection.Gc = he*Surf;
          connect(port_Solid, extconvection.solid) annotation(
            Line(points = {{-100, 0}, {-14, 0}}, color = {191, 0, 0}));
          connect(extconvection.fluid, port_Fluid) annotation(
            Line(points = {{6, 0}, {100, 0}}, color = {191, 0, 0}));
          annotation(
            Icon(graphics = {Line(points = {{6, -80}, {16, -60}}, color = {0, 127, 255}), Line(points = {{76, -80}, {66, -60}}, color = {0, 127, 255}), Line(points = {{76, 80}, {76, -80}}, color = {0, 127, 255}), Line(points = {{56, -10}, {76, -20}}, color = {191, 0, 0}), Line(points = {{-34, 80}, {-34, -80}}, color = {0, 127, 255}), Rectangle(fillColor = {192, 192, 192}, fillPattern = FillPattern.Backward, extent = {{-90, 80}, {-60, -80}}), Line(points = {{6, -80}, {-4, -60}}, color = {0, 127, 255}), Line(points = {{-34, -80}, {-24, -60}}, color = {0, 127, 255}), Line(points = {{76, -80}, {86, -60}}, color = {0, 127, 255}), Line(points = {{-60, 20}, {76, 20}}, color = {191, 0, 0}), Line(points = {{56, -30}, {76, -20}}, color = {191, 0, 0}), Line(points = {{56, 30}, {76, 20}}, color = {191, 0, 0}), Line(points = {{40, -80}, {50, -60}}, color = {0, 127, 255}), Line(points = {{40, -80}, {30, -60}}, color = {0, 127, 255}), Line(points = {{6, 80}, {6, -80}}, color = {0, 127, 255}), Line(points = {{56, 10}, {76, 20}}, color = {191, 0, 0}), Line(points = {{-34, -80}, {-44, -60}}, color = {0, 127, 255}), Line(points = {{-60, -20}, {76, -20}}, color = {191, 0, 0}), Line(points = {{40, 80}, {40, -80}}, color = {0, 127, 255}), Text(origin = {2, -6}, textColor = {0, 0, 255}, extent = {{-150, -90}, {150, -130}}, textString = "%name")}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
            Documentation(revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(09/12/2023): Initial release</span></body></html>", info = "<html><head></head><body><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">Wind heat convection factor accounting for windward (1) and leeward (0.5) surface orientation.</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">This model includes a equation more precise for speeds above 5 m/s.</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><u><br></u></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><u>Limitations:</u></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><div class=\"htmlDoc\"><div><br></div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><br></div></div><div style=\"font-family: -webkit-standard;\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[Palyvos]</td><td>J.A. Palyvos, \"A survey of wind convection coefficient correlations for building envelope energy systems’ modeling\", Applied Thermal Engineering, Volume 28, Issues 8–9, June 2008, Pages 801-808,&nbsp;<a href=\"http://dx.doi.org/10.1016/j.applthermaleng.2007.12.005\">DOI:10.1016/j.applthermaleng.2007.12.005</a></td></tr></tbody></table></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u><br></u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">N/A</span></div><div><br></div></div><div class=\"htmlDoc\"><u>Further development:</u></div></div></body></html>"));
        end ExternalConvection;

        model PlateForcedConvection "Plate forced convection"
          extends ShipSIM.Components.Others.HeatTransfer.ConvectionFactors.Internal.ConvectionBaseClass;
          parameter Modelica.SIunits.Length L "Length of the plate in the flow direction [m]" annotation(
            Dialog(group = "Geometric Properties"));
          parameter Modelica.SIunits.Length A "Surface of the plate [m^2]" annotation(
            Dialog(group = "Geometric Properties"));
          parameter Modelica.SIunits.ThermalConductivity k = 0.024 "Fluid thermal conductivity [W/m*K]";
          parameter Modelica.SIunits.KinematicViscosity v = 1.562e-5 "Fluid kinematic viscosity [m^2/s]";
          parameter Modelica.SIunits.Density rho = 1.184 "Fluid density [Kg/m^3]";
          parameter Modelica.SIunits.SpecificHeatCapacity Cp = 1007 "Fluid specific heat capacity [J/Kg*K]";
          final parameter Modelica.SIunits.DynamicViscosity n = v*rho;
          final parameter Real Pr = n*Cp/k "Prandtl number";
          Real Re "Reynolds number";
          Real Nu_f "Nusselt forced convection";
          Modelica.Blocks.Interfaces.RealInput AirSpeed "Air speed in [m/s]" annotation(
            Placement(visible = true, transformation(origin = {-98, 90}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {2.22045e-16, 96}, extent = {{-14, -14}, {14, 14}}, rotation = -90)));
        equation
          A = Area;
          Re = AirSpeed*rho*L/n;
          Nu_f = (0.037*Re^0.8*Pr)/(1 + 2.443/(max(Re^0.1, 1e-6))*(Pr^(2/3) - 1)) "Petukov (High Temperature I, 1963) and Schlichting (Grenzschicht-Theorie, 1958)";
          h = abs((k/L))*Nu_f;
          assert(((Re > 5e5) and (Re < 1e7)), "!W0001 [PlateForcedConvenction] (" + getInstanceName() + "): The Reynolds number is out of the range of the correlation", level = AssertionLevel.warning);
          assert(((Pr >= 0.6) and (Pr <= 2000)), "!W0001 [PlateForcedConvenction] (" + getInstanceName() + "): The Prandtl number is out of the range of the correlation", level = AssertionLevel.warning);
          annotation(
            Icon(graphics = {Line(points = {{6, -80}, {16, -60}}, color = {0, 127, 255}), Line(points = {{76, -80}, {66, -60}}, color = {0, 127, 255}), Line(points = {{76, 80}, {76, -80}}, color = {0, 127, 255}), Line(points = {{56, -10}, {76, -20}}, color = {191, 0, 0}), Line(points = {{-34, 80}, {-34, -80}}, color = {0, 127, 255}), Rectangle(fillColor = {192, 192, 192}, fillPattern = FillPattern.Backward, extent = {{-90, 80}, {-60, -80}}), Line(points = {{6, -80}, {-4, -60}}, color = {0, 127, 255}), Line(points = {{-34, -80}, {-24, -60}}, color = {0, 127, 255}), Line(points = {{76, -80}, {86, -60}}, color = {0, 127, 255}), Line(points = {{-60, 20}, {76, 20}}, color = {191, 0, 0}), Line(points = {{56, -30}, {76, -20}}, color = {191, 0, 0}), Line(points = {{56, 30}, {76, 20}}, color = {191, 0, 0}), Line(points = {{40, -80}, {50, -60}}, color = {0, 127, 255}), Line(points = {{40, -80}, {30, -60}}, color = {0, 127, 255}), Line(points = {{6, 80}, {6, -80}}, color = {0, 127, 255}), Line(points = {{56, 10}, {76, 20}}, color = {191, 0, 0}), Line(points = {{-34, -80}, {-44, -60}}, color = {0, 127, 255}), Line(points = {{-60, -20}, {76, -20}}, color = {191, 0, 0}), Line(points = {{40, 80}, {40, -80}}, color = {0, 127, 255}), Text(origin = {2, -6}, textColor = {0, 0, 255}, extent = {{-150, -90}, {150, -130}}, textString = "%name")}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
            Documentation(revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(11/02/2024): Initial release</span></body></html>", info = "<html><head></head><body><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">Plate forced convection using average Nusselt number.</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><u><br></u></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><u>Limitations:</u></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><u><br></u></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">5e5 &lt; Re &lt; 1e7</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">0.6 &lt;= Pr &lt;= 2000</div><div><div class=\"htmlDoc\"><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><br></div></div><div>Petukov (High Temperature I, 1963) and Schlichting (Grenzschicht-Theorie, 1958)</div><div style=\"font-family: -webkit-standard; font-size: 12px;\"></div><div style=\"font-family: -webkit-standard; font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u><br></u></span></div><div style=\"font-family: -webkit-standard; font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard; font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard; font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">N/A</span></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><u>Further development:</u></div></div></body></html>"));
        end PlateForcedConvection;

        package Internal
          extends Modelica.Icons.InternalPackage;

          model ConvectionBaseClass "Internal base class for convective heat"
            Modelica.SIunits.Area Area "Heat transfer surface [m^2]";
            Modelica.SIunits.SurfaceCoefficientOfHeatTransfer h "Convection heat transfer [W/m^2*K]";
            Modelica.SIunits.HeatFlowRate Q_flow "Heat flow rate from solid -> fluid";
            Modelica.SIunits.TemperatureDifference dT "= solid.T - fluid.T";
            Modelica.SIunits.Temperature Tavg "= (solid.T + fluid.T)/2";
            Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a solid annotation(
              Placement(transformation(extent = {{-110, -10}, {-90, 10}})));
            Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b fluid annotation(
              Placement(transformation(extent = {{90, -10}, {110, 10}})));
          equation
            dT = solid.T - fluid.T;
            Tavg = (solid.T + fluid.T)/2;
            solid.Q_flow = Q_flow;
            fluid.Q_flow = -Q_flow;
            Q_flow = h*Area*dT;
            annotation(
              Documentation(revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(09/12/2023): Initial release</span></body></html>", info = "<html><head></head><body><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">Internal base class for convection factors.</div></body></html>"));
          end ConvectionBaseClass;
        end Internal;
        annotation(
          Icon(graphics = {Line(points = {{100, 0}, {100, 0}}, color = {0, 127, 255}), Line(points = {{76, -80}, {66, -60}}, color = {0, 127, 255}), Line(points = {{56, 30}, {76, 20}}, color = {191, 0, 0}), Line(points = {{40, -80}, {50, -60}}, color = {0, 127, 255}), Line(points = {{-34, -80}, {-24, -60}}, color = {0, 127, 255}), Line(points = {{-60, 20}, {76, 20}}, color = {191, 0, 0}), Line(points = {{56, -30}, {76, -20}}, color = {191, 0, 0}), Line(points = {{100, 0}, {100, 0}}, color = {0, 127, 255}), Line(points = {{40, 80}, {40, -80}}, color = {0, 127, 255}), Line(points = {{6, 80}, {6, -80}}, color = {0, 127, 255}), Line(points = {{6, -80}, {-4, -60}}, color = {0, 127, 255}), Line(points = {{40, -80}, {30, -60}}, color = {0, 127, 255}), Line(points = {{56, 10}, {76, 20}}, color = {191, 0, 0}), Rectangle(fillColor = {192, 192, 192}, fillPattern = FillPattern.Backward, extent = {{-90, 80}, {-60, -80}}), Line(points = {{100, 0}, {100, 0}}, color = {0, 127, 255}), Line(points = {{-34, 80}, {-34, -80}}, color = {0, 127, 255}), Line(points = {{76, -80}, {86, -60}}, color = {0, 127, 255}), Line(points = {{-34, -80}, {-44, -60}}, color = {0, 127, 255}), Line(points = {{6, -80}, {16, -60}}, color = {0, 127, 255}), Line(points = {{-60, -20}, {76, -20}}, color = {191, 0, 0}), Line(points = {{56, -10}, {76, -20}}, color = {191, 0, 0}), Line(points = {{76, 80}, {76, -80}}, color = {0, 127, 255})}));
      end ConvectionFactors;

      model TemperatureDataset "Temperature data from external table"
        parameter String TempfileName = "NoName" "File where table is included [sec - Temp K]" annotation(
          Dialog(group = "Table data definition", loadSelector(filter = "Text files (*.txt);;MATLAB MAT-files (*.mat)", caption = "Open file in which table is present")));
        parameter String TemptableName = "NoName" "Table name on file" annotation(
          Dialog(group = "Table data definition"));
        Modelica.Blocks.Tables.CombiTable1D TemperatureData(fileName = TempfileName, tableName = TemptableName, tableOnFile = true) annotation(
          Placement(transformation(origin = {-30, 0}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature annotation(
          Placement(transformation(origin = {28, 0}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_AirTemp annotation(
          Placement(visible = true, transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, -52}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        TemperatureData.u[1] = time;
        connect(prescribedTemperature.port, port_AirTemp) annotation(
          Line(points = {{38, 0}, {100, 0}}, color = {191, 0, 0}));
        connect(TemperatureData.y[1], prescribedTemperature.T) annotation(
          Line(points = {{-18, 0}, {16, 0}}, color = {0, 0, 127}));
        annotation(
          Icon(graphics = {Rectangle(fillColor = {159, 159, 223}, pattern = LinePattern.None, fillPattern = FillPattern.Backward, extent = {{-100, 100}, {100, -100}}), Text(extent = {{0, 0}, {-100, -100}}, textString = "K"), Line(origin = {1.5861, -51.3897}, points = {{-102, 0}, {64, 0}}, color = {191, 0, 0}, thickness = 0.5), Polygon(origin = {2, -52}, lineColor = {191, 0, 0}, fillColor = {191, 0, 0}, fillPattern = FillPattern.Solid, points = {{52, -20}, {52, 20}, {90, 0}, {52, -20}}), Rectangle(origin = {0, 12}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-60, 20}, {-30, 40}}), Rectangle(origin = {-30, 52}, fillColor = {255, 215, 136}, fillPattern = FillPattern.Solid, extent = {{-60, -20}, {-30, 0}}), Rectangle(origin = {0, 52}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-60, 20}, {-30, 40}}), Rectangle(origin = {0, -8}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-60, 20}, {-30, 40}}), Rectangle(origin = {-30, 52}, fillColor = {255, 215, 136}, fillPattern = FillPattern.Solid, extent = {{-60, 20}, {-30, 40}}), Rectangle(origin = {0, 32}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-60, 20}, {-30, 40}}), Rectangle(origin = {-30, 52}, fillColor = {255, 215, 136}, fillPattern = FillPattern.Solid, extent = {{-60, 0}, {-30, 20}}), Rectangle(origin = {-30, 52}, fillColor = {255, 215, 136}, fillPattern = FillPattern.Solid, extent = {{-60, -40}, {-30, -20}})}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
          Documentation(revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(09/12/2023): Initial release</span></body></html>", info = "<html><head></head><body><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">This component provides a time table of temperature obtained from external file.</div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><u><br></u></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><u>Limitations:</u></div><div style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\"><div class=\"htmlDoc\"><div><br></div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><br></div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u><br></u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">N/A</span></div><div><br></div></div><div class=\"htmlDoc\"><u>Further development:</u></div></div></body></html>"));
      end TemperatureDataset;

      model PlateTransient "Transient heat transfer on a plate with heat transfer at both sides"
        import ShipSIM.Functions.HeatTransfer.DiscretizePlate;
        parameter Modelica.SIunits.Length e "Plate thickness [m]" annotation(
          Dialog(group = "Geometric Properties"));
        parameter Modelica.SIunits.Area Asur "Plate area [m^2]" annotation(
          Dialog(group = "Geometric Properties"));
        parameter Real k "Heat conductivity [W/m*K]" annotation(
          Dialog(group = "Material Properties"));
        parameter Real C "Specific heat capacity (rho*C_p) [J/m^3*K]" annotation(
          Dialog(group = "Material Properties"));
        parameter Modelica.SIunits.Temperature T_start = 273.15 "Plate start temperature" annotation(
          Dialog(group = "Initial Conditions"));
        parameter Integer N = 5 "Half-Number of discrete elements [>=1, typical 5, increase with Biot number]" annotation(
          Dialog(group = "Discretization Precision"));
        Modelica.SIunits.Temperature Tavg "Average Temperature";
        Modelica.SIunits.Temperature Temp[2*N - 1] "Element temperature";
        Modelica.SIunits.Energy Energy "Stored thermal energy";
        parameter Boolean useInternalHeatPort = true "=true, if internal heat port is enabled" annotation(
          Evaluate = true,
          HideResult = true,
          choices(checkBox = true),
          Dialog(group = "Internal Heat Generation"));
        Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(
          Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation(
          Placement(visible = true, transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_InternalHeat if useInternalHeatPort annotation(
          Placement(visible = true, transformation(origin = {0, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      protected
        parameter Real Cap[2*N - 1] = DiscretizePlate(e, N, 2) "Thickness of each element";
        parameter Real Res[2*N - 1] = DiscretizePlate(e, N, 1) "1/Resistance length tables";
        parameter Real Rm[2*N - 1] = DiscretizePlate(e, N, 3) "Capacitance positions";
        Modelica.Thermal.HeatTransfer.Components.HeatCapacitor Discrete_heatCapacitor[2*N - 1](C = Cap*Asur*C, each T(start = T_start, fixed = true)) annotation(
          Placement(transformation(origin = {-28, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
        Modelica.Thermal.HeatTransfer.Components.ThermalConductor Discrete_thermalConductor[2*N - 1](G = (Asur*k)*Res) annotation(
          Placement(transformation(origin = {0, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
        Modelica.Thermal.HeatTransfer.Components.ThermalConductor End_thermalConductor(G = Asur*k/(e - Rm[2*N - 1]));
        ShipSIM.Components.Others.HeatTransfer.Internal.HeatSplitter heatSplitter(HeatPercent = Cap/e) if useInternalHeatPort annotation(
          Placement(visible = true, transformation(origin = {0, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      equation
//Connect Temp vector to Capacitors
        for i in 1:(2*N - 1) loop
          Temp[i] = Discrete_heatCapacitor[i].port.T;
        end for;
//Compute Average Temperature and energy storage
        Tavg = (Temp[:]*Cap[:])/e;
        Energy = Tavg*C*Asur*e;
//Connect resistances
        for i in 1:(2*N - 1) loop
          connect(Discrete_heatCapacitor[i].port, Discrete_thermalConductor[i].port_b);
          if i > 1 then
            connect(Discrete_heatCapacitor[i - 1].port, Discrete_thermalConductor[i].port_a);
          end if;
        end for;
//End resistance
        connect(Discrete_heatCapacitor[2*N - 1].port, End_thermalConductor.port_a);
//Connect the connectors
        connect(Discrete_thermalConductor[1].port_a, port_a);
        connect(End_thermalConductor.port_b, port_b);
        connect(port_InternalHeat, heatSplitter.port_a) annotation(
          Line(points = {{0, -100}, {0, -44}}, color = {191, 0, 0}));
        connect(heatSplitter.port_b, Discrete_heatCapacitor.port) annotation(
          Line(points = {{0, -24}, {0, 0}, {-18, 0}}, color = {191, 0, 0}, thickness = 0.5));
        annotation(
          Documentation(info = "<html><head></head><body><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Discrete Element Model (DEM) of transitory heat transfer inside a infinite plate.</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">This model is internally subdivided into N sections to simulate the transient heat transfer similar to those obtained using Heissler graphs.</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">The plate has three heat ports:</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>-<b> port_InternalHeat</b>: This port provides an average plate temperature and it is possible to inyect to the plate a heat flux that is uniformely distributed into the plate volume (to simulate an internal heat generation). This heat flux is considered to be generated internally, not from plate ends.</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>- <b>port_a</b>: This port provides the external plate temperature and can be connected to a convective heat transfer model. Plate area is provided in the parameter \".Asur\".</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>-&nbsp;<b>port_b</b>: This port provides the external plate temperature and can be connected to a convective heat transfer model. Plate area is provided in the parameter \".Asur\".</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">The model discretization is controlled by the parameter \"N\". \"N\" is the number of discrete elements in which the half-plate is splitted (total elements = 2*N-1).</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">If \"N\"=1, then a simple uniform temperature (with internal transmission resistance) is modelled.</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><u><br></u></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><u>Limitations:</u></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><div class=\"htmlDoc\"><div><br></div><div>The model is based on infinite plate (surface much greater than thickness, or insulated thickness).&nbsp;</div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><br></div></div><div style=\"font-family: -webkit-standard;\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[Chapman]</td><td>Alan J. Chapman, \"Heat Transfer\", McMillan Publishing Company, 4th Edition, 1984</td></tr></tbody></table><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[ThSysEng]</td><td>Michael J. Moran, Howard N. Shapiro, Bruce R. Munson, David P. DeWitt, \"Introduction to Thermal Systems Engineering\", John Wiley &amp; Sons, Inc., 1st Edition, 2003</td></tr></tbody></table></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u><br></u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">N/A</span></div><div><br></div></div><div class=\"htmlDoc\"><u>Further development:</u></div></div></body></html>", revisions = "<html><head></head><body><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.1&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(10/12/2023): Modelica language compliance on conditional components</span></div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(19/11/2023): Initial release</span></body></html>"),
          Icon(graphics = {Rectangle(origin = {30, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Backward, extent = {{-90, 80}, {-60, -80}}), Rectangle(origin = {90, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Backward, extent = {{-90, 80}, {-60, -80}}), Rectangle(origin = {60, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Forward, extent = {{-90, 80}, {-60, -80}}), Rectangle(origin = {120, 0}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Forward, extent = {{-90, 80}, {-60, -80}}), Line(origin = {0, 49.72}, points = {{-60, -29.716}, {-30, 10.284}, {0, 30.284}, {30, 10.284}, {60, -29.716}}, color = {255, 0, 0}, smooth = Smooth.Bezier), Line(visible = useInternalHeatPort, origin = {41.1173, -51.0653}, points = {{-41.1325, 40.1325}, {-41.1325, -47.8675}}, color = {255, 0, 0}, arrow = {Arrow.Filled, Arrow.None}, arrowSize = 10), Text(origin = {0, 230}, textColor = {0, 0, 255}, extent = {{-150, -90}, {150, -130}}, textString = "%name"), Text(origin = {72, -92}, extent = {{-62, 8}, {62, -8}}, textString = "e = %e")}));
      end PlateTransient;

      model CylinderTransient "Transient heat transfer on insulated-ends cylinder"
        import ShipSIM.Functions.HeatTransfer.DiscretizeCylinder;
        parameter Modelica.SIunits.Length R(min = 0.0) "Radius of the Cylinder [m]" annotation(
          Dialog(group = "Geometric Properties"));
        parameter Modelica.SIunits.Length L(min = 0.0) "Lenght of the Cylinder [m]" annotation(
          Dialog(group = "Geometric Properties"));
        parameter Modelica.SIunits.Area Asur = 2*Modelica.Constants.pi*R*L "Total external surface area [m^2]" annotation(
          Dialog(group = "Geometric Properties"));
        parameter Real k(min = 0.0) "Heat conductivity [W/m*K]" annotation(
          Dialog(group = "Material Properties"));
        parameter Real C(min = 0.0) "Specific heat capacity (rho*C_p) [J/m^3*K]" annotation(
          Dialog(group = "Material Properties"));
        parameter Modelica.SIunits.Temperature T_start = 273.15 "Cylinder start temperature" annotation(
          Dialog(group = "Initial Conditions"));
        parameter Integer N(min = 1) = 10 "Number of discrete elements [>=1, typical 10, increase with Biot number]" annotation(
          Dialog(group = "Discretization Precision"));
        Modelica.SIunits.Temperature Tavg "Average Temperature";
        Modelica.SIunits.Temperature Temp[N] "Element temperature";
        Modelica.SIunits.Energy Energy "Stored thermal energy";
        parameter Boolean useInternalHeatPort = true "=true, if internal heat port is enabled" annotation(
          Evaluate = true,
          HideResult = true,
          choices(checkBox = true),
          Dialog(group = "Internal Heat Generation"));
        Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a if useInternalHeatPort annotation(
          Placement(transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {102, 0}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation(
          Placement(visible = true, transformation(origin = {0, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      protected
        parameter Real A[N] = DiscretizeCylinder(R, N, 3) "Area";
        parameter Real Ht[N] = DiscretizeCylinder(R, N, 4) "Heat transfer";
        parameter Real At = Modelica.Constants.pi*R^2 "Total area";
        Modelica.Thermal.HeatTransfer.Components.HeatCapacitor Discrete_heatCapacitor[N](C = A*L*C, each T(start = T_start, fixed = true)) annotation(
          Placement(transformation(origin = {-28, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
        Modelica.Thermal.HeatTransfer.Components.ThermalConductor Discrete_thermalConductor[N](G = Ht*L*k) if N > 1 annotation(
          Placement(transformation(origin = {0, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
        ShipSIM.Components.Others.HeatTransfer.Internal.HeatSplitter heatSplitter(HeatPercent = A/At) if useInternalHeatPort annotation(
          Placement(visible = true, transformation(origin = {38, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
      equation
        for i in 1:N loop
          Temp[i] = Discrete_heatCapacitor[i].port.T;
        end for;
        Tavg = (Temp[:]*A[:])/At;
        Energy = Tavg*C*At*L;
        if N == 1 then
          connect(Discrete_heatCapacitor[1].port, port_b);
        else
          for i in 1:N loop
            connect(Discrete_heatCapacitor[i].port, Discrete_thermalConductor[i].port_a);
            if i < N then
              connect(Discrete_thermalConductor[i].port_b, Discrete_heatCapacitor[i + 1].port);
            end if;
          end for;
//Connect the last
          connect(Discrete_thermalConductor[N].port_b, port_b);
        end if;
// Heat splitter connections
        connect(heatSplitter.port_b, Discrete_heatCapacitor.port);
        connect(heatSplitter.port_a, port_a) annotation(
          Line(points = {{48, 0}, {100, 0}}, color = {191, 0, 0}));
        annotation(
          Icon(graphics = {Line(origin = {-0.01, 51.89}, points = {{-67.9851, 8}, {60.0149, 8}}), Line(origin = {-0.01, -68.37}, points = {{-59.9851, 8}, {60.0149, 8}}), Ellipse(origin = {59, 0}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Backward, extent = {{-19, 60}, {19, -60}}), Ellipse(extent = {{-46, 42}, {-46, 42}}), Text(origin = {-30, 30}, extent = {{-62, 8}, {62, -8}}, textString = "R = %R"), Text(origin = {-30, -30}, extent = {{-62, 8}, {62, -8}}, textString = "L = %L"), Line(origin = {-79.59, -0.26}, points = {{16.8035, 60}, {-1.19648, 60}, {-19.1965, 0}, {-1.19648, -60}, {18.8035, -60}}, smooth = Smooth.Bezier), Text(origin = {-6, -78}, extent = {{-62, 8}, {62, -8}}, textString = "N = %N"), Line(visible = useInternalHeatPort, origin = {41.13, -6.13}, points = {{-61.1325, 6.13246}, {56.8675, 6.13246}}, color = {255, 0, 0}, arrow = {Arrow.Filled, Arrow.None}, arrowSize = 10), Text(origin = {0, -10}, textColor = {0, 0, 255}, extent = {{-150, -90}, {150, -130}}, textString = "%name"), Text(origin = {-66, 2}, textColor = {255, 0, 0}, extent = {{-26, 10}, {26, -10}}, textString = DynamicSelect("%Tavg", String(Tavg)))}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
          Documentation(info = "<html><head></head><body><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Discrete Element Model (DEM) of transitory heat transfer inside a cylinder with insulated ends.</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">This model is internally subdivided into N concentric rings to simulate the transient heat transfer similar to those obtained using Heissler graphs.</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">The cylinder has two heat ports:</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>-<b> port_a</b>: This port provides an average cylinder temperature and it is possible to inyect to the cylinder a heat flux that is uniformely distributed into the cylinder volume (to simulate the heat of a resistance, such as ceramic disk resistor). this heat flux is considered to be generated internally, not from cylinder ends.</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>- <b>port_b</b>: This port provides the external cylinder temperature and can be connected to a convective heat transfer model. Cylinder external area is provided in the internal variable \".Asur\".</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">The model discretization is controlled by the parameter \"N\". \"N\" is the number of discrete elements in which the cylinder is splitted.</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">If \"N\"=1, then a simple uniform temperature (without internal transmission resistance) is modelled.</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><u><br></u></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><u>Limitations:</u></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><div class=\"htmlDoc\"><div><br></div><div>The model is axisymmetric based on infinite lenght (adiabatic ends).&nbsp;</div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><br></div></div><div style=\"font-family: -webkit-standard;\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[Chapman]</td><td>Alan J. Chapman, \"Heat Transfer\", McMillan Publishing Company, 4th Edition, 1984</td></tr></tbody></table></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u><br></u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">N/A</span></div><div><br></div></div><div class=\"htmlDoc\"><u>Further development:</u></div></div></body></html>", revisions = "<html><head></head><body><div><span style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">Rev. 0.1&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">(10/12/2023): Modelica language compliance on conditional components</span></div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(19/11/2023): Initial release</span></body></html>"));
      end CylinderTransient;

      model SimpleAirExchanger "Very simple air-air heat exchanger"
        parameter Real Efficiency(min = 0, max = 1) = 0.85 "Eficciency of the heat recovery (0 to 1, typical 0.75 to 0.95)";
        Modelica.Blocks.Interfaces.RealInput AirFlow "Air flow in [m3/h]" annotation(
          Placement(transformation(origin = {-54, 96}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-60, 94}, extent = {{-14, -14}, {14, 14}}, rotation = -90)));
        Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a External_Air annotation(
          Placement(transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-102, 0}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b Internal_Air annotation(
          Placement(transformation(origin = {98, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow ExchangeHeat annotation(
          Placement(transformation(origin = {62, 0}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Thermal.HeatTransfer.Sensors.RelTemperatureSensor relTemperatureSensor annotation(
          Placement(transformation(origin = {-16, 18}, extent = {{-10, -10}, {10, 10}})));
      equation
        ExchangeHeat.Q_flow = relTemperatureSensor.T_rel*(AirFlow/3600)*1208.4*(1 - Efficiency);
        connect(ExchangeHeat.port, Internal_Air) annotation(
          Line(points = {{72, 0}, {98, 0}}, color = {191, 0, 0}));
        connect(External_Air, relTemperatureSensor.port_a) annotation(
          Line(points = {{-100, 0}, {-64, 0}, {-64, 18}, {-26, 18}}, color = {191, 0, 0}));
        connect(relTemperatureSensor.port_b, Internal_Air) annotation(
          Line(points = {{-6, 18}, {98, 18}, {98, 0}}, color = {191, 0, 0}));
        annotation(
          Icon(graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}), Line(origin = {0, 40}, points = {{-80, 0}, {80, 0}}, color = {0, 0, 255}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 40), Line(origin = {0, -40}, points = {{80, 0}, {-80, 0}}, color = {255, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 40)}),
          Documentation(revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(09/12/2023): Initial release</span></body></html>", info = "<html><head></head><body><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">This component introduces the heat flow into port_b obtained from a air heat exchanger between port_a and port_b.</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Hot air flows from b to a. Cold external air flows from a to b. In this case, air connected to frame b is cooled according to the air flow rate and efficiency of the heat exchanger.&nbsp;</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><u><br></u></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><u>Limitations:</u></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><div class=\"htmlDoc\"><div><br></div><div>Model for dry air.</div><div>This model does not take into account humidity.</div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><br></div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u><br></u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">N/A</span></div><div><br></div></div><div class=\"htmlDoc\"><u>Further development:</u></div></div></body></html>"));
      end SimpleAirExchanger;

      package Internal
        extends Modelica.Icons.InternalPackage;

        model HeatSplitter "Component to split the input heat into several according to an array of percentages"
          parameter Real HeatPercent[:] "Percentage (0 to 1) array of heat splitting";
          Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a annotation(
            Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
          Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow Discrete_prescribedHeatFlow[size(HeatPercent, 1)] annotation(
            Placement(visible = true, transformation(origin = {38, 0}, extent = {{10, -10}, {-10, 10}}, rotation = -180)));
          Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b[size(HeatPercent, 1)] annotation(
            Placement(visible = true, transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        protected
          Modelica.SIunits.Temperature Tavg "Average Temperature";
          Modelica.SIunits.Temperature Temp[size(HeatPercent, 1)] "Element temperature";
        equation
          for i in 1:size(HeatPercent, 1) loop
            Temp[i] = port_b[i].T;
            Discrete_prescribedHeatFlow[i].Q_flow = port_a.Q_flow*HeatPercent[i];
          end for;
          Tavg = Temp[:]*HeatPercent[:];
          port_a.T = Tavg;
          connect(Discrete_prescribedHeatFlow.port, port_b) annotation(
            Line(points = {{48, 0}, {100, 0}}, color = {191, 0, 0}, thickness = 0.5));
          annotation(
            Icon(graphics = {Line(origin = {-9, 40}, points = {{-89, -40}, {-31, -40}, {69, 40}, {89, 40}}, color = {255, 0, 0}), Line(origin = {19.85, 19.85}, points = {{-59.8501, -19.8501}, {40.1499, 20.1499}, {60.1499, 20.1499}}, color = {255, 0, 0}), Line(origin = {20, 0}, points = {{-60, 0}, {60, 0}}, color = {255, 0, 0}), Line(origin = {19.85, -19.85}, points = {{-59.8501, 19.8501}, {40.1499, -20.1499}, {60.1499, -20.1499}}, color = {255, 0, 0}), Line(origin = {19.8, -39.8}, points = {{-59.7972, 39.7972}, {40.2028, -40.2028}, {60.2028, -40.2028}}, color = {255, 0, 0})}),
            Documentation(revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(09/12/2023): Initial release</span></body></html>"));
        end HeatSplitter;
      end Internal;
      annotation(
        Icon(graphics = {Line(origin = {13.758, 27.517}, points = {{-17, -40}, {15, -40}}, color = {191, 0, 0}), Polygon(origin = {13.758, 27.517}, lineColor = {160, 160, 164}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid, points = {{39, -6}, {32, -7}, {18, -15}, {14, -24}, {13, -34}, {15, -42}, {20, -49}, {29, -51}, {36, -51}, {46, -50}, {52, -43}, {55, -35}, {53, -27}, {53, -20}, {51, -13}, {46, -7}, {39, -5}, {39, -6}}), Polygon(origin = {13.758, 27.517}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid, points = {{18, -15}, {14, -25}, {13, -34}, {15, -42}, {21, -49}, {29, -51}, {36, -51}, {46, -50}, {36, -47}, {28, -45}, {22, -40}, {19, -33}, {17, -23}, {18, -15}, {18, -15}}), Polygon(origin = {13.758, 27.517}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid, points = {{-75, -15}, {-79, -25}, {-80, -34}, {-78, -42}, {-72, -49}, {-64, -51}, {-57, -51}, {-47, -50}, {-57, -47}, {-65, -45}, {-71, -40}, {-74, -33}, {-76, -23}, {-75, -15}, {-75, -15}}), Polygon(origin = {13.758, 27.517}, lineColor = {191, 0, 0}, fillColor = {191, 0, 0}, fillPattern = FillPattern.Solid, points = {{-9, -23}, {-9, -10}, {18, -17}, {-9, -23}}), Polygon(origin = {13.758, 27.517}, lineColor = {191, 0, 0}, fillColor = {191, 0, 0}, fillPattern = FillPattern.Solid, points = {{-17, -46}, {-17, -34}, {-40, -40}, {-17, -46}}), Polygon(origin = {13.758, 27.517}, lineColor = {128, 128, 128}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid, points = {{-54, -6}, {-61, -7}, {-75, -15}, {-79, -24}, {-80, -34}, {-78, -42}, {-73, -49}, {-64, -51}, {-57, -51}, {-47, -50}, {-41, -43}, {-38, -35}, {-40, -27}, {-40, -20}, {-42, -13}, {-47, -7}, {-54, -5}, {-54, -6}}), Line(origin = {13.758, 27.517}, points = {{-41, -17}, {-9, -17}}, color = {191, 0, 0})}));
    end HeatTransfer;

    package MoistAir "Moist air components"
      model SourceMoistAir "Source of moist air"
        Modelica.Fluid.Sources.MassFlowSource_T boundary(redeclare package Medium = Modelica.Media.Air.MoistAir, use_m_flow_in = true, use_T_in = true, use_X_in = true, nPorts = 1) annotation(
          Placement(transformation(origin = {60, 0}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Fluid.Interfaces.FluidPort_b port_b(redeclare package Medium = Modelica.Media.Air.MoistAir) annotation(
          Placement(transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Blocks.Interfaces.RealInput Air_Flow annotation(
          Placement(transformation(origin = {-106, 60}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-100, 60}, extent = {{-14, -14}, {14, 14}})));
        Modelica.Blocks.Interfaces.RealInput RH annotation(
          Placement(transformation(origin = {-106, -60}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-100, 0}, extent = {{-14, -14}, {14, 14}})));
        Modelica.Blocks.Interfaces.RealInput Temp annotation(
          Placement(transformation(origin = {-106, 0}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-100, -60}, extent = {{-14, -14}, {14, 14}})));
        Modelica.Blocks.Math.Product convert_to_kgs annotation(
          Placement(transformation(origin = {14, 54}, extent = {{-10, -10}, {10, 10}})));
        Modelica.Blocks.Sources.RealExpression m3s_kgs_factor(y = boundary.medium.d) annotation(
          Placement(transformation(origin = {-54, 23}, extent = {{-38, -13}, {38, 13}})));
        Modelica.Blocks.Sources.RealExpression X[2](y = {MassFraction, 1 - MassFraction}) annotation(
          Placement(transformation(origin = {-11, -17}, extent = {{-35, -9}, {35, 9}})));
        Real MassFraction;
        constant Real k = 0.621964713077499 "Ratio of molar masses";
        Real psat;
      equation
        psat = Modelica.Media.Air.MoistAir.saturationPressure(Temp) "Saturation pressure";
        MassFraction = RH*k/(k*RH + port_b.p/psat - RH);
        connect(boundary.ports[1], port_b) annotation(
          Line(points = {{70, 0}, {100, 0}}, color = {0, 127, 255}));
        connect(Temp, boundary.T_in) annotation(
          Line(points = {{-106, 0}, {20, 0}, {20, 4}, {48, 4}}, color = {0, 0, 127}));
        connect(X.y, boundary.X_in) annotation(
          Line(points = {{27.5, -17}, {48, -17}, {48, -4}}, color = {0, 0, 127}, thickness = 0.5));
        connect(convert_to_kgs.y, boundary.m_flow_in) annotation(
          Line(points = {{26, 54}, {50, 54}, {50, 8}}, color = {0, 0, 127}));
        connect(m3s_kgs_factor.y, convert_to_kgs.u2) annotation(
          Line(points = {{-12, 23}, {2, 23}, {2, 48}}, color = {0, 0, 127}));
        connect(Air_Flow, convert_to_kgs.u1) annotation(
          Line(points = {{-106, 60}, {2, 60}}, color = {0, 0, 127}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{35, 45}, {100, -45}}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {0, 127, 255}), Ellipse(extent = {{-100, 80}, {60, -80}}, lineColor = {0, 0, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Polygon(origin = {4, 0}, lineColor = {0, 0, 255}, fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, points = {{-60, 70}, {60, 0}, {-60, -68}, {-60, 70}})}),
          Documentation(info = "<html><head></head><body><div>Fluid source of moist air.</div><div><u><br></u></div><div><u>Limitations</u>:</div><div><br></div><div>Same as Modelica.Fluid</div><div><br></div><div><u>References</u>:</div><div><br></div><p><u>Know issues</u>:</p><div><br></div><div><u>Further development</u>:</div><div><br></div></body></html>", revisions = "<html><head></head><body><span style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">(11/02/2024): Initial release</span></body></html>"));
      end SourceMoistAir;

      model DewTemperature "Dew temperature sensor"
        extends Modelica.Fluid.Sensors.BaseClasses.PartialAbsoluteSensor;
        Modelica.Blocks.Interfaces.RealOutput Tdew(final quantity = "ThermodynamicTemperature", final unit = "K", displayUnit = "degC", min = 0) "Temperature in port medium" annotation(
          Placement(transformation(extent = {{60, -10}, {80, 10}})));
        Modelica.SIunits.Pressure P_sat;
        Modelica.SIunits.Pressure P_vap;
        Modelica.SIunits.Temperature T;
        Real RH;
      equation
        T = Medium.temperature(Medium.setState_phX(port.p, inStream(port.h_outflow), inStream(port.Xi_outflow)));
        RH = Medium.relativeHumidity(Medium.setState_phX(port.p, inStream(port.h_outflow), inStream(port.Xi_outflow)));
        P_sat = Medium.saturationPressure(T);
        P_vap = P_sat*RH;
        Tdew = 273.15 + (241.88*log(P_vap/610.78))/(17.558 - log(P_vap/610.78));
        annotation(
          defaultComponentName = "dewtemperature",
          Documentation(info = "<html><head></head><body><p>
       This component monitors the dew temperature of the fluid passing its port.
       The sensor is ideal, i.e., it does not influence the fluid.
       </p><div><u>Limitations</u>:</div><div><br></div><div><br></div><div><u>References</u>:</div><div><br></div><p><u>Know issues</u>:</p><p>Dew temperature formula is not the inverse of those used in Modelica.Fluid. Then, it will not match exactly these values.</p><div><br></div><div><u>Further development</u>:</div><div><br></div>
       </body></html>", revisions = "<html><head></head><body><span style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">(11/02/2024): Initial release</span></body></html>"),
          Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}})),
          Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Ellipse(fillColor = {191, 0, 0}, fillPattern = FillPattern.Solid, lineThickness = 0.5, extent = {{-20, -88}, {20, -50}}), Rectangle(lineColor = {191, 0, 0}, fillColor = {191, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-12, 50}, {12, -58}}), Polygon(lineThickness = 0.5, points = {{-12, 50}, {-12, 90}, {-10, 96}, {-6, 98}, {0, 100}, {6, 98}, {10, 96}, {12, 90}, {12, 50}, {-12, 50}}), Line(points = {{-12, 50}, {-12, -54}}, thickness = 0.5), Line(points = {{12, 50}, {12, -54}}, thickness = 0.5), Line(points = {{-40, -10}, {-12, -10}}), Line(points = {{-40, 30}, {-12, 30}}), Line(points = {{-40, 70}, {-12, 70}}), Text(extent = {{126, -30}, {6, -60}}, textString = "T"), Text(textColor = {0, 0, 255}, extent = {{-150, 110}, {150, 150}}, textString = "%name"), Line(points = {{12, 0}, {60, 0}}, color = {0, 0, 127}), Polygon(origin = {-60, -50}, fillColor = {85, 255, 255}, fillPattern = FillPattern.Solid, points = {{0, 30}, {-20, -10}, {-20, -16}, {-14, -26}, {-6, -30}, {0, -30}, {6, -30}, {14, -26}, {20, -16}, {20, -10}, {20, -10}, {0, 30}})}));
      end DewTemperature;
      annotation(
        Icon(graphics = {Ellipse(fillColor = {191, 0, 0}, fillPattern = FillPattern.Solid, lineThickness = 0.5, extent = {{-20, -88}, {20, -50}}), Rectangle(lineColor = {191, 0, 0}, fillColor = {191, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-12, 50}, {12, -58}}), Polygon(lineThickness = 0.5, points = {{-12, 50}, {-12, 90}, {-10, 96}, {-6, 98}, {0, 100}, {6, 98}, {10, 96}, {12, 90}, {12, 50}, {-12, 50}}), Line(points = {{-12, 50}, {-12, -54}}, thickness = 0.5), Line(points = {{12, 50}, {12, -54}}, thickness = 0.5), Line(points = {{-40, -10}, {-12, -10}}), Line(points = {{-40, 30}, {-12, 30}}), Line(points = {{-40, 70}, {-12, 70}}), Polygon(origin = {-60, -50}, fillColor = {85, 255, 255}, fillPattern = FillPattern.Solid, points = {{0, 30}, {-20, -10}, {-20, -16}, {-14, -26}, {-6, -30}, {0, -30}, {6, -30}, {14, -26}, {20, -16}, {20, -10}, {20, -10}, {0, 30}})}));
    end MoistAir;
    annotation(
      Icon(graphics = {Polygon(origin = {-67.9923, 39.6007}, fillColor = {102, 102, 102}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{3.239, 37.343}, {3.305, 37.343}, {-0.399, 2.683}, {-16.936, -20.071}, {-7.808, -28.604}, {6.811, -22.519}, {9.986, 37.145}, {9.986, 37.145}, {3.239, 37.343}}, smooth = Smooth.Bezier), Polygon(origin = {-24.247, 36.4578}, fillColor = {102, 102, 102}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-10.873, 41.478}, {-10.873, 41.478}, {-14.048, -4.162}, {-9.352, -24.8}, {7.912, -24.469}, {16.247, 0.27}, {16.247, 0.27}, {13.336, 0.071}, {13.336, 0.071}, {7.515, -9.983}, {-3.134, -7.271}, {-2.671, 41.214}, {-2.671, 41.214}, {-10.873, 41.478}}, smooth = Smooth.Bezier), Polygon(origin = {-57.2597, 73.6673}, fillColor = {102, 102, 102}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{48.017, 11.336}, {48.017, 11.336}, {10.766, 11.336}, {-25.684, 10.95}, {-34.944, -15.111}, {-34.944, -15.111}, {-32.298, -15.244}, {-32.298, -15.244}, {-22.112, 0.168}, {11.292, 0.234}, {48.267, -0.097}, {48.267, -0.097}, {48.017, 11.336}}, smooth = Smooth.Bezier), Polygon(origin = {41.833, -37}, fillColor = {128, 128, 128}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-15.833, 20}, {-15.833, 30}, {14.167, 40}, {24.167, 20}, {4.167, -30}, {14.167, -30}, {24.167, -30}, {24.167, -40}, {-5.833, -50}, {-15.833, -30}, {4.167, 20}, {-5.833, 20}, {-15.833, 20}}, smooth = Smooth.Bezier), Ellipse(origin = {49.5, 36.5}, fillColor = {128, 128, 128}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-12.5, -12.5}, {12.5, 12.5}})}));
  end Others;
  annotation(
    Icon(graphics = {Polygon(origin = {-36, 14}, rotation = -170, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-5, 45}, {-10, 10}, {-45, 5}, {-45, -5}, {-10, -10}, {-5, -45}, {5, -45}, {10, -10}, {45, -5}, {45, 5}, {10, 10}, {5, 45}, {-5, 45}}), Polygon(origin = {-36, 14}, rotation = -35, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-5, 45}, {-10, 10}, {-45, 5}, {-45, -5}, {-10, -10}, {-5, -45}, {5, -45}, {10, -10}, {45, -5}, {45, 5}, {10, 10}, {5, 45}, {-5, 45}}), Ellipse(origin = {-37, 17}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-27, 27}, {27, -27}}), Polygon(origin = {40, -22}, rotation = 10, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-5, 45}, {-10, 10}, {-45, 5}, {-45, -5}, {-10, -10}, {-5, -45}, {5, -45}, {10, -10}, {45, -5}, {45, 5}, {10, 10}, {5, 45}, {-5, 45}}), Polygon(origin = {40, -22}, rotation = 55, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-5, 45}, {-10, 10}, {-45, 5}, {-45, -5}, {-10, -10}, {-5, -45}, {5, -45}, {10, -10}, {45, -5}, {45, 5}, {10, 10}, {5, 45}, {-5, 45}}), Ellipse(origin = {39, -21}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-27, 27}, {27, -27}}), Ellipse(origin = {-36, 16}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-8, 8}, {8, -8}}), Ellipse(origin = {38, -20}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-8, 8}, {8, -8}})}));
end Components;
