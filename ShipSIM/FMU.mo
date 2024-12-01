within ShipSIM;
  package FMU "Models ready to be exported to FMU"
 
model TransientCylinderAir "Transient heat on a cylinder with cross air flow"
      // *** Parameters ***
      parameter Modelica.SIunits.Length R(min = 0.0) = 0.1 "Radius of the Cylinder [m]" annotation(
        Dialog(group = "Geometric Properties"));
      parameter Modelica.SIunits.Length L(min = 0.0) = 1 "Length of the Cylinder [m]" annotation(
        Dialog(group = "Geometric Properties"));
      parameter Modelica.SIunits.ThermalConductivity k(min = 0.0) = 16 "Heat conductivity [W/(m.K)]" annotation(
        Dialog(group = "Material Properties"));
      parameter Modelica.SIunits.Emissivity e(min = 0.0, max = 1.0) = 1 "Cilinder surface radiation emissivity [-]" annotation(
        Dialog(group = "Material Properties"));
      parameter Real C(final quantity = "SpecificHeatCapacity", final unit = "J/(m3.K)", min = 0.0) = 35000 "Specific heat capacity (rho*C_p) [J/(m3.K)]" annotation(
        Dialog(group = "Material Properties"));
      parameter Modelica.SIunits.Temperature T_start = 273.15 "Cylinder homogeneous start temperature [K]" annotation(
        Dialog(group = "Initial Conditions"));
      parameter Integer N(min = 1) = 10 "Number of discrete elements [>=1, typical 10, increase with Biot number]" annotation(
        Dialog(group = "Discretization Precision"));
      // *** Connections Inputs ***
      Modelica.Blocks.Interfaces.RealInput power(final quantity = "Power", final unit = "W") "Homogeneous total heat into the cylinder [W]" annotation(
        Placement(transformation(origin = {96, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {112, 20}, extent = {{-12, -12}, {12, 12}})));
      Modelica.Blocks.Interfaces.RealInput externalTemp(final quantity = "ThermodynamicTemperature", final unit = "K", min = 0.0, displayUnit = "degC") "External air temperature [K]" annotation(
        Placement(transformation(origin = {-104, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-104, -2}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Blocks.Interfaces.RealInput u_inf(final quantity = "Velocity", final unit = "m/s", min = 0.0) "Air speed [m/s]" annotation(
        Placement(transformation(origin = {-21, -105}, extent = {{-11, -11}, {11, 11}}, rotation = 90), iconTransformation(origin = {0, -96}, extent = {{-20, -20}, {20, 20}})));
      // *** Connections Outputs ***
      Modelica.Blocks.Interfaces.RealOutput meanTemp(final quantity = "ThermodynamicTemperature", final unit = "K", min = 0.0, displayUnit = "degC") "Mean cylinder temperature [K]" annotation(
        Placement(transformation(origin = {106, -24}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Blocks.Interfaces.RealOutput heat(final quantity = "Power", final unit = "W") "Total dissipated heat to the air [W]" annotation(
        Placement(transformation(origin = {-94, 24}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-102, 20}, extent = {{-10, -10}, {10, 10}})));
    protected
      // *** Components ***
      Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation(Gr = e*cylinderTransient.Asur) annotation(
        Placement(visible = true, transformation(origin = {-14, 60}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      ShipSIM.Components.Others.HeatTransfer.CylinderTransient cylinderTransient(R = R, L = L, k = k, C = C, T_start = T_start, N = N) annotation(
        Placement(transformation(origin = {2, 0}, extent = {{-10, -10}, {10, 10}})));
      ShipSIM.Components.Others.HeatTransfer.ConvectionFactors.ConvectionHorizontalCylinder convectionHorizontalCylinder(D = R*2, L = L) annotation(
        Placement(visible = true, transformation(origin = {-14, 30}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      // *** Protected Components ***
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature annotation(
        Placement(transformation(origin = {-68, 0}, extent = {{-10, -10}, {10, 10}})));
      Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperatureSensor annotation(
        Placement(visible = true, transformation(origin = {50, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow prescribedHeatFlow annotation(
        Placement(transformation(origin = {48, 0}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
      Modelica.Thermal.HeatTransfer.Sensors.HeatFlowSensor heatFlowSensor annotation(
        Placement(visible = true, transformation(origin = {-38, 0}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
    equation
      connect(prescribedHeatFlow.port, cylinderTransient.port_a) annotation(
        Line(points = {{38, 0}, {12.2, 0}}, color = {191, 0, 0}));
      connect(power, prescribedHeatFlow.Q_flow) annotation(
        Line(points = {{96, 0}, {58, 0}}, color = {0, 0, 127}));
      connect(prescribedTemperature.T, externalTemp) annotation(
        Line(points = {{-80, 0}, {-104, 0}}, color = {0, 0, 127}));
      connect(heatFlowSensor.port_b, prescribedTemperature.port) annotation(
        Line(points = {{-48, 0}, {-58, 0}}, color = {191, 0, 0}));
      connect(heat, heatFlowSensor.Q_flow) annotation(
        Line(points = {{-94, 24}, {-38, 24}, {-38, 10}}, color = {0, 0, 127}));
      connect(bodyRadiation.port_a, cylinderTransient.port_b) annotation(
        Line(points = {{-4, 60}, {2, 60}, {2, 6}}, color = {191, 0, 0}));
      connect(convectionHorizontalCylinder.solid, cylinderTransient.port_b) annotation(
        Line(points = {{-4, 30}, {2, 30}, {2, 6}}, color = {191, 0, 0}));
      connect(convectionHorizontalCylinder.fluid, heatFlowSensor.port_a) annotation(
        Line(points = {{-24, 30}, {-28, 30}, {-28, 0}}, color = {191, 0, 0}));
      connect(bodyRadiation.port_b, heatFlowSensor.port_a) annotation(
        Line(points = {{-24, 60}, {-28, 60}, {-28, 0}}, color = {191, 0, 0}));
      connect(convectionHorizontalCylinder.u_inf, u_inf) annotation(
        Line(points = {{-14, 20}, {-14, -43}, {-21, -43}, {-21, -105}}, color = {0, 0, 127}));
      connect(cylinderTransient.port_a, temperatureSensor.port) annotation(
        Line(points = {{12, 0}, {24, 0}, {24, -24}, {40, -24}}, color = {191, 0, 0}));
      connect(temperatureSensor.T, meanTemp) annotation(
        Line(points = {{60, -24}, {106, -24}}, color = {0, 0, 127}));
      annotation(
        version = "1.0.0",
        __OpenModelica_author = "Basilio Puente Varela",
        __OpenModelica_license = "see ShipSIM license",
        __OpenModelica_copyright = "2024 (c) Basilio Puente Varela",
        uses(ShipSIM(version = "1.8.0"), Modelica(version = "3.2.3")),
        Icon(graphics = {Line(origin = {-0.01, -68.37}, points = {{-59.9851, 8}, {60.0149, 8}}), Line(origin = {-79.59, -0.26}, points = {{16.8035, 60}, {-1.19648, 60}, {-19.1965, 0}, {-1.19648, -60}, {18.8035, -60}}, smooth = Smooth.Bezier), Ellipse(origin = {59, 0}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Backward, extent = {{-19, 60}, {19, -60}}), Line(origin = {-0.01, 51.89}, points = {{-67.9851, 8}, {60.0149, 8}})}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
        Documentation(info = "<html><head></head><body><div>Este componente tiene como objetivo simular la transmisión de calor transitoria dentro de un cilindro macizo homogéneo sometido a una corriente cruzada de aire en su exterior e incluyendo generación interna de calor homogénea.</div><div><br></div><div>La transmisión de calor transitoria dentro del cilindro macizo se modeliza mediante el método \"lumped-element\", donde el espacio continuo es discretizado en una serie consecutiva de anillos de capacitancia térmica a la misma temperatura y conectandos entre si por resistencias térmicas.</div><div><br></div><div>En la cara exterior del cilindro el calor es disipado mediante radiación y convección, tanto natural como forzada.</div><div><br></div><div><b><u>Funcionamiento:</u></b></div><div><br></div><div><div>El usuario deberá establecer los parámetros del modelo:</div><div>- Dimensiones del cilindro: radio (R) y largo (L)</div><div>- Propiedades del cilindro: conductividad térmica (k), capacidad calorífica específica (C) y factor de emisividad superficial (e)</div><div>- Número de discretizaciones del modelo (N): El numero de elementos discretos usados es un parámetro que puede modificar el usuario para incrementar la precisión del modelo. Se recomienda, partiendo de 10 elementos, incrementar el número de elementos en función del incremento en el número de Biot.</div><div><br></div><div>A continuación se establecerán los valores iniciales:</div><div>- Temperatura homogénea inicial del cilindro (T_start).</div><div><br></div><div>El modelo recibe de las entradas:</div><div>- Potencia total homogénea generada internamente por el cilindro (power).</div><div>- Temperatura del aire exterior (externalTemp).</div><div>- Velocidad del aire exterior, en flujo cruzado al cilindro (u_inf).</div><div><br></div><div>Y devuelve las siguientes salidas:</div><div>- Temperatura promedio del cilindro (meanTemp).</div><div>- Calor total disipado al aire (heat).</div></div><div><br></div><br><img src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAeAB4AAD/4QBwRXhpZgAATU0AKgAAAAgABgExAAIAAAAKAAAAVgMBAAUAAAABAAAAYAMDAAEAAAABAAAAAFEQAAEAAAABAQAAAFERAAQAAAABAAASdFESAAQAAAABAAASdAAAAABHcmVlbnNob3QAAAGGoAAAsY//2wBDAAcFBQYFBAcGBQYIBwcIChELCgkJChUPEAwRGBUaGRgVGBcbHichGx0lHRcYIi4iJSgpKywrGiAvMy8qMicqKyr/2wBDAQcICAoJChQLCxQqHBgcKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKir/wAARCAJtArMDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD6AX7z/X+gp1MVjub5D19vSl3H+436UAOopu4/3G/Sjcf7jfpQA6im7j/cb9KNx/uN+lADqaP9YfoP60bj/cb9Kj8yQ3DpHbySFUUnaVGMk46kehoAmopmbj/nym/76j/+Kozcf8+U3/fUf/xVAD6KZm4/58pv++o//iqM3H/PlN/31H/8VQA+imZuP+fKb/vqP/4qjNx/z5Tf99R//FUAKP8AWH6D+tOqINceaw+xTZ2jjcnv/tU7Nx/z5Tf99R//ABVAD6KZm4/58pv++o//AIqjNx/z5Tf99R//ABVAD6KZm4/58pv++o//AIqjNx/z5Tf99R//ABVAD6af9YPof6Umbj/nym/76j/+Kppa481R9imztPG5Pb/aoAlopmbj/nym/wC+o/8A4qjNx/z5Tf8AfUf/AMVQA+imZuP+fKb/AL6j/wDiqM3H/PlN/wB9R/8AxVAD6KZm4/58pv8AvqP/AOKozcf8+U3/AH1H/wDFUAKf9YPof6U6oi1x5qj7FNnaeNye3+1Ts3H/AD5Tf99R/wDxVAD6KZm4/wCfKb/vqP8A+Kozcf8APlN/31H/APFUAPopmbj/AJ8pv++o/wD4qjNx/wA+U3/fUf8A8VQA+mt95Pr/AENJm4/58pv++o//AIqms1xuTNlN97j5k9D/ALVAEtFMzcf8+U3/AH1H/wDFUZuP+fKb/vqP/wCKoAfRTM3H/PlN/wB9R/8AxVGbj/nym/76j/8AiqAH0UzNx/z5Tf8AfUf/AMVRm4/58pv++o//AIqgCO8/1C/9dY//AEMVPVW7M/krmzmX97HyWT++P9qp83H/AD5Tf99R/wDxVAD6KZm4/wCfKb/vqP8A+Kozcf8APlN/31H/APFUAPopmbj/AJ8pv++o/wD4qjNx/wA+U3/fUf8A8VQA+mv90fUfzpM3H/PlN/31H/8AFU12uAozZTD5h/Enr/vUAS0UzNx/z5Tf99R//FUZuP8Anym/76j/APiqAH0UzNx/z5Tf99R//FUZuP8Anym/76j/APiqAH0UzNx/z5Tf99R//FUZuP8Anym/76j/APiqAFk/1bfQ06opGuBExNlMBtOTuT/4qnZuP+fKb/vqP/4qgB9FMzcf8+U3/fUf/wAVRm4/58pv++o//iqAH0UzNx/z5Tf99R//ABVGbj/nym/76j/+KoAfTZP9W30NJm4/58pv++o//iqbI1wImJspgNpydyf/ABVAEtFMzcf8+U3/AH1H/wDFUZuP+fKb/vqP/wCKoAfRTM3H/PlN/wB9R/8AxVGbj/nym/76j/8AiqAH0UzNx/z5Tf8AfUf/AMVRm4/58pv++o//AIqgB9Nj/wBWv0FJm4/58pv++o//AIqmxtcGJSLKYjaMHcn/AMVQBLRTM3H/AD5Tf99R/wDxVGbj/nym/wC+o/8A4qgB9FMzcf8APlN/31H/APFUZuP+fKb/AL6j/wDiqAH0UzNx/wA+U3/fUf8A8VRm4/58pv8AvqP/AOKoAWP/AFa/QU6ooJfMt43VGwyAjp6fWn7j/cb9KAHUU3cf7jfpRuP9xv0oAdRTdx/uN+lG4/3G/SgB1NT7p+p/nRuP9xv0pEY7fuHqfT1oAfRTdx/uN+lFAAv3n+v9BTqav3n+v9BTqACiiigAooooAKWz/wCQhcf9co/5vSUtn/yELj/rlH/N6AL1FFFABRRRQAUUUUARj/j4f/cX+ZqSox/x8P8A7i/zNSUAFFFFABRRRQAVGf8Aj4T/AHG/mKkqM/8AHwn+438xQBJRRRQAUUUUAFFFFAEZ/wCPhP8Acb+YqSoz/wAfCf7jfzFSUAFFFFABRRRQAVHJ/rIv9/8A9lNSVHJ/rIv9/wD9lNAElFFFABRRRQAUUUUAVr//AI91/wCu0X/oxas1Wv8A/j3X/rtF/wCjFqzQAUUUUAFFFFABUc3+rH++v/oQqSo5v9WP99f/AEIUASUUUUAFFFFABRRRQBHP/wAe8n+4f5VJUc//AB7yf7h/lUlABRRRQAUUUUAFRz/8e8n+4f5VJUc//HvJ/uH+VAElFFFABRRRQAUUUUAFRwf8e8f+4P5VJUcH/HvH/uD+VAElFFFABRRRQAUUUUAZNj/yD7f/AK5L/IVPUFj/AMg+3/65L/IVPQAUUUUAFFFFABTU+6fqf506mp90/U/zoAdRRRQA1fvP9f6CnU1fvP8AX+gp1ABRRRQAUUUUAFLZ/wDIQuP+uUf83pKWz/5CFx/1yj/m9AF6iiigAooooAKKKKAIx/x8P/uL/M1JUY/4+H/3F/makoAKKKKACiiigAqM/wDHwn+438xUlRn/AI+E/wBxv5igCSiiigAooooAKKKKAIz/AMfCf7jfzFSVGf8Aj4T/AHG/mKkoAKKKKACiiigAqOT/AFkX+/8A+ympKjk/1kX+/wD+ymgCSiiigAooooAKKKKAK1//AMe6/wDXaL/0YtWarX//AB7r/wBdov8A0YtWaACiiigAooooAKjm/wBWP99f/QhUlRzf6sf76/8AoQoAkooooAKKKKACiiigCOf/AI95P9w/yqSo5/8Aj3k/3D/KpKACiiigAooooAKjn/495P8AcP8AKpKjn/495P8AcP8AKgCSiiigAooooAKKKKACo4P+PeP/AHB/KpKjg/494/8AcH8qAJKKKKACiiigAooooAybH/kH2/8A1yX+QqeoLH/kH2//AFyX+QqegAooooAKKKKACmp90/U/zp1NT7p+p/nQA6iiigBq/ef6/wBBTqav3n+v9BTqACiiigAooooAKWz/AOQhcf8AXKP+b0lLZ/8AIQuP+uUf83oAvUUUUAFFFFABRRRQBGP+Ph/9xf5mpKjH/Hw/+4v8zUlABRRRQAUUUUAFRn/j4T/cb+YqSoz/AMfCf7jfzFAElFFFABRRRQAUUUUARn/j4T/cb+YqSoz/AMfCf7jfzFSUAFFFFABRRRQAVHJ/rIv9/wD9lNSVHJ/rIv8Af/8AZTQBJRRRQAUUUUAFFFFAFa//AOPdf+u0X/oxas1Wv/8Aj3X/AK7Rf+jFqzQAUUUUAFFFFABUc3+rH++v/oQqSo5v9WP99f8A0IUASUUUUAFFFFABRRRQBHP/AMe8n+4f5VJUc/8Ax7yf7h/lUlABRRRQAUUUUAFRz/8AHvJ/uH+VSVHP/wAe8n+4f5UASUUUUAFFFFABRRRQAVHB/wAe8f8AuD+VSVHB/wAe8f8AuD+VAElFFFABRRRQAUUUUAZNj/yD7f8A65L/ACFT1BY/8g+3/wCuS/yFT0AFFFFABRRRQAU1Pun6n+dOpqfdP1P86AHUUUUAMVjub5D19vSl3H+436UL95/r/QU6gBu4/wBxv0o3H+436U6igBu4/wBxv0o3H+436U6igBu4/wBxv0otHYahPiNj+6j6Eer+9OpbP/kIXH/XKP8Am9AFrzG/54v+a/40eY3/ADxf81/xqSigCPzG/wCeL/mv+NHmN/zxf81/xqSigCPzG/54v+a/40eY3/PF/wA1/wAakooAgEjfaH/dP91eMj1PvT/Mb/ni/wCa/wCNA/4+H/3F/makoAj8xv8Ani/5r/jR5jf88X/Nf8akooAj8xv+eL/mv+NHmN/zxf8ANf8AGpKKAI/Mb/ni/wCa/wCNMMjfaE/dP91uMj1HvU9Rn/j4T/cb+YoAPMb/AJ4v+a/40eY3/PF/zX/GpKKAI/Mb/ni/5r/jR5jf88X/ADX/ABqSigCPzG/54v8Amv8AjR5jf88X/Nf8akooAgMjfaE/dP8AdbjI9R70/wAxv+eL/mv+NB/4+E/3G/mKkoAj8xv+eL/mv+NHmN/zxf8ANf8AGpKKAI/Mb/ni/wCa/wCNHmN/zxf81/xqSigCPzG/54v+a/40ySRt8X7px83qOeD71PUcn+si/wB//wBlNAB5jf8APF/zX/GjzG/54v8Amv8AjUlFAEfmN/zxf81/xo8xv+eL/mv+NSUUAR+Y3/PF/wA1/wAaPMb/AJ4v+a/41JRQBTvpGNuv7px++i7j/novvVjzG/54v+a/41Ff/wDHuv8A12i/9GLVmgCPzG/54v8Amv8AjR5jf88X/Nf8akooAj8xv+eL/mv+NHmN/wA8X/Nf8akooAj8xv8Ani/5r/jTJZGKD904+Ze49R71PUc3+rH++v8A6EKADzG/54v+a/40eY3/ADxf81/xqSigCPzG/wCeL/mv+NHmN/zxf81/xqSigCPzG/54v+a/40eY3/PF/wA1/wAakooAgmkY28n7px8p5JHp9af5jf8APF/zX/Gif/j3k/3D/KpKAI/Mb/ni/wCa/wCNHmN/zxf81/xqSigCPzG/54v+a/40eY3/ADxf81/xqSigCPzG/wCeL/mv+NMmkY28n7px8p5JHp9anqOf/j3k/wBw/wAqADzG/wCeL/mv+NHmN/zxf81/xqSigCPzG/54v+a/40eY3/PF/wA1/wAakooAj8xv+eL/AJr/AI0eY3/PF/zX/GpKKAI/Mb/ni/5r/jTIZGFvH+6c/KOQR6fWp6jg/wCPeP8A3B/KgA8xv+eL/mv+NHmN/wA8X/Nf8akooAj8xv8Ani/5r/jR5jf88X/Nf8akooAj8xv+eL/mv+NHmN/zxf8ANf8AGpKKAMiyY/2fb/If9Uvp6VNuP9xv0qKx/wCQfb/9cl/kKnoAbuP9xv0o3H+436U6igBu4/3G/Sjcf7jfpTqKAG7j/cb9KRGO37h6n09afTU+6fqf50AG4/3G/SinUUANX7z/AF/oKdTV+8/1/oKdQAUUUUAFFFFABS2f/IQuP+uUf83pKWz/AOQhcf8AXKP+b0AXqKKKACiiigAooooAjH/Hw/8AuL/M1JUY/wCPh/8AcX+ZqSgAooooAKKKKACoz/x8J/uN/MVJUZ/4+E/3G/mKAJKKKKACiiigAooooAjP/Hwn+438xUlRn/j4T/cb+YqSgAooooAKKo63qX9jeH9Q1PyvO+xWstx5W7bv2IWxnBxnGM4NRWXiLSL+xnuoNTsnjtFzdslyjC2IGSHIPy4wc5x0rVUqjhzpabB2NOo5P9ZF/v8A/spqmviDRn0Y6umr2LaavW9FyhhHO37+dvXjr1rP0DxVYeI4TNaz23yXM6oI7hZPMijd4xKMfwttznp2yafsKvK58rsnZ+vYV0dBRXK3fj6ztpL54tM1C807TwjXWpWpgeCNGjWTeB5gdlCOCdqH2zWw3iPRE1ZdKfWLBdRbG2za5QTHIyPkzu5HPTpVSwtaKTcfPv2evbdb9w5kaVFYOpeLtNsPEGn6LHdWlxqN3dCCS1W5UTQKYnk3lOTj5QO33gc+si+L9BWOy+2atYWU19GskFvcXsIdwxwNuHIbJ4ypIJ6Gj6tWsnyvXVemv+QXSNqiueXxvoj6pqOmxXcL3unTRwywfaIlZt5QblDOOAZApzg7gVAJwDqR61pcurSaVFqVm+oxLvks1nUzIvHJTOQORzjuKmWHqw+KL2v8tNfTVBdEl/8A8e6/9dov/Ri1ZrH/ALe0fVc2+marY3k0ckDvHb3KSMql1IYgEkA5GD71sVnKEoO0lZjCiiipAKKKKACo5v8AVj/fX/0IVJUc3+rH++v/AKEKAJKKKKACiiigAooooAjn/wCPeT/cP8qkqOf/AI95P9w/yqSgAooooAKKKKACo5/+PeT/AHD/ACqSo5/+PeT/AHD/ACoAkooooAKKKKACiiigAqOD/j3j/wBwfyqSo4P+PeP/AHB/KgCSiiigAooooAKKKKAMmx/5B9v/ANcl/kKnqCx/5B9v/wBcl/kKnoAKKKKACiiigApqfdP1P86dTU+6fqf50AOooooAav3n+v8AQU6mr95/r/QU6gAooooAKKKKACls/wDkIXH/AFyj/m9JS2f/ACELj/rlH/N6AL1FFFABRRRQAUUUUARj/j4f/cX+ZqSox/x8P/uL/M1JQAUUUUAFFFFABUZ/4+E/3G/mKkqM/wDHwn+438xQBJRRRQAUUUUAFFFFAEZ/4+E/3G/mKkqM/wDHwn+438xUlABRRRQBleKbOfUfB+s2NnH5lxc2E8MSbgNztGwAyeBye9cTd+GtY1Vbi+g0M6f9nttPhj0+4liDXf2a485lzG7IqlflXJ65yAK9Lortw+NqYePLBLe/Xy8/L/ImUVJWf9bf5HmOqpcaVef8JPq1tHp8EmuR3Y0y6vLeOSRVtDDu3NJ5XmbsOAH+6gOc8Vz1/qmntpdrNFrek2V/fare204/tKF2hs7uR2ZyyMRlQFYc4yCM811XxQispNZ8NSaoIvs1u9zOxnIEabIwdzZ4wvXJ6EA9QDXI6hptrqtlNquqWUNtZWcUk1pDPEEbIU/v5cjK8cqh+795vnwI+mGaTTV4rT16JpLfbX18w5L6X/rX/M6x/CDapcaxqmizLJE1zBJYQi9L2V9FHbxoYpI1YoQWVl3FcgqDyBgs1zSfEeuai811pOqEtd2U9kqalHHb2cSPE8iyRrKBJIGEhztcfdwRjFXvgt/ySrTP9+X/ANGNXeVlRzWtaM2k2krXvpt5+Wvz6M3xWHjRrTpJ7Nr7jz+10bW4dUsLJ9JlaG18QXGoy6kZotksUiz7cDdvLDzUUgqPu8EiuT16C603wpb6Drs/lkeHxbQWcetw2aw3RVwzT5mQyKRsA++vDcc5PtleFeKbewm+POpy6qIvs9rp6XBMzYjQqqHc2eCF688AgHqAQ/7Xq05Rkordd99Xffze1u2xeHwyre0k3bli3+O34mxe63pzyazapqmlyrfXen3kdyNWtdmIjbrIjAyBtwETN0II754rdsNA1dNSsLGTTdkVjrlzqh1bzkKTRyeaQqgN5m8+cFIKhcKcE8CuI1qxj1Tw/qOoX9qttYwWkslrbSRhGYhCRNKD0x1VD937zfPgR+1aL/yAbD/r2j/9BFH9o1eTk5V+P8vLfft8vI5ORcvKcZo3hvUNKtfB4ms1gGn2L294FdPkkeW3IHB+bJRjkZGR716BVa//AOPdf+u0X/oxas1y4jETxEuae+v4tv8AUpKwUUUVzjCiiigAqOb/AFY/31/9CFSVHN/qx/vr/wChCgCSiiigAooooAKKKKAI5/8Aj3k/3D/KpKjn/wCPeT/cP8qkoAKKKKACiiigAqOf/j3k/wBw/wAqkqOf/j3k/wBw/wAqAJKKKKACiiigAooooAKjg/494/8AcH8qkqOD/j3j/wBwfyoAkooooAKKKKACiiigDJsf+Qfb/wDXJf5Cp6gsf+Qfb/8AXJf5Cp6ACiiigAooooAKan3T9T/OnU1Pun6n+dADqKKKAGr95/r/AEFOpiuNzdev90+lLvHo3/fJoAdRTd49G/75NG8ejf8AfJoAdRTd49G/75NG8ejf98mgB1LZ/wDIQuP+uUf83pm8ejf98mi0kVdQnyG/1UfRCe70AaNFR+cvo/8A37b/AAo85fR/+/bf4UASUVH5y+j/APftv8KPOX0f/v23+FAElFR+cvo//ftv8KPOX0f/AL9t/hQAD/j4f/cX+ZqSoBKv2hzh/ur/AAH1PtT/ADl9H/79t/hQBJRUfnL6P/37b/Cjzl9H/wC/bf4UASUVH5y+j/8Aftv8KPOX0f8A79t/hQBJUZ/4+E/3G/mKPOX0f/v23+FMMq/aEOH+638B9R7UAT0VH5y+j/8Aftv8KPOX0f8A79t/hQBJRUfnL6P/AN+2/wAKPOX0f/v23+FAElFR+cvo/wD37b/Cjzl9H/79t/hQAH/j4T/cb+YqSoDKv2hDh/ut/AfUe1P85fR/+/bf4UASUVH5y+j/APftv8KPOX0f/v23+FAElFVrq/gs7V7i4MixoBkiJieTgAADk5NYmveLBp3h++vLK0uzcQQM8f2ixmWPcBxuOBx+I+tS5JbmtOjOo0orfQ5/4nJaHW/DU2omMW9s9zOzTNhE2Rhg7Z4+Ujdk9CAeoBrmL9G1XTbnUdUU22nW8Ly29tONhYqCRNMD0xjKofu8M3z4Eev4/tryLW/Dlx4ovtNubWCa4lBjtGt0iKxb97lpXBC7QRnGCAeoGMi/RtV0251HVFNtp1vC8tvbTjYWKgkTTA9MYyqH7vDN8+BGJ3HKm4Sjre+v42/Q0/h14ik0D4V+H1i0u6vvtdzJEXiGEiHmkfMfU5+UfxHjIrvP+Elk/wChf1n/AL8J/wDF1xnwvlvo/hPpB0+/s7L97Krtd2bzBiZSFA2yJg5OO+ciuv8AL8U/9BjSf/BLP/8AJFYUubkVuy7HqY72LxNTmtfml/N38lYk/wCElk/6F/Wf+/Cf/F15L4iWzm+OuoXOpBY4LfTo7o+e+1YyqxkM/OPl+9zkAqG6gEek6tbeNJdPK6drOmLcb1KsmlSx4+YZyTMwxjPG0/1HmmvRW7/HC/m1p4mW002K4lkYGKIOixneVJ4UH5huJ2kA5yoNE27xv3X6lYWNNU6rg18D2v3j3RNrsb6v4d1G/wBSRoLCG1lltrWYbSxCEiaUHoRjKofu8M3z4Efsui/8gGw/69o//QRXjWuxS6x4d1K+v4nhsobSWS0s5VKs7BCVmlU8gg8oh+7wzfPgRt+H/wAZNb1bxNpmh6hY2X2JkaNmtbeVpsJExGAGOeVGeOma0nVjCSi+pxYbL6+JpTq01pHf8z2u/wD+Pdf+u0X/AKMWrNY11rUE0KqttqAIkRubCbs4P932q3aavbXkskUa3CSRqrMktu8bYOcHDAZHyn8q05kcjpTSu0XqKj85fR/+/bf4Uecvo/8A37b/AApmZJRUfnL6P/37b/Cjzl9H/wC/bf4UASVHN/qx/vr/AOhCjzl9H/79t/hTJZVKDh/vL/AfUe1AE9FR+cvo/wD37b/Cjzl9H/79t/hQBJRUfnL6P/37b/Cjzl9H/wC/bf4UASUVH5y+j/8Aftv8KPOX0f8A79t/hQAT/wDHvJ/uH+VSVBNKpt5Bh/unqh9PpT/OX0f/AL9t/hQBJRUfnL6P/wB+2/wo85fR/wDv23+FAElFR+cvo/8A37b/AAo85fR/+/bf4UASVHP/AMe8n+4f5Uecvo//AH7b/CmTSqbeQYf7p6ofT6UAT0VH5y+j/wDftv8ACjzl9H/79t/hQBJRUfnL6P8A9+2/wo85fR/+/bf4UASUVH5y+j/9+2/wo85fR/8Av23+FAElRwf8e8f+4P5Uecvo/wD37b/CmQyqLeMYf7o6IfT6UAT0VH5y+j/9+2/wo85fR/8Av23+FAElFR+cvo//AH7b/Cjzl9H/AO/bf4UASUVH5y+j/wDftv8ACjzl9H/79t/hQBm2P/IPt/8Arkv8hU9V7JwNPt+v+qX+E+lTbx6N/wB8mgB1FN3j0b/vk0bx6N/3yaAHUU3ePRv++TRvHo3/AHyaAHU1Pun6n+dG8ejf98mkRxt79T/CfWgB9FN3j0b/AL5NFAAv3n+v9BTqav3n+v8AQU6gAooooAKKKKACls/+Qhcf9co/5vSUtn/yELj/AK5R/wA3oAvUUUUAFFFFABRRRQBGP+Ph/wDcX+ZqSox/x8P/ALi/zNSUAFFFFABRRRQAVGf+PhP9xv5ipKjP/Hwn+438xQBJRRRQAUUUUAFFFFAEZ/4+E/3G/mKkqM/8fCf7jfzFSUAFFFFAGX4j/wCQHJ/11i/9GrV2+srfUrCeyvohNbzoY5Iz/Ep6jiqXiP8A5Acn/XWL/wBGrWpU9WbXapxa7v8AQ8p8deHdE0fXfD07KyQRvcTyNd3ckkaGOMMHPmMQNvXPYgHsKyr9G1XTbnUdUU22nW8Ly29tONhYqCRNMD0xjKofu8M3z4EfT/E5LQ634am1Exi3tnuZ2aZsImyMMHbPHykbsnoQD1ANcxfo2q6bc6jqim2063heW3tpxsLFQSJpgemMZVD93hm+fAjdkloJ1J1JJzd/Us+B9O0O9+FnhybXXuontriZ7d7ZZCf9YdwIQHgjAzwcE4Irqv8Aii/+oj/5O1H8Fv8AklWmf78v/oxq7yuenC8E9Nl0PUx2JccTUg3LSUtpW6vyPPdQvvBOnWT3UkepvHGRv2tdrtXOC2WIGB1POcdMniuH1oaZcfGu7u7hl+wwaXDdI87MiqqpGyu4bH3fvfN0IB4IBHu8kMcwUTRq4Vg6hhnDA5B+oNeHeJorN/j1qc2pFFgtdPjuC0r7Y0KCMhm5wQv3ueAQG6gEE4tOPr/mXhayqU6q1vyPd36x8h2uxPrHh3Ur7UkaDT4bSWS2tZhtLkISJpQehHVUP3eGb58CP0Dwn8PPC2jrp2sadpSw36wKwm86RsFkwxwWI5BPbvXn+uxvq/h3Ub/UkaCwhtZZba1mG0sQhImlB6EYyqH7vDN8+BH7Lov/ACAbD/r2j/8AQRW7jFu7R5EK9WnFwhJpPdJ7+pJf/wDHuv8A12i/9GLVSH/kbbv/AK8YP/RktW7/AP491/67Rf8AoxaqQ/8AI23f/XjB/wCjJaH0CntL0/VGpRRRVGQUUUUAFRzf6sf76/8AoQqSo5v9WP8AfX/0IUASUUUUAFFFFABRRRQBHP8A8e8n+4f5VJUc/wDx7yf7h/lUlABRRRQAUUUUAFRz/wDHvJ/uH+VSVHP/AMe8n+4f5UASUUUUAFFFFABRRRQAVHB/x7x/7g/lUlRwf8e8f+4P5UASUUUUAFFFFABRRRQBk2P/ACD7f/rkv8hU9QWP/IPt/wDrkv8AIVPQAUUUUAFFFFABTU+6fqf506mp90/U/wA6AHUUUUANX7z/AF/oKdTV+8/1/oKdQAUUUUAFFFFABS2f/IQuP+uUf83pKWz/AOQhcf8AXKP+b0AXqKKKACiiigAooooAjH/Hw/8AuL/M1JUY/wCPh/8AcX+ZqSgAooooAKKKKACoz/x8J/uN/MVJUZ/4+E/3G/mKAJKKKKACiiigAooooAjP/Hwn+438xUlRn/j4T/cb+YqSgAooooAy/Ef/ACA5P+usX/o1a1Ky/Ef/ACA5P+usX/o1a4bVZNA8KQ383hnQhYao+g3d7Z63DHCUutiKzF2DF5G3MjZkUgnJyeanq3/XU1s5QjFd3+hsfEHw3qGt3eh3mnWMOof2dPJI9vLOI+So2tyMHawB56HBHIyOS1Pwz4x1ScreaBAbVV/cW41BNplwSJJOPm28bV6Ajcctt2ddf3uuaJotnIddmubm6Jkkkk8OT6gq5VfkRLQoY1BzjeWJzjccVjar4s8Qf2VpsUE15cXF9qi2vn2WhPps0SeU74RL9yjMxXbuJxyQAWxVNa2MovRS+Z0Pw/0W48H/AA/tLDXJIIZbbzGlcSfIoLkj5jjsa6yvPx4Xu/HXhSCPxTLcWl/ZzXESSEWxmKliqs7Q52PtxuEToCcg/KdtSz2d1o+qeHvB2i6tLpNnLBdXDXkNtarLKUK4iRfK8oZ80scR5IT6mlGKilFf1oa1qsq1SVSW7bb9bnd15H4g8GaprHxGbxZpNrZ6zplxbxG32XoVWZQu1/7rAFdw6jO1hyBjXtPEOtL4lh8Kvqwv7uS4jvVvkhjXzNO8rLNhRt5lUx5HZwc5rmdG1jUtO8K2I0meK1nGhaKsc5to3ZfNvHjbJIyw2k/KTgZJGCSaORTa9V+v/DfeVSqzpKfL1Vn6Nr/gP0JtZ8JeMtcjngu9Ctxa+UVgg/tBCvmkHEsnHzbTjavQEbuW27PWNHaL+yYIobiG4+zqLeRoXDKHT5WXPqCCCOoxXCNreuQ6o/hptbuGZ9cSwXV3hg8+OI2YucbRGIyxYFAdh4PQkZrU+HVzb2ugz2lxqS3E8mrajskmeMSXGy5fc+FCg+p2gAZ6Cq6X/rp/mYtWS/rv/kdXf/8AHuv/AF2i/wDRi1Uh/wCRtu/+vGD/ANGS0Tarp95DbLaX9tO1x5U8IimVjJF5iDeuDyuSORxyKIf+Rtu/+vGD/wBGS1L6GlPaXp+qNSiiimZBRRRQAVHN/qx/vr/6EKkqOb/Vj/fX/wBCFAElFFFABRRRQAUUUUARz/8AHvJ/uH+VSVHP/wAe8n+4f5VJQAUUUUAFFFFABUc//HvJ/uH+VSVHP/x7yf7h/lQBJRRRQAUUUUAFFFFABUcH/HvH/uD+VSVHB/x7x/7g/lQBJRRRQAUUUUAFFFFAGTY/8g+3/wCuS/yFT1BY/wDIPt/+uS/yFT0AFFFFABRRRQAU1Pun6n+dOpqfdP1P86AHUUUUANX7z/X+gp1NX7z/AF/oKdQAUUUUAFFFFABS2f8AyELj/rlH/N6Sls/+Qhcf9co/5vQBeooooAKKKKACiiigCMf8fD/7i/zNSVGP+Ph/9xf5mpKACiiigAooooAKjP8Ax8J/uN/MVJUZ/wCPhP8Acb+YoAkooooAKKKKACiiigCM/wDHwn+438xUlRn/AI+E/wBxv5ipKACiiigDL8R/8gOT/rrF/wCjVpkHhPw5az3c1roGlwy3qNHdSR2UatcKxyyuQPmB7g5zT/Ef/IDk/wCusX/o1a1Kn7Rq/wCEvV/oIqhFCqAqgYAA4AqpqmnWWrWostUs7e9tJW/eQXMSyRvgEjKsCDyAfwq5Ucn+si/3/wD2U1W5lsR2Gn2WlWMdlpdpBZWsQIjgt4ljRMnJwqgAckmotV0XS9dtVtdb02z1G3Vw6w3kCyoGAIDYYEZwTz71doo33DYx7Pw9FaeJJ9VDx7DZRWVrbxwhFtokLMQDnncSOwACAVZXQtISNY00uyVFSONVFugAWNt0agY6K3IHY8inW+r2d2u61eSVftMloSkLkLIhYMDxwAVI3HjOOeRm7VSjKLtJWD+v6+4oXuhaRqVvcwahpVldw3brJcRz26OszKAFZwRhiAqgE9MD0pbbQ9Js1hWz0uzgW33+SIrdF8vf9/bgcbu+Ovepb/ULbTLT7TfS+VD5iR7tpb5ncIowBnlmA/GhdQtm1STTllzdxwrO8e08IzMqnOMclG4znihQk43S0/r/ADQFSbStPs4bZrSwtoGt/KghMUKqY4vMQ7FwOFyBwOOBRD/yNt3/ANeMH/oyWrd//wAe6/8AXaL/ANGLVSH/AJG27/68YP8A0ZLUPoa09pen6o1KKKKZkFFFFABUc3+rH++v/oQqSo5v9WP99f8A0IUASUUUUAFFFFABRRRQBHP/AMe8n+4f5VJUc/8Ax7yf7h/lUlABRRRQAUUUUAFRz/8AHvJ/uH+VSVHP/wAe8n+4f5UASUUUUAFFFFABRRRQAVHB/wAe8f8AuD+VSVHB/wAe8f8AuD+VAElFFFABRRRQAUUUUAZNj/yD7f8A65L/ACFT1BY/8g+3/wCuS/yFT0AFFFFABRRRQAU1Pun6n+dOpqfdP1P86AHUUUUAMVxubr1/un0pd49G/wC+TQv3n+v9BTqAG7x6N/3yaN49G/75NOooAbvHo3/fJo3j0b/vk06igBu8ejf98mi0kVdQnyG/1UfRCe706ls/+Qhcf9co/wCb0AWvOX0f/v23+FHnL6P/AN+2/wAKkooAj85fR/8Av23+FHnL6P8A9+2/wqSigCPzl9H/AO/bf4Uecvo//ftv8KkooAgEq/aHOH+6v8B9T7U/zl9H/wC/bf4UD/j4f/cX+ZqSgCPzl9H/AO/bf4Uecvo//ftv8KkooAj85fR/+/bf4Uecvo//AH7b/CpKKAI/OX0f/v23+FMMq/aEOH+638B9R7VPUZ/4+E/3G/mKADzl9H/79t/hR5y+j/8Aftv8KkooAj85fR/+/bf4Uecvo/8A37b/AAqSigCPzl9H/wC/bf4Uecvo/wD37b/CpKKAIDKv2hDh/ut/AfUe1P8AOX0f/v23+FB/4+E/3G/mKkoAj85fR/8Av23+FHnL6P8A9+2/wqSigDJ8QyK2iyABv9bF1Qj/AJarXKz2dn/wnGp3Gu6Nd319LcW7aPerp8kyW8YVQAsoUiLbKJGbJXII+9nFdZ4j/wCQHJ/11i/9GrWpW+HrujKVuqtvbrf9NfI0kr0l6v8AJHjdvpNz/wAI/JFp+h6ha6kPD17Brcj2bob26ZFCZbbi4cuJGDqWwCeRuwdO98NyWGoTy+H9LmtzbWVlfwrDAVFxdxPMXUkj5pHQ7GJ+Yh+TXplzcxWdrLc3DbIolLu3oBVDQ9Yj1/TY7tImt5EciSBzlkOOAT7gg/jXqyzKvKLqKPu3117u+vfay7Ky9eV8l1Tb1f8AwP8AL8zznV9Iv7r+ztRvrEPZ6hLc3d7bXuizagIpnCCDfbxlWysSFN3O0545BFhdLtoriw/4S/S9R1+xj0aOGxZtJllaOYM3mZjG5opGXycMxB+U5YEGu6sPEdtf69eaZGjK1uPklJ+WbHD4/wB08fn6UXniO2s/EVrpLoxadSXlB+WIkgID7sTj8V9RV/XcTpS5LWTemjS30drre2+2lrmftKTjzc3l87/5/wCZwem6LHY30MOnaFLZXkXiWeeaZNNdFaBkufJbzAm11AdRwTtzg4zWfb6Tc/8ACPyRafoeoWupDw9ewa3I9m6G9umRQmW24uHLiRg6lsAnkbsH0vW/EttorwxNG88skqoyp0jU5JZj2+UMcdTg9gSIfEnjTSPDCMt7I81ysRmNtbgFwg5LsSQsa8H5nZV4PNTLMq0bVJR37ve1/wANdO1lvY1jKMpuz1X+dzi9W8OyWi39poWm3VnDc2uluz2tqctOt4TJIcqQ0gXDMWBOAC2a27aK98P+MNUv7uTWtciOmWqJK1pGXLedKCiiONFOAwY55AP0rNm+J+tpo8uqr4TggtIoWnK32qGGYRqM5KCFgpwM4LZHfByB6JaXAu7KC5VSqzRrIAe2RmuWWYznBwmr337/AGeu/wBkpQSVl5fhb/Ix9Q10ASxf2bqR8m/trfeLU7ZNzIfMU90G7BPYg8VYikH/AAlV22Gx9ig/hOf9ZL2q7f8A/Huv/XaL/wBGLVSH/kbbv/rxg/8ARktebNxdrKxvT2l6fqjQ85fR/wDv23+FHnL6P/37b/CpKKRmR+cvo/8A37b/AAo85fR/+/bf4VJRQBH5y+j/APftv8KZLKpQcP8AeX+A+o9qnqOb/Vj/AH1/9CFAB5y+j/8Aftv8KPOX0f8A79t/hUlFAEfnL6P/AN+2/wAKPOX0f/v23+FSUUAR+cvo/wD37b/Cjzl9H/79t/hUlFAEE0qm3kGH+6eqH0+lP85fR/8Av23+FE//AB7yf7h/lUlAEfnL6P8A9+2/wo85fR/+/bf4VJRQBH5y+j/9+2/wo85fR/8Av23+FSUUAR+cvo//AH7b/CmTSqbeQYf7p6ofT6VPUc//AB7yf7h/lQAecvo//ftv8KPOX0f/AL9t/hUlFAEfnL6P/wB+2/wo85fR/wDv23+FSUUAR+cvo/8A37b/AAo85fR/+/bf4VJRQBH5y+j/APftv8KZDKot4xh/ujoh9PpU9Rwf8e8f+4P5UAHnL6P/AN+2/wAKPOX0f/v23+FSUUAR+cvo/wD37b/Cjzl9H/79t/hUlFAEfnL6P/37b/Cjzl9H/wC/bf4VJRQBkWTgafb9f9Uv8J9Km3j0b/vk1FY/8g+3/wCuS/yFT0AN3j0b/vk0bx6N/wB8mnUUAN3j0b/vk0bx6N/3yadRQA3ePRv++TSI429+p/hPrT6an3T9T/OgA3j0b/vk0U6igBq/ef6/0FOpq/ef6/0FOoAKKKKACiiigApbP/kIXH/XKP8Am9JS2f8AyELj/rlH/N6AL1Q213bXiO1pcRTrHI0TmJwwV1OGU46EEYI7Gpq8f0TUdX0G9F7bajNPZX3i3UbOTSxBHsZczuGDbd+/cn97BBAx3OtOnzp67Eydrf10bPYKK8d0Px14jOiR+INcm1AaVd6XdXc7qLAfZ3UBl+yIrNI235lImBwQC2ORWXr+q+JbrR9S0jxFqjoEXSdQjZJ7eeSISXYQo7LbxrxhWwFPKj5mUkV0rBT51Btbpfjb8CJVEo839dP80e7UVFbRPBaxRS3Ely6IFaaUKHkI/iO0Bcn2AHtUtcJqRj/j4f8A3F/makqMf8fD/wC4v8zUlABRRRQAUUUUAFRn/j4T/cb+YqSoz/x8J/uN/MUASUUUUAFFFFABRRRQBGf+PhP9xv5ipKjP/Hwn+438xUlABRRRQBl+I/8AkByf9dYv/Rq1qVl+I/8AkByf9dYv/Rq1pkhVJYgADJJ7VPU1f8Ner/QZNBFcIEnQOoZXCt0yDkH8CAfwrJ8L28S6DbTKgEkke12HBYBmxn6ZNasV1BOxWGeORgMkI4JxXnOheMNWF3a6SmiXcUMOShUweZegEk7PMlQBfXAY/wC7W/tOWi15r9TOnhpVa2ltE3rp2Ou06xtk8RX6JAirbLAYQBjYdjjj8CR+NF9Y2r+JrKN4EKXEFy0oI++f3IyffAA9sD0rNstc1AeIdTYeFtWYskOUEtpleG6/v8c+xNLda3ft4k06Q+F9WVlgnAjMlrufJjyR+/xxjnJHUYzzjdVW6t7v4fP+UweGap9Pi7x/m9Sh4+1eCyW58zyVHlm0Rpm2xiWVCzyOeMeXBGzZyOGxkdRyVtapcK+qauzwWMT/AGoC8O15nUZ+03BOMEbQVQ4CAAkBgqxO1e9j1jX9Om1mwlsrW0F5qzveyReWT5iJC52u33EVuWwAQCOgNS/8hH/iaax/ommWv7+CC4+TO35hPMD93GMqh+7jc3z4EeNWTb5Oi0/z/EqEOW7e7+fpt5FDXY31fw7qN/qSNBYQ2ssttazDaWIQkTSg9CMZVD93hm+fAj9l0X/kA2H/AF7R/wDoIrxrXIn1fw7qN/qSNBYQ2ssltayjaXIQkTSg9CMZVD93hm+fAj9g0K6t5NFsEjnjd/s0fyq4J+6O1Ymtmyzf/wDHuv8A12i/9GLVSH/kbbv/AK8YP/RktW7/AP491/67Rf8AoxaqQ/8AI23f/XjB/wCjJal9DSntL0/VGpRRRVGQUUUUAFRzf6sf76/+hCpKjm/1Y/31/wDQhQBJRRRQAUUUUAFFFFAEc/8Ax7yf7h/lUlRz/wDHvJ/uH+VSUAFFFFABRRRQAVHP/wAe8n+4f5VJUc//AB7yf7h/lQBJRRRQAUUUUAFFFFABUcH/AB7x/wC4P5VJUcH/AB7x/wC4P5UASUUUUAFFFFABRRRQBk2P/IPt/wDrkv8AIVPUFj/yD7f/AK5L/IVPQAUUUUAFFFFABTU+6fqf506mp90/U/zoAdRRRQA1fvP9f6CnU1fvP9f6CnUAFFFFABUF7eQadp9xe3b7Le2iaWVsE7VUZJwOTwKnrG8Zf8iJr3/YNuP/AEU1VBc0kmBJonibSvEEZ/s26DSooaS2lUxzRA9N0bYYDng4wexNa1n/AMhC4/65R/zesqPw3pWv+G9JOpWoaeG1iMFzExjmhOwcpIpDL+B571UjtvEvhmd5YyfE1gVVSrFIb2NRnoeI5ep/uH/eNauEG7Rf3/5/8MI66qa6Rpq7Nun2o8u4a6TEK/LM2d0g44c7my3U5PrVbRvEml66ZEsLj/SYf9faTIYp4P8AfjYBl+uMHsTWrWTUoOz0DRmXB4Z0G2vrm9ttE06G6vFdbmeO0jV5wxywdgMsCeTnrUVv4P8ADNpa3FtaeHdJgguUCTxRWMarKoOcMAuGGecGtminzz7jIra1gsrWK1s4I7e3hQJHFEgVEUcAADgAelS0UVG4bEY/4+H/ANxf5mpKjH/Hw/8AuL/M1JQAUUUUAFFFFABUZ/4+E/3G/mKkqM/8fCf7jfzFAElFFFABRRRQAUUUUARn/j4T/cb+YqSoz/x8J/uN/MVJQAUUUUAcV8U9M13VPCscfhzURZSJcxtLlihkUnAG4AkYYqce3ty/W9G8RS+Abuzn1FNQujYGOSOO2w0z7MHB3Dqc9vwre8R/8gOT/rrF/wCjVrUrJwTk/M744qcKMEkvdbey8upwWn2ljceM9IuNB8Lz6THbCdrqZ9OFqGUptUZwN3zEcfj2rX0HVNN/szTtOlZbi8++IETzGi+Y4dsA7B6M2PbmumrgdB8AaTNa2uoxRIDOzPcwSp5iSkscsP4lb6HHqpraMZRoy5e6/JmUqtKtXi6ratFpdeqer+f/AAx1Nh/yM2rf7kH8movP+Rr0v/r2uf5xVi2XhDQG8Q6nG2lW5REh2jB4yGzRdeENAXxNp0S6VbhHguCy4PJBjx/M10Xn7TZfD3/u+hxctD2fxP4uy/m/xHEapb2r+INIudTkVLa00NZ2WRwsSukzHe5PXaeRk4BAbqqkP/5CP/E01j/RNMtf38EFx8mdvzCeYH7uMZVD93G5vnwI2+IPD+j6Fr1hdzQQ2tra3FzBMzS7Y84W4gdwTghVWTGeAyg9VBDv+Qj/AMTTWP8ARNMtf38EFx8mdvzCeYH7uMZVD93G5vnwI8613Uk311+8KfKoJR6f15md4gik1jw1qd9qKNBYQ2kslrayjaXIQkTSg9COqofu8M3z4EfPfC7wZ4otfH+l38mmXdjbqsj/AGua3JRQYmAPOM5yB+NdHrsb6v4d1G/1JGgsIbWWW2tZhtLEISJpQehGMqh+7wzfPgR+y6L/AMgGw/69o/8A0EVx1KKqSUm9j18JmVTCUKlGMU1Pv6WKd1a6qsKmXVIWXzEAH2PuXGD9/scGuV0vQvFcHxiur+81xJ9L+yqzQDKhkIZUUJyFIdWbOf5mu6v/APj3X/rtF/6MWqkP/I23f/XjB/6Mlq5QTaMKOInGM0ktVbZd0alFFFaHEFFFFABUc3+rH++v/oQqSo5v9WP99f8A0IUASUUUUAFFFFABRRRQBHP/AMe8n+4f5VJUc/8Ax7yf7h/lUlABRRRQAUUUUAFRz/8AHvJ/uH+VSVHP/wAe8n+4f5UASUUUUAFFFFABRRRQAVHB/wAe8f8AuD+VSVHB/wAe8f8AuD+VAElFFFABRRRQAUUUUAZNj/yD7f8A65L/ACFT1BY/8g+3/wCuS/yFT0AFFFFABRRRQAU1Pun6n+dOpqfdP1P86AHUUUUANX7z/X+gp1MV13N8w6+vtS+Yn95fzoAdRTfMT+8v50eYn95fzoAdWN4y/wCRE17/ALBtx/6KatfzE/vL+dY3jJ1/4QXXvmX/AJBtx3/6ZNWlP44+onsbehf8i7pv/XpF/wCgCr9c/Dr+l6D4W0qTVrxIPNtokhjwXkmbYPljjUFnb2UE1RTVdf8AEU7R2Sjw3YhVY3F0ElvJVJ/gjyUi6Hl95HQxiqdNttvRBcteL4fDBht5vErJFcb9tlLCWW73/wB2Ax/vC3+ymc+hqj4ck8ZGKbzUSSwyv2N9YIjvGXHPmLECuOmM7X67lB67Gj6Bo+izPc2376/lXbNf3U3nXEo44MjHO3IzsGFHYCtbz4f+eqf99Cm6iUeVa+v6dgsZe/xL/wA8dK/7/Sf/ABNG/wAS/wDPHSv+/wBJ/wDE1qefD/z1T/voUefD/wA9U/76FZ8/kgMvf4l/546V/wB/pP8A4mjf4l/546V/3+k/+JrU8+H/AJ6p/wB9Cjz4f+eqf99Cjn8kBkh/EfnNiHS920Z/fSdOf9n607f4l/546V/3+k/+JrRE0X2hz5iY2rzuHqaf58P/AD1T/voUc/kgMvf4l/546V/3+k/+Jo3+Jf8AnjpX/f6T/wCJrU8+H/nqn/fQo8+H/nqn/fQo5/JAZe/xL/zx0r/v9J/8TRv8S/8APHSv+/0n/wATWp58P/PVP++hR58P/PVP++hRz+SAy9/iX/njpX/f6T/4mml/EfnLmHS9204/fSdOP9n6VrefD/z1T/voUwzRfaEPmJja3O4eoo5/JAZ2/wAS/wDPHSv+/wBJ/wDE0b/Ev/PHSv8Av9J/8TWp58P/AD1T/voUefD/AM9U/wC+hRz+SAy9/iX/AJ46V/3+k/8AiaN/iX/njpX/AH+k/wDia1PPh/56p/30KPPh/wCeqf8AfQo5/JAZe/xL/wA8dK/7/Sf/ABNG/wAS/wDPHSv+/wBJ/wDE1qefD/z1T/voUefD/wA9U/76FHP5IDJL+I/OXMOl7tpx++k6cf7P0qxo+oXV499Bfwwxz2dwIWMLllbMaSAjIB/jx+FWzNF9oQ+YmNrc7h6iszR5Y11fXyzqAb9MEnr/AKLBVXUk9ANqio/Ph/56p/30KPPh/wCeqf8AfQrIZn+I/wDkByf9dYv/AEatalZPiGWN9FkCOrHzIuAc/wDLVa0/PiHWVP8AvoVPU1f8Ner/AEH1leGP+Ras/wDdP/oRrR8+H/nqn/fQqCEW1nDDb2rIkSkgKGzgYJ/nWyklBx81+v8Amc7i+dS8n+n+RVsP+Rm1b/cg/k1F5/yNel/9e1z/ADiq6i2kdxLOjRiWYKHbf97HT+deO/Hv4ly+EJdFtPDs6prDP9peUc7LcMPkI6EOy+ucIR3rqoRdeuow6q3/AJLYzcGoW87/AI3PQfFOhwapdx29w3lJqCLEswUMYbiI+bBIAeMgh/rwK4K5EyazLD4vaCwGnATR2zSYim2jcbne2AyKRlR0Qjc3zbRH6VoOu6V4x8LabrFuyNb3SJcIhfmJ1OSpI7qwIP0Pareq6bpGuWf2XV7a1vIc7gkwDbT6j0PuOa5qj2T3Wj/r8PkaRjZvszx7XY31fw7qN/qSNBYQ2ssttazDaWIQkTSg9CMZVD93hm+fAj9l0X/kA2H/AF7R/wDoIrlL34X+E7+D7PPLqDWxYMYG1ad0JByOGc9CAQOxAI6V2MLW0ECQwvGscahVXd0AGAKyLG3/APx7r/12i/8ARi1Uh/5G27/68YP/AEZLVi+miNuuJEP76L+If89FqrFIg8VXbF12mxgwc8f6yWpfQ1p7S9P1RrUVH58P/PVP++hR58P/AD1T/voVRkSUVH58P/PVP++hR58P/PVP++hQBJUc3+rH++v/AKEKPPh/56p/30KZLNEUGJEPzL/EPUUAT0VH58P/AD1T/voUefD/AM9U/wC+hQBJRUfnw/8APVP++hR58P8Az1T/AL6FAElFR+fD/wA9U/76FHnw/wDPVP8AvoUAE/8Ax7yf7h/lUlQTTRG3kAkQkqcAMPSn+fD/AM9U/wC+hQBJRUfnw/8APVP++hR58P8Az1T/AL6FAElFR+fD/wA9U/76FHnw/wDPVP8AvoUASVHP/wAe8n+4f5UefD/z1T/voUyaaI28gEiElTgBh6UAT0VH58P/AD1T/voUefD/AM9U/wC+hQBJRUfnw/8APVP++hR58P8Az1T/AL6FAElFR+fD/wA9U/76FHnw/wDPVP8AvoUASVHB/wAe8f8AuD+VHnw/89U/76FMhmiFvGDIgIUZBYelAE9FR+fD/wA9U/76FHnw/wDPVP8AvoUASUVH58P/AD1T/voUefD/AM9U/wC+hQBJRUfnw/8APVP++hR58P8Az1T/AL6FAGbY/wDIPt/+uS/yFT1XsnUafb5Yf6pe/tU3mJ/eX86AHUU3zE/vL+dHmJ/eX86AHUU3zE/vL+dHmJ/eX86AHU1Pun6n+dHmJ/eX86RHUL94dT396AH0U3zE/vL+dFAAv3n+v9BTqav3n+v9BTqACiiigAqvf2UOpabc2N0CYLqF4ZApwSrAg8/Q1YopptO6AyNE8L6XoA32cLSXRjEUl7cuZZ5FAGFLtyF4BCjCjsBWxZ/8hC4/65R/zekpbP8A5CFx/wBco/5vTlJyd5MC9RRRUgFFFFABRRRQBGP+Ph/9xf5mpKjH/Hw/+4v8zUlABRRRQAUVU1DVbHSoJJdQuo4VjgkuGBOWMcYy7BRyQARnAPUetWY3WWNZEOVYBlPqDVOMkuZrQB1Rn/j4T/cb+YqSufm8beF7e82XniDTrR42liZLq5WFtyPsbhyCRuVhnocHFVClUqfBFv0QbbnQUVV07VNP1e0F1pN9bX1uWKia2mWRMjqMqSM1aqJRcXaSsw3CiiikAUUUUARn/j4T/cb+YrL0X/kMeIf+v9P/AElgrUP/AB8J/uN/MVl6L/yGPEP/AF/p/wCksFXHaXp+qA2KKKKgDL8R/wDIDk/66xf+jVrUrL8R/wDIDk/66xf+jVrUqepq/wCGvV/oFRyf6yL/AH//AGU1JUcn+si/3/8A2U1RkSV5r4/+FXhTXtT/ALe1Szmmvrq6tIJG+0OFKGWOM4UHA+Xjj69a9KrH8T/8gy2/7CNn/wClMdb0Kk6dRODsJq6GeE/CWk+CtF/srQY5YrTzWl2yzNIQxxnBJ4HHQcfma26KKylKUnzSd2MKKKKkCtf/APHuv/XaL/0YtVIf+Rtu/wDrxg/9GS1bv/8Aj3X/AK7Rf+jFqpD/AMjbd/8AXjB/6MlqX0Nae0vT9UalFFFUZBRRRQAVHN/qx/vr/wChCpKjm/1Y/wB9f/QhQBJRRRQAUUUUAFFFFAEc/wDx7yf7h/lUlRz/APHvJ/uH+VSUAFFFFABRRRQAVHP/AMe8n+4f5VJUc/8Ax7yf7h/lQBJRRRQAUUUUAFFFFABUcH/HvH/uD+VSVHB/x7x/7g/lQBJRRRQAUUUUAFFFFAGTY/8AIPt/+uS/yFT1BY/8g+3/AOuS/wAhU9ABRRRQAUUUUAFNT7p+p/nTqan3T9T/ADoAdRRRQA1fvP8AX+gp1NX7z/X+gp1ABRRRQAUUUUAFLZ/8hC4/65R/zeoYru3nnnhgniklt2CzRo4LREgMAwHQkEHnsams/wDkIXH/AFyj/m9AF6iiigAooooAKKKKAPE9L1qeTw6LrSPEN9qF2fDF3Lqp+3tP9mmWMeUT8xEMgO4ADBOGJyQTW94mNzoq6JC9/KumXccs13eajr89kr3O1NimdQxQEeYwjUIhI6cYPe6LpUGh6bbaXaNI8FpbxxRtKQWIGQMkADP4Vzeo+PJ9Lv8AUEvbGCG2tXYLLJPjKKMl2OMKOvGTgAEkEkL77x6qV704XSv1tdO9tUla19O1l2Ia/r7v8vxOX1bVbmG10x9T8QQXs/8AZUZFpa63NYTzOScTQbVAumcAAKwAyo6bzVi71WD+z/Es+oeILy18UQ/2h5OnpqEieVGsUnlFYAdu3ywkgkC53H72eK0rb4nTvaTXt5pkdnaqC6GeYowjAyXcEDZnk7TyBjOCSqlt8Tp3tJr280yOztVBdDPMUYRgZLuCBszydp5AxnBJVb+sysl7L7pJfK1rJd7LXuJJJp+n4FXxTDJpuk/Zo76+nS78PapPcfabuSXzZBFDhsE4GMnCqAo3HAGTWfNq11Bpmrv4P1e41XT1sbM3Nz9vaWO3kaUicrKN3lkRfMwQYQYYKOBW1bfE6d7Sa9vNMjs7VQXQzzFGEYGS7ggbM8naeQMZwSVUtvidO9pNe3mmR2dqoLoZ5ijCMDJdwQNmeTtPIGM4JKqqeJqRhGMqd7a6tWet9Vb5LX/IVlZK+3/A/wAjMg1aRNJjF1r1uvh+bWEiubux1ya6+yxeQW2G8YKwDSqnOcjftyAQKdbfZz8Nbj7DK81t/wAJA3lSPK0hdf7TjwS7ElsjnJJJ65rRtvidO9pNe3mmR2dqoLoZ5ijCMDJdwQNmeTtPIGM4JKq23+Jc8kEl/eabHZWqKzIZ5SjCMAEu4IGzpnaeQME4JKqpYibty07WkpfFvbvpu+4W21/rX/P8DsbnxJpVnJdR3N1sa0lhhnHludjzECMcDnJYdOmecVas9StNQlu47SXzHs5jBONpGxwobHI54Ycjjmq3hzWDr/h+21NrWS18/cRFKMMAGKgkdRkAHBwRnBAOQNOvElyJWs7+vp5evXt2101CiiuP8VW1vqnjPw/pOtwxXGj3MVy7W06hori5QIY0dTw2EMrBSDyueqgjLrYZ2FFcn4EWKD+3rHTiP7Js9UaGwVGykaCKMvGnoqymRQBwuCoAxiumlvLaC4it5riKOaYMYo3cBnCjLEDqcZGcdKOiflf71cOthx/4+E/3G/mKy9F/5DHiH/r/AE/9JYKlfXNOKpPa3Ud5us5LuKO0cSvPENvzRqpywPAGOpIHeuE8B+Ip7jxSySLqM82rI02pxSadcRppt2qqyR7nQKAYWVOvJjQ/x5renTlKEpLp/X6Cb1PTqKKKwGZfiP8A5Acn/XWL/wBGrWpWX4j/AOQHJ/11i/8ARq1qVPU1f8Ner/QKjk/1kX+//wCympKjk/1kX+//AOymqMiSsfxP/wAgy2/7CNn/AOlMdbFY/if/AJBlt/2EbP8A9KY6un8aEzYoooqBhRRRQBWv/wDj3X/rtF/6MWqkP/I23f8A14wf+jJat3//AB7r/wBdov8A0YteW6RZ6QNE0S3TSb5PEsV3ZSXDvp9wrKRcKZGZyu3G0SZOcH5qynLlaO3C0VVjLV9For79XrolY9booorU4gooooAKjm/1Y/31/wDQhUlRzf6sf76/+hCgCSiiigAooooAKKZPPFbW8k9zKkMMSl5JJGCqigZJJPAAHeqMHiHRbqKeW21ewmjt5BDM8dyjCJydoViDwxJxg85q405yV0gLs/8Ax7yf7h/lUlY1x4p8PjT4ZzrumiK93payfbI9s7A4Koc/MQeMDvVm41/R7PVItMu9WsYL+bHlWktyiyyZOBtQnJyQegqvY1b25X93bf7hXRoUVmL4m0J7q4tk1rTmuLVgs8Qu0LwksEwwzlTuIXnuQOtZ+oeNdNt9Pe706S31KFTb4lgu42RhLceSSCpJ+U5OSMHGAcg4uOGrSaSi+n47BdHR0Vmp4j0SXR31aPWNPfTYzh7xbpDCpyBgvnaOSB170tx4h0W00uHU7rV7CCwnIEV3JcosUhIJG1ycHOD0Pao9jVvble9tuvb1C6NGo5/+PeT/AHD/ACrD8NeLbfxHDa7Ld4J59Oh1AruDoqSl1ChuCSCh7DtV/TdVg1zw5BqlosiQXduJY1lADAEZGQCRn8adShVpNqatbR/18gujRooorEYUUUUAFFFFABUcH/HvH/uD+VSVHB/x7x/7g/lQBJRRRQAUUUUAFFFFAGTY/wDIPt/+uS/yFT1BY/8AIPt/+uS/yFT0AFFFFABRRRQAU1Pun6n+dOpqfdP1P86AHUUUUAY3irVp9B8I6xqtnAJ57O2kmjjIJBZUyMgc49fauAGv+LbTRb67uNVuII7ewgv7e41FbFjcybiGiEduWPlSZUKRhw3AJ6H1ZfvP9f6Csq18JeHLEg2Xh/S7YiVJh5NlGmJEztfgfeGTg9Rk100asIJqUb/1/Xr1FJXt/Xb+vmebWGo6nr3jLw7rV1q9zHNJHqbDTbeGIG08togbVt8e4uQMOTzn7uByW2HjPxhN4Xl1x5bgQ3ei3t2Hn+xLFBMib4/s6IzSMq8qwkBPAJxyK9Pl8NaFcXn2ufRdPlufOE/nPaoX8wcB9xGdwwOevFInhjQI7q7uY9D01J71HS6lW0jDTq5y4c4ywY9Qc571t9YpctuXp223/wA9/K/UhRd73/rT/L8bdDkJH8SHV/DWmf8ACV3inVLO5u7qdbS23BkWEqsYMZCqC567jgkEngjnLvx14j1DwrBqGkahJDfWXh9NT1DzJIIrdj823CtA7uzFGyqsij5QGBNev/YbQzwTfZYfNt0aOGTyxuiU4yqnsDtGQPQelc14y8OaEngvUZ/7D0t5NO02f7GZLKJ/s+2NiAgKkAZ5x0pU61NyScV9y7y/zX3CjGSWr/rT/g/ecXqunaZrml/EjUtS0yzubmK1Wa3kmgWRoGOnxtlGIypyByPQUpm1HRNWudN8DaedLaHQYL0jTbaxiS5lO/DztOVJiXGCU+b5jkjgHzfwV8drjSYZdP8AF2kWur2F0ojuJ4oUSeRAoTDjG2UBAFw2Djq1e7eHNT8B/Ez97b2+l6wLWBPLt7y1RpLbk7hscZUfdGRwcDk13V6dXCu043jp5rRW2/zJgtFd6/8ABX/DGJq/iXxUzeINRtdcNiunXumwQWK28E0I+0JB5gZ9u5wDKSCrD6kEYnu9c8SQ603h6LxDcbk8RwWJ1B7a3Mxt5LIzFcCMJuDDhtvpkHkH0iTSNNmE4l0+1cXLpJPugU+a6Y2M3HJXauCem0Y6Vj+JPBOmeJJrFrq2tPLh1BL66jktFkF4VieMK+evDDk5wFAx6cMK9K6Uoq3ov7v+UvvHyz5d/wCtf+ARfD/VtQ1bQLs6rc/bZbTUrqzjvPLVPtMccpVXwoC54x8oxxXU1DaWltYWkVrY28VtbwrtjhhQIiD0CjgCpq5KklKTaVjVX6hRRRUDIx/x8P8A7i/zNeOeKoTP4q1G71do4LCzmMkcTuApK8+dIenGMqvQY3H5sBPYx/x8P/uL/M1454qhM/irUbvV2jgsLOYyRxO4Ckrz50h6cYyq9BjcfmwE7cH8bJkZP/H/AP8AEx1T/RdOt/30MM/yZ28+dLnpjGVQ/d+83zYEZ/x//wDEx1T/AEXTrf8AfQwz/Jnbz50uemMZVD937zfNgRn/AB//APEx1T/RdOt/30MM/wAmdvPnS56YxlUP3fvN82BGf8f/APxMdU/0XTrf99DDP8mdvPnS56YxlUP3fvN82BH6ZAf8f/8AxMdU/wBF063/AH0MM/yZ28+dLnpjGVQ/d+83zYEZ/wAf/wDxMdU/0XTrf99DDP8AJnbz50uemMZVD937zfNgRn/H/wD8THVP9F063/fQwz/Jnbz50uemMZVD937zfNgRn/H/AP8AEx1T/RdOt/30MM/yZ28+dLnpjGVQ/d+83zYEYAf8f/8AxMdU/wBF063/AH0MM/yZ28+dLnpjGVQ/d+83zYEZ/wAf/wDxMdU/0XTrf99DDP8AJnbz50uemMZVD937zfNgRn/H/wD8THVP9F063/fQwz/Jnbz50uemMZVD937zfNgRn/H/AP8AEx1T/RdOt/30MM/yZ28+dLnpjGVQ/d+83zYEYB694HuPtfg2xn8mWEP5hVJl2tjzGwSvUZHODgjPIByBv1geB7j7X4NsZ/JlhD+YVSZdrY8xsEr1GRzg4IzyAcgb9eHV/iS9TRbBVTU9K0/WrB7HWLG3vrSTG+C5iWRGwcjKkEcHmrdFZ7jOV0/wRLo+j2+l6N4p1mws7XIhjiis22JxhMvbsSBg4Jyxyck1pWulQ6Xbtda3qkmqPbh3W+1OO3RrdCAGAaONAqkDnI+pxWxXKWjDxZd/2nc/PpEE3/EutyAVmZD/AMfLevzA+WOgAD8krsPUCCDVBJcW8nhDwmskNvbtb295chbGER5B2J8pl2ZUdI9p4IJqLTV8YaXqOq3j6To1yupXK3TxRanKrRFYI4tqkwYbPlA5O373tz1lFNSav5gZ2neKbe6vEsdRtLrSNQkz5dvehcS4/wCecilkc99obcByVFblZl9Y22pWUlpfQrNBIBuRvY5BB6gggEEcggEciqehahcwanPoOqzNPcwx+fa3LgA3MGcHOON6EhWxwdyNxuwEBb8R/wDIDk/66xf+jVrUrL8R/wDIDk/66xf+jVrUqepq/wCGvV/oFRyf6yL/AH//AGU1JUcn+si/3/8A2U1RkSVj+J/+QZbf9hGz/wDSmOtisfxP/wAgy2/7CNn/AOlMdXT+NCZsUUUVAyvfX9pplk93qFxHbW8eN0kjYAJOAPqSQAOpJArn4fiR4SniEkOsxshJAPlP2OP7tYOr+ItSu/iTfW2k6dY38HhqxW4cX1+9qqTSB8upEThiIxtyduN7jPXHbabrNtqPhy11pg1pa3Fqt0ftOEMSMu75+cDAPPOKOl/6/rQOtv6/rUw734geF2t1C6tGT50Z/wBW/Z1P92pB4k0mG+l1uW726bcW0MMVyY22u4kmyo46jFP/AOE38KapLBZ6Z4n0a8upZ4hHBb6hFI7nep4UMSeAak17XtTsNe03SdE0y0vri+hnmLXd81skaxGMHlYpCSfMHYdKVtioytddxn/CwvC3/QXj/wC/b/8AxNT6b428Oavqi6dp2qwzXbKWWLDKW4zxkDJwCcdcAntRpHimHUfBz6/dQG0jhSZp08wOqmFmVyrj7yZQkNgZGDgdK8ns7PUNY8NS6vrt0+lPKragC0mwx3B+cXEp7LGQNiHhVRS3zYWNknutFZnhrV/+Eg8K6Xq5Ty2vbWOd4x/yzZlBZfwOR+FadABUc3+rH++v/oQqSo5v9WP99f8A0IUASUUUUAFFFFAGH42/5J/4h/7Bdz/6KauPuPDmo6/a3FyugmxgktNNs0s7h4S0yQ3IkdiEdkCBDgAnJ+YY6Z9JngiubeSC5iSaGVSkkcihldSMEEHggjtTlUIoVQFUDAAHAFd+HxssPT5YLW9/y8/L/ImS5rf12/yPPvGnh3VrrXr28thqdzYX2liyeHTTZgphnLB/tIPyMHHKHPy8g/LiSbRNYg8SONJtdSt47i4tnuZpZbWeznCKgMjBv36yBVwNgA3Ip6ZNSfEj4jx+A/scT6Y18b1JORN5ezGB/dOetXfD/wAQtM1XwOvifVNmk2u90dZZd+CpPAIALEjsBmlHNnFKlaOitt6avo7WX/DnY8vxDpRxHK+WTstt9tt+hhpoGqy+BbXwvceGjvsfIjkvJJoGiugl1E0jKN27DqrOwZV5GOTV/wAY+HtS1HUNTntNON7BLZ6fGsQeMecYrxpZEw7AfcPfAOcZra8HeMLPxrpdzqGmwyxW8N01uplwC+FU7sDp97p7V0FXHM6jkqkUt2+u7ab6/wB1HPUoSoydKas10PNdQ8Na9fz3Gt21rd6c76xFeiwge2a5ZEt/J3ZcvBv3HdgkjCjkN0s6fouq6PeaTqkWlalfqhvhNa3E9p9oiknkRxKdpWID5HyEJI398mvQaKt5nVcVFxVlp12ta1732fr5mTgmedeGvA115mnnXor20FvoVraH7HqckGJleUupMMilsBl5ORzx3rV0GPXNB8D2mmtovmzWWjAjN2g33Cgjye+OgO/JHNdhUc//AB7yf7h/lWdbMKte/tEmm07a2Vr7a+epXKr3/rp/kV7a5vZb+eK5sPIt0ijaOfzlbzGbO9do5G3A577uOlXKKK4ZNN3SsCCiiipGFFFFABUcH/HvH/uD+VSVHB/x7x/7g/lQBJRRRQB5NH4p8TW2o29+dXkv45/Et7pa6T9miCm3j83aQyp5m5fLHOcYxkdSaDeL/FreHNNvdO1/7dd6zodzqZjW2h22MkOx9iYTO07miPmFjkDkGvRPDfgjS/D17fX621pPqV5e3Fyb4WipMFlkL+Xv5YgZx15x0FalloGjabdXNzp2k2NpPdkm4lgtkRpskk7yBluSTz613+3pR2in8l2f6u9+trbEJNvXv+t/y0/PseZS/EPWtQnnOmXYitfEF1HbeHZREh2COaOKd+Qd2d7uAwPCGrOieLPFeq+JFvAl0NPOtT2E9tKbKO2hiTcihcv9oM2VVyCMHJwMYNUvjxqM3gfwX4fvPCqW2my2WqBbbyraPbEDDKCFUqQAcnoK5XwV8ePCl9rSX3jnw3YafrR4/ty1s1cn5SvzHBkX5cLwWz7CuuOHdSh7SlTutV59Eu3bda3uyW3s3/Wv/A+49O+GkuqX/gnTtV1nVpr+a9tkfymhijjhxn7oVQ2SMZ3E8jgL0rrqzPDc+mT+G7FtDktXsRCqxG0KmMYHIG3gYPatOvKrS5qjaVtdi4ppahRRRWRQUUUUAFNT7p+p/nTqan3T9T/OgB1FFFADV+8/1/oKdVdbK13N/o0PX/nmPSl+w2n/AD6w/wDfsUAT0VB9htP+fWH/AL9ij7Daf8+sP/fsUAT1jeMUaTwLryICzNptwAB3PlNWl9htP+fWH/v2Kx/F9vBb+B9dlghjjkTTbhlZUAIPlNzWlP416iex8NVNaXlzp95Fd2FxLbXMLbo5oXKOh9Qw5BqGprSzudQvIrSwt5bm5mbbHDChd3PoFHJNfojtbU5T2jwR+0prWkeXZ+Mbf+2LQYX7VFhLlB79Ffgd9pPUsa+gfDfxC8LeK9PF3o2s2zjA3xSuI5Iz6MjYI+vQ44Jr5+8Efs161q/l3njG5/se0OG+yxYe5ce/VU4PfcR0KivoHw38PfC3hTTxaaPo1sgwN8sqCSSQ+rO2Sfp0GeAK+SzH6jf918Xlt/Xobw5upsf2vpv/AEELX/v+v+NH9r6b/wBBC1/7/r/jR/Y+m/8AQOtP+/C/4Uf2Ppv/AEDrT/vwv+FeP7nmXqH9r6b/ANBC1/7/AK/41wfxi8b3nhn4fvqPhXU7dL5bmJSy+XKQhJz8pyPQfjXef2Ppv/QOtP8Avwv+FcH8YvA954m+H76d4V0y2e+a5iYqvlxZQE5+Y4Hofwrow3svbR59r9dhSvY5HwR+0tpOoyLb+NrT+yrhgF+12ytJbsfmPK8unUD+LuSQKk17UNP1jxJd6jNqVk+mQzGS2WO5R0kK8+c7A4OCMqucDG4/NgJH4I/Zp0nTpFuPG13/AGrcKA32S2Zo7dSdw5bh36A/w9wQRUmvaHp9r4ivpJ7Kx07StPkYwW0caRxgAZMr44AHJVeg+8fmwE9Gf1b2r+q/Pt/n+gQt/wAvDNS8ttTdb7UbiGCxhPmQW8rhSxHImlB6YxlUP3fvN82BGJeW2put9qNxDBYwnzILeVwpYjkTSg9MYyqH7v3m+bAjp2d1pGr6pePcLDbQ6UFka2mh8raCpYSylgB0BKp/D95vmwI2Q3+i6hrskV4IrdbKP7QLV4CuxcZ86dsbU45WNiCPvMN2BHPNN21Wv4mn7nz/AAL6XltqbrfajcQwWMJ8yC3lcKWI5E0oPTGMqh+795vmwIxLy21N1vtRuIYLGE+ZBbyuFLEciaUHpjGVQ/d+83zYEYtna3bf2lqNtDZ6fbgyRQzRiPIAz5suemByqH7v3m+bAjFs7W7b+0tRtobPT7cGSKGaMR5AGfNlz0wOVQ/d+83zYEdfvPIP3Hn+BzfiLxZcJqlnKsEb2IImjt5SdzkH5XcD7p7qpzjCsQGGFu2vi2x1mYzX37sWxVrewznzZOCHZuASG+6vbG7k7dlXX9AutcvI75IINL02OEkyzkRlUByXdeNuRk4PQAbtpJVZdL8GWMNvJqN9JJbwxRlonuP3ZUAZM0in7owOEP3Rkt8xAj8r/b/bz5fh8/Tp/Vj6J/2P9Tpe0vz+W+/2un6nt/h3WL3SPsOi+INKOnGVJWiuGuo3RirbiDg8cMK6f+07D/n9tv8Av6v+Ncl4S0+88RWuneIPEF/Nd7UmEFrcWccW0M23cQBnkICAcEZ5AORXW/2ZYf8APjbf9+V/wrnftOZ829/62PGq+wuuXtra9vx12sH9p2H/AD+23/f1f8ayLzxNc/2xLYaFpR1ZoII5ppI7qONUDs4Ucnk/u2/Stf8Asyw/58bb/vyv+FZF54YuP7Xlv9D1U6S08EcM0cVrG6uEZyp+YcH9436VMuboKl7C75vle9vw1MnXPGFvf/Di+ubKdLTULiF7VIGlUyxSs5i4APOGOR68V09rbRWdnDa267IYI1jjX0UDAH5CuW1zwVZ2Hw7v4bK1iu9St4XukuWgQTSyqxl6gcZYYHoMCrEHiXU9bhjl8NaJIbaVQ6X2pv8AZo2UjIKpgyNxzgqoPrTjzW94zrey537LY6C8u4bCymu7p9kMKF3bGcADJrnNG8dWWrazLp2I45Y5PJIWbeUk5OxhgDOFblSy5BGc4zu6uLQ6Le/2iu60EDmcZx8gU5/SvPfhT4TI0xfEuptvudQma6WMoAQcsFYn6FiAAB82TnAxRienVzvimVdPvtA1YuIxbakkMrMcAxTK0RBPpuZG+qitXVH1KO0D6PBbXE6uCYrmVolZe4DBWwenYj+dcrqupv4g1TRPD+oaLeWU81+s80VzGskLRQq0jESIWRhuVFwSG+cZXrgGrX1K/wARPijpGgSw6UInvmnRJ2mt5FKoBIMDryTtP0465463wd4pg8Y+GodYtbeS3SR3QxyEEgqcdRXMeNPg7pHizULe7t7j+yWii8po7a3TY4zkHAxzyeee3pXQ+EvBWn+FPDsOlJtvfLZmaeaJdzFjn8BXPH2vtXzbHr4h4D6lBUr+0vrv8/LsdHUcn+si/wB//wBlNRf2dY/8+dv/AN+l/wAKZJp1kHixZ2/Lc/ul9D7V0HjlysfxP/yDLb/sI2f/AKUx1f8A7Osf+fO3/wC/S/4VleIrS2g063aG3ijY6hZglEAyPtMfFXT+NCZvUVW/s6x/587f/v0v+FH9nWP/AD52/wD36X/CoGeYaP8ADux8W3mr67q8Nu5vZJktLkIDcWk0V7cFZEJHy4URDr820gjHB9H0yLVn0JIdbmgj1HYY3uLE5UnoJFDrhSeDtIYA8ZYcnkNAu7PSLGy02TTIJpJvEF5pzMQB5Y3zzI/Q5yirxx972xXaTWmmW0Ek9xb2kUUal3kdFVUUDJJJ6ADvR9ny/r/P+rDd3Lz/AKX6f1c5+80y50SBdS1Xxrq09nbzRvLHeR2SRMN6/eKW6t+TDmqHiPR/DPjjVNKu9Vn0m/0mOxuY2iuJF35m8rY6A/dICNzkMMjHtZuNe8A68iaXaav4d1CW5mjRbWG6gkeT5wSAoOTxk8VakstC07xDpWgxaBYlLq0nlWUxKTGITEoXBUls+Z1J7d81DU3JWtb/AIH+R0U3QUPevzX6Wtb/ADOf169k034Sa5pmp6vp160VrJa21xFOpeaFhtUyJgAOAcHGQcZ4ztGJHfWmrSLqGp3UFtp1uRLbWs0gQsV5E8wPTGMqh+7wzfPgR9h8QNB0uL4e63PbaZZxSwWbzK6QIpXYN2c446VyCWVpfH+1tUtobHTLYGaCCeMR5AGfPmzjbgcqh+795vnwI23N6sP9mW1/wLGj/EfTvCXwptNQaJrxm1K6gjtlIikVDcTMhZWGVGxRwRnkV0fgT4naf42ivW+zHTWtGQETzKQ4bd0PHTac/UVzmkeAdN8d/C22Dk2Ek2pXV5HcpbgSFDcTBFYEA42MODgjA9MV0fgT4Y6f4JjvV+0nUmuyhJnhUBAu7oOeu45+grH997T+6eh/wm/Unv7W+m/dfLY63+07D/n9tv8Av6v+NMl1KxZABe25+ZT/AK5fUe9P/syw/wCfG2/78r/hTJdNsVQEWVsPmUf6lfUe1be8eX+78x51TTwMm+tgB/02X/GsrQ/HPhvxGtw2karDMLdgsm8GPGc4I3AZBweRWqdL08jBsbYg/wDTFf8ACuc8H+EdB0eHUf7P0uCPzb2QNuBfhWIUDdnAGegqW58ysbwjhnSk5c3Npba3nc6P+07D/n9tv+/q/wCNH9p2H/P7bf8Af1f8aP7MsP8Anxtv+/K/4Uf2ZYf8+Nt/35X/AAqveMP3fmH9p2H/AD+23/f1f8apav4jtNM01rmBo72XzI4o7eKZQ0ju6ooyTxywyfSrv9mWH/Pjbf8Aflf8Kpav4ctNT01raBY7KXzI5Y7iGFd0bo6up5HPKjI9KT5raF0/Y865r2vqeIfHa91G9uNHOp6S2mlUl2BrhJd/K5+70x/WsXT/AIca54m+HNnrGjXT3ggeVTpzHG35uWj7EnuOvHGeANr47WWo2Vxo41PVm1IskuwtbpFs5XP3euf6Vz1p461Pw/8ADy00rTNNS3Nw0rHU5Igxb5uVjyMAjuevPGOCfKqcvtpe0v8A1Y+/wnt/7Po/VOW9/O1tb76/qei/BPRLybwZeqdW1LTHi1KSN7eFYgAwSPOQ8bEHt17dK9G/4R68/wCho1n8rb/4zXmfwWvmHgy8aXQLzVpJNRkdriNYW5KR8EyOpz36Y5r0P+0B/wBCVqP/AH7tf/jtd1Hl9mv+CfL5n7b65Utbf+7+upZ/4R68/wCho1n8rb/4zQNAv0+aPxNqjOOVEywMme24CMEj2BH1qt/aA/6ErUf+/dr/APHaBel/lj8GXiueFMy2yoD23ESEge4B+la+75/ied++/u/+SjNU8f6J4YsHk8X3sOlXEXDQsSxl9GiUDc6n1A474wa8M8b/ALTGo6gJLLwTZf2dA3y/bLtVeZhx91OVXuOd2Qexr2+/+HPh7X9Okh8Uaba6jPNy8oj8sxeixEfMij2PPfOTXiHjb9mfUdPEl54Ivf7RgX5vsV2ypMo4+6/Ct3PO3AHc17mW/Uv+X/xee39euhw1vifJt/X9I+irTWrCSzhebULXzGjUt++Uc4571L/a+m/9BC1/7/r/AI1FaaLYR2cKTafa+Ysahv3KnnHPapf7H03/AKB1p/34X/CvMfJcWof2vpv/AEELX/v+v+NH9r6b/wBBC1/7/r/jR/Y+m/8AQOtP+/C/4Uf2Ppv/AEDrT/vwv+FL3PMNQ/tfTf8AoIWv/f8AX/Gj+19N/wCgha/9/wBf8aP7H03/AKB1p/34X/Cj+x9N/wCgdaf9+F/wo9zzDUP7X03/AKCFr/3/AF/xpkOracsEYOoWoIUA/v19PrT/AOx9N/6B1p/34X/CmQ6TprQRk6faklQSfIX0+lHueYaj/wC19N/6CFr/AN/1/wAaP7X03/oIWv8A3/X/ABo/sfTf+gdaf9+F/wAKP7H03/oHWn/fhf8ACj3PMNQ/tfTf+gha/wDf9f8AGj+19N/6CFr/AN/1/wAaP7H03/oHWn/fhf8ACj+x9N/6B1p/34X/AAo9zzDU8Y/acvbW6+HumLa3UMzLqikiOQMQPKk9K+X6+oP2nLK0tfh9pjWtrDCzaooJjjCkjypPSvl+vscpt9VVu7MJ/EbHhzxbrvhK++1eHtTnspD99UOUk6/eQ5Vup6jivefBn7SOn3uy18a2f9nzdPttqrPCev3k5Zew43c+grwbw54S13xbffZfD2mT3si/fZBhI+v3nOFXoep5r3rwZ+zdp9lsuvGt5/aE3X7FasyQjr95+GbseNvPqKjMfqVv3/xeW/8AXqEOboe1WGoWeq2MV7pl1Dd2swzHNA4dH5wcEcdQR+FWKpWeiaXp9nHa2Gm2ltbxjCRRQKqr34AHrU32G0/59Yf+/Yr492vpsdBPRUH2G0/59Yf+/Yo+w2n/AD6w/wDfsUgJ6an3T9T/ADqL7Daf8+sP/fsUiWVqV/49oep/5Zj1oAsUVB9htP8An1h/79iigCVfvP8AX+gp1NX7z/X+gp1ABRRRQAVleKbWe/8AB+s2lpGZZ7iwniiQH7zNGwA/M1q0VUZcrTA+Y/BX7Oesat5d34uuP7ItGw32aLD3Dj3/AIU49ckdCor37wV4I8P+DJJ7fw/p0duTDGHnPzSyctnc555wDjp6AVvUtn/yELj/AK5R/wA3rrxOOr4n43p2WxKikXqKKK4igooooAKKKKAIx/x8P/uL/M1454qhM/irUbvV2jgsLOYyRxO4Ckrz50h6cYyq9BjcfmwE9jH/AB8P/uL/ADNeOeKoTP4q1G71do4LCzmMkcTuApK8+dIenGMqvQY3H5sBO3B/GyZHi2qeI/sXjbX5Y4pYZLma18k3UZWGDC4WeVcE/LkFVboSCRuUY7vwz4ftNN0sXd25W0U/a2kujte5cfN9pmz0x1VD937zfPgJl6dpEWreKfFd7r9pdW2kTpCyrdoYY5VEZHmNnH3RyASNpIJAZRtb4XW90m+XSdfivX0S0RrrTrq4hKxqiklfPPRSoXcobG3qQGCBeqknFrm67f5fr5/cTLVt/wBf1/Xc67/j/wD+Jjqn+i6db/voYZ/kzt586XPTGMqh+795vmwIz/j/AP8AiY6p/ounW/76GGf5M7efOlz0xjKofu/eb5sCM/4//wDiY6p/ounW/wC+hhn+TO3nzpc9MYyqH7v3m+bAjP8Aj/8A+Jjqn+i6db/voYZ/kzt586XPTGMqh+795vmwI+kQf8f/APxMdU/0XTrf99DDP8mdvPnS56YxlUP3fvN82BGf8f8A/wATHVP9F063/fQwz/Jnbz50uemMZVD937zfNgRn/H//AMTHVP8ARdOt/wB9DDP8mdvPnS56YxlUP3fvN82BGf8AH/8A8THVP9F063/fQwz/ACZ28+dLnpjGVQ/d+83zYEYB694HuPtfg2xn8mWEP5hVJl2tjzGwSvUZHODgjPIByBv1geB7j7X4NsZ/JlhD+YVSZdrY8xsEr1GRzg4IzyAcgb9eHV/iS9TRbBRRRWYwrkI5oPBDS2mpSpb6Ezl7K8kYLHbbiSbdyfugHOxumCE4Krv6+o7i3hu7eS3uoY54ZFKvHIoZXB6gg8EUAec6++pav4XuHkea3fxDPFY2Fo2V+zwMeWdf77IJHOfujauMqSel8P3m+51bS44Uit9HuY7K3CZ5T7NDIM+4MhH0AqGXwhc2dzD/AMI/rMttFFueG1v4ftkMLY25TJWReGIwJMAcAAVV0/wv4ss7/U7g+INJT+0rgXEpj0qQsGEMcQ25nwvESnndzmgCR9ZXwvqc1tr92RYXLNLYXUxJO7q1se7PnJQdWUlQCUydLQtPuZ9Tn17VYWguZo/ItbZyCbaDOSDjje5AZscDai87cl+neFba1vI77Urq51e/j/1dxelSIv8ArnGoVEPbcF3EcEmtygAooooAKjk/1kX+/wD+ympKjk/1kX+//wCymgCSsfxP/wAgy2/7CNn/AOlMdbFY/if/AJBlt/2EbP8A9KY6un8aEzYoooqBnnniXStWtvHOnyaPHazR3V8uoRRXk7wxm4jt5YpE3qjkFo2RwNuD5UhzXb2v9oXOk41JIrC9dWVvsU/nrEeQCrvGuTjB5TGeMHvJfWNrqVm9pfwJPBJjcjjg4OQfYggEHsRXjGu2FppeoeMw6utraQPDpf71/wDRZ0s1uMZz824s5+bONmO+KOjXz/IpJya+78f+Celf2BqVpLBPceLtZvo0niLW9xDZhJPnXglLdW9+GFJ4h03W38UaTrOg22n3Zs7e5glhvbx7fPmmIgqyxSZx5Z4IHWsy/wDBmhW/h6O7i0a6vZ/3LeRBeOHkJdcgb5FUHnuRUel+GdJv7zybvwTrWmR7SfPu9QiZM+mIrl2yfpj3p2aduxEXdX7nYy2ranoklpqsMaNdW5iuIopDIg3LhgGKqWHJ5IGfQV43CNQXRi2tRedcaMy2kWnpkm5vEIRJHz13OVMa9AGVySxXy9fUtA0vTvib9mkhk/sVLC3EsPnyfJLNLKiy7t27GURMZx8+e1b3w28NaQfDOieI2slfV7ixjeS6dmZtzLyQCcKeSOAOCR0NG6v/AF1/yG1Z2Oo8N6R/YPhfTNJLiRrK1jheQfxsqgM34nJ/GtOiikAVHN/qx/vr/wChCpKjm/1Y/wB9f/QhQBJWXoX+pvf+v6f/ANDNalZehf6m9/6/p/8A0M1L3RrH+HL5GpRRRVGQUUUUAcL8SPhxH48FnK+ptYmySTgQ+Zvzg/3hjpV3w/8AD3TNJ8Dr4Y1PZq1rvd3aaLZksTyACSpA7g5rqZ/+PeT/AHD/ACqSs/ZQ5nK2rOz69ifYxoc3uxd15P136nP+DvB9l4K0u50/TZpZLea6a4US4JTKqNuR1+7+tdBRRVxioqyOepUnVm5zd2wooopmYVHP/wAe8n+4f5VJUc//AB7yf7h/lQBJRRRQAUUUUAFFFFABUcH/AB7x/wC4P5VJUcH/AB7x/wC4P5UASUUUUAFFFFAHlfx+8Ka14w8IaXp3hyxe9uRqSuyqyqEXypBuJYgAcjk+ormvBP7MunWOy78cXn9ozdfsNozJCOv3n4Zux424PqK95oruhjq1Oj7GDsvxJ5U3dmDodhaaZodpa6daw2tukSlYoYwijIyeB6nmr9QWP/IPt/8Arkv8hU9cTbbuygooopAFFFFABTU+6fqf506mp90/U/zoAdRRRQA1fvP9f6CnU1fvP9f6CnUAFFFFABRRRQAUtn/yELj/AK5R/wA3pKWz/wCQhcf9co/5vQBeooooAKKKKACiiigCMf8AHw/+4v8AM1xWs/D2bW/EMl9c6ggtVcSxWvlEgyDkO5z82ONo6AjdyduztR/x8P8A7i/zNSVcKkoO8RWueeT/AAxnvL5JLvU42toCHitxCcNIDkO/POONq9ARu5O3YT/DGe8vkku9Tja2gIeK3EJw0gOQ788442r0BG7k7dnodFbfWavcOVHnk/wxnvL5JLvU42toCHitxCcNIDkO/POONq9ARu5O3YT/AAxnvL5JLvU42toCHitxCcNIDkO/POONq9ARu5O3Z6HRR9Zq9w5UeeT/AAxnvL5JLvU42toCHitxCcNIDkO/POONq9ARu5O3Y24+Gk93qUTXepRtbQ4kigERwZAQd788442joCN3J27PRajP/Hwn+438xR9Zq9w5UVtH086XpMNm0gkMe75gMZyxP9au0UVzybk7sZyniS/1a18ZaHDo0IunmtLwtbS3RgiYqYMMxCtyMkD5Ty3YEkZF/wDFmxtbOznjisY2m01NSmhv9SS2cI+cRxAqfNk+V+PlHC8/NXaz6VBca3Z6o7SCezilijUEbSJChbIxnP7sY59axIfAttZW9omkatqWmyW9otk89sYS9xEuSgffGwyuWwVCkbjzXrUKuCcIxrRu0vNdZPW1+lrWX4Eu/Qp6p8Qf7N16G1SyiurGR7dXnt5J3khExUKZFEBjTlgcNKCVwQOQDiz+KPEZ02JtRuXsIpPEU9j9o0tPtdwYl+0fIIjbnoY0AYBiQCTjmuovfA1peXtxMNS1G3guriG6uLSJ4/LmliKbXJZC+f3SAgMAcdM81LD4OtYdQFwL69aNNRbUorZmj8uKZlkD4OzdhvNYkFjg4xgZB1hWwFOCtHXre76eel7vs1Zd9Cfes/66P/gHOTeIf7H1Kw1C41PW7+yg0/UbiZb+z+zSv5f2cgCLyogcZOCV6sea1f8AhM7+zvEsta0WO1uS9qT5F4ZoxFPIYg24xr8yvgFcYwwIY9K19Z8O2Gu30TakryxizubVot2FeObYHz3z8gwQRjmqMfge0+xX0V7qeo31xe2yWpvLh4xNFGhJQIURVBDMWyQST1JwKz9tgpwjzx1/+2vpay2vfTtYdpWshLXxot4yRwWR82bUjZwq0v8ArI/nPn8A4UrHIQO+OvNZeg6zevq9omv61qllqEjy+fpd3pyJauQrEpBMIhvxwwIlYlVOR1x0Fr4S02y1LT7y381H0+yFlEgcbSgGFLcZLKC4Bz/G3rxHa+FPLvLWbUda1LVo7MlreC98kpG+0puykasxCsw+Zm+8ScnBqfaYRKSgrJrqru+u1012vs+z0D3nv/X9bfIyfC/xHs/E2sQ2cH2DZdwyT232bUVnmVVI4niCjymIYEDLdCCQRz2tc/p/hNdNt3tLbWtUWxEDwW1oJI1S0VunlsqB8qOF3M2KsTeHvOhnj/tfVY/Os47Tclzho9pP71TjiQ7uW74HHFYYlYWdS9H3Y/N9f8gXN1Nio5P9ZF/v/wDspqQDAxUcn+si/wB//wBlNcBZJWP4n/5Blt/2EbP/ANKY62Kx/E//ACDLb/sI2f8A6Ux1dP40JmxRXHeM7OCfXtGn1zTZtU0KJJxNbR2TXarcEL5bvEoYsAolAO04LDpnNZGnaWV8Y2uiWFnJa6JIIddMUowYiqeWIWUnIPmLHJz3Vq7qeDjOl7Tmto3tpo7WvffraxMpW/r+uuh22i65ba7p9reWkdwiXNulygliIwrZwCwyu7jkAkjj1FZuseBdK1zTdesr57kx65Ikk5RwGiZY0RTGccYEannPOe3FcHBoGpSeG7e2m0y9G7R9IhdPJdWDJes0i8DIKqcnuBzxWnfaGNOu7y0Giyf8IxHrkMs9ha2LSRyQmzXlYUB3oJ9pYKCMgkjg11VMuo+0koT76b6Ll211eui623K5mm7dP8rnWs+meIvDk1pLZi5so7z7FLBeRK6yGKcI2V5BBK5GfyFSWfhbwv4beTUtK8OabYTRxtulsNOQSlepAEa7mzjoM59K8yvdEuxpOnAaStvoKanfN9iudEluljL3IMDG1QqwHl7wDggbsYBYEdT4d8MrL4isptZtJdQWz0SzW3ub61ZMSrLMQ2xi22RQV6kuueoycqvgaNPmqe0010trvbe9r9+1+pHNurbf52LS33hjxH4g1FNmsS3F9aR6ZdQyaTdRxxqN7ruZohsYiUnLEcbT7np9B0eDw94fsdIs5JZILGBYI3mYF2VRgFiAAT+Arl9SsLyTTviIqWk7NeRMLYCMkzn7Ci/J/e+YEcdxiuU8YeFLeKOaGz0KW1dNJ86zudN0Zbm4ur0hsiWcxO0ZG1CGyrEsTuyOCngcPWkowm43tvaXRPpbrJ9H1bKbe7/rZf16HsVFeZ33h6We81rV30qWTU01TTXtLkwEyKoW2ErRnHAwHDFeoUg9OO4XW900cf8AZmojfevabjb/ACrtUt5pOeIztwG7kjjmuOthOSKcJX7+Wiffz/AFK6ualRzf6sf76/8AoQqHTr7+0bMXH2W5tcu6eVcx7H+ViucehxkHuCDU03+rH++v/oQrilFxbTKJKy9C/wBTe/8AX9P/AOhmtSsvQv8AU3v/AF/T/wDoZqHujWP8OXyNSiiiqMgoorhdc1vU9C8Za1qD3kcmladocd49iYnLPhp/utv2qxKjLbDkYGOM10YfDyrtxi9Uvv1St+IdDtp/+PeT/cP8qkrzl/GviCPQtQkltY5pkW18meTSbqxh3SzCJ4yJuWKhgQynvyoxg25PE3iWxuL4XkmlTQ6VqNraXBitZEa5WcxcqDKRGVEvcvux/D36v7NrXtdf1by7yS179k2Rzpq6O7orhofFutpqEFxeLp50ubWbnS/KjjcTKIzLtk3l8H/V4K7ffPYZ1h8RdYvNGutVSy32z6VcahBnSrqFLZkTfGjzPhJgwPVNvK8ZByGssxD2t/V9Pwf/AA9h8y5uX+t7fmelUVxOp674ntINPgtpbG51a/V50srXTWl2wqqZyz3MS4VmALkjduXCDBrGg8V6/dS3niC3uLaK2TwtFqR06WF3USYnOAwkAB3Ly23lQBwRmiGXVJx51JW+fey6ddbPbR6gpX2/r+rnp9Rz/wDHvJ/uH+Vcfrvi/U9OmuIrKC0keOzsJ4xMGALz3JiYEg8DAGOMg+vSqPiDxfrulXs2kRGC7vbSx+1Ttb6LdTLcF2cJEojZvJ4jILuWBJyF4IqIZfWna1tf8l/mvv8AWxzK1/61PQqKZBKZreOUo0ZdA2xxhlyOhHrT6896aDTurhRRRQMKKKKACo4P+PeP/cH8qkqOD/j3j/3B/KgCSiiigAooooAKKKKAMmx/5B9v/wBcl/kKnqCx/wCQfb/9cl/kKnoAKKKKACiiigApqfdP1P8AOnU1Pun6n+dADqKKKAGr95/r/QU6mr95/r/QU6gAooooAKKKKACls/8AkIXH/XKP+b0lLZ/8hC4/65R/zegC9RRRQAUUUUAFFFFAEY/4+H/3F/makqMf8fD/AO4v8zUlABRRRQAUUUUAFRn/AI+E/wBxv5ipKjP/AB8J/uN/MUASUUUUAFFFFABRRRQBGf8Aj4T/AHG/mKkqM/8AHwn+438xUlABRRRQAUUUUAFRyf6yL/f/APZTUlRyf6yL/f8A/ZTQBJWP4n/5Blt/2EbP/wBKY62Kx/E//IMtv+wjZ/8ApTHV0/jQmbFVotOtYdSuNQjixdXKJHLIWJyqbtoAJwANzdMdTVmipUmk0nuMKKKKQFa//wCPdf8ArtF/6MWrNVr/AP491/67Rf8Aoxas0AFFFFABRRRQAVHN/qx/vr/6EKkqOb/Vj/fX/wBCFAElZehf6m9/6/p//QzWpWXoX+pvf+v6f/0M1L3RrH+HL5GpRRRVGQVnXegabe6qmo3MDPcrCbckSuqSRnOUkQHbIvzHAYHBJIrRoqozlB3i7Ac+PB2i2umz26w3MsTiM7bi+nm2+UwdApdztAYA4XAOOc1en8P6Zc/bPOtt322eK4uP3jDfJFs2N14x5acDAOOc5NXp/wDj3k/3D/KpK1eIrN8zm7+r8v8AJfcuwrJHMaB4MttN1C41G/DT3rX91dQZupXiiEsjEFYmOxH2NglVzy3JycreeF9B0rSdUuTaXD27Wk4ltTezGIRsCXWOMvtjzyPkAxniumrivEOh+IU8M6o0ni2aRBZzFkNhANw2HjOKuWLryk5Ob182Fle5lappN0+h6N4k1bU5bgo1ur2duWtkjineNGSOSMrLgbgcOzBtoBA4I66HwdoVv9k8iyaNbS0+xRotxIFaDBHluu7EijccBwcE5HNY2u/8kp0766b/AOj4a7WoWIrKPKpu3qwsjAt/A+gWqSKlpNIZVhV3nvJpWYQyeZGNzuThW5Az7dOKn1zw3pusn7Rex3CzxwtGJLa7lt2ZDzsYxsu5c9myOvqa2Kjn/wCPeT/cP8qHia7lzubv3u/QLJaGdP4Z0i5a5M1mCbqSCWXEjDc0JBjPB4wVHA645zVuz0200+W7ktIvLe8mM853E73Khc8njhRwOOKtUVDq1GuVydvX0/yX3ILIKKKKzGFFFFABUcH/AB7x/wC4P5VJUcH/AB7x/wC4P5UASUUUUAFFFFABXm/jfWfEFtr+vJpOuS6fb6T4cGpxwx20L+bMHm+8XRjtIjAIGD0wRznsfEHiWy8NrZNfxXUovJzAgtYGmYEIzliq5bAVGJwCfanWZ0HxHayahZrYalDdw/ZpZ1VJPNj5zEx7gbjlT0yeK2p3h77V0J66HlGoeLvEPh3TbmAahJfPNpenXMUzwQr9jaeZonKjCqVAAK+YxwQNzEZq7L4g8TQQvpNzNqUOoXOqR2+mvNPYJOytCXYXBjSWNFG1yCE3N8oA6131rpWnzaehmsLaQzWaW0u6FTvhx/qzxyvzH5TxyfWol8J+HE0ttNXQNLWweTzWtRZR+Uz4xuKYxnAHOM10KvStrBfd6f5fO/Tcjll1f9WOB0bxD4n1270TS5ddaykaTVIbu5tIoZWmNvIixkM0e3+LkhACM8DIxXm0/SvE2h+Adc1fRdMn1HVdQgF9O1nGWuf9GlzvO3kEqDg8cD0Fen2ehaTp/k/YNLsrXyA4h8i3RPL3437cDjdgZx1wM09NK06O3tYI7C1SGzYPbRrCoWBgCAUGMKcEjj1NL6xFO8Fb8Orv+a+4XJJppvv+O33HmlxrevWXiDVbHwxZvZafod3bW8VjAllBaeU213aUyMJAW3ttMYC/KPvEmm+HdU8V6snhVbnxXcqdd064uZ2SztgYWj8vb5f7vAzv+bduzzjbkY9IvPD+jahqMOoX+kWN1e2+3ybme2R5I8HI2sRkYJJGO9SwaVp1t9m+zWFrD9kRo7fy4VXyUbG5UwPlBwMgdcCk8RDktyq/e3k1+dmU4vmunp/wf8tDyf8A4TDxNqWgvqUevnTvsnhSLVGVLaFlmud0oO4uhwreWBtXHJGCOc+saVcS3ekWtzcR+VNNEskkeCNjEZI59DWGfAOiP4qTV59PsJYYLGK0tbR7JCtsUkd96E8L9/GABjHWulT7p+p/nU16lOa9xW/rbzFFST1/rRf8EdRRRXKaDFRdzfKOvp7Uvlp/dX8qF+8/1/oKdQA3y0/ur+VHlp/dX8qdRQA3y0/ur+VHlp/dX8qdRQA3y0/ur+VFpFG2oT7kU4ij6j3enUtn/wAhC4/65R/zegC15EP/ADyT/vkUeRD/AM8k/wC+RUlFAEfkQ/8APJP++RR5EP8AzyT/AL5FSUUAR+RD/wA8k/75FHkQ/wDPJP8AvkVJRQBAIYvtDjy0xtXjaPU0/wAiH/nkn/fIoH/Hw/8AuL/M1JQBH5EP/PJP++RR5EP/ADyT/vkVJRQBH5EP/PJP++RR5EP/ADyT/vkVJRQBH5EP/PJP++RTDDF9oQeWmNrcbR6ip6jP/Hwn+438xQAeRD/zyT/vkUeRD/zyT/vkVJRQBH5EP/PJP++RR5EP/PJP++RUlFAEfkQ/88k/75FHkQ/88k/75FSUUAQGGL7Qg8tMbW42j1FP8iH/AJ5J/wB8ig/8fCf7jfzFSUAR+RD/AM8k/wC+RR5EP/PJP++RUlFAEfkQ/wDPJP8AvkUeRD/zyT/vkVJRQBH5EP8AzyT/AL5FMkhiDxYjTluflHoanqOT/WRf7/8A7KaADyIf+eSf98isnxLFGmm2xRFU/wBo2fQY/wCXmOtqsfxP/wAgy2/7CNn/AOlMdXT+NCZqeRD/AM8k/wC+RR5EP/PJP++RUlFQMj8iH/nkn/fIo8iH/nkn/fIqSigCnfQxC3XEaD99F/CP+ei1Y8iH/nkn/fIqK/8A+Pdf+u0X/oxas0AR+RD/AM8k/wC+RR5EP/PJP++RUlFAEfkQ/wDPJP8AvkUeRD/zyT/vkVJRQBH5EP8AzyT/AL5FMlhiCDEaD5l/hHqKnqOb/Vj/AH1/9CFAB5EP/PJP++RWbokUbw3m5FbF7PjI/wBs1rVjxWOrWclwLOezMMs7zDzYn3Dcc44ape9zWFnFpuxqeRD/AM8k/wC+RR5EP/PJP++RWft17/ntp3/fqT/4qjbr3/PbTv8Av1J/8VRfyD2a/mRoeRD/AM8k/wC+RR5EP/PJP++RWft17/ntp3/fqT/4qjbr3/PbTv8Av1J/8VRfyD2a/mRdmhiFvIRGgIU4IUelP8iH/nkn/fIrxH44WfiW5utJ8qKe4RY5c/YIpNinK/e5PNdB8J7bxfB4FjSRoIFFxJ5cepQymQLkdPmGFznt61iqzdRwsenPLYxwccV7Ravb7/8ALseneRD/AM8k/wC+RXC+K/FdnJ4N1qOPRNajdrCdVdtJlVVPltyW28D3rotniv8A5+NG/wC/Ev8A8XWP4uTxP/whOuefPpJi/s643hIJQxHltnGX61rzeR58aSuveX9fI+UNDtLePVtIkSCNXF5bHcEAP+sXvX2/5EP/ADyT/vkV8R6X5n2zS/JKiT7Tb7C4yM+YuM+1fYHl+Mf+fnQ//Aeb/wCLrLAQ9pCTcktep7vEcYwr01FW91berNzyIf8Ankn/AHyKZNDELeQiNAQpwQo9KxvL8Y/8/Oh/+A83/wAXXJ+LIPEjeINHOqfbbiAQ3Oz/AIRwSRMkv7raZC7FMY3f6z5fvZznFenHDpu3Oj5i56R5EP8AzyT/AL5FHkQ/88k/75Fc7o8fjUabH/a8+kfaMnpG7Nt7bipClsddoAz0q9s8S/8APfSv+/Mn/wAVWDhZ2uhmp5EP/PJP++RR5EP/ADyT/vkVl7PEv/PfSv8AvzJ/8VRs8S/899K/78yf/FUuXzQzU8iH/nkn/fIo8iH/AJ5J/wB8isvZ4l/576V/35k/+Ko2eJf+e+lf9+ZP/iqOXzQGp5EP/PJP++RTIYYjbxkxoSVGSVHpWds8S/8APfSv+/Mn/wAVTYk8R+SmybS9u0YzDJ0/76o5fNAa3kQ/88k/75FHkQ/88k/75FZezxL/AM99K/78yf8AxVGzxL/z30r/AL8yf/FUcvmgNTyIf+eSf98ijyIf+eSf98isvZ4l/wCe+lf9+ZP/AIqjZ4l/576V/wB+ZP8A4qjl80Bn+JI0TxX4OKIqn+05ugx/y5XFWdU8HadqF82o2hl0vVD1vrEhHf2kUgpKPZwfbFZerrqo8XeEP7TksnT+0ptot43U5+xXHXLHiuzrWUnBR5X0/ViOKF1rfhuJItf04alZRgKNS0uIsygYGZbflh9UL/Ra2tN1DTtYslu9Lube7t24EkLBhnuOOhHcdRW3Xn/iNtBudamPhuO7m8TIdssuiMqlD2Fy5/dY4+7JlsfdBoilV6Wf4fPt/WgbHX+Wn91fyo8tP7q/lVXSBqS6PbDXWtn1EJ/pDWgbyi2T93dz0x6c54HSrlYNWdhjfLT+6v5UeWn91fyp1FIBvlp/dX8qREUr90dT296fTU+6fqf50AHlp/dX8qKdRQA1fvP9f6CnU1fvP9f6CnUAFFFFABRRRQAUtn/yELj/AK5R/wA3pKWz/wCQhcf9co/5vQBeooooAKKKKACiiigCMf8AHw/+4v8AM1JUY/4+H/3F/makoAKKKKACiiigAqM/8fCf7jfzFSVGf+PhP9xv5igCSiiigAooooAKKKKAIz/x8J/uN/MVJUZ/4+E/3G/mKkoAKKKKACiiigAqOT/WRf7/AP7KakqOT/WRf7//ALKaAJKx/E//ACDLb/sI2f8A6Ux1sVj+J/8AkGW3/YRs/wD0pjq6fxoTNiiiioGFFFFAFa//AOPdf+u0X/oxas1Wv/8Aj3X/AK7Rf+jFqzQAUUUUAFFFFABUc3+rH++v/oQqSo5v9WP99f8A0IUASUUUUAFFFFABRRRQBHP/AMe8n+4f5VJUc/8Ax7yf7h/lUlABXCeLfBOlQeC9bmS710vHp9w4D+IL51JEbHlTMQR7EYNd3XP+Pbu3svh5r813MkMZ0+aMM7YBZkKqv1LMAB3JApPYqCvJI+QdG/5CWk/9fdt/6MSvt6viDTXW2vNPknO1ILiB5D12qrqWP4AGvtyGaK5gjnt5ElikUOkiMGV1IyCCOoI71xYJ+6/U+o4mi1WpNr7P6j6jn/495P8AcP8AKvIPEvibTPCP7Qt1rGtz+TbQeFOgGWkY3I2oo7sTwB/Stjwt4X1PxFrDeO/HsHl3pjYaRpL8rpkJ6EjvMwwSeo6ccBe6OqT/AK3a/Q+Vl7rt/Wyf6npdFFFABRRRQAUUUUAFRwf8e8f+4P5VJUcH/HvH/uD+VAElFFFABRRRQBzPib/kavB3/YTm/wDSK4qa+8X2kd5Lp+iW82t6lEdsltZYKwtg8SykhI+nQnceymreu+G9O8SR2seqpM6WsxmjEU7xEkoyEEoQSCrsCM4PQ8ZFXrKxtNNs47TTrWG0tohiOGCMIiDOeFHArfmhyq+rX+b/AK6eotTlBpWq+JIVm8TaiYrSVdw0vTJGjjwc8STcSScEdNi9iprds7K106zjtNPtobW2iGI4YIwiIOvCjgUlj/yD7f8A65L/ACFT1nKcpadBhRRRUAFFFFABTU+6fqf506mp90/U/wA6AHUUUUANX7z/AF/oKdTV+8/1/oKdQAUUUUAFFFFABS2f/IQuP+uUf83pKWz/AOQhcf8AXKP+b0AXqKKKACiiigAooooAjH/Hw/8AuL/M1JUY/wCPh/8AcX+ZqSgAooooAKKKKACoz/x8J/uN/MVJUZ/4+E/3G/mKAJKKKKACiiigAooooAjP/Hwn+438xUlRn/j4T/cb+YqSgAooooAKKKKACo5P9ZF/v/8AspqSo5P9ZF/v/wDspoAkrH8T/wDIMtv+wjZ/+lMdbFY/if8A5Blt/wBhGz/9KY6un8aEzYoooqBhRRRQBWv/APj3X/rtF/6MWrNVr/8A491/67Rf+jFqzQAUUUUAFFFFABUc3+rH++v/AKEKkqOb/Vj/AH1/9CFAElFFFABRRRQAUUUUARz/APHvJ/uH+VSVHP8A8e8n+4f5VJQAVw3xf8M6h4q+H8tpo6tJdW86XKwKcGYLnKj3wcj3AruaKTSaszSnUlTmpx3TufE1npt/qOrLpVhZXE+oM/li1WM+YG7hgfu47k4A6nAr6/8ABujT+HvBOkaReSiWeztI4pGU5G4DkD2B4HsK2qKwo0I0r26np5lmtXMOXnSXL28zxnxR4S0bxn+0XJpfiG0W6tj4VLICSDG5nKh1/wBoBjg1o+AvEOp+GNUn+HHji582/t4mbRtRcYGoWwHAyf8AlooHI64HfGT6Z/Zlh/an9p/Yrf7f5Xkfa/KXzfLznZvxnbnnGcZqvq2i6Xqnk3Gp6bZ3k9mTJbS3ECyNA3B3ISCVOQOR6CuiOiS9b/e396ueRL3m36fkkaNFFFABRRRQAUUUUAFRwf8AHvH/ALg/lUlRwf8AHvH/ALg/lQBJRRRQAUUUUAFFFFAGTY/8g+3/AOuS/wAhU9QWP/IPt/8Arkv8hU9ABRRRQAUUUUAFNT7p+p/nTqan3T9T/OgB1FFFADV+8/1/oKdTFQbm69f7x9KXYPVv++jQA6im7B6t/wB9GjYPVv8Avo0AOopuwerf99GjYPVv++jQA6ls/wDkIXH/AFyj/m9M2D1b/vo0WkatqE+S3+qj6OR3egDRoqPyV9X/AO/jf40eSvq//fxv8aAJKKj8lfV/+/jf40eSvq//AH8b/GgCSio/JX1f/v43+NHkr6v/AN/G/wAaAAf8fD/7i/zNSVAIl+0OMv8AdX+M+p96f5K+r/8Afxv8aAJKKj8lfV/+/jf40eSvq/8A38b/ABoAkoqPyV9X/wC/jf40eSvq/wD38b/GgCSoz/x8J/uN/MUeSvq//fxv8aYYl+0IMv8Adb+M+o96AJ6Kj8lfV/8Av43+NHkr6v8A9/G/xoAkoqPyV9X/AO/jf40eSvq//fxv8aAJKKj8lfV/+/jf40eSvq//AH8b/GgAP/Hwn+438xUlQGJftCDL/db+M+o96f5K+r/9/G/xoAkoqPyV9X/7+N/jR5K+r/8Afxv8aAJKKj8lfV/+/jf40eSvq/8A38b/ABoAkqOT/WRf7/8A7KaPJX1f/v43+NMkiUPFy/Lf3z6H3oAnrH8T/wDIMtv+wjZ/+lMdankr6v8A9/G/xrJ8SxhdNtiC3/IRs+rE/wDLzHV0/jQmbVFR+Svq/wD38b/GjyV9X/7+N/jUDJKKj8lfV/8Av43+NHkr6v8A9/G/xoAiv/8Aj3X/AK7Rf+jFqzVO+iUW68v/AK6L+M/89F96seSvq/8A38b/ABoAkoqPyV9X/wC/jf40eSvq/wD38b/GgCSio/JX1f8A7+N/jR5K+r/9/G/xoAkqOb/Vj/fX/wBCFHkr6v8A9/G/xpksShBy/wB5f4z6j3oAnoqPyV9X/wC/jf40eSvq/wD38b/GgCSio/JX1f8A7+N/jR5K+r/9/G/xoAkoqPyV9X/7+N/jR5K+r/8Afxv8aACf/j3k/wBw/wAqkqCaJRbyHL8Kern0+tP8lfV/+/jf40ASUVH5K+r/APfxv8aPJX1f/v43+NAElFR+Svq//fxv8aPJX1f/AL+N/jQBJUc//HvJ/uH+VHkr6v8A9/G/xpk0Si3kOX4U9XPp9aAJ6Kj8lfV/+/jf40eSvq//AH8b/GgCSio/JX1f/v43+NHkr6v/AN/G/wAaAJKKj8lfV/8Av43+NHkr6v8A9/G/xoAkqOD/AI94/wDcH8qPJX1f/v43+NMhiU28Zy/Kjo59PrQBPRUfkr6v/wB/G/xo8lfV/wDv43+NAElFR+Svq/8A38b/ABo8lfV/+/jf40ASUVH5K+r/APfxv8aPJX1f/v43+NAGbY/8g+3/AOuS/wAhU9V7JAdPt+v+qX+I+lTbB6t/30aAHUU3YPVv++jRsHq3/fRoAdRTdg9W/wC+jRsHq3/fRoAdTU+6fqf50bB6t/30aREG3v1P8R9aAH0U3YPVv++jRQAL95/r/QU6mr95/r/QU6gAooooAKKKKACls/8AkIXH/XKP+b0lLZ/8hC4/65R/zegC9RRRQAUUUUAFFFFAEY/4+H/3F/makqMf8fD/AO4v8zUlABRRRQAUUUUAFRn/AI+E/wBxv5ipKjP/AB8J/uN/MUASUUUUAFFFFABRRRQBGf8Aj4T/AHG/mKkqM/8AHwn+438xUlABRRRQAUUUUAFc1HYLqmv6t9rub4CG6SKNYb6aFUX7Oj8KjAdSTn3rpaw9L/5D2tf9f6f+ksdaQbSbXb9UIk/4Riy/5+tV/wDBtc//ABylXwxp4likeS/m8qRZFWbUZ5F3KQVJVnIOCAeR2rXope0n3HYKKKKgAooooArX/wDx7r/12i/9GLVmq1//AMe6/wDXaL/0YtWaACiiigAooooAKjm/1Y/31/8AQhUlRzf6sf76/wDoQoAkooooAKKKKACiiigCOf8A495P9w/yqSo5/wDj3k/3D/KpKACiiigAooooAKjn/wCPeT/cP8qkqOf/AI95P9w/yoAkooooAKKKKACiiigAqOD/AI94/wDcH8qkqOD/AI94/wDcH8qAJKKKKACiiigAooooAybH/kH2/wD1yX+QqeoLH/kH2/8A1yX+QqegAooooAKKKKACmp90/U/zp1NT7p+p/nQA6iiigBq/ef6/0FOpq/ef6/0FOoAKKKKACiiigApbP/kIXH/XKP8Am9JS2f8AyELj/rlH/N6AL1FFFABRRRQAUUUUARj/AI+H/wBxf5mpKjH/AB8P/uL/ADNSUAFFFFABRRRQAVGf+PhP9xv5ipKjP/Hwn+438xQBJRRRQAUUUUAFFFFAEZ/4+E/3G/mKkqM/8fCf7jfzFSUAFFFFABRRRQAVh6X/AMh7Wv8Ar/T/ANJY63Kw9L/5D2tf9f6f+ksdXHaXp+qA3KKKKgAooooAKKKKAK1//wAe6/8AXaL/ANGLVmq1/wD8e6/9dov/AEYtWaACiiigAooooAKjm/1Y/wB9f/QhUlRzf6sf76/+hCgCSiiigAooooAKKKKAI5/+PeT/AHD/ACqSo5/+PeT/AHD/ACqSgAooooAKKKKACo5/+PeT/cP8qkqOf/j3k/3D/KgCSiiigAooooAKKKKACo4P+PeP/cH8qkqOD/j3j/3B/KgCSiiigAooooAKKKKAMmx/5B9v/wBcl/kKnqCx/wCQfb/9cl/kKnoAKKKKACiiigApqfdP1P8AOnU1Pun6n+dADqKKKAGr95/r/QU6mr95/r/QU6gAooooAKKKKACls/8AkIXH/XKP+b0lLZ/8hC4/65R/zegC9RRRQAUUUUAFFFFAEY/4+H/3F/makqMf8fD/AO4v8zUlABRRRQAUUUUAFRn/AI+E/wBxv5ipKjP/AB8J/uN/MUASUUUUAFFFFABRRRQBGf8Aj4T/AHG/mKkqM/8AHwn+438xUlABRRRQAUUUUAFYel/8h7Wv+v8AT/0ljrcrD0v/AJD2tf8AX+n/AKSx1cdpen6oDcoooqACiiigAooooArX/wDx7r/12i/9GLVmq1//AMe6/wDXaL/0YtWaACiiigAooooAKjm/1Y/31/8AQhUlRzf6sf76/wDoQoAkooooAKKKKACiiigCOf8A495P9w/yqSo5/wDj3k/3D/KpKACiiigAooooAKjn/wCPeT/cP8qkqOf/AI95P9w/yoAkooooAKKKKACiiigAqOD/AI94/wDcH8qkqOD/AI94/wDcH8qAJKKKKACiiigAooooAybH/kH2/wD1yX+QqeoLH/kH2/8A1yX+QqegAooooAKKKKACmp90/U/zp1NT7p+p/nQA6iiigBioNzdev94+lLsHq3/fRoX7z/X+gp1ADdg9W/76NGwerf8AfRp1FADdg9W/76NGwerf99GnUUAN2D1b/vo0WkatqE+S3+qj6OR3enUtn/yELj/rlH/N6ALXkr6v/wB/G/xo8lfV/wDv43+NSUUAR+Svq/8A38b/ABo8lfV/+/jf41JRQBH5K+r/APfxv8aPJX1f/v43+NSUUAQCJftDjL/dX+M+p96f5K+r/wDfxv8AGgf8fD/7i/zNSUAR+Svq/wD38b/GjyV9X/7+N/jUlFAEfkr6v/38b/GjyV9X/wC/jf41JRQBH5K+r/8Afxv8aYYl+0IMv91v4z6j3qeoz/x8J/uN/MUAHkr6v/38b/GjyV9X/wC/jf41JRQBH5K+r/8Afxv8aPJX1f8A7+N/jUlFAEfkr6v/AN/G/wAaPJX1f/v43+NSUUAQGJftCDL/AHW/jPqPen+Svq//AH8b/Gg/8fCf7jfzFSUAR+Svq/8A38b/ABo8lfV/+/jf41JRQBH5K+r/APfxv8aPJX1f/v43+NSUUAR+Svq//fxv8axdMQHXNaGWx9vQfeP/AD6xVvVh6X/yHta/6/0/9JY6uO0vT9UBseSvq/8A38b/ABo8lfV/+/jf41JRUAR+Svq//fxv8aPJX1f/AL+N/jUlFAEfkr6v/wB/G/xo8lfV/wDv43+NSUUAU76JRbry/wDrov4z/wA9F96seSvq/wD38b/Gor//AI91/wCu0X/oxas0AR+Svq//AH8b/GjyV9X/AO/jf41JRQBH5K+r/wDfxv8AGjyV9X/7+N/jUlFAEfkr6v8A9/G/xpksShBy/wB5f4z6j3qeo5v9WP8AfX/0IUAHkr6v/wB/G/xo8lfV/wDv43+NSUUAR+Svq/8A38b/ABo8lfV/+/jf41JRQBH5K+r/APfxv8aPJX1f/v43+NSUUAQTRKLeQ5fhT1c+n1p/kr6v/wB/G/xon/495P8AcP8AKpKAI/JX1f8A7+N/jR5K+r/9/G/xqSigCPyV9X/7+N/jR5K+r/8Afxv8akooAj8lfV/+/jf40yaJRbyHL8Kern0+tT1HP/x7yf7h/lQAeSvq/wD38b/GjyV9X/7+N/jUlFAEfkr6v/38b/GjyV9X/wC/jf41JRQBH5K+r/8Afxv8aPJX1f8A7+N/jUlFAEfkr6v/AN/G/wAaZDEpt4zl+VHRz6fWp6jg/wCPeP8A3B/KgA8lfV/+/jf40eSvq/8A38b/ABqSigCPyV9X/wC/jf40eSvq/wD38b/GpKKAI/JX1f8A7+N/jR5K+r/9/G/xqSigDIskB0+36/6pf4j6VNsHq3/fRqKx/wCQfb/9cl/kKnoAbsHq3/fRo2D1b/vo06igBuwerf8AfRo2D1b/AL6NOooAbsHq3/fRpEQbe/U/xH1p9NT7p+p/nQAbB6t/30aKdRQA1fvP9f6CnU1fvP8AX+gp1ABRRRQAUUUUAFLZ/wDIQuP+uUf83pKWz/5CFx/1yj/m9AF6iiigAooooAKKKKAIx/x8P/uL/M1JUY/4+H/3F/makoAKKKKACiiigAqM/wDHwn+438xUlRn/AI+E/wBxv5igCSiiigAooooAKKKKAIz/AMfCf7jfzFSVGf8Aj4T/AHG/mKkoAKKKKACiiigArD0v/kPa1/1/p/6Sx1uVh6X/AMh7Wv8Ar/T/ANJY6uO0vT9UBuUUUVABRRRQAUUUUAVr/wD491/67Rf+jFqzVa//AOPdf+u0X/oxas0AFFFFABRRRQAVHN/qx/vr/wChCpKjm/1Y/wB9f/QhQBJRRRQAUUUUAFFFFAEc/wDx7yf7h/lUlRz/APHvJ/uH+VSUAFFFFABRRRQAVHP/AMe8n+4f5VJUc/8Ax7yf7h/lQBJRRRQAUUUUAFFFFABUcH/HvH/uD+VSVHB/x7x/7g/lQBJRRRQAUUUUAFFFFAGTY/8AIPt/+uS/yFT1BY/8g+3/AOuS/wAhU9ABRRRQAUUUUAFNT7p+p/nTqan3T9T/ADoAdRRRQA1fvP8AX+gp1NX7z/X+gp1ABRRRQAUUUUAFLZ/8hC4/65R/zekpbP8A5CFx/wBco/5vQBeooooAKKKKACiiigCMf8fD/wC4v8zUlRj/AI+H/wBxf5mpKACiiigAooooAKjP/Hwn+438xUlRn/j4T/cb+YoAkooooAKKKKACiiigCM/8fCf7jfzFSVGf+PhP9xv5ipKACiiigAooooAKw9L/AOQ9rX/X+n/pLHW5WHpf/Ie1r/r/AE/9JY6uO0vT9UBuUUUVABRRRQAUUUUAVr//AI91/wCu0X/oxas1Wv8A/j3X/rtF/wCjFqzQAUUUUAFFFFABUc3+rH++v/oQqSo5v9WP99f/AEIUASUUUUAFFFFABRRRQBHP/wAe8n+4f5VJUc//AB7yf7h/lUlABRRRQAUUUUAFRz/8e8n+4f5VJUc//HvJ/uH+VAElFFFABRRRQAUUUUAFRwf8e8f+4P5VJUcH/HvH/uD+VAElFFFABRRRQAUUUUAZNj/yD7f/AK5L/IVPUFj/AMg+3/65L/IVPQAUUUUAFFFFABTU+6fqf506mp90/U/zoAdRRRQA1fvP9f6CnUxVO5vnPX29KXaf77fpQA6im7T/AH2/Sjaf77fpQA6im7T/AH2/Sjaf77fpQA6ls/8AkIXH/XKP+b0zaf77fpRaIx1CfEjD91H0A9X9qANGio/Lb/ns/wCS/wCFHlt/z2f8l/woAkoqPy2/57P+S/4UeW3/AD2f8l/woAkoqPy2/wCez/kv+FHlt/z2f8l/woAB/wAfD/7i/wAzUlQCNvtD/vX+6vOB6n2p/lt/z2f8l/woAkoqPy2/57P+S/4UeW3/AD2f8l/woAkoqPy2/wCez/kv+FHlt/z2f8l/woAkqM/8fCf7jfzFHlt/z2f8l/wphjb7Qn71/utzgeo9qAJ6Kj8tv+ez/kv+FHlt/wA9n/Jf8KAJKKj8tv8Ans/5L/hR5bf89n/Jf8KAJKKj8tv+ez/kv+FHlt/z2f8AJf8ACgAP/Hwn+438xUlQGNvtCfvX+63OB6j2p/lt/wA9n/Jf8KAJKKj8tv8Ans/5L/hR5bf89n/Jf8KAJKKj8tv+ez/kv+FHlt/z2f8AJf8ACgCSsPS/+Q9rX/X+n/pLHWx5bf8APZ/yX/CsXTFJ1zWhvYH7enPH/PrF7Vcdpen6oDeoqPy2/wCez/kv+FHlt/z2f8l/wqAJKKj8tv8Ans/5L/hR5bf89n/Jf8KAJKKj8tv+ez/kv+FHlt/z2f8AJf8ACgCK/wD+Pdf+u0X/AKMWrNU76Nhbr+9c/vouw/56L7VY8tv+ez/kv+FAElFR+W3/AD2f8l/wo8tv+ez/AJL/AIUASUVH5bf89n/Jf8KPLb/ns/5L/hQBJUc3+rH++v8A6EKPLb/ns/5L/hTJY2CD965+Zew9R7UAT0VH5bf89n/Jf8KPLb/ns/5L/hQBJRUflt/z2f8AJf8ACjy2/wCez/kv+FAElFR+W3/PZ/yX/Cjy2/57P+S/4UAE/wDx7yf7h/lUlQTRsLeT965+U8ED0+lP8tv+ez/kv+FAElFR+W3/AD2f8l/wo8tv+ez/AJL/AIUASUVH5bf89n/Jf8KPLb/ns/5L/hQBJUc//HvJ/uH+VHlt/wA9n/Jf8KZNGwt5P3rn5TwQPT6UAT0VH5bf89n/ACX/AAo8tv8Ans/5L/hQBJRUflt/z2f8l/wo8tv+ez/kv+FAElFR+W3/AD2f8l/wo8tv+ez/AJL/AIUASVHB/wAe8f8AuD+VHlt/z2f8l/wpkMbG3j/euPlHAA9PpQBPRUflt/z2f8l/wo8tv+ez/kv+FAElFR+W3/PZ/wAl/wAKPLb/AJ7P+S/4UASUVH5bf89n/Jf8KPLb/ns/5L/hQBm2P/IPt/8Arkv8hU9V7JT/AGfb/Of9Uvp6VNtP99v0oAdRTdp/vt+lG0/32/SgB1FN2n++36UbT/fb9KAHU1Pun6n+dG0/32/SkRTt++ep9PWgB9FN2n++36UUAC/ef6/0FOpq/ef6/wBBTqACiiigAooooAKWz/5CFx/1yj/m9JS2f/IQuP8ArlH/ADegC9RRRQAUUUUAFFFFAEY/4+H/ANxf5mpKjH/Hw/8AuL/M1JQAUUUUAFFFFABUZ/4+E/3G/mKkqM/8fCf7jfzFAElFFFABRRRQAUUUUARn/j4T/cb+YqSoz/x8J/uN/MVJQAUUUUAFFFFABWHpf/Ie1r/r/T/0ljrcrD0v/kPa1/1/p/6Sx1cdpen6oDcoooqACiiigAooooArX/8Ax7r/ANdov/Ri1Zqtf/8AHuv/AF2i/wDRi1ZoAKKKKACiiigAqOb/AFY/31/9CFSVHN/qx/vr/wChCgCSiiigAooooAKKKKAI5/8Aj3k/3D/KpKjn/wCPeT/cP8qkoAKKKKACiiigAqOf/j3k/wBw/wAqkqOf/j3k/wBw/wAqAJKKKKACiiigAooooAKjg/494/8AcH8qkqOD/j3j/wBwfyoAkooooAKKKKACiiigDJsf+Qfb/wDXJf5Cp6gsf+Qfb/8AXJf5Cp6ACiiigAooooAKan3T9T/OnU1Pun6n+dADqKKKAGr95/r/AEFOpq/ef6/0FOoAKKKKACiiigApbP8A5CFx/wBco/5vSUtn/wAhC4/65R/zegC9RRRQAUUUUAFFFFAEY/4+H/3F/makqMf8fD/7i/zNSUAFFFFABRRRQAVGf+PhP9xv5ipKjP8Ax8J/uN/MUASUUUUAFFFFABRRRQBGf+PhP9xv5ipKjP8Ax8J/uN/MVJQAUUUUAFFFFABWHpf/ACHta/6/0/8ASWOtysPS/wDkPa1/1/p/6Sx1cdpen6oDcoooqACiiigAooooArX/APx7r/12i/8ARi1Zqtf/APHuv/XaL/0YtWaACiiigAooooAKjm/1Y/31/wDQhUlRzf6sf76/+hCgCSiiigAooooAKKKKAI5/+PeT/cP8qkqOf/j3k/3D/KpKACiiigAooooAKjn/AOPeT/cP8qkqOf8A495P9w/yoAkooooAKKKKACiiigAqOD/j3j/3B/KpKjg/494/9wfyoAkooooAKKKKACiiigDJsf8AkH2//XJf5Cp6gsf+Qfb/APXJf5Cp6ACiiigAooooAKan3T9T/OnU1Pun6n+dADqKKKAGr95/r/QU6mr95/r/AEFOoAKKKKACiiigApbP/kIXH/XKP+b0lLZ/8hC4/wCuUf8AN6AL1FFFABRRRQAUUUUARj/j4f8A3F/makqMf8fD/wC4v8zUlABRRRQAUUUUAFRn/j4T/cb+YqSoz/x8J/uN/MUASUUUUAFFFFABRRRQBGf+PhP9xv5ipKjP/Hwn+438xUlABRRRQAUUUUAQ3l3BYWM95eSrDb28bSyyMeERRkk+wAzXh3wk+Lz+LPihrOnX6CGLVZjdacpHKeXHt8s46kxqGzwMo3qKs/tKeN/7I8LweF7GXbd6r+8udp5S3U9P+BMMfRWHevmTS9TutG1e01PT5PKurOZJ4XxnaynI4PXkdK+hwGXqrhpSnvLb+vUylKzP0JorH8J+I7Xxd4T07XbAbYb2EPszny36OmcDO1gy5xzitivAlFxbi90ahRRRUgFFFFAFa/8A+Pdf+u0X/oxas1Wv/wDj3X/rtF/6MWrNABRRRQAUUUUAFRzf6sf76/8AoQqSo5v9WP8AfX/0IUASUUUUAFFFFABRRRQBHP8A8e8n+4f5VJUc/wDx7yf7h/lUlABRRRQAUUUUAFRz/wDHvJ/uH+VSVHP/AMe8n+4f5UASUUUUAFFFFABRRRQAVHB/x7x/7g/lUlRwf8e8f+4P5UASUUUUAFFFFABRRRQBk2P/ACD7f/rkv8hU9QWP/IPt/wDrkv8AIVPQAUUUUAFFFFABTU+6fqf506mp90/U/wA6AHUUUUAMVTub5z19vSl2n++36UL95/r/AEFOoAbtP99v0o2n++36U6igBu0/32/Sjaf77fpTqKAG7T/fb9Kj8uQXDvHcSRlkUHaFOcE46g+pqamj/WH6D+tACYuP+f2b/vmP/wCJoxcf8/s3/fMf/wATT6KAGYuP+f2b/vmP/wCJoxcf8/s3/fMf/wATT6KAGYuP+f2b/vmP/wCJoxcf8/s3/fMf/wATT6KAIgtx5rH7bNnaOdqe/wDs07Fx/wA/s3/fMf8A8TSj/WH6D+tOoAZi4/5/Zv8AvmP/AOJoxcf8/s3/AHzH/wDE0+igBmLj/n9m/wC+Y/8A4mjFx/z+zf8AfMf/AMTT6KAGYuP+f2b/AL5j/wDiaaVuPNU/bZs7TztT2/2alpp/1g+h/pQAmLj/AJ/Zv++Y/wD4mjFx/wA/s3/fMf8A8TT6KAGYuP8An9m/75j/APiaMXH/AD+zf98x/wDxNPooAZi4/wCf2b/vmP8A+Joxcf8AP7N/3zH/APE0+igCIrceap+2zZ2nnant/s07Fx/z+zf98x//ABNKf9YPof6U6gBmLj/n9m/75j/+Jqnq2ovo2i3up3N3dPDZW73EixJGWZUUsQAVAzgetX6KAMvStbg1lp1sNTnd7fy/OQxoNheNZFGdmD8rA8Ejmrd3cmwsp7u81KSG3t42llkZY8IqjJJ+XoAK84j8E6ZfeMtetNI8P+FbCO0aDcL7RftbTb4gd6jzUWNOCuFHLKxJzmue+PXin/hG/A2n+DrJreO6vol+0LaQ+THHbpxhUydiswwBk8KwrvhhY1asadN72+Stczu0tTwvxx4qufGfjK/1u6dyJ5MQq+MxxLwi8cZwBnHU5PesCiivuIRUIqMdkYHun7N3jOW21S68I3F28UV3uurMKFP71V+deVJ5RQ3UAbD3avo3Fx/z+zf98x//ABNfBGmaldaPq1rqWnyeVdWkyzQvjOGU5HB68jpX3J4V8Q2vivwrp+uWIxFewh9mc+W3R0zgZ2sCue+K+VzjDclRVo7S39f+CbU5XVjTxcf8/s3/AHzH/wDE0YuP+f2b/vmP/wCJp9FeEajMXH/P7N/3zH/8TRi4/wCf2b/vmP8A+Jp9FAFW7E/krm8mb97HwVT++P8AZqfFx/z+zf8AfMf/AMTUd5/qF/66x/8AoYqegBmLj/n9m/75j/8AiaMXH/P7N/3zH/8AE0+igBmLj/n9m/75j/8AiaMXH/P7N/3zH/8AE0+igBmLj/n9m/75j/8Aiaa63BUZvZj8w/hT1/3alpr/AHR9R/OgBMXH/P7N/wB8x/8AxNGLj/n9m/75j/8AiafRQAzFx/z+zf8AfMf/AMTRi4/5/Zv++Y//AImn0UAMxcf8/s3/AHzH/wDE0YuP+f2b/vmP/wCJp9FAEUi3BiYG9mI2nI2p/wDE07Fx/wA/s3/fMf8A8TSyf6tvoadQAzFx/wA/s3/fMf8A8TRi4/5/Zv8AvmP/AOJp9FADMXH/AD+zf98x/wDxNGLj/n9m/wC+Y/8A4mn0UAMxcf8AP7N/3zH/APE02RbgxMDezEbTkbU/+JqWmyf6tvoaAExcf8/s3/fMf/xNGLj/AJ/Zv++Y/wD4mn0UAMxcf8/s3/fMf/xNGLj/AJ/Zv++Y/wD4mn0UAMxcf8/s3/fMf/xNGLj/AJ/Zv++Y/wD4mn0UAMxcf8/s3/fMf/xNNjW4ESgXswG0YG1P/ialpsf+rX6CgBMXH/P7N/3zH/8AE0YuP+f2b/vmP/4mn0UAMxcf8/s3/fMf/wATRi4/5/Zv++Y//iafRQAzFx/z+zf98x//ABNGLj/n9m/75j/+Jp9FAEUEXl28aK7YVAB09PpT9p/vt+lEf+rX6CnUAN2n++36UbT/AH2/SnUUAN2n++36UbT/AH2/SnUUAN2n++36UiKdv3z1Pp60+mp90/U/zoANp/vt+lFOooAav3n+v9BTqav3n+v9BTqACiiigAooooAKaP8AWH6D+tOpo/1h+g/rQA6iiigAooooAKKKKAGj/WH6D+tOpo/1h+g/rTqACiiigAooooAKaf8AWD6H+lOpp/1g+h/pQA6iiigAooooAKKKKAGn/WD6H+lOpp/1g+h/pTqACiiigDiNS+F2m6vfve6jqEtzcyBQ802mabI74AAJZrUk8D1+nFRQ+B/CXiK9u7XVtAt7qXRGi05LhwEMqCGOQHbGEVcebjAGOOMDgdDql54mt55jpWi6ZeW6LmMzao8MknGSNvkMoOcgfN6HjszwjJb6ho/9v2wKNroivpY/M3rGxhRNqnapwAg6jrn6V1qrVUOa+iWlraP5a7JkNLmX9f10Mn/hT/gH/oWbT83/APiqdL8JvAkixI3hixAXgbQwJ47kHnp3rsqa33k+v9DWf1mv/O/vZVkcb/wp/wAA/wDQs2n5v/8AFV0miaBpfhvTRYaFYxWVqHL+XEOCx6k9yf8ACtCiplWqTVpSb+YWQUUUVkMKKKKAILz/AFC/9dY//QxU9QXn+oX/AK6x/wDoYqegAooooAKKKKACmv8AdH1H86dTX+6PqP50AOooooAKKKKACiiigBsn+rb6GnU2T/Vt9DTqACiiigAooooAKbJ/q2+hp1Nk/wBW30NADqKKKACiiigAooooAKbH/q1+gp1Nj/1a/QUAOooooAKKKKACiiigBsf+rX6CnU2P/Vr9BTqACiiigAooooAKan3T9T/OnU1Pun6n+dADqKKKAGr95/r/AEFOpq/ef6/0FOoAKKKKACiiigApo/1h+g/rTqaP9YfoP60AOooooAKKKKACiiigBo/1h+g/rTqaP9YfoP606gAooooAKKKKACmn/WD6H+lOpp/1g+h/pQA6iiigAooooAKKKKAGn/WD6H+lOpp/1g+h/pTqACiiigDG1Dwrp2qXclxdT6oHlADJBq91DH0xwiSBR07DmtKysrfTrCCysYVhtreNYoo16IqjAH5VPRVOcmuVvQVle4U1vvJ9f6GnU1vvJ9f6GpGOooooAKKKKACiiigCC8/1C/8AXWP/ANDFT1Bef6hf+usf/oYqegAooooAKKKKACmv90fUfzp1Nf7o+o/nQA6iiigAooooAKKKKAGyf6tvoadTZP8AVt9DTqACiiigAooooAKbJ/q2+hp1Nk/1bfQ0AOooooAKKKKACiiigApsf+rX6CnU2P8A1a/QUAOooooAKKKKACiiigBsf+rX6CnU2P8A1a/QU6gAooooAKKKKACmp90/U/zp1NT7p+p/nQA6iiigD//Z\"><div><br></div><div><br></div><div><div>El modelo incluye el intercambio de calor en la superficie del cilindro mediante radiación y convección.</div><div>El intercambio de calor de convección usa el dato de la velocidad del aire para calcular el factor de convección promedio usado, donde dos ecuaciones empíricas son usadas alternativamente en función si se trata de convección natural (Pe&lt;0.2) ó convección forzada (Pe&gt;0.2).</div></div><div>&nbsp;</div><div>Para la radiación, se supone que el cilindro está completamente rodeado por un entorno de temperatura uniforme.</div><div>&nbsp;</div><div><b><u>Solver:</u></b></div><div><div><br></div><div>Solver usado en la validación: euler, tolerancia: 1e-6, time step: 0.1s</div><div>Desarrollado en OpenModelica v1.24.0</div><div>Los arrays comienzan en 1.</div></div><div><br></div><div><b><u>Limitaciones del modelo:</u></b></div><div><br></div><div>Las siguientes hipótesis
y simplificaciones son usadas en el modelo:</div><div><p class=\"MsoNormal\"><o:p></o:p></p>

<p class=\"MsoListParagraphCxSpFirst\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:ES;mso-bidi-font-weight:bold\">·<span style=\"font-size: 7pt; line-height: normal; font-family: 'Times New Roman';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span></span></span><!--[endif]--><b>Material
homogéneo: </b>No hay cambios en las
características del material en el espacio.<b><o:p></o:p></b></p>

<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:ES\">·<span style=\"font-size: 7pt; line-height: normal; font-family: 'Times New Roman';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span></span></span><!--[endif]--><b>Generación
interna de calor homogénea</b>: La
generación interna de calor es debida a la resistencia eléctrica ofrecida por
el cilindro. En corriente continua (supercondesadores) la corriente es
homogénea por el medio, pero en corriente alterna existe el efecto <i>skin</i>,
donde a altas frecuencias la corriente eléctrica suele discurrir por la
superficie exterior. Por lo tanto, este modelo puede no ser adecuado en
corriente alterna. <o:p></o:p></p>

<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:ES\">·<span style=\"font-size: 7pt; line-height: normal; font-family: 'Times New Roman';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>
</span></span><!--[endif]--><b>Flujo de
calor unidimensional:</b> Sólo se
considera transmisión de calor en sentido radial dentro del cilindro. No existe
calor en la dirección del eje (extremos aislados) ni entre sectores circulares
del mismo.)<o:p></o:p></p>

<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:ES\">·<span style=\"font-size: 7pt; line-height: normal; font-family: 'Times New Roman';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>
</span></span><!--[endif]--><b>Aislado en
los extremos</b>: En caso que el
ratio de aspecto sea alto (longitud/radio), esta hipótesis es válida. Para
ratios de aspecto bajos es posible que se necesite considerar un modelo que
incluya transmisión de calor en los extremos.<o:p></o:p></p>

<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:ES\">·<span style=\"font-size: 7pt; line-height: normal; font-family: 'Times New Roman';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>
</span></span><!--[endif]--><b>Factor de
convección promedio de la superficie</b>: Aunque existen correlaciones para determinar el factor de convección en
cada segmento del circulo exterior del cilindro, éstas no son usadas para
simplificar el modelo, ya que tampoco usa una discretización que permita flujo
de calor multidimensional en su interior.<o:p></o:p></p>

<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:ES\">·<span style=\"font-size: 7pt; line-height: normal; font-family: 'Times New Roman';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>
</span></span><!--[endif]--><b>Factor de
convección para flujo transversal</b>: El factor de convección usado es para flujo puramente transversal al
cilindro.<o:p></o:p></p>

<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:ES\">·<span style=\"font-size: 7pt; line-height: normal; font-family: 'Times New Roman';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>
</span></span><!--[endif]--><b>Factores
de convección</b>: Los factores de
convección están basados en las propiedades del aire a 20ºC.<o:p></o:p></p>

<p class=\"MsoListParagraphCxSpLast\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:ES\">·<span style=\"font-size: 7pt; line-height: normal; font-family: 'Times New Roman';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>&nbsp;</span></span><!--[endif]--><b>Calor por
radiación simplificado</b>: El calor
por radiación ocurre con un entorno a la misma temperatura y va al aire,
totalmente encerrado en el mismo. Esta hipótesis es válida si el cilindro está
en el interior de una carcasa y siempre y cuando no sea un cilindro largo hecho
con varias vueltas, ya que el factor de visibilidad entre superficies es
diferente.</p></div><div>




<!--[if gte mso 9]><xml>
 <o:OfficeDocumentSettings>
  <o:AllowPNG/>
 </o:OfficeDocumentSettings>
</xml><![endif]-->


<!--[if gte mso 9]><xml>
 <w:WordDocument>
  <w:View>Normal</w:View>
  <w:Zoom>0</w:Zoom>
  <w:TrackMoves/>
  <w:TrackFormatting/>
  <w:HyphenationZone>21</w:HyphenationZone>
  <w:PunctuationKerning/>
  <w:ValidateAgainstSchemas/>
  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>
  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>
  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>
  <w:DoNotPromoteQF/>
  <w:LidThemeOther>ES</w:LidThemeOther>
  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>
  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>
  <w:Compatibility>
   <w:BreakWrappedTables/>
   <w:SnapToGridInCell/>
   <w:WrapTextWithPunct/>
   <w:UseAsianBreakRules/>
   <w:DontGrowAutofit/>
   <w:SplitPgBreakAndParaMark/>
   <w:EnableOpenTypeKerning/>
   <w:DontFlipMirrorIndents/>
   <w:OverrideTableStyleHps/>
  </w:Compatibility>
  <m:mathPr>
   <m:mathFont m:val=\"Cambria Math\"/>
   <m:brkBin m:val=\"before\"/>
   <m:brkBinSub m:val=\"&#45;-\"/>
   <m:smallFrac m:val=\"off\"/>
   <m:dispDef/>
   <m:lMargin m:val=\"0\"/>
   <m:rMargin m:val=\"0\"/>
   <m:defJc m:val=\"centerGroup\"/>
   <m:wrapIndent m:val=\"1440\"/>
   <m:intLim m:val=\"subSup\"/>
   <m:naryLim m:val=\"undOvr\"/>
  </m:mathPr></w:WordDocument>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"false\"
  DefSemiHidden=\"false\" DefQFormat=\"false\" DefPriority=\"99\"
  LatentStyleCount=\"376\">
  <w:LsdException Locked=\"false\" Priority=\"0\" QFormat=\"true\" Name=\"Normal\"/>
  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 7\"/>
  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 8\"/>
  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 9\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"index 1\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"index 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"index 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"index 4\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"index 5\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"index 6\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"index 7\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"index 8\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"index 9\"/>
  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" Name=\"toc 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" Name=\"toc 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" Name=\"toc 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" Name=\"toc 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" Name=\"toc 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" Name=\"toc 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" Name=\"toc 7\"/>
  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" Name=\"toc 8\"/>
  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" Name=\"toc 9\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Normal Indent\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"footnote text\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"annotation text\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"header\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"footer\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"index heading\"/>
  <w:LsdException Locked=\"false\" Priority=\"35\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"caption\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"table of figures\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"envelope address\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"envelope return\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"footnote reference\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"annotation reference\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"line number\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"page number\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"endnote reference\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"endnote text\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"table of authorities\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"macro\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"toa heading\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Bullet\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Number\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List 4\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List 5\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Bullet 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Bullet 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Bullet 4\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Bullet 5\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Number 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Number 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Number 4\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Number 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"10\" QFormat=\"true\" Name=\"Title\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Closing\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Signature\"/>
  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" Name=\"Default Paragraph Font\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Body Text\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Body Text Indent\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Continue\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Continue 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Continue 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Continue 4\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Continue 5\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Message Header\"/>
  <w:LsdException Locked=\"false\" Priority=\"11\" QFormat=\"true\" Name=\"Subtitle\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Salutation\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Date\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Body Text First Indent\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Body Text First Indent 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Note Heading\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Body Text 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Body Text 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Body Text Indent 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Body Text Indent 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Block Text\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Hyperlink\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"FollowedHyperlink\"/>
  <w:LsdException Locked=\"false\" Priority=\"22\" QFormat=\"true\" Name=\"Strong\"/>
  <w:LsdException Locked=\"false\" Priority=\"20\" QFormat=\"true\" Name=\"Emphasis\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Document Map\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Plain Text\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"E-mail Signature\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"HTML Top of Form\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"HTML Bottom of Form\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Normal (Web)\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"HTML Acronym\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"HTML Address\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"HTML Cite\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"HTML Code\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"HTML Definition\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"HTML Keyboard\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"HTML Preformatted\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"HTML Sample\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"HTML Typewriter\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"HTML Variable\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Normal Table\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"annotation subject\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"No List\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Outline List 1\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Outline List 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Outline List 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Simple 1\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Simple 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Simple 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Classic 1\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Classic 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Classic 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Classic 4\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Colorful 1\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Colorful 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Colorful 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Columns 1\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Columns 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Columns 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Columns 4\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Columns 5\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Grid 1\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Grid 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Grid 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Grid 4\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Grid 5\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Grid 6\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Grid 7\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Grid 8\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table List 1\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table List 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table List 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table List 4\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table List 5\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table List 6\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table List 7\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table List 8\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table 3D effects 1\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table 3D effects 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table 3D effects 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Contemporary\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Elegant\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Professional\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Subtle 1\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Subtle 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Web 1\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Web 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Web 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Balloon Text\"/>
  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"Table Grid\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Theme\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Placeholder Text\"/>
  <w:LsdException Locked=\"false\" Priority=\"1\" QFormat=\"true\" Name=\"No Spacing\"/>
  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading\"/>
  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List\"/>
  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid\"/>
  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List\"/>
  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading\"/>
  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List\"/>
  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid\"/>
  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 1\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Revision\"/>
  <w:LsdException Locked=\"false\" Priority=\"34\" QFormat=\"true\"
   Name=\"List Paragraph\"/>
  <w:LsdException Locked=\"false\" Priority=\"29\" QFormat=\"true\" Name=\"Quote\"/>
  <w:LsdException Locked=\"false\" Priority=\"30\" QFormat=\"true\"
   Name=\"Intense Quote\"/>
  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"19\" QFormat=\"true\"
   Name=\"Subtle Emphasis\"/>
  <w:LsdException Locked=\"false\" Priority=\"21\" QFormat=\"true\"
   Name=\"Intense Emphasis\"/>
  <w:LsdException Locked=\"false\" Priority=\"31\" QFormat=\"true\"
   Name=\"Subtle Reference\"/>
  <w:LsdException Locked=\"false\" Priority=\"32\" QFormat=\"true\"
   Name=\"Intense Reference\"/>
  <w:LsdException Locked=\"false\" Priority=\"33\" QFormat=\"true\" Name=\"Book Title\"/>
  <w:LsdException Locked=\"false\" Priority=\"37\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" Name=\"Bibliography\"/>
  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"TOC Heading\"/>
  <w:LsdException Locked=\"false\" Priority=\"41\" Name=\"Plain Table 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"42\" Name=\"Plain Table 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"43\" Name=\"Plain Table 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"44\" Name=\"Plain Table 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"45\" Name=\"Plain Table 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"40\" Name=\"Grid Table Light\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"Grid Table 1 Light\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"Grid Table 6 Colorful\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"Grid Table 7 Colorful\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\"
   Name=\"Grid Table 1 Light Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\"
   Name=\"Grid Table 6 Colorful Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\"
   Name=\"Grid Table 7 Colorful Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\"
   Name=\"Grid Table 1 Light Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\"
   Name=\"Grid Table 6 Colorful Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\"
   Name=\"Grid Table 7 Colorful Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\"
   Name=\"Grid Table 1 Light Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\"
   Name=\"Grid Table 6 Colorful Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\"
   Name=\"Grid Table 7 Colorful Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\"
   Name=\"Grid Table 1 Light Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\"
   Name=\"Grid Table 6 Colorful Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\"
   Name=\"Grid Table 7 Colorful Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\"
   Name=\"Grid Table 1 Light Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\"
   Name=\"Grid Table 6 Colorful Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\"
   Name=\"Grid Table 7 Colorful Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\"
   Name=\"Grid Table 1 Light Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\"
   Name=\"Grid Table 6 Colorful Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\"
   Name=\"Grid Table 7 Colorful Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"List Table 1 Light\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"List Table 6 Colorful\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"List Table 7 Colorful\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\"
   Name=\"List Table 1 Light Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\"
   Name=\"List Table 6 Colorful Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\"
   Name=\"List Table 7 Colorful Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\"
   Name=\"List Table 1 Light Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\"
   Name=\"List Table 6 Colorful Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\"
   Name=\"List Table 7 Colorful Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\"
   Name=\"List Table 1 Light Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\"
   Name=\"List Table 6 Colorful Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\"
   Name=\"List Table 7 Colorful Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\"
   Name=\"List Table 1 Light Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\"
   Name=\"List Table 6 Colorful Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\"
   Name=\"List Table 7 Colorful Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\"
   Name=\"List Table 1 Light Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\"
   Name=\"List Table 6 Colorful Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\"
   Name=\"List Table 7 Colorful Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\"
   Name=\"List Table 1 Light Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\"
   Name=\"List Table 6 Colorful Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\"
   Name=\"List Table 7 Colorful Accent 6\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Mention\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Smart Hyperlink\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Hashtag\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Unresolved Mention\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Smart Link\"/>
 </w:LatentStyles>
</xml><![endif]-->

<!--[if gte mso 10]>
<style>
 /* Style Definitions */
 table.MsoNormalTable
 {mso-style-name:\"Tabla normal\";
 mso-tstyle-rowband-size:0;
 mso-tstyle-colband-size:0;
 mso-style-noshow:yes;
 mso-style-priority:99;
 mso-style-parent:\"\";
 mso-padding-alt:0cm 5.4pt 0cm 5.4pt;
 mso-para-margin-top:0cm;
 mso-para-margin-right:0cm;
 mso-para-margin-bottom:8.0pt;
 mso-para-margin-left:0cm;
 line-height:107%;
 mso-pagination:widow-orphan;
 font-size:11.0pt;
 font-family:\"Calibri\",sans-serif;
 mso-ascii-font-family:Calibri;
 mso-ascii-theme-font:minor-latin;
 mso-hansi-font-family:Calibri;
 mso-hansi-theme-font:minor-latin;
 mso-bidi-font-family:\"Times New Roman\";
 mso-bidi-theme-font:minor-bidi;
 mso-fareast-language:EN-US;}
</style>
<![endif]-->



<!--StartFragment-->

<p class=\"MsoNormal\">Las únicas limitaciones
teóricas del modelo están en las correlaciones empíricas usadas para determinar
el factor de convección. <span lang=\"EN-US\">Por ello se establecen warnings
para los siguientes límites:<o:p></o:p></span></p>

<p class=\"MsoListParagraphCxSpFirst\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol\">·<span style=\"font-size: 7pt; line-height: normal; font-family: 'Times New Roman';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang=\"EN-US\">\"!W0001
[ConvectionHorizontalCylinder]: Natural convection only applicable for Ra_D
&gt;= 1e-5\"<o:p></o:p></span></p>

<p class=\"MsoListParagraphCxSpLast\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol\">·<span style=\"font-size: 7pt; line-height: normal; font-family: 'Times New Roman';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang=\"EN-US\">\"!W0002
[ConvectionHorizontalCylinder]: Forced convection correlation has no data above
Re_D &gt; 1e7\"<o:p></o:p></span></p>

<!--EndFragment--></div><div><br></div><div><b><u>Problemas conocidos:</u></b></div><div>&nbsp; &nbsp;&nbsp;</div><div>La transición entre convección natural y forzada se realiza con un cambio directo en las correlaciones. Un paso gradual entre ellos, según muestra la literatura, no está implementado.</div><div><br></div><div><b><u>Referencias:</u></b></div><div><b><u><br></u></b></div><div><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[Chapman]</td><td>Alan J. Chapman, \"Heat Transfer\", McMillan Publishing Company, 4th Edition, 1984</td></tr><tr><td><br></td><td><br></td></tr><tr><td>[Lienhard]</td><td>John H. Lienhard IV, John H. Lienhard V, \"A Heat Transfer Textbook\", Phlogiston Press, 3rd Edition, 2006</td></tr></tbody></table></div><div><b><u><br></u></b></div><div><div>Este modelo usa componentes de las librerías de Modelica:</div><div><br></div><div>ShipSIM(version = \"1.6.0\")</div><div>Modelica(version = \"3.2.3\")</div></div><div><b><u><br></u></b></div><div><b><u>Copyright:</u></b></div><div><br></div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: large;\">Licensed by&nbsp;Basilio Puente under the 4-Clause BSD license.</span><br style=\"font-family: 'MS Shell Dlg 2';\"><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: large;\">Copyright © 2024, Basilio Puente</span>&nbsp;&nbsp;</div><div><p style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><b><font size=\"4\">This product uses Modelica ShipSIM package</font></b></p><p style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><font size=\"4\">Licensed by&nbsp;Basilio Puente and M Dolores Fernandez&nbsp;under the 4-Clause BSD license.<br>Copyright © 2021-2024, Basilio Puente, M Dolores Fernandez.</font></p><p style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><em style=\"font-size: 13.333333015441895px;\">ShipSIM Modelica package is&nbsp;<u>free</u>&nbsp;software and the use is completely at&nbsp;<u>your own risk</u>; it can be redistributed and/or modified under the terms of the 4-Clause BSD license. For license conditions (including the disclaimer of warranty) see ShipSIM.UsersGuide.License</em></p></div></body></html>", revisions = "<html><head></head><body>Rev. 1.0.0 (06-08-2024) [BPuente]: Version inicial</body></html>"),
        Diagram,
        experiment(StartTime = 0, StopTime = 1000, Tolerance = 1e-06, Interval = 0.1));
    end TransientCylinderAir;

  model Rudder_FMU
    parameter Modelica.SIunits.Length PropellerDiameter = 9.86 "Diameter of the propeller [m]";
    parameter Real WakeFraction = 0.1 "Wake fraction [-]";
    inner Modelica.Mechanics.MultiBody.World world(animateWorld = true, defaultN_to_m = 200, defaultNm_to_m = 2000, enableAnimation = true, label2 = "z", n = {0, 0, -1}, nominalLength = 50) annotation(
      Placement(transformation(origin = {30, -22}, extent = {{-6, -6}, {6, 6}})));
    FMU.Conversions.Frame2D frame2D(Z_pos = -10) annotation(
      Placement(transformation(origin = {40, 0}, extent = {{10, -10}, {-10, 10}})));
    ShipSIM.Components.Propulsion.Rudder rudder(wingData = NACA0012_Data, AnimationForces = false, C = 7.03, s = 16) annotation(
      Placement(transformation(origin = {-22, -33}, extent = {{-12, -12}, {12, 12}})));
    Modelica.Mechanics.MultiBody.Sensors.CutForceAndTorque cutForceAndTorque(animation = false, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.world) annotation(
      Placement(transformation(origin = {5, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -0)));
    inner Components.VariableEnvironment environment annotation(
      Placement(transformation(origin = {-10, 51}, extent = {{-10, -10}, {10, 10}})));
    Modelica.Blocks.Sources.RealExpression Zero(y = 0) annotation(
      Placement(transformation(origin = {-55.5, 58}, extent = {{-8.5, -5}, {8.5, 5}})));
    Modelica.Blocks.Interfaces.RealInput Vc(unit = "m/s") "Current velocity [m/s]" annotation(
      Placement(transformation(origin = {-77, 40}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-100, 80}, extent = {{-10, -10}, {10, 10}})));
    Modelica.Blocks.Interfaces.RealInput betaC(unit = "deg") "Current direction came from, 0=N, 90=west" annotation(
      Placement(transformation(origin = {-76.5, 25.5}, extent = {{-10.5, -10.5}, {10.5, 10.5}}), iconTransformation(origin = {-100, 40}, extent = {{-10, -10}, {10, 10}})));
    Modelica.Blocks.Math.Gain conv_1(k = 1) annotation(
      Placement(transformation(origin = {-52, 26}, extent = {{-5, -5}, {5, 5}})));
    Modelica.Blocks.Interfaces.RealInput Z_ang(unit = "deg") annotation(
      Placement(transformation(origin = {77, 40}, extent = {{10, -10}, {-10, 10}}), iconTransformation(origin = {100, 80}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
    Modelica.Blocks.Interfaces.RealInput X_pos(unit = "m") annotation(
      Placement(transformation(origin = {77, 20}, extent = {{10, -10}, {-10, 10}}), iconTransformation(origin = {100, 40}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
    Modelica.Blocks.Interfaces.RealInput Y_pos(unit = "m") annotation(
      Placement(transformation(origin = {77, 0}, extent = {{10, -10}, {-10, 10}}), iconTransformation(origin = {100, 0}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
    Modelica.Blocks.Math.Add addAngle(k2 = -1) annotation(
      Placement(transformation(origin = {40, 43}, extent = {{5, -5}, {-5, 5}})));
    Modelica.Blocks.Math.Gain conv_2(k = Modelica.Constants.D2R) annotation(
      Placement(transformation(origin = {52.5, 22.5}, extent = {{-4.5, 4.5}, {4.5, -4.5}}, rotation = -90)));
    Modelica.Blocks.Interfaces.RealOutput Torque(unit = "N.m") annotation(
      Placement(transformation(origin = {50, -80}, extent = {{-10, -10}, {10, 10}}, rotation = -90), iconTransformation(origin = {40, -100}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Blocks.Interfaces.RealInput RudderAngle(unit = "deg") annotation(
      Placement(transformation(origin = {-77, -22}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}})));
    Modelica.Blocks.Interfaces.RealInput PropellerFlowSpeed(unit = "m/s") annotation(
      Placement(transformation(origin = {77, -30}, extent = {{10, -10}, {-10, 10}}), iconTransformation(origin = {100, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    Modelica.Blocks.Sources.RealExpression AngCorr(y = 0) annotation(
      Placement(transformation(origin = {22.5, 61}, extent = {{-8.5, -5}, {8.5, 5}})));
    Modelica.Blocks.Interfaces.RealOutput Fx(unit = "N") annotation(
      Placement(transformation(origin = {-10, -80}, extent = {{-10, -10}, {10, 10}}, rotation = -90), iconTransformation(origin = {-40, -100}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Blocks.Interfaces.RealOutput Fy(unit = "N") annotation(
      Placement(transformation(origin = {20, -80}, extent = {{-10, -10}, {10, 10}}, rotation = -90), iconTransformation(origin = {0, -100}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  protected
    parameter Records.WingProfile.NACA0012 NACA0012_Data annotation(
      Placement(transformation(origin = {-61, -62}, extent = {{-6, -6}, {6, 6}})));
  public
    Modelica.Blocks.Math.Gain conv_3(k = -1) annotation(
      Placement(transformation(origin = {60, -6}, extent = {{5, -5}, {-5, 5}})));
    Modelica.Blocks.Math.Gain conv_31(k = -1) annotation(
      Placement(transformation(origin = {50, -60}, extent = {{5, -5}, {-5, 5}}, rotation = 90)));
    Modelica.Blocks.Math.Gain conv_32(k = -1) annotation(
      Placement(transformation(origin = {20, -58}, extent = {{5, -5}, {-5, 5}}, rotation = 90)));
  equation
    rudder.Propeller_flow_diameter = PropellerDiameter;
    rudder.Wake_Fraction = WakeFraction;
    connect(rudder.frame_a, cutForceAndTorque.frame_a) annotation(
      Line(points = {{-19, -21}, {-9, -21}, {-9, 0}, {-5, 0}}, color = {95, 95, 95}));
    connect(cutForceAndTorque.frame_b, frame2D.frame_b) annotation(
      Line(points = {{15, 0}, {30, 0}}, color = {95, 95, 95}));
    connect(world.frame_b, frame2D.frame_a) annotation(
      Line(points = {{36, -22}, {40, -22}, {40, -10}}, color = {95, 95, 95}));
    connect(Zero.y, environment.WindSpeed) annotation(
      Line(points = {{-46, 58}, {-20, 58}}, color = {0, 0, 127}));
    connect(Zero.y, environment.WindDirection) annotation(
      Line(points = {{-46, 58}, {-29, 58}, {-29, 54}, {-20, 54}}, color = {0, 0, 127}));
    connect(environment.CurrentSpeed, Vc) annotation(
      Line(points = {{-20, 48}, {-42, 48}, {-42, 40}, {-77, 40}}, color = {0, 0, 127}));
    connect(betaC, conv_1.u) annotation(
      Line(points = {{-76, 26}, {-58, 26}}, color = {0, 0, 127}));
    connect(conv_1.y, environment.CurrentDirection) annotation(
      Line(points = {{-46, 26}, {-37, 26}, {-37, 44}, {-20, 44}}, color = {0, 0, 127}));
    connect(RudderAngle, rudder.Rudder_Order) annotation(
      Line(points = {{-77, -22}, {-34, -22}}, color = {0, 0, 127}));
    connect(PropellerFlowSpeed, rudder.Propeller_speed) annotation(
      Line(points = {{77, -30}, {61, -30}, {61, -33}, {-11, -33}}, color = {0, 0, 127}));
    connect(conv_2.y, frame2D.Z_ang) annotation(
      Line(points = {{52.5, 18}, {52.5, 6}, {50, 6}}, color = {0, 0, 127}));
    connect(AngCorr.y, addAngle.u1) annotation(
      Line(points = {{32, 61}, {51, 61}, {51, 46}, {46, 46}}, color = {0, 0, 127}));
    connect(Z_ang, addAngle.u2) annotation(
      Line(points = {{77, 40}, {46, 40}}, color = {0, 0, 127}));
    connect(addAngle.y, conv_2.u) annotation(
      Line(points = {{34.5, 43}, {30, 43}, {30, 33}, {53, 33}, {53, 28}}, color = {0, 0, 127}));
    connect(frame2D.X_pos, X_pos) annotation(
      Line(points = {{50, 0}, {58, 0}, {58, 20}, {77, 20}}, color = {0, 0, 127}));
    connect(Y_pos, conv_3.u) annotation(
      Line(points = {{77, 0}, {66, 0}, {66, -6}}, color = {0, 0, 127}));
    connect(conv_3.y, frame2D.Y_pos) annotation(
      Line(points = {{55, -6}, {50, -6}}, color = {0, 0, 127}));
    connect(cutForceAndTorque.torque[3], conv_31.u) annotation(
      Line(points = {{5, -11}, {5, -38}, {50, -38}, {50, -54}}, color = {0, 0, 127}));
    connect(conv_31.y, Torque) annotation(
      Line(points = {{50, -65}, {50, -80}}, color = {0, 0, 127}));
    connect(cutForceAndTorque.force[2], conv_32.u) annotation(
      Line(points = {{-3, -11}, {-4, -11}, {-4, -41}, {20, -41}, {20, -52}}, color = {0, 0, 127}));
    connect(conv_32.y, Fy) annotation(
      Line(points = {{20, -63}, {20, -80}}, color = {0, 0, 127}));
    connect(cutForceAndTorque.force[1], Fx) annotation(
      Line(points = {{-3, -11}, {-4, -11}, {-4, -52}, {-10, -52}, {-10, -80}}, color = {0, 0, 127}));
    annotation(
      version = "1.0.0",
      __OpenModelica_author = "Basilio Puente Varela",
      __OpenModelica_license = "see ShipSIM license",
      __OpenModelica_copyright = "2024 (c) Basilio Puente Varela",
      experiment(StartTime = 0, StopTime = 1000, Tolerance = 1e-06, Interval = 0.2),
      Documentation(info = "<html><head></head><body>This example shows how to adapt a Modelica modelo to a FMU to be used with AMEsim.</body></html>", revisions = "<html><head></head><body><span style=\"font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]</span><span style=\"font-size: 12px;\">&nbsp;(01/12/2024): Initial release</span></body></html>"),
      Diagram(coordinateSystem(extent = {{-75, -75}, {75, 75}}, grid = {1, 1})),
      Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, grid = {10, 10}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}), Polygon(origin = {-9, -4}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{43, 10}, {37, -70}, {-23, -70}, {-43, 70}, {33, 70}, {33, 22}, {23, 22}, {23, 10}, {43, 10}}), Polygon(origin = {24, 44}, points = {{10, -38}, {-10, -38}, {-10, -26}, {0, -26}, {0, 52}, {10, 52}, {10, -38}})}));
  end Rudder_FMU;
    
    package Conversions "Conversions from MSL to FMU connectors"
 model Frame2D
 
 parameter Real Z_pos=0;
 
 Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(
          Placement(transformation(origin = {0, -100}, extent = {{-16, -16}, {16, 16}}, rotation = 90), iconTransformation(origin = {0, -100}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
 Modelica.Blocks.Interfaces.RealInput Z_ang(unit="rad") "Angle in rad from X to Y" annotation(
          Placement(transformation(origin = {-106, 60}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-100, 60}, extent = {{-20, -20}, {20, 20}})));
 Modelica.Blocks.Interfaces.RealInput X_pos(unit="m") "Position on X axis" annotation(
          Placement(transformation(origin = {-104, 0}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-100, 0}, extent = {{-20, -20}, {20, 20}})));
 Modelica.Blocks.Interfaces.RealInput Y_pos(unit="m") "Position on Y axis"  annotation(
          Placement(transformation(origin = {-104, -60}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-100, -60}, extent = {{-20, -20}, {20, 20}})));
 SubComponents.VariableTranslation variableTranslation annotation(
          Placement(transformation(origin = {16, 0}, extent = {{-10, -10}, {10, 10}})));
 Modelica.Mechanics.MultiBody.Joints.Revolute revolute(useAxisFlange = true, animation = false, stateSelect = StateSelect.never)  annotation(
          Placement(transformation(origin = {58, 0}, extent = {{-10, -10}, {10, 10}})));
 Modelica.Mechanics.Rotational.Sources.Position position(useSupport = true, exact = true)  annotation(
          Placement(transformation(origin = {46, 28}, extent = {{-10, -10}, {10, 10}})));
 Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(
          Placement(transformation(origin = {100, 0}, extent = {{-16, -16}, {16, 16}}), iconTransformation(origin = {100, 0}, extent = {{16, -16}, {-16, 16}})));
 Modelica.Blocks.Sources.RealExpression r_vect[3](y = {X_pos, Y_pos, Z_pos})  annotation(
          Placement(transformation(origin = {43, -28}, extent = {{19, -8}, {-19, 8}})));
 equation
 
 connect(position.flange, revolute.axis) annotation(
          Line(points = {{56, 28}, {58, 28}, {58, 10}}));
 connect(position.support, revolute.support) annotation(
          Line(points = {{46, 18}, {52, 18}, {52, 10}}));
 connect(variableTranslation.frame_b, revolute.frame_a) annotation(
          Line(points = {{26, 0}, {48, 0}}, color = {95, 95, 95}));
 connect(revolute.frame_b, frame_b) annotation(
          Line(points = {{68, 0}, {100, 0}}, color = {95, 95, 95}));
 connect(variableTranslation.frame_a, frame_a) annotation(
          Line(points = {{6, 0}, {0, 0}, {0, -100}}, color = {95, 95, 95}));
 connect(r_vect.y, variableTranslation.r_vect) annotation(
          Line(points = {{22, -28}, {16, -28}, {16, -10}}, color = {0, 0, 127}, thickness = 0.5));
 connect(Z_ang, position.phi_ref) annotation(
          Line(points = {{-106, 60}, {0, 60}, {0, 28}, {34, 28}}, color = {0, 0, 127}));
 annotation(
          Icon(graphics = {Rectangle(extent = {{-100, 100}, {100, -100}})}),
 Documentation(revisions = "<html><head></head><body><span style=\"font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]</span><span style=\"font-size: 12px;\">&nbsp;(01/12/2024): Initial release</span></body></html>"));
end Frame2D;
    end Conversions;
    annotation(
    Icon(graphics = {Bitmap(extent = {{-80, -80}, {80, 80}}, imageSource = "iVBORw0KGgoAAAANSUhEUgAAAWEAAAEXCAYAAAB8hPULAAAACXBIWXMAABcRAAAXEQHKJvM/AAAOkElEQVR4nO3dUW4Ux7oH8OKKd2AFcDZw7SONlEc6j/MU3xXgrCBkBZgVxFkBZgXHeZrHjN8O0kixV3DMChKvwFcdam7mOgY89lR/Vd2/n2SBAE+3a4Z/V39VXfXo+vo6Uc6smz9NKe3nA2z+ftNytVwsvQ0wPY+957sx6+b7OWBfpJS6HLh7W7y4EIYJEsL3NOvmXQ7b/utlkz8EEE4IbyEH72FK6SCl9KSZEweqJYTvYNbN++A9Sik9r/5kgaYI4c/IA2qv85deL1CEEL7FrJu/zj1f4QsUJYQ35JrvibIDMBQh/Cl8+2llxyml7yo4HWBC/mvqb3YuPZwLYCDCZHvCeeDtRPgCkSYZwvnptlO1XyDa5EI4B/DSzAegBpOqCQtgoDaTCWEBDNRoEiGcB+FOBTBQm9GHcA7gpUE4oEZT6AmfbLmuL8BgRh3Cs25+ZB4wULPRhnBeB+JNBacC8FmjDOGNgTiAqo21J3xiJgTQgtGF8KybH6gDA60Y1WPLG4vy1OZjSukyr9b2R/795cY5XlZ4zsAAxrZ2xHElZYiLPDf5z6/VcvFHBecEVOjR9fX1KN6X/Fjyb4Gn8DH3wk9Wy4WeLXAnY+oJHwcd96w/9mq5MBsD2NooQjjPCX458GH7nu/RarmosQYNNGIsPeGjgY/3vt8KX60XeKjmQzigF/y93i+wK2PoCb8e6DhXKaVutVycD3Q8YAKanh2Rt6r/zwCHEsBAEa0/MTdUL/i1AAZKaD2EDwY4xs9qwEApzZYj8hoR/yp8mIvVcrFf+BjAhLXcEx6iFzxUuQOYKCH8ee9Xy8Wy8DGAiWsyhPM6EaUX6hn6ARBgglrtCZfuBZ9ZhAcYQqsh3BV+/ajFgICJaTWESz6mfGVFNGAozYVwrgeXJICBwbTYExbCwGgI4RuUIoAhCeH/75eCrw3wNy2G8IuCr22RHmBQLYbw84Kv7Qk5YFBNLeAz6+ZPU0q/l3r91XLxqNRrA9ymtZ5wyXrwRcHXBrhV6+sJ75JNO4HBCeG/qAcDg1OOAAjUWgg/reAcAHZGOeIvyhHA4IQwQCAhDBBICAMEEsIAgYQwQCAhDBBICAMEEsIAgYQwQCAhDBBICAMEEsIAgYQwQCAhDBDocfprA80WFkwvud39/qybF3z5nTtfLRdNbsk06+bdHf7Z5Wq5uBzgdJoz6+b7eW3tF1v+n1gv16ptK/Lnbsv5P8WvU2+MhrxfLReHNZ7uxgV9HRTrwH35gJc9y3sAnuevZasXoG1stGWXv/rAfb7DQ/Sb216u27TlC3vLhHB7qgrg3CvrNsJilyHxJR9zcJyOKZRzex7kr72AU7jI7dq36WnA8SdHCLeligCedfODHLgHA4bu1/ySA/m0tUCedfO+h/u6svZc69v1RCCXI4Tb8ctquTiIOtvcQzvMX08qbrWrHMbHq+XivILz+axZN1+350NKNUPp2/Ukt+vk6sl3HMe4FyHchv4WsYvo4TUWFDf1teSj1XJR1f6BuU2PKuz13tX73K6TCeNZN78u9drrEO5vhX4qdRAepO+B7A/9gR9BUGyqIoxH1qZpSmE8RAj3H4w3pQ7Cg3w7ZHjku6LjoEGh0vowPgy4oHX5Vn4s4XvT21ymGO3MipIh7GGNur0dKoD76VCzbn6ay1JjDOCUSyr/yZ2O4m606VgDOOUO3HnJuumYCeF6XayWi6HC4iDPF/2u0bba1ptZNz/Pg41FTLBN+4vMr0Nd4MZECNer+FS03FPrb5P/VfmMhxL63v5vJUJj1s2PJ9qmKV/glvlBE+5ACNfpbenpVXlual/qeNVwO+3CzkKjb9O+h51S+qGKnyzOy1yeaGEphHBCuD4fS5ch8n+O8xHXfrf14NDQpn/TlyeWgvjrhHB9ipYhcq1yOdFb5S9Zh8bW7Z+/5zdt+jdPBPHXCeG6/FJyNkQOi6nWKu+ib5d32wRx/rfvQs+6boL4K4RwXV6XOpv8n+C40XYZ2rv8ANMX5QE4Afx1gvgLhHA93pd6iCB/+JUgtvNTnjlyq/x3Ux+A28Y6iM2auEEI1+EqP866c/lDfyqA7+XVbUGcSxBTn1VyH082FpYnE8J1OC34KO3pyJ/WKu3VZo1YDfjB9nIZh+xx/lWtJlapXvBRo6uf1ebdxtZXAvjhfujnZluj+JN1T1idJk6RWnCuA1uUaXfeCeCdOlEf/kQ5Il6pW7PPDipBBZ6YrfOJEI51VuLx5FyG8OQWtevr7ZNfeW1dEz5pZNSyK1jjfJ9XvRrSzts83+IVm2+8Ix9zW693UL7Ni40vA4u3O8t/etvnaL3b9X7lM2OOpz4m9eei7q0ovPj8oIunl5KnVNU2fepsYwffe7Vx7jFtbv8+tSl3673z1lvT3/kO6sbW+fsVtt/3q+Wi6vJZyUXdH9/h39CIvDJaLQF8lu+wdrL7cQ7v5bqOmNfAOJzAer1nebfje4dUbv91+23eLR1WcpdxNOUxDCE8LjUsqD3IvmN5etNpvvAcjfDhiX6r+dcl2jGHct9mR/nx7KPgnvHzfv517b3hUgzMjUTu3UQGUd9j++dquRh0D7f+WP0xU0r/2KiRtuwil8YOhmjH1XJxnGvvb4PbbLI7cgjh8YgajOtrlT+ulouu9EL0X5LDuK91/pjPqUX9Yv77Q49N9D3jvIb1P/NFIMLzXGKaHCE8HsW3Q7rFRd6Ov5r5nvlcusaC+Cr3fkN7g/1FtL8IBPaKa5/VU4QQHoHcgxh6gKWvWXZDbx9/F7lH/iKwV7eNj7kdq5mZky8G/xNwIXuZa/yTIoTHYejbuPe5ZvngWQ+l5HPrKg/i9Z1EWBnnc/LAZ8QdRcQdXSghPA5DhvD7PBBWvRzEh5WWJtY94JovZBF3FEKYtuRSxFDTiy5aq9vlIKltwKe/KFR9J7G2cUcx1IXs+dR24DBPuH1DPXt/VXvP7XP6euusm/9c0U4YBzWWID6nf8/zE4tD7c5yWNvFfrVcPCr12nrC7Ruql3fYYgBvOMolgGhvW3w8Pl80hioVTGpRHyHcsDySPMSsiPetL8C98ZRYpLPoaWgPkT8DPw9wqL0pzZIQwm0bonZ2NZb5m/mx2Kin6q5GMug01B3FZHrDQrhtQ3xQjxsvQ9wUtT5B8fU0hpA/C0NclIUwTSjdE/7Y8u3zbXJveOja8EVNTxU+VC5LlL6jmMwMCSHcttKbeI51+5mh69tjfBy39MV5MjvDCOFGDTBwcTXiNV6H/LnOxrBZwE35Zyr6EMdUtj4Swu0qHcI7WYy9Rnm61VAliTFvZln6YjaJkoQQblfpXkLTU9LuYIje6VXrU/u+onQIT2KamhDmNmMPjzRQCI+uDLEp3ymVHKDTE6ZqJXvCYw/g9IVdnndp1CGclfwZ9YSZrNGHx0BrNwjhh6lhE9LihHC7nhY88ymERyo9ut/SIj33NcaZH0MTwu0qNo9yDE923VHJ2R8t7OqxK8VmmkxhmpoQ5qYx7Fh8VyVDeJTT+z5jKhftIoQwU1ayXDCl2/QpXXB2Tghzkxof2xp97bskIQxluEXnToQwlCGEuRN7zAF8xaybX5dqIz1hgEBCGCCQEAYIJIQBAglhgEBCGCCQEG7QAPvLAQMRwm0SwjASQhggkBAGCCSEAQIJYYBAQhggkBAGCCSEAQIJYYBAQhggkBAGCCSEAQIJYYBAQhggkBAGCCSEAQIJYYBAQhggkBAGCCSEAQIJYYBAQhggkBAGCCSEAQIJYYBAQhggkBAGCCSEAQIJYYBAQhggkBAGCCSEAQIJYYBAQhggkBAGCCSEAQIJYYBAQhggkBAGCCSEAQIJYYBAQhggkBAGCCSEAQIJYYBAQhggkBAGCCSEAQIJYYBAQhggkBAGCCSEAQIJYYBAQhggkBCGMjrtyl0IYYBAQhggkBAGCCSEAQIJYYBAQhggkBAGCCSEAQIJYYBAQhggkBBmys69+0QTwkzZH959oglhgECPNX6T+tvobwud+OXI226TdtyNk5TSstBr11IyKvU5SY+ur69LvfbOzbr5UUrpTaGX/3a1XJT6IAHcSjkCIJAQBggkhAECCWGAQEIYIJAQBggkhAECCWGAQEIYIJAQBggkhAECCWGAQEIYIJAQBggkhAECCWGAQEIYIJAQBggkhAECCWGAQEIYIJAQBggkhAECCWGAQEIYIJAQBggkhAECCWGAQEIYIJAQBggkhAECCWGAQEIYIJAQBggkhAECCWGAQEIYIJAQBggkhAECCWGAQEIYIJAQBggkhAECCWGAQEIYIJAQBggkhAECCWGAQEIYIJAQBggkhAECtRbCf1RwDgA701QIr5aL45TS+wIv/eNquVgWeF2AL3p0fX3dXAvNuvnrlNJPO3ipq5TSgQAGojRZE8494u9ziN7XRUppXwADkZrsCa/Nuvl+SqkP0Sdbfmtf0ni9Wi7UmIFQTYdw+iuIT1JKe3f8lh9zTxogXPMhnD4F8dPcI/5SEKv/AtUZRQivzbp53yN+dctfXeQAvow5M4DbjephjdVycZhSenvjj/v6byeAgRo9+vfT/+76kKr43Tn/5veL022+YdbN+zB+d5/674dne31po//+p1ufKcCW+hA+Sim9qbzhvv/m94uTbb5h1s1fbNv7zQH8tdoywM60Uo549+HZ3lYhfI8A7mdZXApgYEgt1YRffXi2d5p7qzv14dleX3747R7zjQEepLWBue/6csEug/jDs73jXD8GGFyLsyP6csFlLh/cWx/kfc86pfRD7I8DTFmrU9Se5B7xvWZ1fHi29yIPwH23+1MDuLuW5wn3QfxrrufeWe5BnxuAA2owhoc13uW67lcZgANqM5Yn5n742hS2/PcG4ICqPB7R2/Eqlxq6b36/+L8lKvNMin4A7mXs6QH83dg2+tzLA3Z/zpzIvy4FMFCrMe62vA7iQ48gA7UbUzli0xP1X6AFY+wJAzRDCAMEEsIAgYQwQCAhDBAlpfS/kJkELhJh36cAAAAASUVORK5CYII=")}));
  end FMU;
