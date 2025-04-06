within ShipSIM;

package Examples "Sample simulations of the library"
  extends Modelica.Icons.ExamplesPackage;

  package Maneuvering "Maneuvering examples"
    extends Modelica.Icons.ExamplesPackage;

    model Test_ZigZag_1Q
      extends Modelica.Icons.Example;
      ShipSIM.Components.Ship.ShipModelTh shipModelTh(ini_Vel = {2, 0, 0}) annotation(
        Placement(visible = true, transformation(origin = {62, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.Ship.HidrodynamicXYY hidrodynamicXYY annotation(
        Placement(visible = true, transformation(origin = {62, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedFrame ShipAxis(color_y = {0, 180, 0}, color_z = {255, 0, 0}, diameter = 0.5, length = 30) annotation(
        Placement(visible = true, transformation(origin = {27, 43}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(animation = true, height = 10, length = 100, shapeType = "modelica://ShipSIM/Resources/Data/Ship.dxf", width = 20) annotation(
        Placement(visible = true, transformation(origin = {26, 30}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(animation = false, r = {1, 0, 2}) annotation(
        Placement(visible = true, transformation(origin = {28, 6}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
      inner Modelica.Mechanics.MultiBody.World world(animateWorld = true, defaultN_to_m = 200, defaultNm_to_m = 2000, enableAnimation = true, label2 = "z", n = {0, 0, -1}, nominalLength = 50) annotation(
        Placement(transformation(origin = {-98, 41}, extent = {{-6, -6}, {6, 6}})));
      ShipSIM.Components.Propulsion.Rudder rudder(wingData = NACA0012_Data) annotation(
        Placement(transformation(origin = {-24, 3}, extent = {{-7, -7}, {7, 7}})));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation Rudder_pos(animation = false, r = {-2, 0, 4.5}) annotation(
        Placement(visible = true, transformation(origin = {21, 17}, extent = {{5, 5}, {-5, -5}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression Ref annotation(
        Placement(visible = true, transformation(origin = {-92, 7}, extent = {{-4, -5}, {4, 5}}, rotation = 0)));
      Modelica.Blocks.Logical.Switch switch1 annotation(
        Placement(visible = true, transformation(origin = {-47, 3}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression MinAngle(y = -20) annotation(
        Placement(visible = true, transformation(origin = {-72, -10}, extent = {{-6, -4}, {6, 4}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression MaxAngle(y = 20) annotation(
        Placement(visible = true, transformation(origin = {-72, 14}, extent = {{-6, -4}, {6, 4}}, rotation = 0)));
      Modelica.Blocks.Logical.OnOffController onOffController(bandwidth = 40, pre_y_start = false) annotation(
        Placement(visible = true, transformation(origin = {-72, 2}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
      ShipSIM.Components.Propulsion.Propeller1Q propeller(Diameter = 2.5, AnimationForces = false) annotation(
        Placement(visible = true, transformation(origin = {-3, 3}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Speed speed(phi(displayUnit = "rad")) annotation(
        Placement(visible = true, transformation(origin = {27, -15}, extent = {{7, -7}, {-7, 7}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression ShaftSpeed(y = 96*(2*3.141592/60)) annotation(
        Placement(visible = true, transformation(origin = {-8, -28}, extent = {{-22, -8}, {22, 8}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape buoy(animation = false, color = {255, 0, 0}, height = 10, length = 10, r_shape = {300, 0, 0}, shapeType = "sphere", width = 10) annotation(
        Placement(transformation(origin = {-76.5, 41.5}, extent = {{-5.5, -5.5}, {5.5, 5.5}})));
      ShipSIM.Components.Ship.ShipWind shipWind annotation(
        Placement(transformation(origin = {62, -30}, extent = {{-10, -10}, {10, 10}})));
      parameter Records.WingProfile.NACA0012 NACA0012_Data annotation(
        Placement(transformation(origin = {-69, -35}, extent = {{-10, -10}, {10, 10}})));
      inner Components.VariableEnvironment environment annotation(
        Placement(transformation(origin = {-11, 48}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Blocks.Sources.RealExpression WindSpeed(y = 10*sin(time/10)) annotation(
        Placement(transformation(origin = {-45, 55}, extent = {{-17, -5}, {17, 5}})));
      Modelica.Blocks.Sources.RealExpression Direction(y = 45*sin(time/15)) annotation(
        Placement(transformation(origin = {-69, 65}, extent = {{-10, -10}, {10, 10}})));
    equation
      connect(hidrodynamicXYY.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{52, -6}, {46, -6}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(ShipAxis.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{32, 43}, {46, 43}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(fixedShape.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{32, 30}, {46, 30}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(fixedTranslation.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{34, 6}, {46, 6}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(Rudder_pos.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{26, 17}, {40, 17}, {40, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(Rudder_pos.frame_b, rudder.frame_a) annotation(
        Line(points = {{16, 17}, {-22, 17}, {-22, 10}}, color = {95, 95, 95}));
      connect(onOffController.y, switch1.u2) annotation(
        Line(points = {{-65.4, 2}, {-55.9, 2}, {-55.9, 3}, {-55.4, 3}}, color = {255, 0, 255}));
      connect(Ref.y, onOffController.reference) annotation(
        Line(points = {{-87.6, 7}, {-85.1, 7}, {-85.1, 6}, {-78.6, 6}}, color = {0, 0, 127}));
      connect(switch1.u3, MinAngle.y) annotation(
        Line(points = {{-55.4, -2.6}, {-59.4, -2.6}, {-59.4, -10.6}, {-65.4, -10.6}}, color = {0, 0, 127}));
      connect(shipModelTh.YawDeg, onOffController.u) annotation(
        Line(points = {{68.2, 7.8}, {94.2, 7.8}, {94.2, -50.2}, {-95.8, -50.2}, {-95.8, -2.2}, {-78.8, -2.2}}, color = {0, 0, 127}));
      connect(shipModelTh.shipData, hidrodynamicXYY.shipData) annotation(
        Line(points = {{72, 11}, {78, 11}, {78, 1}, {72, 1}}));
      connect(propeller.frame_a, fixedTranslation.frame_b) annotation(
        Line(points = {{4, 5}, {13, 5}, {13, 5.8}, {22, 5.8}}, color = {95, 95, 95}));
      connect(propeller.flange, speed.flange) annotation(
        Line(points = {{4, 3}, {4, -18.5}, {20, -18.5}, {20, -15}}));
      connect(ShaftSpeed.y, speed.w_ref) annotation(
        Line(points = {{16.2, -28}, {41, -28}, {41, -15}, {35.2, -15}}, color = {0, 0, 127}));
      connect(propeller.Propeller_flow_diameter, rudder.Propeller_flow_diameter) annotation(
        Line(points = {{-10, 6}, {-17, 6}}, color = {0, 0, 127}));
      connect(propeller.Propeller_speed, rudder.Propeller_speed) annotation(
        Line(points = {{-10, 3}, {-17, 3}}, color = {0, 0, 127}));
      connect(world.frame_b, buoy.frame_a) annotation(
        Line(points = {{-92, 41}, {-87, 41}, {-87, 41.5}, {-82, 41.5}}));
      connect(MaxAngle.y, switch1.u1) annotation(
        Line(points = {{-66, 14}, {-60, 14}, {-60, 8}, {-56, 8}}, color = {0, 0, 127}));
      connect(shipModelTh.frame_a, shipWind.frame_a) annotation(
        Line(points = {{52, 18}, {50, 18}, {50, -30}, {52, -30}}, color = {95, 95, 95}));
      connect(switch1.y, rudder.Rudder_Order) annotation(
        Line(points = {{-39, 3}, {-35, 3}, {-35, 9}, {-32.5, 9}, {-32.5, 10}, {-31, 10}}, color = {0, 0, 127}));
      connect(propeller.Wake_Fraction, rudder.Wake_Fraction) annotation(
        Line(points = {{-10, 0}, {-17, 0}}, color = {0, 0, 127}));
      connect(Direction.y, environment.WindDirection) annotation(
        Line(points = {{-58, 65}, {-34, 65}, {-34, 51}, {-21, 51}}, color = {0, 0, 127}));
      connect(Direction.y, environment.CurrentDirection) annotation(
        Line(points = {{-58, 65}, {-34, 65}, {-34, 41}, {-21, 41}}, color = {0, 0, 127}));
      connect(WindSpeed.y, environment.WindSpeed) annotation(
        Line(points = {{-26, 55}, {-21, 55}}, color = {0, 0, 127}));
      connect(CurrentSpeed.y, environment.CurrentSpeed) annotation(
        Line(points = {{-26, 45}, {-21, 45}}, color = {0, 0, 127}));
    protected
      Modelica.Blocks.Sources.RealExpression CurrentSpeed(y = 0.5*cos(time/10)) annotation(
        Placement(transformation(origin = {-45, 45}, extent = {{-17, -5}, {17, 5}})));
      annotation(
        experiment(StartTime = 0, StopTime = 1000, Tolerance = 1e-06, Interval = 0.2),
        Documentation(info = "<html><head></head><body>This example provides a basic construction of a maneuvering model where the following items are placed:<div><br><div>- Ship model: consist on a ship model for masses, inertia and floatation plus other model for Surge, Sway and Yaw movements.</div></div><div>- Visualizer: an axis frame and a box visualizer represent the local coordinates and the ship.</div><div>- Propulsion system: a propeller and rudder models, in addition with a constant speed shaft, provides the propulsion system model</div><div>- Control: A control that checks ship course (Yaw) and change the rudder order from 20º to -20º makes the logic of a zig-zag test</div></body></html>", revisions = "<html><head></head><body><span style=\"font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]</span><span style=\"font-size: 12px;\">&nbsp;(01/12/2024): Initial release</span></body></html>"),
        Diagram(graphics = {Rectangle(origin = {73, -4}, lineColor = {0, 255, 0}, extent = {{-25, 40}, {25, -40}}), Text(origin = {85, -19}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Rectangle(origin = {4, -9}, lineColor = {255, 0, 0}, extent = {{-40, 31}, {40, -31}}), Text(origin = {85, -19}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Text(origin = {23, -35}, textColor = {255, 0, 0}, extent = {{-11, 3}, {11, -3}}, textString = "Propulsion model"), Rectangle(origin = {22, 38}, lineColor = {255, 0, 255}, extent = {{-20, 14}, {20, -14}}), Text(origin = {11, 27}, textColor = {255, 0, 255}, extent = {{-7, 3}, {7, -3}}, textString = "Visualizer"), Rectangle(origin = {-68, 1}, lineColor = {85, 0, 255}, extent = {{-30, 23}, {30, -23}}), Text(origin = {-70, -18}, textColor = {85, 0, 255}, extent = {{-8, 2}, {8, -2}}, textString = "Control")}, coordinateSystem(extent = {{-125, -150}, {125, 75}}, grid = {1, 1})),
        Icon(coordinateSystem(extent = {{-125, -75}, {125, 75}}, grid = {10, 10})));
    end Test_ZigZag_1Q;

    model Test_CrashStop_4Q
      extends Modelica.Icons.Example;
      ShipSIM.Components.Ship.ShipModelTh shipModelTh(CoG = {50.43, 0, 9}, ini_Vel = {7, 0, 0}) annotation(
        Placement(visible = true, transformation(origin = {62, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.Ship.HidrodynamicXYY hidrodynamicXYY annotation(
        Placement(visible = true, transformation(origin = {62, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedFrame ShipAxis(color_y = {0, 180, 0}, color_z = {255, 0, 0}, diameter = 0.5, length = 30) annotation(
        Placement(visible = true, transformation(origin = {27, 43}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(animation = true, height = 10, length = 100, shapeType = "modelica://ShipSIM/Resources/Data/Ship.dxf", width = 20) annotation(
        Placement(visible = true, transformation(origin = {26, 30}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(animation = false, r = {1, 0, 2}) annotation(
        Placement(visible = true, transformation(origin = {28, 6}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
      inner Modelica.Mechanics.MultiBody.World world(animateWorld = true, defaultN_to_m = 20000, defaultNm_to_m = 200000, enableAnimation = true, label2 = "z", n = {0, 0, -1}, nominalLength = 50) annotation(
        Placement(visible = true, transformation(origin = {-84, 42}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
      ShipSIM.Components.Propulsion.Rudder rudder(InitialRudderAngle = 0, wingData = NACA0015_Data) annotation(
        Placement(transformation(origin = {-25, 2}, extent = {{-8, -8}, {8, 8}})));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation Rudder_pos(animation = false, r = {-2, 0, 4.5}) annotation(
        Placement(visible = true, transformation(origin = {21, 17}, extent = {{5, 5}, {-5, -5}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Speed speed(phi(displayUnit = "rad")) annotation(
        Placement(visible = true, transformation(origin = {27, -15}, extent = {{7, -7}, {-7, 7}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression Rudder_order(y = 35) annotation(
        Placement(visible = true, transformation(origin = {-61.5, 11.5}, extent = {{-8.5, -6.5}, {8.5, 6.5}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape buoy(animation = true, color = {255, 0, 0}, height = 10, length = 10, r_shape = {300, 0, 0}, shapeType = "sphere", width = 10) annotation(
        Placement(visible = true, transformation(origin = {-62.5, 42.5}, extent = {{-5.5, -5.5}, {5.5, 5.5}}, rotation = 0)));
      inner ShipSIM.Components.Environment environment annotation(
        Placement(visible = true, transformation(origin = {-31, 49}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
      ShipSIM.Components.Ship.ShipWind shipWind annotation(
        Placement(visible = true, transformation(origin = {62, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.Propulsion.Propeller4Q propeller4Q(PropModel = ShipSIM.Types.Propeller4Q.B4_100_1) annotation(
        Placement(transformation(origin = {-3.5, 1.5}, extent = {{-9.5, -9.5}, {9.5, 9.5}})));
      Modelica.Blocks.Math.Gain Convert_to_rad(k = 2*Modelica.Constants.pi/60) annotation(
        Placement(visible = true, transformation(origin = {-16.5, -52.5}, extent = {{-5.5, -5.5}, {5.5, 5.5}}, rotation = 0)));
      Modelica.Blocks.Sources.TimeTable Propeller_timeTable(table = [0, 135; 60, -100; 100, -100; 120, -100; 150, -10; 10000, -10]) annotation(
        Placement(visible = true, transformation(origin = {-52, -53}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      parameter Records.WingProfile.NACA0015 NACA0015_Data annotation(
        Placement(transformation(origin = {-52, -13}, extent = {{-10, -10}, {10, 10}})));
    equation
      connect(hidrodynamicXYY.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{52, -6}, {46, -6}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(ShipAxis.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{32, 43}, {46, 43}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(fixedShape.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{32, 30}, {46, 30}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(fixedTranslation.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{34, 6}, {46, 6}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(Rudder_pos.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{26, 17}, {40, 17}, {40, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(Rudder_pos.frame_b, rudder.frame_a) annotation(
        Line(points = {{16, 17}, {-22, 17}, {-22, 10}, {-23, 10}}, color = {95, 95, 95}));
      connect(shipModelTh.shipData, hidrodynamicXYY.shipData) annotation(
        Line(points = {{72, 11}, {78, 11}, {78, 1}, {72, 1}}));
      connect(world.frame_b, buoy.frame_a) annotation(
        Line(points = {{-78, 42}, {-73, 42}, {-73, 42.5}, {-68, 42.5}}));
      connect(shipModelTh.frame_a, shipWind.frame_a) annotation(
        Line(points = {{52, 18}, {50, 18}, {50, -30}, {52, -30}}, color = {95, 95, 95}));
      connect(fixedTranslation.frame_b, propeller4Q.frame_a) annotation(
        Line(points = {{22, 6}, {14, 6}, {14, 5}, {6, 5}}, color = {95, 95, 95}));
      connect(propeller4Q.flange, speed.flange) annotation(
        Line(points = {{6, 1.5}, {10, 1.5}, {10, -15}, {20, -15}}));
      connect(propeller4Q.Propeller_flow_diameter, rudder.Propeller_flow_diameter) annotation(
        Line(points = {{-13, 5}, {-17, 5}}, color = {0, 0, 127}));
      connect(propeller4Q.Propeller_speed, rudder.Propeller_speed) annotation(
        Line(points = {{-13, 1.5}, {-15.5, 1.5}, {-15.5, 2}, {-17, 2}}, color = {0, 0, 127}));
      connect(Rudder_order.y, rudder.Rudder_Order) annotation(
        Line(points = {{-52, 12}, {-52, 9}, {-33, 9}}, color = {0, 0, 127}));
      connect(Convert_to_rad.y, speed.w_ref) annotation(
        Line(points = {{-10, -52}, {40, -52}, {40, -15}, {35, -15}}, color = {0, 0, 127}));
      connect(propeller4Q.Wake_Fraction, rudder.Wake_Fraction) annotation(
        Line(points = {{-13, -2}, {-16, -2}, {-16, -1}, {-17, -1}}, color = {0, 0, 127}));
      connect(Propeller_timeTable.y, Convert_to_rad.u) annotation(
        Line(points = {{-41, -53}, {-23, -53}, {-23, -52}}, color = {0, 0, 127}));
      annotation(
        experiment(StartTime = 0, StopTime = 400, Tolerance = 1e-06, Interval = 0.2),
        Documentation(info = "<html><head></head><body>This example provides a basic construction of a maneuvering model where the following items are placed:<div><br><div>- Ship model: consist on a ship model for masses, inertia and floatation plus other model for Surge, Sway and Yaw movements.</div></div><div>- Visualizer: an axis frame and a box visualizer represent the local coordinates and the ship.</div><div>- Propulsion system: a propeller and rudder models, in addition with a variable speed shaft, provides the propulsion system model</div><div>- Control: An initial order of 35º rudder to start the crash stop</div></body></html>", revisions = "<html><head></head><body><span style=\"font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]</span><span style=\"font-size: 12px;\">&nbsp;(01/12/2024): Initial release</span></body></html>"),
        Diagram(graphics = {Rectangle(origin = {73, -4}, lineColor = {0, 255, 0}, extent = {{-25, 40}, {25, -40}}), Text(origin = {85, -19}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Rectangle(origin = {4, -9}, lineColor = {255, 0, 0}, extent = {{-40, 31}, {40, -31}}), Text(origin = {85, -19}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Text(origin = {23, -35}, textColor = {255, 0, 0}, extent = {{-11, 3}, {11, -3}}, textString = "Propulsion model"), Rectangle(origin = {22, 38}, lineColor = {255, 0, 255}, extent = {{-20, 14}, {20, -14}}), Text(origin = {11, 27}, textColor = {255, 0, 255}, extent = {{-7, 3}, {7, -3}}, textString = "Visualizer")}, coordinateSystem(extent = {{-125, -75}, {125, 75}}, grid = {1, 1})),
        Icon(coordinateSystem(extent = {{-125, -75}, {125, 75}}, grid = {10, 10})));
    end Test_CrashStop_4Q;

   model Test_TurningCircle_4Q
      extends Modelica.Icons.Example;
      ShipSIM.Components.Ship.ShipModelTh shipModelTh(CoG = {50.43, 0, 9}, ini_Vel = {6.68777777, 0, 0}) annotation(
        Placement(visible = true, transformation(origin = {62, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.Ship.HidrodynamicXYY hidrodynamicXYY annotation(
        Placement(visible = true, transformation(origin = {62, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedFrame ShipAxis(color_y = {0, 180, 0}, color_z = {255, 0, 0}, diameter = 0.5, length = 30) annotation(
        Placement(visible = true, transformation(origin = {27, 43}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(animation = true, height = 10, length = 100, shapeType = "modelica://ShipSIM/Resources/Data/Ship.dxf", width = 20) annotation(
        Placement(visible = true, transformation(origin = {26, 30}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(animation = false, r = {1, 0, 2}) annotation(
        Placement(visible = true, transformation(origin = {28, 6}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
      inner Modelica.Mechanics.MultiBody.World world(animateWorld = true, defaultN_to_m = 20000, defaultNm_to_m = 200000, enableAnimation = true, label2 = "z", n = {0, 0, -1}, nominalLength = 50) annotation(
        Placement(transformation(origin = {-34, 36}, extent = {{-6, -6}, {6, 6}})));
      ShipSIM.Components.Propulsion.Rudder rudder(InitialRudderAngle = 0, wingData = NACA0015_Data) annotation(
        Placement(transformation(origin = {-15, 3}, extent = {{-8, -8}, {8, 8}})));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation Rudder_pos(animation = false, r = {-2, 0, 4.5}) annotation(
        Placement(visible = true, transformation(origin = {21, 17}, extent = {{5, 5}, {-5, -5}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Speed speed(phi(displayUnit = "rad")) annotation(
        Placement(visible = true, transformation(origin = {27, -15}, extent = {{7, -7}, {-7, 7}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression Rudder_order(y = 35) annotation(
        Placement(transformation(origin = {-34, 10}, extent = {{-5, -6}, {5, 6}})));
      inner ShipSIM.Components.Environment environment annotation(
        Placement(transformation(origin = {-12, 36}, extent = {{-6, -6}, {6, 6}})));
      ShipSIM.Components.Ship.ShipWind shipWind annotation(
        Placement(visible = true, transformation(origin = {62, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.Propulsion.Propeller4Q propeller4Q(PropModel = ShipSIM.Types.Propeller4Q.B4_100_1) annotation(
        Placement(transformation(origin = {6.5, 2.5}, extent = {{-9.5, -9.5}, {9.5, 9.5}})));
      Modelica.Blocks.Math.Gain Convert_to_rad(k = 2*Modelica.Constants.pi/60) annotation(
        Placement(transformation(origin = {14.5, -52.5}, extent = {{-5.5, -5.5}, {5.5, 5.5}})));
      parameter Records.WingProfile.NACA0015 NACA0015_Data annotation(
        Placement(transformation(origin = {-15, -20}, extent = {{-7, -7}, {7, 7}})));
  Modelica.Blocks.Sources.RealExpression Propeller_speed(y = 104.56) annotation(
        Placement(transformation(origin = {-21.5, -52.5}, extent = {{-8.5, -6.5}, {8.5, 6.5}})));
    equation
      connect(hidrodynamicXYY.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{52, -6}, {46, -6}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(ShipAxis.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{32, 43}, {46, 43}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(fixedShape.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{32, 30}, {46, 30}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(fixedTranslation.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{34, 6}, {46, 6}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(Rudder_pos.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{26, 17}, {40, 17}, {40, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(Rudder_pos.frame_b, rudder.frame_a) annotation(
        Line(points = {{16, 17}, {-13, 17}, {-13, 11}}, color = {95, 95, 95}));
      connect(shipModelTh.shipData, hidrodynamicXYY.shipData) annotation(
        Line(points = {{72, 11}, {78, 11}, {78, 1}, {72, 1}}));
      connect(shipModelTh.frame_a, shipWind.frame_a) annotation(
        Line(points = {{52, 18}, {50, 18}, {50, -30}, {52, -30}}, color = {95, 95, 95}));
      connect(fixedTranslation.frame_b, propeller4Q.frame_a) annotation(
        Line(points = {{22, 6}, {16, 6}}, color = {95, 95, 95}));
      connect(propeller4Q.flange, speed.flange) annotation(
        Line(points = {{16, 2.5}, {16, -15}, {20, -15}}));
      connect(propeller4Q.Propeller_flow_diameter, rudder.Propeller_flow_diameter) annotation(
        Line(points = {{-3.095, 6.3}, {-7.095, 6.3}}, color = {0, 0, 127}));
      connect(propeller4Q.Propeller_speed, rudder.Propeller_speed) annotation(
        Line(points = {{-3.095, 2.5}, {-5.595, 2.5}, {-5.595, 3}, {-7.095, 3}}, color = {0, 0, 127}));
      connect(Rudder_order.y, rudder.Rudder_Order) annotation(
        Line(points = {{-28.5, 10}, {-23, 10}}, color = {0, 0, 127}));
      connect(Convert_to_rad.y, speed.w_ref) annotation(
        Line(points = {{21, -52.5}, {40, -52.5}, {40, -15}, {35, -15}}, color = {0, 0, 127}));
      connect(propeller4Q.Wake_Fraction, rudder.Wake_Fraction) annotation(
        Line(points = {{-3, -1.3}, {-5, -1.3}, {-5, -0.3}, {-7, -0.3}}, color = {0, 0, 127}));
      connect(Propeller_speed.y, Convert_to_rad.u) annotation(
        Line(points = {{-12, -52.5}, {8, -52.5}}, color = {0, 0, 127}));
      annotation(
        experiment(StartTime = 0, StopTime = 800, Tolerance = 1e-06, Interval = 0.2),
        Documentation(info = "<html><head></head><body>This example provides a basic construction of a maneuvering model where the following items are placed:<div><br><div>- Ship model: consist on a ship model for masses, inertia and floatation plus other model for Surge, Sway and Yaw movements.</div></div><div>- Visualizer: an axis frame and a box visualizer represent the local coordinates and the ship.</div><div>- Propulsion system: a propeller and rudder models, with a constant r.p.m. order.</div><div>- Control: An initial order of 35º rudder to start the turning circle.</div><div><br></div><div>NOTE: This example was used in the paper \"ShipSIM: A Modelica Library for Ship Maneuverability Modeling and Simulation\" presented at&nbsp;16th International Modelica Conference 2025.</div></body></html>", revisions = "<html><head></head><body><span style=\"font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]</span><span style=\"font-size: 12px;\">&nbsp;(06/04/2025): Initial release</span></body></html>"),
        Diagram(graphics = {Rectangle(origin = {66, -4}, lineColor = {180, 180, 180}, extent = {{-18, 40}, {18, -40}}), Rectangle(origin = {1, -9}, lineColor = {255, 0, 0}, extent = {{-43, 31}, {43, -31}}), Text(origin = {58, 33}, textColor = {180, 180, 180}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Text(origin = {23, -35}, textColor = {255, 0, 0}, extent = {{-11, 3}, {11, -3}}, textString = "Propulsion model"), Rectangle(origin = {22, 38}, lineColor = {255, 0, 255}, extent = {{-20, 14}, {20, -14}}), Text(origin = {11, 27}, textColor = {255, 0, 255}, extent = {{-7, 3}, {7, -3}}, textString = "Visualizer")}, coordinateSystem(extent = {{-125, -75}, {125, 75}}, grid = {1, 1})),
        Icon(coordinateSystem(extent = {{-125, -75}, {125, 75}}, grid = {10, 10})));
    end Test_TurningCircle_4Q;
  
    model Test_CrashAvoidance
      extends Modelica.Icons.Example;
      ShipSIM.Components.Ship.ShipModelTh shipModelTh(CoG = {50.43, 0, 9}, ini_Vel = {7, 0, 0}) annotation(
        Placement(visible = true, transformation(origin = {73, 71}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.Ship.HidrodynamicXYY hidrodynamicXYY annotation(
        Placement(visible = true, transformation(origin = {73, 47}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedFrame ShipAxis(color_y = {0, 180, 0}, color_z = {255, 0, 0}, diameter = 0.5, length = 30) annotation(
        Placement(visible = true, transformation(origin = {19, 84}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(animation = true, height = 10, length = 100, shapeType = "modelica://ShipSIM/Resources/Data/Ship.dxf", width = 20) annotation(
        Placement(visible = true, transformation(origin = {18, 71}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(animation = false, r = {1, 0, 2}) annotation(
        Placement(visible = true, transformation(origin = {-19, 6}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
      inner Modelica.Mechanics.MultiBody.World world(animateWorld = true, defaultN_to_m = 20000, defaultNm_to_m = 200000, enableAnimation = true, label2 = "z", n = {0, 0, -1}, nominalLength = 50) annotation(
        Placement(visible = true, transformation(origin = {-92, 83}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
      ShipSIM.Components.Propulsion.Rudder rudder(InitialRudderAngle = 0, wingData = wingData) annotation(
        Placement(transformation(origin = {-72, 2}, extent = {{-8, -8}, {8, 8}})));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation Rudder_pos(animation = false, r = {-2, 0, 4.5}) annotation(
        Placement(visible = true, transformation(origin = {-26, 17}, extent = {{5, 5}, {-5, -5}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Speed speed(phi(displayUnit = "rad")) annotation(
        Placement(visible = true, transformation(origin = {-22, -6}, extent = {{7, -7}, {-7, 7}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression Rudder_order(y = 35) annotation(
        Placement(visible = true, transformation(origin = {-108.5, 11.5}, extent = {{-8.5, -6.5}, {8.5, 6.5}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape buoy(animation = true, color = {255, 0, 0}, height = 20, length = 20, r_shape = {350, 0, 0}, shapeType = "sphere", width = 20) annotation(
        Placement(visible = true, transformation(origin = {-64.5, 82.5}, extent = {{-5.5, -5.5}, {5.5, 5.5}}, rotation = 0)));
      inner ShipSIM.Components.Environment environment annotation(
        Placement(visible = true, transformation(origin = {-22, 88}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
      ShipSIM.Components.Ship.ShipWind shipWind annotation(
        Placement(visible = true, transformation(origin = {73, 23}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.Propulsion.Propeller4Q propeller4Q(Diameter = 2.5, PropModel = ShipSIM.Types.Propeller4Q.B4_100_1, h_prop = 2) annotation(
        Placement(visible = true, transformation(origin = {-51, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Math.Gain Convert_to_rad(k = 2*Modelica.Constants.pi/60) annotation(
        Placement(visible = true, transformation(origin = {3.5, -6.5}, extent = {{5.5, -5.5}, {-5.5, 5.5}}, rotation = 0)));
      Modelica.Blocks.Sources.TimeTable Propeller_timeTable(table = [0, 155; 60, 0]) annotation(
        Placement(visible = true, transformation(origin = {49, -5}, extent = {{8, -8}, {-8, 8}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(animation = false, r = {5, -5, 2}) annotation(
        Placement(visible = true, transformation(origin = {-33, 49}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
      Modelica.Blocks.Math.Gain gain(k = 2*Modelica.Constants.pi/60) annotation(
        Placement(visible = true, transformation(origin = {-10.5, 36.5}, extent = {{5.5, -5.5}, {-5.5, 5.5}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Speed speed1(phi(displayUnit = "rad")) annotation(
        Placement(visible = true, transformation(origin = {-36, 37}, extent = {{7, -7}, {-7, 7}}, rotation = 0)));
      ShipSIM.Components.Propulsion.Propeller4Q propeller4Q1(Diameter = 2.5, PropModel = ShipSIM.Types.Propeller4Q.B4_100_1, h_prop = 2) annotation(
        Placement(visible = true, transformation(origin = {-65, 45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Speed speed2(phi(displayUnit = "rad")) annotation(
        Placement(visible = true, transformation(origin = {-35, -70}, extent = {{7, -7}, {-7, 7}}, rotation = 0)));
      Modelica.Blocks.Math.Gain gain1(k = 2*Modelica.Constants.pi/60) annotation(
        Placement(visible = true, transformation(origin = {-9.5, -70.5}, extent = {{5.5, -5.5}, {-5.5, 5.5}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(animation = false, r = {5, 5, 2}) annotation(
        Placement(visible = true, transformation(origin = {-32, -58}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
      ShipSIM.Components.Propulsion.Propeller4Q propeller4Q2(Diameter = 2.5, PropModel = ShipSIM.Types.Propeller4Q.B4_100_1, h_prop = 2) annotation(
        Placement(visible = true, transformation(origin = {-64, -62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.TimeTable Port_timeTable(table = [0, 155; 60, 0; 100, -100]) annotation(
        Placement(visible = true, transformation(origin = {36, 37}, extent = {{8, -8}, {-8, 8}}, rotation = 0)));
      Modelica.Blocks.Sources.TimeTable Stbd_timeTable(table = [0, 155; 60, 0; 100, -100]) annotation(
        Placement(visible = true, transformation(origin = {40, -70}, extent = {{8, -8}, {-8, 8}}, rotation = 0)));
      Modelica.Blocks.Nonlinear.SlewRateLimiter slewRateLimiter(Rising = 2.25) annotation(
        Placement(visible = true, transformation(origin = {10, 37}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
      Modelica.Blocks.Nonlinear.SlewRateLimiter slewRateLimiter1(Rising = 2.25) annotation(
        Placement(visible = true, transformation(origin = {25, -7}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
      Modelica.Blocks.Nonlinear.SlewRateLimiter slewRateLimiter2(Rising = 2.25) annotation(
        Placement(visible = true, transformation(origin = {11, -70}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
      parameter ShipSIM.Records.WingProfile.NACA0015 wingData annotation(
        Placement(visible = true, transformation(origin = {-102, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(hidrodynamicXYY.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{63, 47}, {57, 47}, {57, 71}, {63, 71}}, color = {95, 95, 95}));
      connect(ShipAxis.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{24, 84}, {38, 84}, {38, 71}, {63, 71}}, color = {95, 95, 95}));
      connect(fixedShape.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{24, 71}, {63, 71}}, color = {95, 95, 95}));
      connect(fixedTranslation.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{-13, 6}, {38, 6}, {38, 71}, {63, 71}}, color = {95, 95, 95}));
      connect(Rudder_pos.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{-21, 17}, {32, 17}, {32, 71}, {63, 71}}, color = {95, 95, 95}));
      connect(Rudder_pos.frame_b, rudder.frame_a) annotation(
        Line(points = {{-31, 17}, {-70, 17}, {-70, 10}}, color = {95, 95, 95}));
      connect(shipModelTh.shipData, hidrodynamicXYY.shipData) annotation(
        Line(points = {{83.4, 64.4}, {89.4, 64.4}, {89.4, 54.4}, {83.4, 54.4}}));
      connect(world.frame_b, buoy.frame_a) annotation(
        Line(points = {{-86, 83}, {-81, 83}, {-81, 82.5}, {-70, 82.5}}));
      connect(shipModelTh.frame_a, shipWind.frame_a) annotation(
        Line(points = {{63, 71}, {61, 71}, {61, 23}, {63, 23}}, color = {95, 95, 95}));
      connect(fixedTranslation.frame_b, propeller4Q.frame_a) annotation(
        Line(points = {{-25, 6}, {-41, 6}}, color = {95, 95, 95}));
      connect(propeller4Q.flange, speed.flange) annotation(
        Line(points = {{-41, 2}, {-37, 2}, {-37, -6}, {-29, -6}}));
      connect(propeller4Q.Propeller_flow_diameter, rudder.Propeller_flow_diameter) annotation(
        Line(points = {{-61.1, 6}, {-62.55, 6}, {-62.55, 5}, {-64, 5}}, color = {0, 0, 127}));
      connect(propeller4Q.Propeller_speed, rudder.Propeller_speed) annotation(
        Line(points = {{-61.1, 2}, {-64, 2}}, color = {0, 0, 127}));
      connect(Rudder_order.y, rudder.Rudder_Order) annotation(
        Line(points = {{-99.15, 11.5}, {-99.15, 9}, {-80, 9}}, color = {0, 0, 127}));
      connect(Convert_to_rad.y, speed.w_ref) annotation(
        Line(points = {{-2.55, -6.5}, {-7, -6.5}, {-7, -6}, {-14, -6}}, color = {0, 0, 127}));
      connect(shipModelTh.frame_a, fixedTranslation1.frame_a) annotation(
        Line(points = {{63, 71}, {32, 71}, {32, 49}, {-27, 49}}, color = {95, 95, 95}));
      connect(fixedTranslation1.frame_b, propeller4Q1.frame_a) annotation(
        Line(points = {{-39, 49}, {-55, 49}}));
      connect(speed1.flange, propeller4Q1.flange) annotation(
        Line(points = {{-43, 37}, {-55, 37}, {-55, 45}}));
      connect(gain.y, speed1.w_ref) annotation(
        Line(points = {{-17, 37}, {-28, 37}}, color = {0, 0, 127}));
      connect(gain1.y, speed2.w_ref) annotation(
        Line(points = {{-16, -70}, {-27, -70}}, color = {0, 0, 127}));
      connect(fixedTranslation2.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{-26, -58}, {51, -58}, {51, 71}, {63, 71}}, color = {95, 95, 95}));
      connect(fixedTranslation2.frame_b, propeller4Q2.frame_a) annotation(
        Line(points = {{-38, -58}, {-54, -58}}, color = {95, 95, 95}));
      connect(speed2.flange, propeller4Q2.flange) annotation(
        Line(points = {{-42, -70}, {-54, -70}, {-54, -62}}));
      connect(Port_timeTable.y, slewRateLimiter.u) annotation(
        Line(points = {{27, 37}, {16, 37}}, color = {0, 0, 127}));
      connect(slewRateLimiter.y, gain.u) annotation(
        Line(points = {{5, 37}, {-4, 37}}, color = {0, 0, 127}));
      connect(Propeller_timeTable.y, slewRateLimiter1.u) annotation(
        Line(points = {{40, -5}, {31, -5}, {31, -7}}, color = {0, 0, 127}));
      connect(slewRateLimiter1.y, Convert_to_rad.u) annotation(
        Line(points = {{20, -7}, {10, -7}, {10, -6}}, color = {0, 0, 127}));
      connect(Stbd_timeTable.y, slewRateLimiter2.u) annotation(
        Line(points = {{31, -70}, {17, -70}}, color = {0, 0, 127}));
      connect(slewRateLimiter2.y, gain1.u) annotation(
        Line(points = {{5.5, -70}, {-3, -70}}, color = {0, 0, 127}));
      connect(propeller4Q.Wake_Fraction, rudder.Wake_Fraction) annotation(
        Line(points = {{-61, -2}, {-64, -2}, {-64, -1}}, color = {0, 0, 127}));
      annotation(
        experiment(StartTime = 0, StopTime = 200, Tolerance = 1e-06, Interval = 0.2),
        Documentation(info = "<html><head></head><body>This example provides a crash avoidance for three propeller ship<br></body></html>", revisions = "<html><head></head><body><span style=\"font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]</span><span style=\"font-size: 12px;\">&nbsp;(01/12/2024): Initial release</span></body></html>"),
        Diagram(graphics = {Rectangle(origin = {84, 49}, lineColor = {0, 255, 0}, extent = {{-25, 40}, {25, -40}}), Text(origin = {96, 34}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Rectangle(origin = {-11, -15}, lineColor = {255, 0, 0}, extent = {{-70, 75}, {70, -75}}), Text(origin = {96, 34}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Text(origin = {-37.5, -36}, textColor = {255, 0, 0}, extent = {{-25, 2}, {25, -2}}, textString = "Propulsion model"), Rectangle(origin = {14, 79}, lineColor = {255, 0, 255}, extent = {{-20, 14}, {20, -14}}), Text(origin = {3, 68}, textColor = {255, 0, 255}, extent = {{-7, 3}, {7, -3}}, textString = "Visualizer")}, coordinateSystem(extent = {{-125, -100}, {125, 100}}, grid = {1, 1})),
        Icon(coordinateSystem(extent = {{-125, -100}, {125, 100}}, grid = {1, 1})));
    end Test_CrashAvoidance;

    model Test_Autopilot_4Q
      extends Modelica.Icons.Example;
      ShipSIM.Components.Ship.ShipModelTh shipModelTh(CoG = {50.43, 0, 9}, ini_Vel = {4, 0, 0}) annotation(
        Placement(visible = true, transformation(origin = {62, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.Ship.HidrodynamicXYY hidrodynamicXYY annotation(
        Placement(visible = true, transformation(origin = {62, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedFrame ShipAxis(color_y = {0, 180, 0}, color_z = {255, 0, 0}, diameter = 0.5, length = 30) annotation(
        Placement(transformation(origin = {28, 43}, extent = {{5, -5}, {-5, 5}})));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(animation = true, height = 10, length = 100, shapeType = "modelica://ShipSIM/Resources/Data/Ship.dxf", width = 20) annotation(
        Placement(visible = true, transformation(origin = {26, 30}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(animation = false, r = {1, 0, 2}) annotation(
        Placement(visible = true, transformation(origin = {28, 6}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
      inner Modelica.Mechanics.MultiBody.World world(animateWorld = true, defaultN_to_m = 20000, defaultNm_to_m = 200000, enableAnimation = true, label2 = "z", n = {0, 0, -1}, nominalLength = 50) annotation(
        Placement(transformation(origin = {-89, 41}, extent = {{-6, -6}, {6, 6}})));
      ShipSIM.Components.Propulsion.Rudder rudder(InitialRudderAngle = 0, wingData = NACA0015_Data) annotation(
        Placement(transformation(origin = {-25, 2}, extent = {{-8, -8}, {8, 8}})));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation Rudder_pos(animation = false, r = {-2, 0, 4.5}) annotation(
        Placement(visible = true, transformation(origin = {21, 17}, extent = {{5, 5}, {-5, -5}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Speed speed(phi(displayUnit = "rad")) annotation(
        Placement(visible = true, transformation(origin = {27, -15}, extent = {{7, -7}, {-7, 7}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape buoy(animation = true, color = {255, 0, 0}, height = 50, length = 50, r_shape = {1000, 0, 0}, shapeType = "sphere", width = 50) annotation(
        Placement(visible = true, transformation(origin = {-62.5, 42.5}, extent = {{-5.5, -5.5}, {5.5, 5.5}}, rotation = 0)));
      inner ShipSIM.Components.Environment environment(CurrentDirection = 0, CurrentSpeed = 0.2) annotation(
        Placement(transformation(origin = {-37, 49}, extent = {{-6, -6}, {6, 6}})));
      ShipSIM.Components.Ship.ShipWind shipWind annotation(
        Placement(visible = true, transformation(origin = {62, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.Propulsion.Propeller4Q propeller4Q(PropModel = ShipSIM.Types.Propeller4Q.B4_100_1) annotation(
        Placement(transformation(origin = {-3.5, 1.5}, extent = {{-9.5, -9.5}, {9.5, 9.5}})));
      Modelica.Blocks.Math.Gain Convert_to_rad(k = 2*Modelica.Constants.pi/60) annotation(
        Placement(visible = true, transformation(origin = {-16.5, -52.5}, extent = {{-5.5, -5.5}, {5.5, 5.5}}, rotation = 0)));
      parameter Records.WingProfile.NACA0015 NACA0015_Data annotation(
        Placement(transformation(origin = {-24.5, -16.5}, extent = {{-4.5, -4.5}, {4.5, 4.5}})));
      Components.AutoPilot.SimpleAutoPilot simpleAutoPilot annotation(
        Placement(transformation(origin = {-68, -17}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape buoy1(animation = true, color = {255, 0, 0}, height = 50, length = 50, r_shape = {5000, 2000, 0}, shapeType = "sphere", width = 50) annotation(
        Placement(transformation(origin = {-62.5, 28.5}, extent = {{-5.5, -5.5}, {5.5, 5.5}})));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape buoy11(animation = true, color = {255, 0, 0}, height = 50, length = 50, r_shape = {10000, 1000, 0}, shapeType = "sphere", width = 50) annotation(
        Placement(transformation(origin = {-65.5, 14.5}, extent = {{-5.5, -5.5}, {5.5, 5.5}})));
      Modelica.Blocks.Continuous.FirstOrder firstOrder(T = 20) annotation(
        Placement(transformation(origin = {-36.5, -52.5}, extent = {{-7.5, -7.5}, {7.5, 7.5}})));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape buoy111(animation = true, color = {255, 0, 0}, height = 50, length = 50, r_shape = {20000, 1000, 0}, shapeType = "sphere", width = 50) annotation(
        Placement(transformation(origin = {-81.5, 9.5}, extent = {{-5.5, -5.5}, {5.5, 5.5}})));
    equation
      connect(hidrodynamicXYY.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{52, -6}, {46, -6}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(ShipAxis.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{33, 43}, {46, 43}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(fixedShape.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{32, 30}, {46, 30}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(fixedTranslation.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{34, 6}, {46, 6}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(Rudder_pos.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{26, 17}, {40, 17}, {40, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(Rudder_pos.frame_b, rudder.frame_a) annotation(
        Line(points = {{16, 17}, {-22, 17}, {-22, 10}, {-23, 10}}, color = {95, 95, 95}));
      connect(shipModelTh.shipData, hidrodynamicXYY.shipData) annotation(
        Line(points = {{72, 11}, {78, 11}, {78, 1}, {72, 1}}));
      connect(world.frame_b, buoy.frame_a) annotation(
        Line(points = {{-83, 41}, {-73, 41}, {-73, 42.5}, {-68, 42.5}}));
      connect(shipModelTh.frame_a, shipWind.frame_a) annotation(
        Line(points = {{52, 18}, {50, 18}, {50, -30}, {52, -30}}, color = {95, 95, 95}));
      connect(fixedTranslation.frame_b, propeller4Q.frame_a) annotation(
        Line(points = {{22, 6}, {14, 6}, {14, 5}, {6, 5}}, color = {95, 95, 95}));
      connect(propeller4Q.flange, speed.flange) annotation(
        Line(points = {{6, 1.5}, {10, 1.5}, {10, -15}, {20, -15}}));
      connect(propeller4Q.Propeller_flow_diameter, rudder.Propeller_flow_diameter) annotation(
        Line(points = {{-13, 5}, {-17, 5}}, color = {0, 0, 127}));
      connect(propeller4Q.Propeller_speed, rudder.Propeller_speed) annotation(
        Line(points = {{-13, 1.5}, {-15.5, 1.5}, {-15.5, 2}, {-17, 2}}, color = {0, 0, 127}));
      connect(Convert_to_rad.y, speed.w_ref) annotation(
        Line(points = {{-10, -52}, {40, -52}, {40, -15}, {35, -15}}, color = {0, 0, 127}));
      connect(propeller4Q.Wake_Fraction, rudder.Wake_Fraction) annotation(
        Line(points = {{-13, -2}, {-16, -2}, {-16, -1}, {-17, -1}}, color = {0, 0, 127}));
      connect(shipModelTh.shipData, simpleAutoPilot.shipDataInput) annotation(
        Line(points = {{72, 11}, {88, 11}, {88, -67}, {-97, -67}, {-97, -17}, {-78, -17}}));
      connect(simpleAutoPilot.Rudder, rudder.Rudder_Order) annotation(
        Line(points = {{-58, -11}, {-58, 9}, {-33, 9}}, color = {0, 0, 127}));
      connect(world.frame_b, buoy1.frame_a) annotation(
        Line(points = {{-83, 41}, {-75, 41}, {-75, 29}, {-68, 29}}, color = {95, 95, 95}));
      connect(world.frame_b, buoy11.frame_a) annotation(
        Line(points = {{-83, 41}, {-74, 41}, {-74, 16}, {-71, 16}, {-71, 15}}, color = {95, 95, 95}));
      connect(simpleAutoPilot.ShaftSpeed, firstOrder.u) annotation(
        Line(points = {{-58, -23}, {-58, -52}, {-45, -52}}, color = {0, 0, 127}));
      connect(firstOrder.y, Convert_to_rad.u) annotation(
        Line(points = {{-28, -52}, {-23, -52}}, color = {0, 0, 127}));
      connect(buoy111.frame_a, world.frame_b) annotation(
        Line(points = {{-87, 10}, {-93, 10}, {-93, 26}, {-79, 26}, {-79, 41}, {-83, 41}}, color = {95, 95, 95}));
      annotation(
        experiment(StartTime = 0, StopTime = 4000, Tolerance = 1e-06, Interval = 0.2),
        Documentation(info = "<html><head></head><body>This example provides a basic construction of a maneuvering model where the following items are placed:<div><br><div>- Ship model: consist on a ship model for masses, inertia and floatation plus other model for Surge, Sway and Yaw movements.</div></div><div>- Visualizer: an axis frame and a box visualizer represent the local coordinates and the ship.</div><div>- Propulsion system: a propeller and rudder models, in addition with a variable speed shaft, provides the propulsion system model</div><div>- Control: An autopilot was included with a list of waypoints where position and speed are defined.</div></body></html>", revisions = "<html><head></head><body><span style=\"font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]</span><span style=\"font-size: 12px;\">&nbsp;(01/12/2024): Initial release</span></body></html>"),
        Diagram(graphics = {Rectangle(origin = {73, -4}, lineColor = {0, 255, 0}, extent = {{-25, 40}, {25, -40}}), Text(origin = {85, -19}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Rectangle(origin = {4, -9}, lineColor = {255, 0, 0}, extent = {{-40, 31}, {40, -31}}), Text(origin = {85, -19}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Text(origin = {23, -35}, textColor = {255, 0, 0}, extent = {{-11, 3}, {11, -3}}, textString = "Propulsion model"), Rectangle(origin = {22, 38}, lineColor = {255, 0, 255}, extent = {{-20, 14}, {20, -14}}), Text(origin = {11, 27}, textColor = {255, 0, 255}, extent = {{-7, 3}, {7, -3}}, textString = "Visualizer")}, coordinateSystem(extent = {{-125, -75}, {125, 75}}, grid = {1, 1})),
        Icon(coordinateSystem(extent = {{-125, -75}, {125, 75}}, grid = {10, 10})));
    end Test_Autopilot_4Q;
  end Maneuvering;

  package Sailing
    extends Modelica.Icons.ExamplesPackage;

    model FourWingSails
      extends Modelica.Icons.Example;
      ShipSIM.Components.Ship.ShipModelTh shipModelTh(CoG = {50.43, 0, 9}, ini_Vel = {7, 0, 0}) annotation(
        Placement(transformation(origin = {40, -6}, extent = {{-10, -10}, {10, 10}})));
      ShipSIM.Components.Ship.HidrodynamicXYY hidrodynamicXYY annotation(
        Placement(transformation(origin = {40, -34}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Mechanics.MultiBody.Visualizers.FixedFrame ShipAxis(color_y = {0, 180, 0}, color_z = {255, 0, 0}, diameter = 0.5, length = 30) annotation(
        Placement(transformation(origin = {-49, 21}, extent = {{5, -5}, {-5, 5}})));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(animation = true, height = 10, length = 100, shapeType = "modelica://ShipSIM/Resources/Data/Ship.dxf", width = 20) annotation(
        Placement(transformation(origin = {-50, 1}, extent = {{6, -6}, {-6, 6}})));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(animation = false, r = {1, 0, 2}) annotation(
        Placement(transformation(origin = {4, -26}, extent = {{6, -6}, {-6, 6}})));
      inner Modelica.Mechanics.MultiBody.World world(animateWorld = true, defaultN_to_m = 20000, defaultNm_to_m = 200000, enableAnimation = true, label2 = "z", n = {0, 0, -1}, nominalLength = 50) annotation(
        Placement(transformation(origin = {85, 17}, extent = {{-5, -5}, {5, 5}})));
      ShipSIM.Components.Propulsion.Rudder rudder(InitialRudderAngle = 0, wingData = wingDataRudder) annotation(
        Placement(transformation(origin = {-49, -30}, extent = {{-8, -8}, {8, 8}})));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation Rudder_pos(animation = false, r = {-2, 0, 4.5}) annotation(
        Placement(transformation(origin = {-3, -15}, extent = {{5, 5}, {-5, -5}})));
      Modelica.Mechanics.Rotational.Sources.Speed speed(phi(displayUnit = "rad")) annotation(
        Placement(transformation(origin = {3, -47}, extent = {{7, -7}, {-7, 7}})));
      Modelica.Blocks.Sources.RealExpression Rudder_order(y = -0.05) annotation(
        Placement(transformation(origin = {-93.5, -23.5}, extent = {{-8.5, -6.5}, {8.5, 6.5}})));
      inner ShipSIM.Components.Environment environment(WindDirection = 0, WindSpeed = 15) annotation(
        Placement(transformation(origin = {-52.5, 47.5}, extent = {{-8.5, -8.5}, {8.5, 8.5}})));
      ShipSIM.Components.Ship.ShipWind shipWind annotation(
        Placement(transformation(origin = {40, -59}, extent = {{-10, -10}, {10, 10}})));
      ShipSIM.Components.Propulsion.Propeller4Q propeller4Q(PropModel = ShipSIM.Types.Propeller4Q.B4_100_1) annotation(
        Placement(transformation(origin = {-28, -30}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Blocks.Sources.RealExpression ShaftSpeed(y = 100*(2*3.141592/60)) annotation(
        Placement(transformation(origin = {-35, -61}, extent = {{-22, -8}, {22, 8}})));
      parameter ShipSIM.Records.WingProfile.NACA0015 wingData annotation(
        Placement(transformation(origin = {-12, 5}, extent = {{-5, -5}, {5, 5}})));
      ShipSIM.Components.AlternativePropulsion.WingSail wingSail2(InitialSailAngle = 40, wingData = wingData) annotation(
        Placement(transformation(origin = {20, 50}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation SailPos3(animation = false, r = {60, 0, 18}) annotation(
        Placement(transformation(origin = {38, 23}, extent = {{-6, -6}, {6, 6}})));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation SailPos4(animation = false, r = {80, 0, 18}) annotation(
        Placement(transformation(origin = {65, 23}, extent = {{-6, -6}, {6, 6}})));
      ShipSIM.Components.AlternativePropulsion.WingSail wingSail1(InitialSailAngle = 40, wingData = wingData) annotation(
        Placement(transformation(origin = {-10, 50}, extent = {{-10, -10}, {10, 10}})));
      ShipSIM.Components.AlternativePropulsion.WingSail wingSail4(InitialSailAngle = 40, wingData = wingData) annotation(
        Placement(transformation(origin = {77, 50}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation SailPos2(animation = false, r = {40, 0, 18}) annotation(
        Placement(transformation(origin = {8, 23}, extent = {{-6, -6}, {6, 6}})));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation SailPos1(animation = false, r = {20, 0, 18}) annotation(
        Placement(transformation(origin = {-20, 23}, extent = {{-6, -6}, {6, 6}})));
      Modelica.Blocks.Sources.RealExpression realExpression(y = 40) annotation(
        Placement(transformation(origin = {-49, 65}, extent = {{-5, -6}, {5, 6}})));
      ShipSIM.Components.AlternativePropulsion.WingSail wingSail3(InitialSailAngle = 40, wingData = wingData) annotation(
        Placement(transformation(origin = {50, 50}, extent = {{-10, -10}, {10, 10}})));
      ShipSIM.Components.Ship.HidrodynamicZRP hidrodynamicZRP(AnimationForces = false, P_d = 1000000000000, R_d = 1000000000, Z_d = 1000000000) annotation(
        Placement(transformation(origin = {74, -20}, extent = {{-10, -10}, {10, 10}})));
      parameter Records.WingProfile.NACA0015 wingDataRudder annotation(
        Placement(transformation(origin = {9, 5}, extent = {{-5, -5}, {5, 5}})));
    equation
      connect(hidrodynamicXYY.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{30, -34}, {28, -34}, {28, -6}, {30, -6}}, color = {95, 95, 95}));
      connect(ShipAxis.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{-44, 21}, {-30, 21}, {-30, -6}, {30, -6}}, color = {95, 95, 95}));
      connect(fixedShape.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{-44, 1}, {-30, 1}, {-30, -6}, {30, -6}}, color = {95, 95, 95}));
      connect(fixedTranslation.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{10, -26}, {10, -6}, {30, -6}}, color = {95, 95, 95}));
      connect(Rudder_pos.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{2, -15}, {2, -6}, {30, -6}}, color = {95, 95, 95}));
      connect(Rudder_pos.frame_b, rudder.frame_a) annotation(
        Line(points = {{-8, -15}, {-46, -15}, {-46, -22}, {-47, -22}}, color = {95, 95, 95}));
      connect(shipModelTh.shipData, hidrodynamicXYY.shipData) annotation(
        Line(points = {{50.4, -12.6}, {56.4, -12.6}, {56.4, -27}, {50, -27}}));
      connect(shipModelTh.frame_a, shipWind.frame_a) annotation(
        Line(points = {{30, -6}, {28, -6}, {28, -59}, {30, -59}}, color = {95, 95, 95}));
      connect(fixedTranslation.frame_b, propeller4Q.frame_a) annotation(
        Line(points = {{-2, -26}, {-18, -26}}, color = {95, 95, 95}));
      connect(propeller4Q.flange, speed.flange) annotation(
        Line(points = {{-18, -30}, {-14, -30}, {-14, -47}, {-4, -47}}));
      connect(propeller4Q.Propeller_flow_diameter, rudder.Propeller_flow_diameter) annotation(
        Line(points = {{-38.1, -26}, {-39.55, -26}, {-39.55, -27}, {-41, -27}}, color = {0, 0, 127}));
      connect(propeller4Q.Propeller_speed, rudder.Propeller_speed) annotation(
        Line(points = {{-38.1, -30}, {-41, -30}}, color = {0, 0, 127}));
      connect(Rudder_order.y, rudder.Rudder_Order) annotation(
        Line(points = {{-84.15, -23.5}, {-84.15, -23}, {-57.15, -23}}, color = {0, 0, 127}));
      connect(ShaftSpeed.y, speed.w_ref) annotation(
        Line(points = {{-10.8, -61}, {17.2, -61}, {17.2, -47}, {11.2, -47}}, color = {0, 0, 127}));
      connect(realExpression.y, wingSail4.Sail_Order) annotation(
        Line(points = {{-43.5, 65}, {63.5, 65}, {63.5, 44}, {67.5, 44}}, color = {0, 0, 127}));
      connect(realExpression.y, wingSail2.Sail_Order) annotation(
        Line(points = {{-43.5, 65}, {4.5, 65}, {4.5, 44}, {10.5, 44}}, color = {0, 0, 127}));
      connect(realExpression.y, wingSail3.Sail_Order) annotation(
        Line(points = {{-43.5, 65}, {33.5, 65}, {33.5, 44}, {40.5, 44}}, color = {0, 0, 127}));
      connect(realExpression.y, wingSail1.Sail_Order) annotation(
        Line(points = {{-43.5, 65}, {-38.5, 65}, {-38.5, 44}, {-19.5, 44}}, color = {0, 0, 127}));
      connect(wingSail1.frame_a, SailPos1.frame_b) annotation(
        Line(points = {{-10, 40}, {-10, 23}, {-14, 23}}, color = {95, 95, 95}));
      connect(wingSail2.frame_a, SailPos2.frame_b) annotation(
        Line(points = {{20, 40}, {20, 23}, {14, 23}}));
      connect(wingSail3.frame_a, SailPos3.frame_b) annotation(
        Line(points = {{50, 40}, {50, 23}, {44, 23}}, color = {95, 95, 95}));
      connect(wingSail4.frame_a, SailPos4.frame_b) annotation(
        Line(points = {{77, 40}, {77, 23}, {71, 23}}, color = {95, 95, 95}));
      connect(shipModelTh.frame_a, SailPos1.frame_a) annotation(
        Line(points = {{30, -6}, {-30, -6}, {-30, 23}, {-26, 23}}, color = {95, 95, 95}));
      connect(shipModelTh.frame_a, SailPos2.frame_a) annotation(
        Line(points = {{30, -6}, {-30, -6}, {-30, 18}, {-3, 18}, {-3, 23}, {2, 23}}, color = {95, 95, 95}));
      connect(shipModelTh.frame_a, SailPos3.frame_a) annotation(
        Line(points = {{30, -6}, {-30, -6}, {-30, 16}, {26, 16}, {26, 23}, {32, 23}}, color = {95, 95, 95}));
      connect(shipModelTh.frame_a, SailPos4.frame_a) annotation(
        Line(points = {{30, -6}, {-30, -6}, {-30, 14}, {56, 14}, {56, 23}, {59, 23}}, color = {95, 95, 95}));
      connect(shipModelTh.frame_a, hidrodynamicZRP.frame_a) annotation(
        Line(points = {{30, -6}, {28, -6}, {28, -18}, {59, -18}, {59, -20}, {64, -20}}, color = {95, 95, 95}));
      connect(shipModelTh.shipData, hidrodynamicZRP.shipData) annotation(
        Line(points = {{50.4, -12.6}, {62.4, -12.6}, {62.4, -5.6}, {89.4, -5.6}, {89.4, -12.6}, {84.4, -12.6}}));
      connect(propeller4Q.Wake_Fraction, rudder.Wake_Fraction) annotation(
        Line(points = {{-38, -34}, {-41, -34}, {-41, -33}}, color = {0, 0, 127}));
      annotation(
        experiment(StartTime = 0, StopTime = 1000, Tolerance = 1e-06, Interval = 0.2),
        Documentation(info = "<html><head></head><body>This example provides a basic construction of a maneuvering model where the following items are placed:<div><br><div>- Ship model: consist on a ship model for masses, inertia and floatation plus other model for Surge, Sway and Yaw movements.</div></div><div>- Visualizer: an axis frame and a box visualizer represent the local coordinates and the ship.</div><div>- Propulsion system: a propeller and rudder models, in addition with a constant speed shaft, provides the propulsion system model</div><div>- Wingsails</div><div><br></div></body></html>", revisions = "<html><head></head><body><span style=\"font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]</span><span style=\"font-size: 12px;\">&nbsp;(01/12/2024): Initial release</span></body></html>"),
        Diagram(graphics = {Rectangle(origin = {58, -32}, lineColor = {0, 170, 255}, pattern = LinePattern.Dash, extent = {{-34, 40}, {34, -40}}), Rectangle(origin = {-21, -41}, lineColor = {255, 0, 0}, pattern = LinePattern.Dash, extent = {{-41, 31}, {41, -31}}), Text(origin = {64, -40}, textColor = {0, 170, 255}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Text(origin = {-1, -67}, textColor = {255, 0, 0}, extent = {{-11, 3}, {11, -3}}, textString = "Propulsion model"), Rectangle(origin = {-49, 12}, lineColor = {255, 0, 255}, pattern = LinePattern.Dash, extent = {{-13, 18}, {13, -18}}), Text(origin = {-48, 11}, textColor = {255, 0, 255}, extent = {{-7, 3}, {7, -3}}, textString = "Visualizer")}, coordinateSystem(extent = {{-125, -75}, {125, 75}}, grid = {1, 1})),
        Icon(coordinateSystem(extent = {{-125, -75}, {125, 75}}, grid = {10, 10})));
    end FourWingSails;

    model FourWingSailsAH
      extends Modelica.Icons.Example;
      ShipSIM.Components.Ship.ShipModelTh shipModelTh(CoG = {50.43, 0, 9}, ini_Vel = {7, 0, 0}) annotation(
        Placement(visible = true, transformation(origin = {10, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.Ship.HidrodynamicXYY hidrodynamicXYY annotation(
        Placement(visible = true, transformation(origin = {10, -36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedFrame ShipAxis(color_y = {0, 180, 0}, color_z = {255, 0, 0}, diameter = 0.5, length = 30) annotation(
        Placement(visible = true, transformation(origin = {-25, 13}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(animation = true, height = 10, length = 100, shapeType = "modelica://ShipSIM/Resources/Data/Ship.dxf", width = 20) annotation(
        Placement(visible = true, transformation(origin = {-26, 0}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(animation = false, r = {1, 0, 2}) annotation(
        Placement(visible = true, transformation(origin = {-24, -24}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
      inner Modelica.Mechanics.MultiBody.World world(animateWorld = true, defaultN_to_m = 20000, defaultNm_to_m = 200000, enableAnimation = true, label2 = "z", n = {0, 0, -1}, nominalLength = 50) annotation(
        Placement(visible = true, transformation(origin = {-83, 53}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
      ShipSIM.Components.Propulsion.Rudder rudder(InitialRudderAngle = 0, wingData = wingDataRudder) annotation(
        Placement(transformation(origin = {-78, -27}, extent = {{-7, -7}, {7, 7}})));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation Rudder_pos(animation = false, r = {-2, 0, 4.5}) annotation(
        Placement(visible = true, transformation(origin = {-31, -13}, extent = {{5, 5}, {-5, -5}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Speed speed(phi(displayUnit = "rad")) annotation(
        Placement(visible = true, transformation(origin = {-25, -45}, extent = {{7, -7}, {-7, 7}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression Rudder_order(y = -0.05) annotation(
        Placement(visible = true, transformation(origin = {-101.5, -19.5}, extent = {{-8.5, -6.5}, {8.5, 6.5}}, rotation = 0)));
      inner ShipSIM.Components.Environment environment(WindDirection = 0, WindSpeed = 15) annotation(
        Placement(visible = true, transformation(origin = {-105.5, 54.5}, extent = {{-11.5, -11.5}, {11.5, 11.5}}, rotation = 0)));
      ShipSIM.Components.Ship.ShipWind shipWind annotation(
        Placement(visible = true, transformation(origin = {10, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.Propulsion.Propeller4Q propeller4Q(PropModel = ShipSIM.Types.Propeller4Q.B4_100_1) annotation(
        Placement(visible = true, transformation(origin = {-56, -28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression ShaftSpeed(y = 100*(2*3.141592/60)) annotation(
        Placement(visible = true, transformation(origin = {-63, -59}, extent = {{-22, -8}, {22, 8}}, rotation = 0)));
      parameter ShipSIM.Records.WingProfile.NACA0015 wingData annotation(
        Placement(visible = true, transformation(origin = {-4.5, 63.5}, extent = {{-5.5, -5.5}, {5.5, 5.5}}, rotation = 0)));
      ShipSIM.Components.AlternativePropulsion.WingSail wingSail2(InitialSailAngle = 40, wingData = wingData) annotation(
        Placement(visible = true, transformation(origin = {46, 37}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation SailPos3(animation = false, r = {60, 0, 18}) annotation(
        Placement(visible = true, transformation(origin = {62, 22}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation SailPos4(animation = false, r = {80, 0, 18}) annotation(
        Placement(visible = true, transformation(origin = {92, 22}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
      ShipSIM.Components.AlternativePropulsion.WingSail wingSail1(InitialSailAngle = 40, wingData = wingData) annotation(
        Placement(visible = true, transformation(origin = {16, 37}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.AlternativePropulsion.WingSail wingSail4(InitialSailAngle = 40, wingData = wingData) annotation(
        Placement(visible = true, transformation(origin = {106, 37}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation SailPos2(animation = false, r = {40, 0, 18}) annotation(
        Placement(visible = true, transformation(origin = {32, 22}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation SailPos1(animation = false, r = {20, 0, 18}) annotation(
        Placement(visible = true, transformation(origin = {2, 22}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression realExpression(y = 40) annotation(
        Placement(visible = true, transformation(origin = {-23, 52}, extent = {{-5, -6}, {5, 6}}, rotation = 0)));
      ShipSIM.Components.AlternativePropulsion.WingSail wingSail3(InitialSailAngle = 40, wingData = wingData) annotation(
        Placement(visible = true, transformation(origin = {76, 37}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.Ship.HidrodynamicZRP hidrodynamicZRP(AnimationForces = false, P_d = -727379968, R_d = 1000000000, Z_d = 1000000000) annotation(
        Placement(visible = true, transformation(origin = {44, -26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.AntiHeelingSystem.AntiHeeling antiheeling(B = shipModelTh.B, V_tk = 100, b = 4) annotation(
        Placement(visible = true, transformation(origin = {107, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression Heel_Signal(y = shipModelTh.Heel*180/Modelica.Constants.pi) annotation(
        Placement(visible = true, transformation(origin = {78.5, -13.5}, extent = {{-10.5, -8.5}, {10.5, 8.5}}, rotation = 0)));
      ShipSIM.Components.AntiHeelingSystem.Tank tk_br(CoG_trans = -8, V = 100) annotation(
        Placement(visible = true, transformation(origin = {75, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.AntiHeelingSystem.Tank tk_er(CoG_trans = 8, V = 100) annotation(
        Placement(visible = true, transformation(origin = {94, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      parameter Records.WingProfile.NACA0015 wingDataRudder annotation(
        Placement(visible = true, transformation(origin = {-112, -48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(hidrodynamicXYY.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{0, -36}, {-6, -36}, {-6, -12}, {0, -12}}, color = {95, 95, 95}));
      connect(ShipAxis.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{-20, 13}, {-6, 13}, {-6, -12}, {0, -12}}, color = {95, 95, 95}));
      connect(fixedShape.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{-20, 0}, {-6, 0}, {-6, -12}, {0, -12}}, color = {95, 95, 95}));
      connect(fixedTranslation.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{-18, -24}, {-6, -24}, {-6, -12}, {0, -12}}, color = {95, 95, 95}));
      connect(Rudder_pos.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{-26, -13}, {-12, -13}, {-12, -12}, {0, -12}}, color = {95, 95, 95}));
      connect(Rudder_pos.frame_b, rudder.frame_a) annotation(
        Line(points = {{-36, -13}, {-36, -12}, {-76, -12}, {-76, -20}}, color = {95, 95, 95}));
      connect(shipModelTh.shipData, hidrodynamicXYY.shipData) annotation(
        Line(points = {{20.4, -18.6}, {26.4, -18.6}, {26.4, -28.6}, {20.4, -28.6}}));
      connect(shipModelTh.frame_a, shipWind.frame_a) annotation(
        Line(points = {{0, -12}, {-2, -12}, {-2, -60}, {0, -60}}, color = {95, 95, 95}));
      connect(fixedTranslation.frame_b, propeller4Q.frame_a) annotation(
        Line(points = {{-30, -24}, {-46, -24}}, color = {95, 95, 95}));
      connect(propeller4Q.flange, speed.flange) annotation(
        Line(points = {{-46, -28}, {-42, -28}, {-42, -45}, {-32, -45}}));
      connect(propeller4Q.Propeller_flow_diameter, rudder.Propeller_flow_diameter) annotation(
        Line(points = {{-66, -24}, {-71, -24}}, color = {0, 0, 127}));
      connect(propeller4Q.Propeller_speed, rudder.Propeller_speed) annotation(
        Line(points = {{-66, -28}, {-66.55, -28}, {-66.55, -27}, {-71, -27}}, color = {0, 0, 127}));
      connect(Rudder_order.y, rudder.Rudder_Order) annotation(
        Line(points = {{-92, -19.5}, {-92, -20}, {-85, -20}}, color = {0, 0, 127}));
      connect(ShaftSpeed.y, speed.w_ref) annotation(
        Line(points = {{-38.8, -59}, {-10.8, -59}, {-10.8, -45}, {-16.8, -45}}, color = {0, 0, 127}));
      connect(realExpression.y, wingSail4.Sail_Order) annotation(
        Line(points = {{-17.5, 52}, {89.5, 52}, {89.5, 31}, {96.5, 31}}, color = {0, 0, 127}));
      connect(realExpression.y, wingSail2.Sail_Order) annotation(
        Line(points = {{-17.5, 52}, {30.5, 52}, {30.5, 31}, {36.5, 31}}, color = {0, 0, 127}));
      connect(realExpression.y, wingSail3.Sail_Order) annotation(
        Line(points = {{-17.5, 52}, {59.5, 52}, {59.5, 31}, {66.5, 31}}, color = {0, 0, 127}));
      connect(realExpression.y, wingSail1.Sail_Order) annotation(
        Line(points = {{-17.5, 52}, {-12.5, 52}, {-12.5, 31}, {6.5, 31}}, color = {0, 0, 127}));
      connect(wingSail1.frame_a, SailPos1.frame_b) annotation(
        Line(points = {{16, 27}, {16, 22}, {8, 22}}, color = {95, 95, 95}));
      connect(wingSail2.frame_a, SailPos2.frame_b) annotation(
        Line(points = {{46, 27}, {45, 27}, {45, 22}, {38, 22}}));
      connect(wingSail3.frame_a, SailPos3.frame_b) annotation(
        Line(points = {{76, 27}, {76, 22}, {68, 22}}, color = {95, 95, 95}));
      connect(wingSail4.frame_a, SailPos4.frame_b) annotation(
        Line(points = {{106, 27}, {106, 22}, {98, 22}}, color = {95, 95, 95}));
      connect(shipModelTh.frame_a, SailPos1.frame_a) annotation(
        Line(points = {{0, -12}, {-6, -12}, {-6, 22}, {-4, 22}}, color = {95, 95, 95}));
      connect(shipModelTh.frame_a, SailPos2.frame_a) annotation(
        Line(points = {{0, -12}, {-6, -12}, {-6, 17}, {21, 17}, {21, 22}, {26, 22}}, color = {95, 95, 95}));
      connect(shipModelTh.frame_a, SailPos3.frame_a) annotation(
        Line(points = {{0, -12}, {-6, -12}, {-6, 15}, {50, 15}, {50, 22}, {56, 22}}, color = {95, 95, 95}));
      connect(shipModelTh.frame_a, SailPos4.frame_a) annotation(
        Line(points = {{0, -12}, {-6, -12}, {-6, 11}, {80, 11}, {80, 22}, {86, 22}}, color = {95, 95, 95}));
      connect(shipModelTh.frame_a, hidrodynamicZRP.frame_a) annotation(
        Line(points = {{0, -12}, {-2, -12}, {-2, -24}, {29, -24}, {29, -26}, {34, -26}}, color = {95, 95, 95}));
      connect(shipModelTh.shipData, hidrodynamicZRP.shipData) annotation(
        Line(points = {{20.4, -18.6}, {31.4, -18.6}, {31.4, -11.6}, {57.4, -11.6}, {57.4, -18.6}, {54.4, -18.6}}));
      connect(antiheeling.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{107.2, -4.2}, {107.2, 6.8}, {0.2, 6.8}, {0.2, -12.2}}, color = {95, 95, 95}));
      connect(Heel_Signal.y, antiheeling.ship_heel) annotation(
        Line(points = {{90, -13.5}, {97, -13.5}, {97, -14}}, color = {0, 0, 127}));
      connect(antiheeling.ah_output, tk_br.ah_input) annotation(
        Line(points = {{117.2, -14}, {119.2, -14}, {119.2, -55}, {75.2, -55}, {75.2, -46}}, color = {0, 0, 127}, thickness = 0.5));
      connect(antiheeling.ah_output, tk_er.ah_input) annotation(
        Line(points = {{117.2, -14}, {119.2, -14}, {119.2, -55}, {94.2, -55}, {94.2, -46}}, color = {0, 0, 127}, thickness = 0.5));
      connect(propeller4Q.Wake_Fraction, rudder.Wake_Fraction) annotation(
        Line(points = {{-66, -32}, {-71, -32}, {-71, -30}}, color = {0, 0, 127}));
      annotation(
        experiment(StartTime = 0, StopTime = 1000, Tolerance = 1e-06, Interval = 0.2),
        Documentation(info = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">This example provides a basic construction of a maneuvering model where the following items are placed:</span><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br><div>- Ship model: consist on a ship model for masses, inertia and floatation plus other model for Surge, Sway and Yaw movements.</div></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">- Visualizer: an axis frame and a box visualizer represent the local coordinates and the ship.</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">- Propulsion system: a propeller and rudder models, in addition with a constant speed shaft, provides the propulsion system model</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">- Wingsails</div><div>- Antiheeling tank system</div></body></html>", revisions = "<html><head></head><body><span style=\"font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]</span><span style=\"font-size: 12px;\">&nbsp;(01/12/2024): Initial release</span></body></html>"),
        Diagram(graphics = {Rectangle(origin = {28, -33}, lineColor = {0, 255, 0}, extent = {{-32, 39}, {32, -39}}), Text(origin = {33, -49}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Rectangle(origin = {-48, -39}, lineColor = {255, 0, 0}, extent = {{-40, 31}, {40, -31}}), Text(origin = {33, -49}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Text(origin = {-29, -65}, textColor = {255, 0, 0}, extent = {{-11, 3}, {11, -3}}, textString = "Propulsion model"), Rectangle(origin = {-30, 8}, lineColor = {255, 0, 255}, extent = {{-20, 14}, {20, -14}}), Text(origin = {-41, -3}, textColor = {255, 0, 255}, extent = {{-7, 3}, {7, -3}}, textString = "Visualizer"), Rectangle(origin = {92, -33}, lineColor = {170, 85, 0}, extent = {{-29, 39}, {29, -39}}), Text(origin = {80.5, -66}, textColor = {170, 85, 0}, extent = {{-10.5, 3}, {10.5, -3}}, textString = "Anti-Heeling")}, coordinateSystem(extent = {{-125, -75}, {125, 75}}, grid = {1, 1})),
        Icon(coordinateSystem(extent = {{-125, -75}, {125, 75}}, grid = {10, 10})));
    end FourWingSailsAH;
  end Sailing;

  package Electrical
    extends Modelica.Icons.ExamplesPackage;

    model Consumers
      extends Modelica.Icons.Example;
      Modelica.Blocks.Continuous.Integrator integrator annotation(
        Placement(visible = true, transformation(origin = {-14, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Real AveragePower;
      MiscSamples.Balance balance annotation(
        Placement(visible = true, transformation(origin = {-68, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      AveragePower = if time > 0 then integrator.y/time else 0;
      connect(balance.y, integrator.u) annotation(
        Line(points = {{-58, 18}, {-26, 18}, {-26, 20}}, color = {0, 0, 127}));
    protected
      annotation(
        experiment(StartTime = 0, StopTime = 50000, Tolerance = 1e-06, Interval = 0.2),
        Documentation(info = "<html><head></head><body>Example of electric load balance simulation.</body></html>", revisions = "<html><head></head><body><span style=\"font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]</span><span style=\"font-size: 12px;\">&nbsp;(01/12/2024): Initial release</span></body></html>"));
    end Consumers;
  end Electrical;

  package Engines
    extends Modelica.Icons.ExamplesPackage;

    model SimpleDieselEngineTest
      extends Modelica.Icons.Example;
      Modelica.Blocks.Sources.RealExpression realExpression(y = 1500) annotation(
        Placement(visible = true, transformation(origin = {-64, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Torque torque annotation(
        Placement(visible = true, transformation(origin = {62, 18}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sensors.MultiSensor multiSensor annotation(
        Placement(visible = true, transformation(origin = {26, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.TimeTable timeTable(table = [0, -100; 100, -100; 101, -5000; 200, -5000; 201, -100; 10000, -100]) annotation(
        Placement(visible = true, transformation(origin = {100, 20}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      ShipSIM.Components.Machines.SimpleDieselEngine simpleDieselEngine annotation(
        Placement(visible = true, transformation(origin = {-18, 24}, extent = {{15, -10}, {-15, 10}}, rotation = 0)));
    equation
      connect(multiSensor.flange_b, torque.flange) annotation(
        Line(points = {{36, 20}, {52, 20}, {52, 18}}));
      connect(timeTable.y, torque.tau) annotation(
        Line(points = {{90, 20}, {74, 20}, {74, 18}}, color = {0, 0, 127}));
      connect(simpleDieselEngine.flange_a, multiSensor.flange_a) annotation(
        Line(points = {{-2, 20}, {16, 20}}));
      connect(simpleDieselEngine.RPM_demand, realExpression.y) annotation(
        Line(points = {{-32, 32}, {-40, 32}, {-40, 20}, {-52, 20}}, color = {0, 0, 127}));
      annotation(
        experiment(StartTime = 0, StopTime = 400, Tolerance = 1e-6, Interval = 0.01),
        Documentation(revisions = "<html><head></head><body><span style=\"font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]</span><span style=\"font-size: 12px;\">&nbsp;(01/12/2024): Initial release</span></body></html>"));
    end SimpleDieselEngineTest;
  end Engines;

  package Operations
    extends Modelica.Icons.ExamplesPackage;

    model CraneOperation
      extends Modelica.Icons.Example;
      ShipSIM.Components.Ship.ShipModelTh shipModelTh(CoG = {50.43, 0, 9}) annotation(
        Placement(visible = true, transformation(origin = {62, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.Ship.HidrodynamicXYY hidrodynamicXYY annotation(
        Placement(visible = true, transformation(origin = {62, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedFrame ShipAxis(color_y = {0, 180, 0}, color_z = {255, 0, 0}, diameter = 0.5, length = 30) annotation(
        Placement(visible = true, transformation(origin = {27, 43}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(animation = true, height = 10, length = 100, shapeType = "modelica://ShipSIM/Resources/Data/Ship.dxf", width = 20) annotation(
        Placement(visible = true, transformation(origin = {26, 30}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
      inner Modelica.Mechanics.MultiBody.World world(animateWorld = true, defaultN_to_m = 2000, defaultNm_to_m = 20000, enableAnimation = true, label2 = "z", n = {0, 0, -1}, nominalLength = 50) annotation(
        Placement(visible = true, transformation(origin = {-84, 42}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape buoy(animation = false, color = {255, 0, 0}, height = 10, length = 10, r_shape = {300, 0, 0}, shapeType = "sphere", width = 10) annotation(
        Placement(visible = true, transformation(origin = {-62.5, 42.5}, extent = {{-5.5, -5.5}, {5.5, 5.5}}, rotation = 0)));
      inner ShipSIM.Components.Environment environment(WindDirection = 0, WindSpeed = 5) annotation(
        Placement(visible = true, transformation(origin = {-26.5, 44.5}, extent = {{-10.5, -10.5}, {10.5, 10.5}}, rotation = 0)));
      ShipSIM.Components.Ship.ShipWind shipWind annotation(
        Placement(visible = true, transformation(origin = {62, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.Machines.Crane crane(BoomInitialAngle = 90, BoomLength = 6, CableRotureStrenght = 500000, Cable_k = 200000, PedestalHeight = 2) annotation(
        Placement(visible = true, transformation(origin = {-41, -12}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation CranePos(animation = false, r = {50, 7, 15}) annotation(
        Placement(visible = true, transformation(origin = {19, -50}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.Body Weight(m = 2000, r_0(each fixed = true, start = {56, 7, 10.9019}), r_CM = {0, 0, 0}, sphereDiameter = 1) annotation(
        Placement(visible = true, transformation(origin = {-86.5, -14.5}, extent = {{6.5, -6.5}, {-6.5, 6.5}}, rotation = 0)));
      Modelica.Blocks.Sources.TimeTable timeTable_BOOM(table = [0, 90; 20, 90; 40, 45; 300, 45]) annotation(
        Placement(transformation(origin = {-2, -1}, extent = {{10, -10}, {-10, 10}})));
      Modelica.Blocks.Sources.TimeTable timeTable_PEDESTAL(table = [0, 0; 45, 0; 100, 90; 300, 90]) annotation(
        Placement(visible = true, transformation(origin = {-3, -30}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.TimeTable timeTable_CABLE(table = [0, 2; 5, 2; 20, 1; 100, 1; 200, 10; 300, 20]) annotation(
        Placement(visible = true, transformation(origin = {-69, 11}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(hidrodynamicXYY.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{52, -6}, {46, -6}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(ShipAxis.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{32, 43}, {46, 43}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(fixedShape.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{32, 30}, {46, 30}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(shipModelTh.shipData, hidrodynamicXYY.shipData) annotation(
        Line(points = {{72, 11}, {78, 11}, {78, 1}, {72, 1}}));
      connect(world.frame_b, buoy.frame_a) annotation(
        Line(points = {{-78, 42}, {-73, 42}, {-73, 42.5}, {-68, 42.5}}));
      connect(shipModelTh.frame_a, shipWind.frame_a) annotation(
        Line(points = {{52, 18}, {50, 18}, {50, -30}, {52, -30}}, color = {95, 95, 95}));
      connect(shipModelTh.frame_a, CranePos.frame_a) annotation(
        Line(points = {{52, 18}, {37, 18}, {37, -50}, {29, -50}}));
      connect(CranePos.frame_b, crane.frame_a) annotation(
        Line(points = {{9, -50}, {-41, -50}, {-41, -22}}, color = {95, 95, 95}));
      connect(crane.frame_b, Weight.frame_a) annotation(
        Line(points = {{-51, -14}, {-51, -14.5}, {-80, -14.5}}, color = {95, 95, 95}));
      connect(timeTable_CABLE.y, crane.CableLength) annotation(
        Line(points = {{-58, 11}, {-51, 11}, {-51, -10}}, color = {0, 0, 127}));
      connect(timeTable_BOOM.y, crane.BoomSetAngle) annotation(
        Line(points = {{-13, -1}, {-13, 0}, {-31, 0}, {-31, -6}}, color = {0, 0, 127}));
      connect(timeTable_PEDESTAL.y, crane.PedestalSetAngle) annotation(
        Line(points = {{-14, -30}, {-31, -30}, {-31, -18}}, color = {0, 0, 127}));
    protected
      annotation(
        experiment(StartTime = 0, StopTime = 300, Tolerance = 1e-06, Interval = 0.1),
        Documentation(info = "<html><head></head><body>This example provides a basic operation of crane at sea.<br></body></html>", revisions = "<html><head></head><body><span style=\"font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]</span><span style=\"font-size: 12px;\">&nbsp;(01/07/2023): Initial release</span></body></html>"),
        Diagram(graphics = {Rectangle(origin = {73, -4}, lineColor = {0, 255, 0}, extent = {{-25, 40}, {25, -40}}), Text(origin = {85, -19}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Text(origin = {85, -19}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Rectangle(origin = {22, 38}, lineColor = {255, 0, 255}, extent = {{-20, 14}, {20, -14}}), Text(origin = {11, 27}, textColor = {255, 0, 255}, extent = {{-7, 3}, {7, -3}}, textString = "Visualizer")}, coordinateSystem(extent = {{-125, -75}, {125, 75}}, grid = {1, 1})),
        Icon(coordinateSystem(extent = {{-125, -75}, {125, 75}}, grid = {10, 10})));
    end CraneOperation;
  end Operations;

  package DataProcessing
    extends Modelica.Icons.ExamplesPackage;

    model RainFlowTesting
      extends Modelica.Icons.Example;
      Modelica.Blocks.Noise.NormalNoise normalNoise(enableNoise = true, fixedLocalSeed = 1, mu = 3, samplePeriod = 1, sigma = 20, startTime = 0, useAutomaticLocalSeed = false, useGlobalSeed = false) annotation(
        Placement(visible = true, transformation(origin = {-74, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Continuous.SecondOrder secondOrder(D = 0.1, w = 5) annotation(
        Placement(visible = true, transformation(origin = {-38, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Components.DataProcessing.PeakSampler peakSampler annotation(
        Placement(visible = true, transformation(origin = {-4, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.DataProcessing.RainflowCounter rainflowCounter(InitialRange = 0, FinalRange = 180, RangeIntervals = 10, InitialLevel = -30, FinalLevel = 30, LevelIntervals = 10) annotation(
        Placement(visible = true, transformation(origin = {34, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(normalNoise.y, secondOrder.u) annotation(
        Line(points = {{-62, 6}, {-50, 6}}, color = {0, 0, 127}));
      connect(peakSampler.y, rainflowCounter.u) annotation(
        Line(points = {{8, 6}, {23, 6}}, color = {0, 0, 127}));
      connect(secondOrder.y, peakSampler.u) annotation(
        Line(points = {{-26, 6}, {-16, 6}}, color = {0, 0, 127}));
      annotation(
        experiment(StartTime = 0, StopTime = 200, Tolerance = 1e-06, Interval = 0.1),
        Documentation(info = "<html><head></head><body>Sample of the rainflow counting module</body></html>", revisions = "<html><head></head><body><span style=\"font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]</span><span style=\"font-size: 12px;\">&nbsp;(09/12/2023): Initial release</span></body></html>"));
    end RainFlowTesting;
  end DataProcessing;

  package HeatTransfer
    extends Modelica.Icons.ExamplesPackage;

    model CeramicDiskResistor_Test
      extends Modelica.Icons.Example;
      ShipSIM.Components.Others.HeatTransfer.CylinderTransient cylinderTransient(R = 0.0755, L = 0.889, k = 4, C = 2000000, T_start = 273.15 + 25 + 150, N = 10) annotation(
        Placement(transformation(origin = {-40, 20}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature(T = 298.15) annotation(
        Placement(transformation(origin = {-74, 72}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Thermal.HeatTransfer.Components.Convection convection annotation(
        Placement(transformation(origin = {-40, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      Modelica.Blocks.Sources.RealExpression realExpression(y = (cylinderTransient.Asur*2.6*(cylinderTransient.Tavg - fixedTemperature.T)^1.4)/(cylinderTransient.port_b.T - fixedTemperature.T)) annotation(
        Placement(transformation(origin = {-81, 47}, extent = {{-17, -5}, {17, 5}})));
      Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow(Q_flow = 0) annotation(
        Placement(visible = true, transformation(origin = {-10, 20}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      ShipSIM.Components.Others.HeatTransfer.CylinderTransient NewcylinderTransient(C = 2000000, L = 0.889, N = 10, R = 0.0755, T_start = 273.15 + 25 + 150, k = 4, useInternalHeatPort = false) annotation(
        Placement(visible = true, transformation(origin = {66, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Components.Others.HeatTransfer.ConvectionFactors.ConvectionHorizontalCylinder convectionHorizontalCylinder(D = 0.0755*2, L = 0.889) annotation(
        Placement(transformation(origin = {40, 48}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
      Modelica.Blocks.Sources.RealExpression AirSpeed(y = 0) annotation(
        Placement(visible = true, transformation(origin = {22, 22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation(Gr = NewcylinderTransient.Asur) annotation(
        Placement(visible = true, transformation(origin = {48, 82}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    equation
      connect(cylinderTransient.port_b, convection.solid) annotation(
        Line(points = {{-41, 26}, {-41, 32}, {-40, 32}, {-40, 38}}, color = {191, 0, 0}));
      connect(fixedTemperature.port, convection.fluid) annotation(
        Line(points = {{-64, 72}, {-40, 72}, {-40, 58}}, color = {191, 0, 0}));
      connect(cylinderTransient.port_a, fixedHeatFlow.port) annotation(
        Line(points = {{-30, 20}, {-20, 20}}, color = {191, 0, 0}));
      connect(convection.Gc, realExpression.y) annotation(
        Line(points = {{-50, 48}, {-56, 48}, {-56, 47}, {-62, 47}}, color = {0, 0, 127}));
      connect(NewcylinderTransient.port_b, convectionHorizontalCylinder.solid) annotation(
        Line(points = {{66, 28}, {66, 48}, {50, 48}}, color = {191, 0, 0}));
      connect(convectionHorizontalCylinder.fluid, fixedTemperature.port) annotation(
        Line(points = {{30, 48}, {-2, 48}, {-2, 72}, {-64, 72}}, color = {191, 0, 0}));
      connect(AirSpeed.y, convectionHorizontalCylinder.u_inf) annotation(
        Line(points = {{33, 22}, {39.5, 22}, {39.5, 38}, {40, 38}}, color = {0, 0, 127}));
      connect(NewcylinderTransient.port_b, bodyRadiation.port_a) annotation(
        Line(points = {{66, 28}, {66, 82}, {58, 82}}, color = {191, 0, 0}));
      connect(bodyRadiation.port_b, fixedTemperature.port) annotation(
        Line(points = {{38, 82}, {0, 82}, {0, 72}, {-64, 72}}, color = {191, 0, 0}));
      annotation(
        uses(Modelica(version = "3.2.3"), ShipSIM(version = "1.6.0")),
        experiment(StartTime = 0, StopTime = 18000, Tolerance = 1e-06, Interval = 1),
        Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})),
        Documentation(info = "<html><head></head><body>Validation of heat transients of a cylinder.</body></html>", revisions = "<html><head></head><body><span style=\"font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]</span><span style=\"font-size: 12px;\">&nbsp;(19/11/2023): Initial release</span></body></html>"));
    end CeramicDiskResistor_Test;
  end HeatTransfer;

  package SunIrradiation
    extends Modelica.Icons.ExamplesPackage;

    model TestIrradiation
      extends Modelica.Icons.Example;
      Modelica.Blocks.Sources.RealExpression realExpression(y = (90 - 23.529)*Modelica.Constants.pi/180) annotation(
        Placement(transformation(origin = {-107, 55}, extent = {{-25, 25}, {25, -25}})));
      Components.Others.Solar.SolarIrradiation solarIrradiation(Use_Real_Irradiance = true, startDay = 1, startMonth = 1, startYear = 2018, TimeZone = 0, fileName = Modelica.Utilities.Files.loadResource("modelica://ShipSIM/Resources/Data/DatosSol2018-2020.txt"), tableName = "datos", Calculation_on_Panel = true) annotation(
        Placement(transformation(origin = {-36, -10}, extent = {{-10, -10}, {10, 10}})));
      inner Modelica.Mechanics.MultiBody.World world(label2 = "z", n = {0, 0, -1}) annotation(
        Placement(transformation(origin = {16, 60}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Mechanics.MultiBody.Visualizers.SignalArrow signalArrow annotation(
        Placement(transformation(origin = {62, 38}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Blocks.Sources.RealExpression realExpression1(y = 0) annotation(
        Placement(transformation(origin = {-92, -16}, extent = {{-10, -10}, {10, 10}})));
      Components.Others.Solar.IrradiationOnPlane irradiationOnPlane annotation(
        Placement(transformation(origin = {22, -10}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Blocks.Sources.RealExpression realExpression2[3](y = {0, -sin(realExpression.y), cos(realExpression.y)}) annotation(
        Placement(transformation(origin = {-37, -55}, extent = {{-23, -23}, {23, 23}})));
      Modelica.Mechanics.MultiBody.Visualizers.SignalArrow signalArrow1(color = {255, 0, 0}, animation = false) annotation(
        Placement(transformation(origin = {62, 4}, extent = {{-10, -10}, {10, 10}})));
      Components.Others.Solar.SunIrradianceMultibody sunIrradianceMultibody(Scale = 0.5, animation = true) annotation(
        Placement(transformation(origin = {91, -45}, extent = {{-11, -11}, {11, 11}})));
      Modelica.Mechanics.MultiBody.Joints.Revolute revolute(n = {1, 0, 0}, stateSelect = StateSelect.always, useAxisFlange = true) annotation(
        Placement(transformation(origin = {48, -76}, extent = {{-10, 10}, {10, -10}}, rotation = -0)));
      Modelica.Mechanics.Rotational.Sources.Position position(useSupport = true) annotation(
        Placement(transformation(origin = {20, -98}, extent = {{-10, -10}, {10, 10}})));
    equation
      signalArrow.r_head = solarIrradiation.SunVector/1000;
      signalArrow1.r_head = -realExpression2.y;
      connect(world.frame_b, signalArrow.frame_a) annotation(
        Line(points = {{26, 60}, {40, 60}, {40, 38}, {52, 38}}, color = {95, 95, 95}));
      connect(realExpression.y, solarIrradiation.Panelgamma) annotation(
        Line(points = {{-79.5, 55}, {-72, 55}, {-72, -4}, {-48, -4}}, color = {0, 0, 127}));
      connect(realExpression1.y, solarIrradiation.Panelazimuth) annotation(
        Line(points = {{-80, -16}, {-48, -16}}, color = {0, 0, 127}));
      connect(irradiationOnPlane.SunVector, solarIrradiation.SunVector) annotation(
        Line(points = {{12, -10}, {-24, -10}}, color = {0, 0, 127}, thickness = 0.5));
      connect(realExpression2.y, irradiationOnPlane.PlaneVector) annotation(
        Line(points = {{-12, -55}, {-2, -55}, {-2, -16}, {12, -16}}, color = {0, 0, 127}));
      connect(world.frame_b, signalArrow1.frame_a) annotation(
        Line(points = {{26, 60}, {36, 60}, {36, 4}, {52, 4}}));
      connect(solarIrradiation.SunVector, sunIrradianceMultibody.SunVector) annotation(
        Line(points = {{-24, -10}, {-8, -10}, {-8, -38}, {81, -38}}, color = {0, 0, 127}, thickness = 0.5));
      connect(world.frame_b, revolute.frame_a) annotation(
        Line(points = {{26, 60}, {42, 60}, {42, -62}, {20, -62}, {20, -76}, {38, -76}}, color = {95, 95, 95}));
      connect(revolute.frame_b, sunIrradianceMultibody.frame_a) annotation(
        Line(points = {{58, -76}, {92, -76}, {92, -56}, {91, -56}}, color = {95, 95, 95}));
      connect(position.support, revolute.support) annotation(
        Line(points = {{20, -108}, {22, -108}, {22, -110}, {42, -110}, {42, -86}}));
      connect(position.flange, revolute.axis) annotation(
        Line(points = {{30, -98}, {48, -98}, {48, -86}}));
      connect(realExpression.y, position.phi_ref) annotation(
        Line(points = {{-80, 56}, {-68, 56}, {-68, -98}, {8, -98}}, color = {0, 0, 127}));
      annotation(
        experiment(StartTime = 0, StopTime = 946938, Tolerance = 1e-06, Interval = 60),
        Documentation(info = "<html><head></head><body>Test of sun irradiation over a plate (Modelica.Mechanics.Multibody compatible)</body></html>", revisions = "<html><head></head><body><span style=\"font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]</span><span style=\"font-size: 12px;\">&nbsp;(01/12/2023): Initial release</span></body></html>"));
    end TestIrradiation;
  end SunIrradiation;
end Examples;
