within ShipSIM;
package SubComponents "Library SubComponents"
    extends Modelica.Icons.InternalPackage;

    model Cable "Simple cable model"
      parameter Modelica.SIunits.TranslationalSpringConstant k "Elasticity modulus";
      parameter Modelica.SIunits.Force RotureStrenght "Break force";
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(
        Placement(visible = true, transformation(origin = {0, 98}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {0, 98}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(
        Placement(visible = true, transformation(origin = {0, -98}, extent = {{-16, -16}, {16, 16}}, rotation = -90), iconTransformation(origin = {0, -98}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
      Modelica.Mechanics.MultiBody.Forces.WorldForce force_a(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.world) annotation(
        Placement(transformation(origin = {0, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      Modelica.Mechanics.MultiBody.Forces.WorldForce force_b(animation = true, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.world) annotation(
        Placement(transformation(origin = {0, -58}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Modelica.SIunits.Length Lenght "Actual distance between connectors";
      Modelica.SIunits.Force Force "Force impossed by cable due to elongation";
      Real Direction[3] "Force direction";
      Boolean IsBreak(start = false);
      Modelica.Blocks.Interfaces.RealInput SetLenght "Unstretched length" annotation(
        Placement(visible = true, transformation(origin = {-98, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-96, 8.88178e-16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(frame_a, force_a.frame_b) annotation(
        Line(points = {{0, 98}, {0, 76}}));
      connect(force_b.frame_b, frame_b) annotation(
        Line(points = {{0, -68}, {0, -98}}, color = {95, 95, 95}));
      Lenght = Modelica.Math.Vectors.length({frame_b.r_0[1] - frame_a.r_0[1], frame_b.r_0[2] - frame_a.r_0[2], frame_b.r_0[3] - frame_a.r_0[3]}) "Current distance between extreme connections";
      Direction = Modelica.Math.Vectors.normalize({frame_b.r_0[1] - frame_a.r_0[1], frame_b.r_0[2] - frame_a.r_0[2], frame_b.r_0[3] - frame_a.r_0[3]}) "Direction vector that joint extreme connectors";
      when ((k*(Lenght - SetLenght)) > RotureStrenght) then
//Verifies if the cable is broken
        IsBreak = true;
      end when;
      if IsBreak then
        Force = 0;
//If cable is break, then force =0
      else
        if Lenght < SetLenght then
//Cable does not provide forces
          Force = 0;
        else
          Force = k*(Lenght - SetLenght) "Cable force";
        end if;
      end if;
// Translate cable force to connectors
      force_a.force = Force*Direction;
      force_b.force = -Force*Direction;
      annotation(
        Diagram,
        Icon(graphics = {Line(points = {{0, 98}, {60, 60}, {-60, -60}, {0, -98}}, smooth = Smooth.Bezier), Text(origin = {-40, 63}, extent = {{-58, 5}, {58, -5}}, textString = "L= %OriginalLenght", horizontalAlignment = TextAlignment.Left), Text(origin = {50, -58}, extent = {{-72, 6}, {72, -6}}, textString = "k = %k", horizontalAlignment = TextAlignment.Left)}),
        Documentation(revisions = "<html><head></head><body>Rev. 0.0&nbsp;[B.Puente] (14/10/2023): Initial release.</body></html>", info = "<html><head></head><body><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Simple cable model.</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><u>Working Principle:</u></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">There are modelled two situations:</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">- Cable working (initial situation)</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">- Cable broken, after reach the roture strenght value</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">When the cable is working, if the distance between the connections is less than the lenght indicated on \"SetLenght\" connection, then the forces are zero.</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">If the disctance is greater than the lenght, then a elastic force is applied according their elongation.</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><u>Limitations</u>:</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Cable damping is not modelled.</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><u>References</u>:</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">N/A</div><p style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><u>Know issues</u>:</p><p style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Unstrechted lenght of the cable need to be used in the force calculation!</p><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><u>Further development</u>:</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Correct force calculation.</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Introduce cable damping.</div></body></html>"));
    end Cable;

    model VariableTranslation "Derivative work of Translation component of MSL"
      import Modelica.Mechanics.MultiBody.Types;
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a "Coordinate system fixed to the component with one cut-force and cut-torque" annotation(
        Placement(transformation(extent = {{-116, -16}, {-84, 16}})));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b "Coordinate system fixed to the component with one cut-force and cut-torque" annotation(
        Placement(transformation(extent = {{84, -16}, {116, 16}})));
      Modelica.Blocks.Interfaces.RealInput r_vect[3] annotation(
        Placement(visible = true, transformation(origin = {-4, -106}, extent = {{-20, -20}, {20, 20}}, rotation = 90), iconTransformation(origin = {-2, -100}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
    equation
      Connections.branch(frame_a.R, frame_b.R);
      assert(cardinality(frame_a) > 0 or cardinality(frame_b) > 0, "Neither connector frame_a nor frame_b of FixedTranslation object is connected");
      frame_b.r_0 = frame_a.r_0 + Modelica.Mechanics.MultiBody.Frames.resolve1(frame_a.R, r_vect);
      frame_b.R = frame_a.R;
// Force and torque balance
      zeros(3) = frame_a.f + frame_b.f;
      zeros(3) = frame_a.t + frame_b.t + cross(r_vect, frame_b.f);
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(textColor = {0, 0, 255}, extent = {{-150, 85}, {150, 45}}, textString = "%name"), Text(extent = {{150, -50}, {-150, -20}}, textString = "r=%r_vect"), Text(textColor = {128, 128, 128}, extent = {{-89, 38}, {-53, 13}}, textString = "a"), Text(textColor = {128, 128, 128}, extent = {{57, 39}, {93, 14}}, textString = "b"), Line(origin = {-10, 0}, points = {{10, 20}, {-10, -20}}), Line(origin = {10, 0}, points = {{10, 20}, {-10, -20}}), Polygon(origin = {-54, 0}, fillPattern = FillPattern.Solid, points = {{-46, 4}, {46, 4}, {42, -4}, {-46, -4}, {-46, 4}}), Polygon(origin = {54, 0}, rotation = 180, fillPattern = FillPattern.Solid, points = {{-46, 4}, {46, 4}, {42, -4}, {-46, -4}, {-46, 4}})}),
        Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(fillPattern = FillPattern.Solid, extent = {{-100, 5}, {100, -5}}), Line(points = {{-95, 20}, {-58, 20}}, color = {128, 128, 128}, arrow = {Arrow.None, Arrow.Filled}), Line(points = {{-94, 18}, {-94, 50}}, color = {128, 128, 128}, arrow = {Arrow.None, Arrow.Filled}), Text(textColor = {128, 128, 128}, extent = {{-72, 35}, {-58, 24}}, textString = "x"), Text(textColor = {128, 128, 128}, extent = {{-113, 57}, {-98, 45}}, textString = "y"), Line(points = {{-100, -4}, {-100, -69}}, color = {128, 128, 128}), Line(points = {{-100, -63}, {90, -63}}, color = {128, 128, 128}), Text(textColor = {128, 128, 128}, extent = {{-22, -39}, {16, -63}}, textString = "input r"), Polygon(fillPattern = FillPattern.Solid, points = {{88, -59}, {88, -68}, {100, -63}, {88, -59}}), Line(points = {{100, -3}, {100, -68}}, color = {128, 128, 128}), Line(points = {{69, 20}, {106, 20}}, color = {128, 128, 128}, arrow = {Arrow.None, Arrow.Filled}), Line(points = {{70, 18}, {70, 50}}, color = {128, 128, 128}, arrow = {Arrow.None, Arrow.Filled}), Text(textColor = {128, 128, 128}, extent = {{92, 35}, {106, 24}}, textString = "x"), Text(textColor = {128, 128, 128}, extent = {{51, 57}, {66, 45}}, textString = "y")}),
        Documentation(info = "<html><head></head><body><p>This component is a modification of \"fixedTranslation\" of Modelica.Mechanics.Multibody to enable a real time bar changing. 3D visualization was disabled.</p><pre style=\"font-size: 12px;\"><div style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\"><u>Copyright:</u></div><div style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\"><span style=\"font-family: 'Times New Roman'; orphans: 2; widows: 2;\">Original Work:&nbsp;</span></div><div style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\"><span style=\"font-family: 'Times New Roman'; orphans: 2; widows: 2;\">Copyright&nbsp;</span><span style=\"font-family: -webkit-standard;\">©</span><span style=\"font-family: 'Times New Roman'; orphans: 2; widows: 2;\">&nbsp;2021-2022 Modelica Association</span></div><div style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\"><span style=\"font-family: 'Times New Roman'; orphans: 2; widows: 2;\"><br></span></div><div style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\"><span style=\"font-family: 'Times New Roman'; orphans: 2; widows: 2;\">Derivative Work:&nbsp;</span></div><div style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\"><p style=\"font-size: 10pt; font-family: Arial, sans-serif;\"><b style=\"font-size: 10pt;\">ShipSIM package</b></p><p style=\"font-size: 10pt; font-family: Arial, sans-serif;\"><em style=\"font-size: 10pt;\">(for license see ShipSIM.UsersGuide.License)</em></p></div></pre>
</body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span>[B.Puente]<span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">&nbsp;(01/03/2021): Initial release</span></body></html>"));
    end VariableTranslation;

    model ApparentSpeedXY "Component to calculate apparent speeds (to be used with current or wind)"
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(
        Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Sensors.AbsoluteVelocity absoluteVelocity(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a) annotation(
        Placement(visible = true, transformation(origin = {-34, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Sensors.TransformAbsoluteVector transformAbsoluteVector(frame_r_in = Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.world, frame_r_out = Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a) annotation(
        Placement(visible = true, transformation(origin = {-34, 46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput WorldSpeed[3] "External current or wind vector in world reference" annotation(
        Placement(visible = true, transformation(origin = {-32, 106}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {0, 94}, extent = {{-14, -14}, {14, 14}}, rotation = -90)));
      Modelica.Blocks.Interfaces.RealOutput SpeedLocal[3] "Apparent speed vector in frame_a coordinates" annotation(
        Placement(visible = true, transformation(origin = {102, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {106, 60}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput ApparentSpeed "Apparent speed" annotation(
        Placement(visible = true, transformation(origin = {102, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {106, 20}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput AttackAngle(unit = "rad") "Attack angle" annotation(
        Placement(visible = true, transformation(origin = {100, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {106, -20}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput AttackAngleSigned(unit = "rad") "Signed attack angle" annotation(
        Placement(visible = true, transformation(origin = {102, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {106, -60}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
    protected
      parameter Real tolerance = 0.00000001;
    equation
      SpeedLocal[1] = -transformAbsoluteVector.r_out[1] + absoluteVelocity.v[1];
      SpeedLocal[2] = -transformAbsoluteVector.r_out[2] + absoluteVelocity.v[2];
      SpeedLocal[3] = 0;
      ApparentSpeed = Modelica.Math.Vectors.length(SpeedLocal);
      if noEvent(SpeedLocal[1] > tolerance and SpeedLocal[2] >= 0) then
        AttackAngle = Modelica.Math.atan(SpeedLocal[2]/SpeedLocal[1]);
      elseif noEvent(abs(SpeedLocal[1]) <= tolerance and SpeedLocal[2] >= 0) then
        AttackAngle = Modelica.Constants.pi/2;
      elseif noEvent(SpeedLocal[1] < -tolerance and SpeedLocal[2] >= 0) then
        AttackAngle = Modelica.Math.atan(SpeedLocal[2]/SpeedLocal[1]) + Modelica.Constants.pi;
      elseif noEvent(SpeedLocal[1] > tolerance and SpeedLocal[2] < 0) then
        AttackAngle = Modelica.Math.atan(SpeedLocal[2]/SpeedLocal[1]) + 2*Modelica.Constants.pi;
      elseif noEvent(abs(SpeedLocal[1]) <= tolerance and SpeedLocal[2] < 0) then
        AttackAngle = (3/2)*Modelica.Constants.pi;
      elseif noEvent(SpeedLocal[1] < -tolerance and SpeedLocal[2] < 0) then
        AttackAngle = Modelica.Math.atan(SpeedLocal[2]/SpeedLocal[1]) + Modelica.Constants.pi;
      else
        AttackAngle = 0;
      end if;
      if noEvent(AttackAngle > Modelica.Constants.pi) then
        AttackAngleSigned = AttackAngle - 2*Modelica.Constants.pi;
      else
        AttackAngleSigned = AttackAngle;
      end if;
      connect(frame_a, transformAbsoluteVector.frame_a) annotation(
        Line(points = {{-100, 0}, {-80, 0}, {-80, 46}, {-44, 46}}));
      connect(frame_a, absoluteVelocity.frame_a) annotation(
        Line(points = {{-100, 0}, {-62, 0}, {-62, -40}, {-44, -40}}));
      connect(WorldSpeed, transformAbsoluteVector.r_in) annotation(
        Line(points = {{-32, 106}, {-34, 106}, {-34, 58}}, color = {0, 0, 127}, thickness = 0.5));
      annotation(
        Documentation(info = "<html><head></head><body>
<pre style=\"margin-top: 0px; margin-bottom: 0px;\"><p style=\"font-size: 12px; white-space: normal;\"><font face=\"MS Shell Dlg 2\">Component to calculate the apparent speed (only in X and Y components) to be used with ShipSIM.Components.Environment definition of wind and currents.</font></p><p style=\"font-size: 12px; white-space: normal;\"><font face=\"MS Shell Dlg 2\">The following equation sets the current speed:</font></p><p style=\"font-size: 12px; white-space: normal;\">
</p><pre style=\"margin-top: 0px; margin-bottom: 0px;\"><!--StartFragment--><span style=\"font-family: 'Courier New'; font-size: 12pt;\">apparentSpeedXY.WorldSpeed = environment.CurrentVector;</span><!--EndFragment--></pre><div class=\"htmlDoc\" style=\"white-space: normal; font-family: 'MS Shell Dlg 2';\"><div class=\"htmlDoc\" style=\"font-size: 12px;\"><div><br></div><div>Then, the component will use the absolute speed from the frame_a connector and add the current speed. The output of this component is:</div><div>- SpeedLocal[3]: vector X and Y (Z=0) with the apparent speed</div><div>- ApparentSpeed: Lenght of the above mentioned vector</div><div>- AttackAngle: Attack angle in radians of the apparent speed and the frame_a axis</div><div><br></div><div><br></div><div><u>Limitations:</u></div><div>Only calculates using X and Y components.</div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><br></div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div><br></div></div><div class=\"htmlDoc\" style=\"font-size: 12px;\"><div><u>Further development:</u></div><div><div><br></div><div><br></div></div></div></div></pre><pre style=\"margin-top: 0px; margin-bottom: 0px;\"><!--EndFragment--></pre></body></html>", revisions = "<html><head></head><body><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.1&nbsp;</span>[B.Puente]&nbsp;<span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(03/05/2023): Added signed attack angle</span></div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span>[B.Puente]&nbsp;<span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(06/03/2023): Initial release</span></body></html>"),
        Icon(graphics = {Rectangle(origin = {-0.01, 0}, borderPattern = BorderPattern.Engraved, extent = {{-99.99, 100}, {99.99, -100}}, radius = 15), Line(origin = {-44.2988, -19.7809}, points = {{-17, 23}, {7, -57}}, thickness = 0.5, arrow = {Arrow.Filled, Arrow.None}, arrowSize = 15), Line(origin = {24.0279, -13.0876}, points = {{9, -9}, {-61, -65}}, thickness = 0.5, arrow = {Arrow.Filled, Arrow.None}, arrowSize = 15), Line(origin = {-0.518805, 68.0691}, points = {{9, -9}, {-61, -65}}, color = {200, 200, 200}, pattern = LinePattern.Dash, thickness = 0.5, arrowSize = 15), Line(origin = {25.98, 35.44}, points = {{-17, 23}, {7, -57}}, color = {200, 200, 200}, pattern = LinePattern.Dash, thickness = 0.5, arrowSize = 15), Line(origin = {-44.3, -19.78}, points = {{53, 79}, {7, -57}}, color = {255, 0, 0}, thickness = 0.5, arrow = {Arrow.Filled, Arrow.None}, arrowSize = 15)}));
    end ApparentSpeedXY;

    model Ikeda
      //Input Parameters
      parameter Modelica.SIunits.Length Lpp = 100 "Length between perpendiculars [m]" annotation(
        Dialog(group = "Ship parameters"));
      parameter Modelica.SIunits.Length B = 20 "Moulded beam [m]" annotation(
        Dialog(group = "Ship parameters"));
      parameter Modelica.SIunits.Length Draft = 4 " Mean moulded draft [m]" annotation(
        Dialog(group = "Hidrostatics Properties"));
      parameter Real Cb = 0.693 "Ship block coefficient [-]" annotation(
        Dialog(group = "Ship parameters"));
      parameter Modelica.SIunits.Length OG = -0.2 "Distance from waterline to CoG, negative if CoG is below waterline [m]" annotation(
        Dialog(group = "Ship parameters"));
      //Input Variables
      Real v;
      Real w;
      Real T;
      Real Roll_a;
      Real KinVis;
      Real rho;
      //Variables
      Real B_F0;
      Real B_F;
    protected
      //B_F
      parameter Real r_f = ((0.887 + 0.145*Cb)*(1.7*Draft + Cb*B) - 2*OG)/Modelica.Constants.pi;
      parameter Real s_f = Lpp*(1.75*Draft + Cb*B);
    equation
      w = 2*Modelica.Constants.pi/T;
//B_F Frictional component
      B_F0 = (4/(3*Modelica.Constants.pi))*rho*s_f*(r_f^3)*Roll_a*w*(1.328*((3.22*r_f^2*Roll_a^2)/(T*KinVis))^(-0.5));
      B_F = B_F0*(1 + 4.1*v/(w*Lpp));
//B_W Wave component
      annotation(
        Icon(graphics = {Line(points = {{100, 100}, {-100, -100}}, color = {255, 0, 0}, thickness = 1.25)}));
    end Ikeda;
  end SubComponents;