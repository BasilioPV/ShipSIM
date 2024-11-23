within ShipSIM;
  package Validations "Examples used to validate the models"
    extends Modelica.Icons.ExamplesPackage;

    model Test_Propeller_POD
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
      ShipSIM.Components.Propulsion.Propeller1Q propeller(Ae_Ao = 1, Diameter = 2.5) annotation(
        Placement(visible = true, transformation(origin = {-3, 3}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Speed speed(phi(displayUnit = "rad")) annotation(
        Placement(visible = true, transformation(origin = {27, -15}, extent = {{7, -7}, {-7, 7}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression ShaftSpeed(y = 135*(2*3.141592/60)) annotation(
        Placement(visible = true, transformation(origin = {-8, -28}, extent = {{-22, -8}, {22, 8}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape buoy(animation = false, color = {255, 0, 0}, height = 10, length = 10, r_shape = {300, 0, 0}, shapeType = "sphere", width = 10) annotation(
        Placement(visible = true, transformation(origin = {-62.5, 42.5}, extent = {{-5.5, -5.5}, {5.5, 5.5}}, rotation = 0)));
      inner ShipSIM.Components.Environment environment annotation(
        Placement(visible = true, transformation(origin = {-31, 49}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
      ShipSIM.Components.Ship.ShipWind shipWind annotation(
        Placement(visible = true, transformation(origin = {62, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.Ship.ShipModelTh shipModelTh1(CoG = {50.43, 0, 9}, ini_Vel = {7, 0, 0}) annotation(
        Placement(visible = true, transformation(origin = {54, -84}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape1(animation = true, height = 10, length = 100, shapeType = "modelica://ShipSIM/Resources/Data/Ship.dxf", width = 20) annotation(
        Placement(visible = true, transformation(origin = {18, -72}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedFrame fixedFrame(color_y = {0, 180, 0}, color_z = {255, 0, 0}, diameter = 0.5, length = 30) annotation(
        Placement(visible = true, transformation(origin = {19, -59}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
      ShipSIM.Components.Ship.HidrodynamicXYY hidrodynamicXYY1 annotation(
        Placement(visible = true, transformation(origin = {54, -108}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(animation = false, r = {3, 0, 5}) annotation(
        Placement(visible = true, transformation(origin = {18, -91}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression realExpression1 annotation(
        Placement(transformation(origin = {-66, -91.5}, extent = {{-8, -5.5}, {8, 5.5}})));
      Modelica.Mechanics.Rotational.Sources.Speed speed1(phi(displayUnit = "rad")) annotation(
        Placement(visible = true, transformation(origin = {19, -117}, extent = {{7, -7}, {-7, 7}}, rotation = 0)));
      ShipSIM.Components.Ship.ShipWind shipWind1 annotation(
        Placement(visible = true, transformation(origin = {54, -132}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression realExpression2(y = 135*(2*3.141592/60)) annotation(
        Placement(visible = true, transformation(origin = {-16, -130}, extent = {{-22, -8}, {22, 8}}, rotation = 0)));
      Components.Propulsion.POD4Q pod4q(Ae_Ao = 1, Diameter = 2.5, P_D = 1, PropModel = ShipSIM.Types.Propeller4Q.B4_100_1, RotativeRelative = 0.990053, ThrustDeduction = 0.174095, WakeFraction = 0.435217) annotation(
        Placement(visible = true, transformation(origin = {-11, -101}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedFrame fixedFrame1(color_y = {0, 180, 0}, color_z = {255, 0, 0}, diameter = 0.5, length = 30) annotation(
        Placement(visible = true, transformation(origin = {13, -169}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(animation = false, r = {1, 0, 2}) annotation(
        Placement(visible = true, transformation(origin = {12, -201}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression realExpression4(y = 135*(2*3.141592/60)) annotation(
        Placement(visible = true, transformation(origin = {-22, -240}, extent = {{-22, -8}, {22, 8}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Speed speed2(phi(displayUnit = "rad")) annotation(
        Placement(visible = true, transformation(origin = {13, -227}, extent = {{7, -7}, {-7, 7}}, rotation = 0)));
      ShipSIM.Components.Ship.HidrodynamicXYY hidrodynamicXYY2 annotation(
        Placement(visible = true, transformation(origin = {48, -218}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape2(animation = true, height = 10, length = 100, shapeType = "modelica://ShipSIM/Resources/Data/Ship.dxf", width = 20) annotation(
        Placement(visible = true, transformation(origin = {12, -182}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
      ShipSIM.Components.Ship.ShipModelTh shipModelTh2(CoG = {50.43, 0, 9}, ini_Vel = {7, 0, 0}) annotation(
        Placement(visible = true, transformation(origin = {48, -194}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.Ship.ShipWind shipWind2 annotation(
        Placement(visible = true, transformation(origin = {48, -242}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.Propulsion.Propeller4Q propeller4Q(Diameter = 2.5, PropModel = ShipSIM.Types.Propeller4Q.B4_100_1) annotation(
        Placement(visible = true, transformation(origin = {-18, -212}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(hidrodynamicXYY.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{52, -6}, {46, -6}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(ShipAxis.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{32, 43}, {46, 43}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(fixedShape.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{32, 30}, {46, 30}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(fixedTranslation.frame_a, shipModelTh.frame_a) annotation(
        Line(points = {{34, 6}, {46, 6}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
      connect(shipModelTh.shipData, hidrodynamicXYY.shipData) annotation(
        Line(points = {{72, 11}, {78, 11}, {78, 1}, {72, 1}}));
      connect(propeller.frame_a, fixedTranslation.frame_b) annotation(
        Line(points = {{4, 5}, {13, 5}, {13, 5.8}, {22, 5.8}}, color = {95, 95, 95}));
      connect(propeller.flange, speed.flange) annotation(
        Line(points = {{4, 3}, {4, -18.5}, {20, -18.5}, {20, -15}}));
      connect(ShaftSpeed.y, speed.w_ref) annotation(
        Line(points = {{16.2, -28}, {41, -28}, {41, -15}, {35.2, -15}}, color = {0, 0, 127}));
      connect(world.frame_b, buoy.frame_a) annotation(
        Line(points = {{-78, 42}, {-73, 42}, {-73, 42.5}, {-68, 42.5}}));
      connect(shipModelTh.frame_a, shipWind.frame_a) annotation(
        Line(points = {{52, 18}, {50, 18}, {50, -30}, {52, -30}}, color = {95, 95, 95}));
      connect(fixedTranslation2.frame_a, shipModelTh1.frame_a) annotation(
        Line(points = {{24, -91}, {38, -91}, {38, -84}, {44, -84}}, color = {95, 95, 95}));
      connect(fixedFrame.frame_a, shipModelTh1.frame_a) annotation(
        Line(points = {{24, -59}, {38, -59}, {38, -84}, {44, -84}}, color = {95, 95, 95}));
      connect(shipModelTh1.frame_a, shipWind1.frame_a) annotation(
        Line(points = {{44, -84}, {42, -84}, {42, -132}, {44, -132}}, color = {95, 95, 95}));
      connect(realExpression2.y, speed1.w_ref) annotation(
        Line(points = {{8.2, -130}, {33, -130}, {33, -117}, {27.2, -117}}, color = {0, 0, 127}));
      connect(fixedShape1.frame_a, shipModelTh1.frame_a) annotation(
        Line(points = {{24, -72}, {38, -72}, {38, -84}, {44, -84}}, color = {95, 95, 95}));
      connect(hidrodynamicXYY1.frame_a, shipModelTh1.frame_a) annotation(
        Line(points = {{44, -108}, {38, -108}, {38, -84}, {44, -84}}, color = {95, 95, 95}));
      connect(shipModelTh1.shipData, hidrodynamicXYY1.shipData) annotation(
        Line(points = {{64.4, -90.6}, {70.4, -90.6}, {70.4, -100.6}, {64.4, -100.6}}));
      connect(fixedTranslation2.frame_b, pod4q.frame_a) annotation(
        Line(points = {{12, -91}, {-5, -91}}));
      connect(pod4q.flange, speed1.flange) annotation(
        Line(points = {{-9, -91}, {-9, -86}, {2, -86}, {2, -117}, {12, -117}}));
      connect(hidrodynamicXYY2.frame_a, shipModelTh2.frame_a) annotation(
        Line(points = {{38, -218}, {32, -218}, {32, -194}, {38, -194}}, color = {95, 95, 95}));
      connect(fixedFrame1.frame_a, shipModelTh2.frame_a) annotation(
        Line(points = {{18, -169}, {32, -169}, {32, -194}, {38, -194}}, color = {95, 95, 95}));
      connect(realExpression4.y, speed2.w_ref) annotation(
        Line(points = {{2.2, -240}, {27, -240}, {27, -227}, {21.2, -227}}, color = {0, 0, 127}));
      connect(shipModelTh2.frame_a, shipWind2.frame_a) annotation(
        Line(points = {{38, -194}, {36, -194}, {36, -242}, {38, -242}}, color = {95, 95, 95}));
      connect(shipModelTh2.shipData, hidrodynamicXYY2.shipData) annotation(
        Line(points = {{58.4, -200.6}, {64.8, -200.6}, {64.8, -210.2}, {58.8, -210.2}}));
      connect(fixedShape2.frame_a, shipModelTh2.frame_a) annotation(
        Line(points = {{18, -182}, {32, -182}, {32, -194}, {38, -194}}, color = {95, 95, 95}));
      connect(fixedTranslation1.frame_a, shipModelTh2.frame_a) annotation(
        Line(points = {{18, -201}, {32, -201}, {32, -194}, {38, -194}}, color = {95, 95, 95}));
      connect(speed2.flange, propeller4Q.flange) annotation(
        Line(points = {{6, -227}, {-1, -227}, {-1, -212}, {-8, -212}}));
      connect(fixedTranslation1.frame_b, propeller4Q.frame_a) annotation(
        Line(points = {{6, -201}, {-8, -201}, {-8, -208}}, color = {95, 95, 95}));
      connect(realExpression1.y, pod4q.POD_Order) annotation(
        Line(points = {{-57, -91.5}, {-21, -91.5}, {-21, -92}}, color = {0, 0, 127}));
      annotation(
        experiment(StartTime = 0, StopTime = 1000, Tolerance = 1e-06, Interval = 0.2),
        Documentation(info = "<html><head></head><body>This example provides a face to face comparison fron two ways of model the propeller: Kt and Kq Vs Ct and Cq (1Q Vs 4Q)<br></body></html>"),
        Diagram(graphics = {Rectangle(origin = {73, -4}, lineColor = {0, 255, 0}, extent = {{-25, 40}, {25, -40}}), Text(origin = {85, -19}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Rectangle(origin = {4, -9}, lineColor = {255, 0, 0}, extent = {{-40, 31}, {40, -31}}), Text(origin = {85, -19}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Text(origin = {23, -35}, textColor = {255, 0, 0}, extent = {{-11, 3}, {11, -3}}, textString = "Propulsion model"), Rectangle(origin = {22, 38}, lineColor = {255, 0, 255}, extent = {{-20, 14}, {20, -14}}), Text(origin = {11, 27}, textColor = {255, 0, 255}, extent = {{-7, 3}, {7, -3}}, textString = "Visualizer"), Text(origin = {15, -137}, textColor = {255, 0, 0}, extent = {{-11, 3}, {11, -3}}, textString = "Propulsion model"), Rectangle(origin = {65, -106}, lineColor = {0, 255, 0}, extent = {{-25, 40}, {25, -40}}), Rectangle(origin = {14, -64}, lineColor = {255, 0, 255}, extent = {{-20, 14}, {20, -14}}), Text(origin = {77, -121}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Text(origin = {3, -75}, textColor = {255, 0, 255}, extent = {{-7, 3}, {7, -3}}, textString = "Visualizer"), Text(origin = {77, -121}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Rectangle(origin = {-4, -111}, lineColor = {255, 0, 0}, extent = {{-40, 31}, {40, -31}}), Text(origin = {9, -247}, textColor = {255, 0, 0}, extent = {{-11, 3}, {11, -3}}, textString = "Propulsion model"), Text(origin = {-3, -185}, textColor = {255, 0, 255}, extent = {{-7, 3}, {7, -3}}, textString = "Visualizer"), Rectangle(origin = {8, -174}, lineColor = {255, 0, 255}, extent = {{-20, 14}, {20, -14}}), Text(origin = {71, -231}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Rectangle(origin = {-10, -221}, lineColor = {255, 0, 0}, extent = {{-40, 31}, {40, -31}}), Rectangle(origin = {59, -216}, lineColor = {0, 255, 0}, extent = {{-25, 40}, {25, -40}}), Text(origin = {71, -231}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model")}, coordinateSystem(extent = {{-125, -260}, {125, 75}}, grid = {1, 1})),
        Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, grid = {2, 2})));
    end Test_Propeller_POD;

    model PlateTransient_Test
      extends Modelica.Icons.Example;
      Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature(T = 448.15) annotation(
        Placement(transformation(origin = {-74, 72}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Thermal.HeatTransfer.Components.Convection convection annotation(
        Placement(transformation(origin = {-40, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      Modelica.Blocks.Sources.RealExpression realExpression(y = 1*100) annotation(
        Placement(transformation(origin = {-119, 38.92}, extent = {{-53, -19.08}, {53, 19.08}})));
      ShipSIM.Components.Others.HeatTransfer.PlateTransient plateTransient(Asur = 1, C = 2325*800, N = 30, T_start = 298.15, e = 0.050, k = 1, useInternalHeatPort = true) annotation(
        Placement(visible = true, transformation(origin = {-36, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Thermal.HeatTransfer.Components.Convection convection1 annotation(
        Placement(visible = true, transformation(origin = {10, 46}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow(Q_flow = 0) annotation(
        Placement(visible = true, transformation(origin = {-82, -18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(fixedTemperature.port, convection.fluid) annotation(
        Line(points = {{-64, 72}, {-40, 72}, {-40, 58}}, color = {191, 0, 0}));
      connect(realExpression.y, convection.Gc) annotation(
        Line(points = {{-61, 39}, {-56.5, 39}, {-56.5, 48}, {-50, 48}}, color = {0, 0, 127}));
      connect(convection.solid, plateTransient.port_a) annotation(
        Line(points = {{-40, 38}, {-46, 38}, {-46, 14}}, color = {191, 0, 0}));
      connect(plateTransient.port_b, convection1.solid) annotation(
        Line(points = {{-26, 14}, {10, 14}, {10, 36}}, color = {191, 0, 0}));
      connect(convection1.fluid, fixedTemperature.port) annotation(
        Line(points = {{10, 56}, {10, 72}, {-64, 72}}, color = {191, 0, 0}));
      connect(realExpression.y, convection1.Gc) annotation(
        Line(points = {{-60, 38}, {-54, 38}, {-54, 32}, {0, 32}, {0, 46}}, color = {0, 0, 127}));
      connect(fixedHeatFlow.port, plateTransient.port_InternalHeat) annotation(
        Line(points = {{-72, -18}, {-36, -18}, {-36, 4}}, color = {191, 0, 0}));
      annotation(
        uses(Modelica(version = "3.2.3"), ShipSIM(version = "1.6.0")),
        experiment(StartTime = 0, StopTime = 600, Tolerance = 1e-06, Interval = 0.1),
        Diagram,
        Documentation(info = "<html><head></head><body><div>Validation of a plate dynamic heat transfer.</div>Example 16.10 of the book:<div><br></div><div><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[ThSysEng]</td><td>Michael J. Moran, Howard N. Shapiro, Bruce R. Munson, David P. DeWitt, \"Introduction to Thermal Systems Engineering\", John Wiley &amp; Sons, Inc., 1st Edition, 2003</td></tr></tbody></table></div><div><br><div><br></div></div></body></html>"));
    end PlateTransient_Test;

    model CylinderTransient_Test
      extends Modelica.Icons.Example;
      Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature(T = 313.15) annotation(
        Placement(transformation(origin = {-74, 72}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Blocks.Sources.RealExpression realExpression1(y = cylinderTransient.Asur*565) annotation(
        Placement(visible = true, transformation(origin = {-131, -19.08}, extent = {{-53, -19.08}, {53, 19.08}}, rotation = 0)));
      Modelica.Thermal.HeatTransfer.Components.Convection convection1 annotation(
        Placement(visible = true, transformation(origin = {-40, -18}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      Components.Others.HeatTransfer.CylinderTransient cylinderTransient(C = 3671171.171, L = 1, N = 10, R = 0.1, T_start = 1253.15, k = 16.3, useInternalHeatPort = false) annotation(
        Placement(visible = true, transformation(origin = {-40, -46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(cylinderTransient.port_b, convection1.solid) annotation(
        Line(points = {{-40, -36}, {-40, -28}}, color = {191, 0, 0}));
      connect(realExpression1.y, convection1.Gc) annotation(
        Line(points = {{-72, -20}, {-50, -20}, {-50, -18}}, color = {0, 0, 127}));
      connect(convection1.fluid, fixedTemperature.port) annotation(
        Line(points = {{-40, -8}, {-66, -8}, {-66, 72}, {-64, 72}}, color = {191, 0, 0}));
      annotation(
        uses(Modelica(version = "3.2.3"), ShipSIM(version = "1.6.0")),
        experiment(StartTime = 0, StopTime = 3000, Tolerance = 1e-06, Interval = 0.1),
        Diagram,
        Documentation(info = "<html><head></head><body>Validation of the results for a transient heat transfer in a cylinder.<div>Example 4.3 of the book:</div><div><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[Chapman]</td><td>Alan J. Chapman, \"Heat Transfer\", McMillan Publishing Company, 4th Edition, 1984</td></tr></tbody></table></div><div><br><div><br></div></div></body></html>"));
    end CylinderTransient_Test;
    annotation(
      Icon(graphics = {Ellipse(origin = {-65, -17}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-25, 25}, {25, -25}}), Polygon(origin = {-66, -60}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, points = {{-8, 16}, {-18, -38}, {2, -14}, {22, -40}, {8, 16}, {8, 16}, {-8, 16}})}));
  end Validations;
