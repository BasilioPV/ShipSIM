package ShipSIM "Ship simulation library"
  extends Modelica.Icons.Package;

  package UsersGuide "User's Guide"
    extends Modelica.Icons.Information;

    package Overview "Overview"
      extends Modelica.Icons.Information;
      annotation(
        DocumentationClass = true,
        Documentation(info = "<html><head></head><body>ShipSIM package has the aim to provide Modelica models relative to Naval Architecture, specially to perform 6 DoF simulations, propulsion systems, electrical plant, engines, etc... to enable designers a true Model-Based Engineering (MBE) based on open source solutions.<div><br><div>Through decades of investigation, naval architecture knowledge was documented in natural language on papers, books, thesis and other scientific publications. The rise of CFD programs in the last decades, looking for a generalized solution, puts all this knowledge in the background. But CFD calculation times are not adequate for the real-time simulations required by digital twin technology.</div><div><br></div><div>Mature acausal simulation languages, such as Modelica, enables the use of all this knowledge in a practical way to develop an trusted, easy to maintain and reusable simulation library.</div><div><br><div><div>This library remains under heavy development and exhaustive validation is needed to gain confidence on the results. Nevertheless, the library is based on state-of-the art publications coded by Naval Architects that ensure a correct implementations of the background physics.</div></div></div></div><div><br></div><div><b>NOTE</b>: <i>Components crossed with a red line are under development and shall not be used!</i></div><div><br></div><div><b><u>Instructions:</u></b></div><div><b><u><br></u></b></div><div>To use this library on a new model please follow this steps:</div><div><br></div><div>1- Insert a Modelica.Mechanics.Multibody.World with label2=\"z\" and set gravity acting on negative Z axis ( {0,0,-1} ).</div><div>2- Insert a ShipSIM.Components.Environment and set the current and wind conditions</div><div>3- Insert a ShipSIM.Components.Ship.ShipModelTh and parametrize</div><div>4- Add other components (hydrodynamic, wind, rudder, propeller, etc...)</div><div><br></div><div><br></div><div>Please find more information on the examples provided.</div></body></html>"));
    end Overview;

    package License "License"
      extends Modelica.Icons.ReleaseNotes;
      annotation(
        DocumentationClass = true,
        Documentation(info = "<html><head></head><body lang=\"en-US\">
        <p>All files in this directory and in all subdirectories, as well as the entire ShipSIM package, are released under
        the 3-Clause BSD license explained on this document.</p><p>-----------------------------------------</p><p><b><i><u><font size=\"4\">\"Attribution Notice\" for the use of this package on other works:</font></u></i></b></p><p><b><font size=\"4\">This product uses Modelica ShipSIM package</font></b></p><p><font size=\"4\">Licensed by&nbsp;Basilio Puente and M Dolores Fernandez&nbsp;under the 3-Clause BSD license.<br>Copyright © 2021-2023, Basilio Puente, M Dolores Fernandez.</font></p><p><em style=\"font-size: 13.333333015441895px;\">ShipSIM Modelica package is&nbsp;<u>free</u>&nbsp;software and the use is completely at&nbsp;<u>your own risk</u>; it can be redistributed and/or modified under the terms of the 3-Clause BSD license. For license conditions (including the disclaimer of warranty) see ShipSIM.UsersGuide.License</em></p><p>----------------------------------------</p><p><b><i><font size=\"4\"><u>\"Derivative Work Attribution Notice\" for the use of this package (modified) on other works:</u></font></i></b></p><p style=\"font-size: 13.333333015441895px;\"><b>This product contains Derivative Work from Modelica ShipSIM package</b></p><p style=\"font-size: 13.333333015441895px;\">Licensed by&nbsp;<span style=\"font-size: 13.333333015441895px;\">Basilio Puente and M Dolores Fernandez</span>&nbsp;under the 3-Clause BSD license.<br>Copyright © 2021-2023, Basilio Puente, M Dolores Fernandez.</p><p style=\"font-size: 13.333333015441895px;\"><em style=\"font-size: 13.333333015441895px;\">ShipSIM Modelica package is&nbsp;<u>free</u>&nbsp;software and the use is completely at&nbsp;<u>your own risk</u>; it can be redistributed and/or modified under the terms of the 3-Clause BSD license. For license conditions (including the disclaimer of warranty) see ShipSIM.UsersGuide.License</em></p><hr>
        <h4><a name=\"The_Modelica_License_2-outline\" id=\"The_Modelica_License_2-outline\"></a>The 3-Clause BSD License</h4><div><!--StartFragment--><p style=\"margin: 0px 0px 0.75em; line-height: 1.5em; font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\"><span style=\"font-family: -webkit-standard; orphans: auto; widows: auto;\">Licensed by&nbsp;Basilio Puente and M Dolores Fernandez&nbsp;under the 3-Clause BSD license.</span><br style=\"font-family: -webkit-standard; orphans: auto; widows: auto;\"><span style=\"font-family: -webkit-standard; orphans: auto; widows: auto;\">Copyright © 2021-2023, Basilio Puente, M Dolores Fernandez.</span></p><p style=\"margin: 0px 0px 0.75em; line-height: 1.5em; font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\"><span style=\"font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif;\">All rights reserved.</span></p><p style=\"margin: 0px 0px 0.75em; line-height: 1.5em; font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\"><br></p><p style=\"margin: 0px 0px 0.75em; line-height: 1.5em; font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:</p><p style=\"margin: 0px 0px 0.75em; line-height: 1.5em; font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.</p><p style=\"margin: 0px 0px 0.75em; line-height: 1.5em; font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.</p><p style=\"margin: 0px 0px 0.75em; line-height: 1.5em; font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.</p><p style=\"margin: 0px 0px 0.75em; line-height: 1.5em; font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.</p><p style=\"margin: 0px 0px 0.75em; line-height: 1.5em; font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\"><!--StartFragment--><span style=\"font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-variant-ligatures: normal;\">-- The above is the license, and is the standard&nbsp;</span><a href=\"https://opensource.org/licenses/BSD-3-Clause\" target=\"_blank\" style=\"color: rgb(67, 105, 118); font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-variant-ligatures: normal;\">3-clause BSD-license</a><span style=\"font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-variant-ligatures: normal;\">&nbsp;with&nbsp;<span style=\"orphans: auto; widows: auto;\">Basilio Puente, M Dolores Fernandez</span>&nbsp;as copyright holder.</span><!--EndFragment-->
    
    </p><p style=\"margin: 0px 0px 0.75em; line-height: 1.5em; font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-size: 12.144px; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\"><br></p><!--EndFragment--></div>
    
    </body></html>"),
        Icon(graphics = {Ellipse(origin = {29, 23}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-25, 25}, {25, -25}}), Polygon(origin = {30, -20}, lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, points = {{-8, 16}, {-18, -38}, {2, -14}, {22, -40}, {8, 16}, {8, 16}, {-8, 16}})}));
    end License;

    package ReleaseNotes "Release Notes"
      extends Modelica.Icons.ReleaseNotes;
      annotation(
        DocumentationClass = true,
        Documentation(info = "<html><head></head><body><div><b>Version 1.3.0 (31-05-2023):</b></div><div>Added WingSail model</div><div>Added cavitation warning for 4Q propeller models</div><div>Implemented propeller-rudder interaction on 1stQ on Propeller4Q&nbsp;</div><div>Added animation forces selector for several components</div><div>Added electrical consumers components and EPLA sample</div><div><b><br></b></div><div><b>Version 1.2.0 (22-04-2023):</b></div><div>Added POD4Q model</div><div>Added (not complete) Propeller4Q model</div><div>GitHub issues #2 to #3 solved</div><div>Minor bugs fixed</div><div>Added propeller visualization</div><div><b><br></b></div><div><b>Version 1.1.0 (08-03-2023):</b></div><div>Included assert documentation on models</div><div>Added wind and current effects</div><div>Added ship wind model</div><div>Change to BSD 3-Clause license</div><div>Translate internal comments to English</div><div><b><br></b></div><div><b>Version 1.0.0 (14-02-2023):</b></div><div>First official release of the library on GitHub (BasilioPV/ShipSIM)</div><div>Released under Modelica License 2 with additional clause 16</div><b><div><b><br></b></div>Version 0.0.0 (July 2022):</b><div>First publication on GitHub (BasilioPV/ShipSIM)</div><div><br></div><div><i>Note: the last digit on version number (e.g. 1.0.<u>x</u>) represents an official release when this number is zero, and an internal release otherwise.</i></div><div><br></div><div><b>-----------------------------------------</b></div><div><b>Roadmap:</b></div><div><ul><li>Include waves (major implementation)</li><li>Create electric propulsion motor</li><li>Create diesel engine simple model</li></ul><div><br></div></div></body></html>"));
    end ReleaseNotes;

    package References "References"
      extends Modelica.Icons.References;
      annotation(
        DocumentationClass = true,
        Documentation(info = "<html><head></head><body><div><br></div>

<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\">
<tbody><tr>
<td>[Principles]</td>
<td>Edward V. Lewis et al,
  \"Princiles of Naval Architecture\",
  <em>SNAME</em>,
  Second Revision, 1988</td>
</tr>
<tr>
<td>[ModMultibody]</td>
<td>M. Otter, H. Elmqvist and S.E. Mattsson,
  \"Proceedings of the 3rd International Modelica Conference\",
  2003</td>
</tr>
    <tr>
    <td>[Yasukawa2015]</td>
    <td>Ghalib Taimuri et al,
    \"Introduction of MMG standard method for ship maneuvering predictions\",
    Journal of Marine Science and Technology, 20, 37-52, 2015, <a href=\"https://link.springer.com/article/10.1007/s00773-014-0293-y\">https://link.springer.com/article/10.1007/s00773-014-0293-y</a></td>
    </tr>
<tr>
<td>[Taimuri2020]</td>
<td>Ghalib Taimuri et al,
  \"A 6-DoF maneuvering model for the rapid estimation of hydrodynamic actions in deep and shallow waters\",
  Journal of Ocean Engineering, 2020, <a href=\"https://doi.org/10.1016/j.oceaneng.2020.108103\">https://doi.org/10.1016/j.oceaneng.2020.108103</a></td>
</tr>
<tr>
<td>[Jialun2020]</td>
<td>Jialun Liu,
  \"Mathematical Modeling of Inland Vessel Maneuverability Considering Rudder Hydrodynamics\",
  Springer 2020,
  <a href=\"https://doi.org/10.1007/978-3-030-47475-1\">https://doi.org/10.1007/978-3-030-47475-1</a></td>
</tr>
<tr>
<td>[Oosterveld1975]</td>
<td>M.W.C. Oosterveld and P. Van Oossanen,
  \"Further computer-analyzed data of the wageningen B-screw series\",
International Shipbuilding Progress, Vol. 22, No. 251, July 1975<br></td>
</tr>
<tr>
<td>[Harvald1983]</td>
<td>Harvald S.A.,
  \"Resistance and Propulsion of Ships\",
Wiley 1983, ISBN 0-89464-754-7<br></td>
</tr>
<tr>
<td>[Holtrop1984]</td>
<td>Holtrop J.,
  \"A Statistical Re-analysis of Resistance and Propulsion Data\",
ISP, Vol.31<br></td>
</tr>
<tr>
<td>[Brix1993]</td>
<td>Brix J.,
  \"Manoeuvring technical manual\",
Hamburg: Seehafen Verlag<br></td>
</tr>
<tr>
<td>[Acorts]</td>
<td>Antonio Corts,
  \"Gemelo digital de timón y servo usando Modelica\",
MSc Thesis 2022<br></td>
</tr>
    <tr>
    <td>[Fujiwara]</td>
    <td>T. Fujiwara, M. Ueno, T. Nimura,
    \"An estimation method of wind forces and moments acting on ships\",
    Journal of the Society of Naval Architects of Japan - January 1998,
    <a href=\"http://dx.doi.org/10.2534/jjasnaoe1968.1998.77\">http://dx.doi.org/10.2534/jjasnaoe1968.1998.77</a></td>
    </tr>
    <tr>
    <td>[Roddy]</td>
    <td>Robert F. Roddy, David E. Hess, Will Faller,
    \"Neural network predictions of the 4-quadrant Wageningen propeller series\",
    David Taylor Model Basin - April 2006,
    <a href=\"https://apps.dtic.mil/sti/pdfs/ADA455497.pdf\">NSWCCD-50-TR-2006/004</a></td>
    </tr>
    <tr>
    <td>[Burrill]</td>
    <td>L.C. Burrill,
    \"The Phenomenon of Cavitation\",
    Int. Shipbuilding Prog., 1955, Vol.2, No.15
    </td>
    </tr>
    <tr>
    <td>[SAND8O-2114]</td>
    <td>Robert E. Sheldahl, Paul C. Klimas,
    \"Aerodynamic Characteristics of Seven Symmetrical Airfoil Sections Through 180-Degree Angle of Attack for Use in Aerodynamic Analysis of Vertical Axis Wind Turbines\",
    Sandia National Laboratories, SAND8O-2144, March 1981, 
    <a href=\"https://www.osti.gov/servlets/purl/6548367\">https://doi.org/10.2172/6548367</a></td>
    </td>
    </tr>
</tbody></table>

</body></html>"));
    end References;

    package Contact "Contact contributors"
      extends Modelica.Icons.Contact;
      annotation(
        DocumentationClass = true,
        Documentation(info = "<html><head></head><body><p>ShipSIM repository:</p><p><a href=\"https://github.com/BasilioPV/ShipSIM\">https://github.com/BasilioPV/ShipSIM</a></p><p><b>Main authors:</b></p>
    
    <p>
    <strong><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Basilio Puente Varela</strong><br><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>15624 Ares (A Coruña)<br><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Spain<br><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>email: <a href=\"mailto:basiliopuentevarela@gmail.com\">basiliopuentevarela@gmail.com</a><br><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>web:&nbsp;<a href=\"https://modelica-spain.org\">https://modelica-spain.org</a></p><p><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Linkedin:&nbsp;<a href=\"https://es.linkedin.com/in/basiliopuentevarela\">https://es.linkedin.com/in/basiliopuentevarela</a></p><p><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>ORCID:&nbsp;0000-0003-1363-5032</p><p><br></p>
    
    <p>
    <strong><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Maria Dolores Fernandez Ballesteros</strong><br><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>15624 Ares (A Coruña)<br><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Spain<br><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>email:&nbsp;<a href=\"mailto:lolifernandezballesteros@gmail.com\">lolifernandezballesteros@gmail.com</a><br><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>web:&nbsp;<a href=\"https://modelica-spain.org\">https://modelica-spain.org</a></p><p><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>LinkedIn:&nbsp;<a href=\"https://es.linkedin.com/in/maría-dolores-fernández-ballesteros-22815443\">https://es.linkedin.com/in/maría-dolores-fernández-ballesteros-22815443</a></p><p><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>ORCID:&nbsp;0000-0002-1501-8890</p>
    
    <h4>Contributors to this library:</h4><div><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span><b>Individuals (in chronological order):</b></div>
    
    <ul>
    <li>Antonio Corts de la Peña (Rudder component)</li>
    </ul>
    
    <h4><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Institutions:</h4><div><ul><li><a href=\"http://www.tphispania.com/\">Techno Pro Hispania S.L.</a></li></ul></div><h4>Acknowledgements:</h4>
    
    <p>
    The authors would like to thank following entities for your contribution to spread both Modelica language as well this package:</p><p></p><ul><li><a href=\"https://www.udc.es/\">Universidade of A Coruña</a></li><li><a href=\"https://www.upm.es/\">Universidad Politécnica de Madrid</a></li></ul><p></p>
    </body></html>"));
    end Contact;
  end UsersGuide;

  package Examples "Sample simulations of the library"
    extends Modelica.Icons.Example;

    package Maneuvering
      extends Modelica.Icons.Example;

      model Test_ZigZag_1Q
        extends Modelica.Icons.Example;
        ShipSIM.Components.Ship.ShipModelTh shipModelTh(CoG = {50.43, 0, 9}, ini_Vel = {3.7, 0, 0}) annotation(
          Placement(visible = true, transformation(origin = {62, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        ShipSIM.Components.Ship.HidrodynamicXYY hidrodynamicXYY annotation(
          Placement(visible = true, transformation(origin = {62, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Sources.RealExpression Water_Depth annotation(
          Placement(visible = true, transformation(origin = {89, 23}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Visualizers.FixedFrame ShipAxis(color_y = {0, 180, 0}, color_z = {255, 0, 0}, diameter = 0.5, length = 30) annotation(
          Placement(visible = true, transformation(origin = {27, 43}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(animation = true, height = 10, length = 100, shapeType = "file://W:/Documentos Baul/Publico/Modelica/Modelos Propios/ShipSIM/SimpleShipModel/Ship.dxf", width = 20) annotation(
          Placement(visible = true, transformation(origin = {26, 30}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(animation = false, r = {1, 0, 2}) annotation(
          Placement(visible = true, transformation(origin = {28, 6}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
        inner Modelica.Mechanics.MultiBody.World world(animateWorld = true, defaultN_to_m = 2000, defaultNm_to_m = 20000, enableAnimation = true, label2 = "z", n = {0, 0, -1}, nominalLength = 50) annotation(
          Placement(visible = true, transformation(origin = {-84, 42}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
        ShipSIM.Components.Propulsion.Rudder rudder(C = 2.5, s = 4) annotation(
          Placement(visible = true, transformation(origin = {-24, 3}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation Rudder_pos(animation = false, r = {-2, 0, 4.5}) annotation(
          Placement(visible = true, transformation(origin = {21, 17}, extent = {{5, 5}, {-5, -5}}, rotation = 0)));
        Modelica.Blocks.Sources.RealExpression Ref annotation(
          Placement(visible = true, transformation(origin = {-92, 7}, extent = {{-4, -5}, {4, 5}}, rotation = 0)));
        Modelica.Blocks.Logical.Switch switch1 annotation(
          Placement(visible = true, transformation(origin = {-47, 3}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
        Modelica.Blocks.Sources.RealExpression MinAngle(y = -10) annotation(
          Placement(visible = true, transformation(origin = {-72, -10}, extent = {{-6, -4}, {6, 4}}, rotation = 0)));
        Modelica.Blocks.Sources.RealExpression MaxAngle(y = 10) annotation(
          Placement(visible = true, transformation(origin = {-72, 14}, extent = {{-6, -4}, {6, 4}}, rotation = 0)));
        Modelica.Blocks.Logical.OnOffController onOffController(bandwidth = 20, pre_y_start = false) annotation(
          Placement(visible = true, transformation(origin = {-72, 2}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
        ShipSIM.Components.Propulsion.Propeller1Q propeller(Diameter = 2.5) annotation(
          Placement(visible = true, transformation(origin = {-3, 3}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Sources.Speed speed(phi(displayUnit = "rad")) annotation(
          Placement(visible = true, transformation(origin = {27, -15}, extent = {{7, -7}, {-7, 7}}, rotation = 0)));
        Modelica.Blocks.Sources.RealExpression ShaftSpeed(y = 135*(2*3.141592/60)) annotation(
          Placement(visible = true, transformation(origin = {-8, -28}, extent = {{-22, -8}, {22, 8}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Visualizers.FixedShape buoy(animation = false, color = {255, 0, 0}, height = 10, length = 10, r_shape = {300, 0, 0}, shapeType = "sphere", width = 10) annotation(
          Placement(visible = true, transformation(origin = {-62.5, 42.5}, extent = {{-5.5, -5.5}, {5.5, 5.5}}, rotation = 0)));
        inner ShipSIM.Components.Environment environment(WindDirection = 0, WindSpeed = 20) annotation(
          Placement(visible = true, transformation(origin = {-26.5, 44.5}, extent = {{-10.5, -10.5}, {10.5, 10.5}}, rotation = 0)));
        ShipSIM.Components.Ship.ShipWind shipWind annotation(
          Placement(visible = true, transformation(origin = {62, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        connect(Water_Depth.y, shipModelTh.Water_depth) annotation(
          Line(points = {{83.5, 23}, {80, 23}, {80, 18}, {72, 18}}, color = {0, 0, 127}));
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
          Line(points = {{-78, 42}, {-73, 42}, {-73, 42.5}, {-68, 42.5}}));
        connect(MaxAngle.y, switch1.u1) annotation(
          Line(points = {{-66, 14}, {-60, 14}, {-60, 8}, {-56, 8}}, color = {0, 0, 127}));
        connect(shipModelTh.frame_a, shipWind.frame_a) annotation(
          Line(points = {{52, 18}, {50, 18}, {50, -30}, {52, -30}}, color = {95, 95, 95}));
        connect(switch1.y, rudder.Rudder_Order) annotation(
          Line(points = {{-39, 3}, {-34, 3}, {-34, 10}, {-31, 10}}, color = {0, 0, 127}));
      protected
        annotation(
          experiment(StartTime = 0, StopTime = 1000, Tolerance = 1e-06, Interval = 0.2),
          Documentation(info = "<html><head></head><body>This example provides a basic construction of a maneuvering model where the following items are placed:<div><br><div>- Ship model: consist on a ship model for masses, inertia and floatation plus other model for Surge, Sway and Yaw movements.</div></div><div>- Visualizer: an axis frame and a box visualizer represent the local coordinates and the ship.</div><div>- Propulsion system: a propeller and rudder models, in addition with a constant speed shaft, provides the propulstion system model</div><div>- Control: A control that checks ship course (Yaw) and change the rudder order from 10º to -10º makes the logic of a zig-zag test</div></body></html>"),
          Diagram(graphics = {Rectangle(origin = {73, -4}, lineColor = {0, 255, 0}, extent = {{-25, 40}, {25, -40}}), Text(origin = {85, -19}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Rectangle(origin = {4, -9}, lineColor = {255, 0, 0}, extent = {{-40, 31}, {40, -31}}), Text(origin = {85, -19}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Text(origin = {23, -35}, textColor = {255, 0, 0}, extent = {{-11, 3}, {11, -3}}, textString = "Propulsion model"), Rectangle(origin = {22, 38}, lineColor = {255, 0, 255}, extent = {{-20, 14}, {20, -14}}), Text(origin = {11, 27}, textColor = {255, 0, 255}, extent = {{-7, 3}, {7, -3}}, textString = "Visualizer"), Rectangle(origin = {-68, 1}, lineColor = {85, 0, 255}, extent = {{-30, 23}, {30, -23}}), Text(origin = {-70, -18}, textColor = {85, 0, 255}, extent = {{-8, 2}, {8, -2}}, textString = "Control")}, coordinateSystem(extent = {{-125, -75}, {125, 75}}, grid = {1, 1})),
          Icon(coordinateSystem(extent = {{-125, -75}, {125, 75}}, grid = {10, 10})));
      end Test_ZigZag_1Q;

      model Test_CrashStop_4Q
        extends Modelica.Icons.Example;
        ShipSIM.Components.Ship.ShipModelTh shipModelTh(CoG = {50.43, 0, 9}, ini_Vel = {7, 0, 0}) annotation(
          Placement(visible = true, transformation(origin = {62, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        ShipSIM.Components.Ship.HidrodynamicXYY hidrodynamicXYY annotation(
          Placement(visible = true, transformation(origin = {62, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Sources.RealExpression Water_Depth annotation(
          Placement(visible = true, transformation(origin = {89, 23}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Visualizers.FixedFrame ShipAxis(color_y = {0, 180, 0}, color_z = {255, 0, 0}, diameter = 0.5, length = 30) annotation(
          Placement(visible = true, transformation(origin = {27, 43}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(animation = true, height = 10, length = 100, shapeType = "file://W:/Documentos Baul/Publico/Modelica/Modelos Propios/ShipSIM/SimpleShipModel/Ship.dxf", width = 20) annotation(
          Placement(visible = true, transformation(origin = {26, 30}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(animation = false, r = {1, 0, 2}) annotation(
          Placement(visible = true, transformation(origin = {28, 6}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
        inner Modelica.Mechanics.MultiBody.World world(animateWorld = true, defaultN_to_m = 20000, defaultNm_to_m = 200000, enableAnimation = true, label2 = "z", n = {0, 0, -1}, nominalLength = 50) annotation(
          Placement(visible = true, transformation(origin = {-84, 42}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
        ShipSIM.Components.Propulsion.Rudder rudder(C = 2.5, InitialRudderAngle = 0, s = 4) annotation(
          Placement(visible = true, transformation(origin = {-24, 3}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation Rudder_pos(animation = false, r = {-2, 0, 4.5}) annotation(
          Placement(visible = true, transformation(origin = {21, 17}, extent = {{5, 5}, {-5, -5}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Sources.Speed speed(phi(displayUnit = "rad")) annotation(
          Placement(visible = true, transformation(origin = {27, -15}, extent = {{7, -7}, {-7, 7}}, rotation = 0)));
        Modelica.Blocks.Sources.RealExpression Rudder_order(y = 35) annotation(
          Placement(visible = true, transformation(origin = {-61.5, 11.5}, extent = {{-8.5, -6.5}, {8.5, 6.5}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Visualizers.FixedShape buoy(animation = false, color = {255, 0, 0}, height = 10, length = 10, r_shape = {300, 0, 0}, shapeType = "sphere", width = 10) annotation(
          Placement(visible = true, transformation(origin = {-62.5, 42.5}, extent = {{-5.5, -5.5}, {5.5, 5.5}}, rotation = 0)));
        inner ShipSIM.Components.Environment environment annotation(
          Placement(visible = true, transformation(origin = {-31, 49}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
        ShipSIM.Components.Ship.ShipWind shipWind annotation(
          Placement(visible = true, transformation(origin = {62, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        ShipSIM.Components.Propulsion.Propeller4Q propeller4Q(PropModel = ShipSIM.Types.Propeller4Q.B4_100_1) annotation(
          Placement(visible = true, transformation(origin = {-4, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Math.Gain Convert_to_rad(k = 2*Modelica.Constants.pi/60) annotation(
          Placement(visible = true, transformation(origin = {-16.5, -52.5}, extent = {{-5.5, -5.5}, {5.5, 5.5}}, rotation = 0)));
        Modelica.Blocks.Sources.TimeTable Propeller_timeTable(table = [0, 135; 60, -100; 100, -100; 120, 0; 150, 0]) annotation(
          Placement(visible = true, transformation(origin = {-52, -53}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        connect(Water_Depth.y, shipModelTh.Water_depth) annotation(
          Line(points = {{83.5, 23}, {80, 23}, {80, 18}, {72, 18}}, color = {0, 0, 127}));
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
        connect(shipModelTh.shipData, hidrodynamicXYY.shipData) annotation(
          Line(points = {{72, 11}, {78, 11}, {78, 1}, {72, 1}}));
        connect(world.frame_b, buoy.frame_a) annotation(
          Line(points = {{-78, 42}, {-73, 42}, {-73, 42.5}, {-68, 42.5}}));
        connect(shipModelTh.frame_a, shipWind.frame_a) annotation(
          Line(points = {{52, 18}, {50, 18}, {50, -30}, {52, -30}}, color = {95, 95, 95}));
        connect(fixedTranslation.frame_b, propeller4Q.frame_a) annotation(
          Line(points = {{22, 6}, {6, 6}}, color = {95, 95, 95}));
        connect(propeller4Q.flange, speed.flange) annotation(
          Line(points = {{6, 2}, {10, 2}, {10, -15}, {20, -15}}));
        connect(propeller4Q.Propeller_flow_diameter, rudder.Propeller_flow_diameter) annotation(
          Line(points = {{-14, 6}, {-17, 6}}, color = {0, 0, 127}));
        connect(propeller4Q.Propeller_speed, rudder.Propeller_speed) annotation(
          Line(points = {{-14, 2}, {-17, 2}, {-17, 3}}, color = {0, 0, 127}));
        connect(Rudder_order.y, rudder.Rudder_Order) annotation(
          Line(points = {{-52, 12}, {-31, 12}, {-31, 10}}, color = {0, 0, 127}));
        connect(Propeller_timeTable.y, Convert_to_rad.u) annotation(
          Line(points = {{-41, -53}, {-32.5, -53}, {-32.5, -52}, {-23, -52}}, color = {0, 0, 127}));
        connect(Convert_to_rad.y, speed.w_ref) annotation(
          Line(points = {{-10, -52}, {40, -52}, {40, -15}, {35, -15}}, color = {0, 0, 127}));
        annotation(
          experiment(StartTime = 0, StopTime = 1000, Tolerance = 1e-06, Interval = 0.2),
          Documentation(info = "<html><head></head><body>This example provides a basic construction of a maneuvering model where the following items are placed:<div><br><div>- Ship model: consist on a ship model for masses, inertia and floatation plus other model for Surge, Sway and Yaw movements.</div></div><div>- Visualizer: an axis frame and a box visualizer represent the local coordinates and the ship.</div><div>- Propulsion system: a propeller and rudder models, in addition with a constant speed shaft, provides the propulstion system model</div><div>- Control: A control that checks ship course (Yaw) and change the rudder order from 10º to -10º makes the logic of a zig-zag test</div></body></html>"),
          Diagram(graphics = {Rectangle(origin = {73, -4}, lineColor = {0, 255, 0}, extent = {{-25, 40}, {25, -40}}), Text(origin = {85, -19}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Rectangle(origin = {4, -9}, lineColor = {255, 0, 0}, extent = {{-40, 31}, {40, -31}}), Text(origin = {85, -19}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Text(origin = {23, -35}, textColor = {255, 0, 0}, extent = {{-11, 3}, {11, -3}}, textString = "Propulsion model"), Rectangle(origin = {22, 38}, lineColor = {255, 0, 255}, extent = {{-20, 14}, {20, -14}}), Text(origin = {11, 27}, textColor = {255, 0, 255}, extent = {{-7, 3}, {7, -3}}, textString = "Visualizer")}, coordinateSystem(extent = {{-125, -75}, {125, 75}}, grid = {1, 1})),
          Icon(coordinateSystem(extent = {{-125, -75}, {125, 75}}, grid = {10, 10})));
      end Test_CrashStop_4Q;
    end Maneuvering;

    package Sailing
      extends Modelica.Icons.Example;

      model FourWingSails
        extends Modelica.Icons.Example;
        ShipSIM.Components.Ship.ShipModelTh shipModelTh(CoG = {50.43, 0, 9}, ini_Vel = {7, 0, 0}) annotation(
          Placement(visible = true, transformation(origin = {12, -13}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        ShipSIM.Components.Ship.HidrodynamicXYY hidrodynamicXYY annotation(
          Placement(visible = true, transformation(origin = {12, -37}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Sources.RealExpression Water_Depth annotation(
          Placement(visible = true, transformation(origin = {39, -8}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Visualizers.FixedFrame ShipAxis(color_y = {0, 180, 0}, color_z = {255, 0, 0}, diameter = 0.5, length = 30) annotation(
          Placement(visible = true, transformation(origin = {-23, 12}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(animation = true, height = 10, length = 100, shapeType = "file://W:/Documentos Baul/Publico/Modelica/Modelos Propios/ShipSIM/SimpleShipModel/Ship.dxf", width = 20) annotation(
          Placement(visible = true, transformation(origin = {-24, -1}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(animation = false, r = {1, 0, 2}) annotation(
          Placement(visible = true, transformation(origin = {-22, -25}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
        inner Modelica.Mechanics.MultiBody.World world(animateWorld = true, defaultN_to_m = 20000, defaultNm_to_m = 200000, enableAnimation = true, label2 = "z", n = {0, 0, -1}, nominalLength = 50) annotation(
          Placement(visible = true, transformation(origin = {-83, 53}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
        ShipSIM.Components.Propulsion.Rudder rudder(C = 2.5, InitialRudderAngle = 0, s = 4) annotation(
          Placement(visible = true, transformation(origin = {-74, -28}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation Rudder_pos(animation = false, r = {-2, 0, 4.5}) annotation(
          Placement(visible = true, transformation(origin = {-29, -14}, extent = {{5, 5}, {-5, -5}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Sources.Speed speed(phi(displayUnit = "rad")) annotation(
          Placement(visible = true, transformation(origin = {-23, -46}, extent = {{7, -7}, {-7, 7}}, rotation = 0)));
        Modelica.Blocks.Sources.RealExpression Rudder_order(y = 0) annotation(
          Placement(visible = true, transformation(origin = {-111.5, -19.5}, extent = {{-8.5, -6.5}, {8.5, 6.5}}, rotation = 0)));
        inner ShipSIM.Components.Environment environment(WindDirection = 0, WindSpeed = 15) annotation(
          Placement(visible = true, transformation(origin = {-105.5, 54.5}, extent = {{-11.5, -11.5}, {11.5, 11.5}}, rotation = 0)));
        ShipSIM.Components.Ship.ShipWind shipWind annotation(
          Placement(visible = true, transformation(origin = {12, -61}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        ShipSIM.Components.Propulsion.Propeller4Q propeller4Q(PropModel = ShipSIM.Types.Propeller4Q.B4_100_1) annotation(
          Placement(visible = true, transformation(origin = {-54, -29}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Sources.RealExpression ShaftSpeed(y = 100*(2*3.141592/60)) annotation(
          Placement(visible = true, transformation(origin = {-61, -60}, extent = {{-22, -8}, {22, 8}}, rotation = 0)));
        parameter ShipSIM.Records.WingProfile.NACA0015 wingData annotation(
          Placement(visible = true, transformation(origin = {-2.5, 62.5}, extent = {{-5.5, -5.5}, {5.5, 5.5}}, rotation = 0)));
        ShipSIM.Components.AlternativePropulsion.WingSail wingSail2(InitialSailAngle = 40, wingData = wingData) annotation(
          Placement(visible = true, transformation(origin = {48, 36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation SailPos3(animation = false, r = {60, 0, 18}) annotation(
          Placement(visible = true, transformation(origin = {64, 21}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation SailPos4(animation = false, r = {80, 0, 18}) annotation(
          Placement(visible = true, transformation(origin = {94, 21}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
        ShipSIM.Components.AlternativePropulsion.WingSail wingSail1(InitialSailAngle = 40, wingData = wingData) annotation(
          Placement(visible = true, transformation(origin = {18, 36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        ShipSIM.Components.AlternativePropulsion.WingSail wingSail4(InitialSailAngle = 40, wingData = wingData) annotation(
          Placement(visible = true, transformation(origin = {108, 36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation SailPos2(animation = false, r = {40, 0, 18}) annotation(
          Placement(visible = true, transformation(origin = {34, 21}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation SailPos1(animation = false, r = {20, 0, 18}) annotation(
          Placement(visible = true, transformation(origin = {4, 21}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
        Modelica.Blocks.Sources.RealExpression realExpression(y = 40) annotation(
          Placement(visible = true, transformation(origin = {-21, 51}, extent = {{-5, -6}, {5, 6}}, rotation = 0)));
        ShipSIM.Components.AlternativePropulsion.WingSail wingSail3(InitialSailAngle = 40, wingData = wingData) annotation(
          Placement(visible = true, transformation(origin = {78, 36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        ShipSIM.Components.Ship.HidrodynamicZRP hidrodynamicZRP(AnimationForces = false, P_d = 1000000000000, R_d = 1000000000, Z_d = 1000000000) annotation(
          Placement(visible = true, transformation(origin = {46, -27}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        connect(Water_Depth.y, shipModelTh.Water_depth) annotation(
          Line(points = {{33.5, -8}, {30, -8}, {30, -13}, {22, -13}}, color = {0, 0, 127}));
        connect(hidrodynamicXYY.frame_a, shipModelTh.frame_a) annotation(
          Line(points = {{2, -37}, {-4, -37}, {-4, -13}, {2, -13}}, color = {95, 95, 95}));
        connect(ShipAxis.frame_a, shipModelTh.frame_a) annotation(
          Line(points = {{-18, 12}, {-4, 12}, {-4, -13}, {2, -13}}, color = {95, 95, 95}));
        connect(fixedShape.frame_a, shipModelTh.frame_a) annotation(
          Line(points = {{-18, -1}, {-4, -1}, {-4, -13}, {2, -13}}, color = {95, 95, 95}));
        connect(fixedTranslation.frame_a, shipModelTh.frame_a) annotation(
          Line(points = {{-16, -25}, {-4, -25}, {-4, -13}, {2, -13}}, color = {95, 95, 95}));
        connect(Rudder_pos.frame_a, shipModelTh.frame_a) annotation(
          Line(points = {{-24, -14}, {-10, -14}, {-10, -13}, {2, -13}}, color = {95, 95, 95}));
        connect(Rudder_pos.frame_b, rudder.frame_a) annotation(
          Line(points = {{-34, -14}, {-72, -14}, {-72, -21}}, color = {95, 95, 95}));
        connect(shipModelTh.shipData, hidrodynamicXYY.shipData) annotation(
          Line(points = {{22.4, -19.6}, {28.4, -19.6}, {28.4, -29.6}, {22.4, -29.6}}));
        connect(shipModelTh.frame_a, shipWind.frame_a) annotation(
          Line(points = {{2, -13}, {0, -13}, {0, -61}, {2, -61}}, color = {95, 95, 95}));
        connect(fixedTranslation.frame_b, propeller4Q.frame_a) annotation(
          Line(points = {{-28, -25}, {-44, -25}}, color = {95, 95, 95}));
        connect(propeller4Q.flange, speed.flange) annotation(
          Line(points = {{-44, -29}, {-40, -29}, {-40, -46}, {-30, -46}}));
        connect(propeller4Q.Propeller_flow_diameter, rudder.Propeller_flow_diameter) annotation(
          Line(points = {{-64.1, -25}, {-67.1, -25}}, color = {0, 0, 127}));
        connect(propeller4Q.Propeller_speed, rudder.Propeller_speed) annotation(
          Line(points = {{-64.1, -29}, {-67.1, -29}, {-67.1, -28}}, color = {0, 0, 127}));
        connect(Rudder_order.y, rudder.Rudder_Order) annotation(
          Line(points = {{-102.15, -19.5}, {-81.15, -19.5}, {-81.15, -21.5}}, color = {0, 0, 127}));
        connect(ShaftSpeed.y, speed.w_ref) annotation(
          Line(points = {{-36.8, -60}, {-8.8, -60}, {-8.8, -46}, {-14.8, -46}}, color = {0, 0, 127}));
        connect(realExpression.y, wingSail4.Sail_Order) annotation(
          Line(points = {{-15.5, 51}, {91.5, 51}, {91.5, 30}, {98.5, 30}}, color = {0, 0, 127}));
        connect(realExpression.y, wingSail2.Sail_Order) annotation(
          Line(points = {{-15.5, 51}, {32.5, 51}, {32.5, 30}, {38.5, 30}}, color = {0, 0, 127}));
        connect(realExpression.y, wingSail3.Sail_Order) annotation(
          Line(points = {{-15.5, 51}, {61.5, 51}, {61.5, 30}, {68.5, 30}}, color = {0, 0, 127}));
        connect(realExpression.y, wingSail1.Sail_Order) annotation(
          Line(points = {{-15.5, 51}, {-10.5, 51}, {-10.5, 30}, {8.5, 30}}, color = {0, 0, 127}));
        connect(wingSail1.frame_a, SailPos1.frame_b) annotation(
          Line(points = {{18, 26}, {18, 21}, {10, 21}}, color = {95, 95, 95}));
        connect(wingSail2.frame_a, SailPos2.frame_b) annotation(
          Line(points = {{48, 26}, {47, 26}, {47, 21}, {40, 21}}));
        connect(wingSail3.frame_a, SailPos3.frame_b) annotation(
          Line(points = {{78, 26}, {78, 21}, {70, 21}}, color = {95, 95, 95}));
        connect(wingSail4.frame_a, SailPos4.frame_b) annotation(
          Line(points = {{108, 26}, {108, 21}, {100, 21}}, color = {95, 95, 95}));
        connect(shipModelTh.frame_a, SailPos1.frame_a) annotation(
          Line(points = {{2, -13}, {-4, -13}, {-4, 21}, {-2, 21}}, color = {95, 95, 95}));
        connect(shipModelTh.frame_a, SailPos2.frame_a) annotation(
          Line(points = {{2, -13}, {-4, -13}, {-4, 16}, {23, 16}, {23, 21}, {28, 21}}, color = {95, 95, 95}));
        connect(shipModelTh.frame_a, SailPos3.frame_a) annotation(
          Line(points = {{2, -13}, {-4, -13}, {-4, 14}, {52, 14}, {52, 21}, {58, 21}}, color = {95, 95, 95}));
        connect(shipModelTh.frame_a, SailPos4.frame_a) annotation(
          Line(points = {{2, -13}, {-4, -13}, {-4, 10}, {82, 10}, {82, 21}, {88, 21}}, color = {95, 95, 95}));
        connect(shipModelTh.frame_a, hidrodynamicZRP.frame_a) annotation(
          Line(points = {{2, -13}, {0, -13}, {0, -25}, {31, -25}, {31, -27}, {36, -27}}, color = {95, 95, 95}));
        connect(shipModelTh.shipData, hidrodynamicZRP.shipData) annotation(
          Line(points = {{22, -20}, {33, -20}, {33, -13}, {59, -13}, {59, -20}, {56, -20}}));
        annotation(
          experiment(StartTime = 0, StopTime = 1000, Tolerance = 1e-06, Interval = 0.2),
          Documentation(info = "<html><head></head><body>This example provides a basic construction of a maneuvering model where the following items are placed:<div><br><div>- Ship model: consist on a ship model for masses, inertia and floatation plus other model for Surge, Sway and Yaw movements.</div></div><div>- Visualizer: an axis frame and a box visualizer represent the local coordinates and the ship.</div><div>- Propulsion system: a propeller and rudder models, in addition with a constant speed shaft, provides the propulstion system model</div><div>- Wingsails</div><div><br></div></body></html>"),
          Diagram(graphics = {Rectangle(origin = {33, -34}, lineColor = {0, 255, 0}, extent = {{-35, 39}, {35, -39}}), Text(origin = {35, -50}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Rectangle(origin = {-46, -40}, lineColor = {255, 0, 0}, extent = {{-40, 31}, {40, -31}}), Text(origin = {35, -50}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Text(origin = {-27, -66}, textColor = {255, 0, 0}, extent = {{-11, 3}, {11, -3}}, textString = "Propulsion model"), Rectangle(origin = {-28, 7}, lineColor = {255, 0, 255}, extent = {{-20, 14}, {20, -14}}), Text(origin = {-39, -4}, textColor = {255, 0, 255}, extent = {{-7, 3}, {7, -3}}, textString = "Visualizer")}, coordinateSystem(extent = {{-125, -75}, {125, 75}}, grid = {1, 1})),
          Icon(coordinateSystem(extent = {{-125, -75}, {125, 75}}, grid = {10, 10})));
      end FourWingSails;
    end Sailing;

    package Electrical
      extends Modelica.Icons.Example;

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
          experiment(StartTime = 0, StopTime = 50000, Tolerance = 1e-06, Interval = 0.2));
      end Consumers;
    end Electrical;

    package Engines
      extends Modelica.Icons.Example;

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
          experiment(StartTime = 0, StopTime = 400, Tolerance = 1e-6, Interval = 0.01));
      end SimpleDieselEngineTest;
    end Engines;
  end Examples;

  package Validations
    extends Modelica.Icons.Example;

    model Test_Propeller_POD
      extends Modelica.Icons.Example;
      ShipSIM.Components.Ship.ShipModelTh shipModelTh(CoG = {50.43, 0, 9}, ini_Vel = {7, 0, 0}) annotation(
        Placement(visible = true, transformation(origin = {62, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.Ship.HidrodynamicXYY hidrodynamicXYY annotation(
        Placement(visible = true, transformation(origin = {62, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression Water_Depth annotation(
        Placement(visible = true, transformation(origin = {89, 23}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedFrame ShipAxis(color_y = {0, 180, 0}, color_z = {255, 0, 0}, diameter = 0.5, length = 30) annotation(
        Placement(visible = true, transformation(origin = {27, 43}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(animation = true, height = 10, length = 100, shapeType = "file://W:/Documentos Baul/Publico/Modelica/Modelos Propios/ShipSIM/SimpleShipModel/Ship.dxf", width = 20) annotation(
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
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape1(animation = true, height = 10, length = 100, shapeType = "file://W:/Documentos Baul/Publico/Modelica/Modelos Propios/ShipSIM/SimpleShipModel/Ship.dxf", width = 20) annotation(
        Placement(visible = true, transformation(origin = {18, -72}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Visualizers.FixedFrame fixedFrame(color_y = {0, 180, 0}, color_z = {255, 0, 0}, diameter = 0.5, length = 30) annotation(
        Placement(visible = true, transformation(origin = {19, -59}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
      ShipSIM.Components.Ship.HidrodynamicXYY hidrodynamicXYY1 annotation(
        Placement(visible = true, transformation(origin = {54, -108}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(animation = false, r = {3, 0, 5}) annotation(
        Placement(visible = true, transformation(origin = {18, -91}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression realExpression annotation(
        Placement(visible = true, transformation(origin = {81, -79}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression realExpression1 annotation(
        Placement(visible = true, transformation(origin = {-61, -91.5}, extent = {{-8, -5.5}, {8, 5.5}}, rotation = 0)));
      Modelica.Mechanics.Rotational.Sources.Speed speed1(phi(displayUnit = "rad")) annotation(
        Placement(visible = true, transformation(origin = {19, -117}, extent = {{7, -7}, {-7, 7}}, rotation = 0)));
      ShipSIM.Components.Ship.ShipWind shipWind1 annotation(
        Placement(visible = true, transformation(origin = {54, -132}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression realExpression2(y = 135*(2*3.141592/60)) annotation(
        Placement(visible = true, transformation(origin = {-16, -130}, extent = {{-22, -8}, {22, 8}}, rotation = 0)));
      Components.Propulsion.POD4Q pod4q(Ae_Ao = 1, Diameter = 2.5, P_D = 1, PropModel = ShipSIM.Types.Propeller4Q.B4_100_1, RotativeRelative = 0.990053, ThrustDeduction = 0.174095, WakeFraction = 0.435217) annotation(
        Placement(visible = true, transformation(origin = {-11, -101}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.RealExpression realExpression3 annotation(
        Placement(visible = true, transformation(origin = {75, -189}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
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
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape2(animation = true, height = 10, length = 100, shapeType = "file://W:/Documentos Baul/Publico/Modelica/Modelos Propios/ShipSIM/SimpleShipModel/Ship.dxf", width = 20) annotation(
        Placement(visible = true, transformation(origin = {12, -182}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
      ShipSIM.Components.Ship.ShipModelTh shipModelTh2(CoG = {50.43, 0, 9}, ini_Vel = {7, 0, 0}) annotation(
        Placement(visible = true, transformation(origin = {48, -194}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.Ship.ShipWind shipWind2 annotation(
        Placement(visible = true, transformation(origin = {48, -242}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.Components.Propulsion.Propeller4Q propeller4Q(Diameter = 2.5, PropModel = ShipSIM.Types.Propeller4Q.B4_100_1) annotation(
        Placement(visible = true, transformation(origin = {-18, -212}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(Water_Depth.y, shipModelTh.Water_depth) annotation(
        Line(points = {{83.5, 23}, {80, 23}, {80, 18}, {72, 18}}, color = {0, 0, 127}));
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
      connect(realExpression.y, shipModelTh1.Water_depth) annotation(
        Line(points = {{75.5, -79}, {72, -79}, {72, -84}, {64, -84}}, color = {0, 0, 127}));
      connect(shipModelTh1.shipData, hidrodynamicXYY1.shipData) annotation(
        Line(points = {{64.4, -90.6}, {70.4, -90.6}, {70.4, -100.6}, {64.4, -100.6}}));
      connect(fixedTranslation2.frame_b, pod4q.frame_a) annotation(
        Line(points = {{12, -91}, {-5, -91}}));
      connect(pod4q.flange, speed1.flange) annotation(
        Line(points = {{-9, -91}, {-9, -86}, {2, -86}, {2, -117}, {12, -117}}));
      connect(realExpression1.y, pod4q.POD_Order) annotation(
        Line(points = {{-52, -91}, {-37, -91}, {-37, -92}, {-21, -92}}, color = {0, 0, 127}));
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
      connect(realExpression3.y, shipModelTh2.Water_depth) annotation(
        Line(points = {{69.5, -189}, {66, -189}, {66, -194}, {58, -194}}, color = {0, 0, 127}));
      connect(fixedTranslation1.frame_a, shipModelTh2.frame_a) annotation(
        Line(points = {{18, -201}, {32, -201}, {32, -194}, {38, -194}}, color = {95, 95, 95}));
      connect(speed2.flange, propeller4Q.flange) annotation(
        Line(points = {{6, -227}, {-1, -227}, {-1, -212}, {-8, -212}}));
      connect(fixedTranslation1.frame_b, propeller4Q.frame_a) annotation(
        Line(points = {{6, -201}, {-8, -201}, {-8, -208}}, color = {95, 95, 95}));
      annotation(
        experiment(StartTime = 0, StopTime = 1000, Tolerance = 1e-06, Interval = 0.2),
        Documentation(info = "<html><head></head><body>This example provides a face to face comparison fron two ways of model the propeller: Kt and Kq Vs Ct and Cq (1Q Vs 4Q)<br></body></html>"),
        Diagram(graphics = {Rectangle(origin = {73, -4}, lineColor = {0, 255, 0}, extent = {{-25, 40}, {25, -40}}), Text(origin = {85, -19}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Rectangle(origin = {4, -9}, lineColor = {255, 0, 0}, extent = {{-40, 31}, {40, -31}}), Text(origin = {85, -19}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Text(origin = {23, -35}, textColor = {255, 0, 0}, extent = {{-11, 3}, {11, -3}}, textString = "Propulsion model"), Rectangle(origin = {22, 38}, lineColor = {255, 0, 255}, extent = {{-20, 14}, {20, -14}}), Text(origin = {11, 27}, textColor = {255, 0, 255}, extent = {{-7, 3}, {7, -3}}, textString = "Visualizer"), Text(origin = {15, -137}, textColor = {255, 0, 0}, extent = {{-11, 3}, {11, -3}}, textString = "Propulsion model"), Rectangle(origin = {65, -106}, lineColor = {0, 255, 0}, extent = {{-25, 40}, {25, -40}}), Rectangle(origin = {14, -64}, lineColor = {255, 0, 255}, extent = {{-20, 14}, {20, -14}}), Text(origin = {77, -121}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Text(origin = {3, -75}, textColor = {255, 0, 255}, extent = {{-7, 3}, {7, -3}}, textString = "Visualizer"), Text(origin = {77, -121}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Rectangle(origin = {-4, -111}, lineColor = {255, 0, 0}, extent = {{-40, 31}, {40, -31}}), Text(origin = {9, -247}, textColor = {255, 0, 0}, extent = {{-11, 3}, {11, -3}}, textString = "Propulsion model"), Text(origin = {-3, -185}, textColor = {255, 0, 255}, extent = {{-7, 3}, {7, -3}}, textString = "Visualizer"), Rectangle(origin = {8, -174}, lineColor = {255, 0, 255}, extent = {{-20, 14}, {20, -14}}), Text(origin = {71, -231}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Rectangle(origin = {-10, -221}, lineColor = {255, 0, 0}, extent = {{-40, 31}, {40, -31}}), Rectangle(origin = {59, -216}, lineColor = {0, 255, 0}, extent = {{-25, 40}, {25, -40}}), Text(origin = {71, -231}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model")}, coordinateSystem(extent = {{-125, -260}, {125, 75}}, grid = {1, 1})),
        Icon(coordinateSystem(extent = {{-125, -125}, {125, 125}}, grid = {1, 1})));
    end Test_Propeller_POD;
    annotation(
      Icon(graphics = {Ellipse(origin = {-65, -17}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-25, 25}, {25, -25}}), Polygon(origin = {-66, -60}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, points = {{-8, 16}, {-18, -38}, {2, -14}, {22, -40}, {8, 16}, {8, 16}, {-8, 16}})}));
  end Validations;

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
        Documentation(revisions = "<html><head></head><body><span style=\"font-size: 12px;\">Rev. 0.0 (06/03/2023): Initial release</span></body></html>", info = "<html><head></head><body><pre style=\"margin-top: 0px; margin-bottom: 0px;\"><p style=\"font-size: 12px; white-space: normal;\"><font face=\"MS Shell Dlg 2\">Component (outer) to define the following environmental parameters:</font></p><p style=\"font-size: 12px; white-space: normal;\"><font face=\"MS Shell Dlg 2\">- Sea and air density</font></p><p style=\"font-size: 12px; white-space: normal;\"><font face=\"MS Shell Dlg 2\">- Wind speed and direction</font></p><p style=\"font-size: 12px; white-space: normal;\"><font face=\"MS Shell Dlg 2\">- Current speed and direction</font></p><p style=\"font-size: 12px; white-space: normal;\"><font face=\"MS Shell Dlg 2\">This component is mandatory for almost all the remain components of the library.</font></p><div class=\"htmlDoc\" style=\"white-space: normal; font-family: 'MS Shell Dlg 2';\"><div class=\"htmlDoc\" style=\"font-size: 12px;\"><div><br></div><div><u>Limitations:</u></div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><br></div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div><br></div></div><div class=\"htmlDoc\" style=\"font-size: 12px;\"><u>Further development:</u></div><div class=\"htmlDoc\" style=\"font-size: 12px;\">Implement wind profile</div><div class=\"htmlDoc\" style=\"font-size: 12px;\">Implement waves</div></div></pre></body></html>"));
    end Environment;

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
        input Modelica.Blocks.Interfaces.RealInput Water_depth "Water depth value [m]" annotation(
          Placement(visible = true, transformation(origin = {104, 0}, extent = {{16, -16}, {-16, 16}}, rotation = 0), iconTransformation(origin = {102, -2}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        ShipSIM.SubComponents.VariableTranslation COB_pos annotation(
          Placement(visible = true, transformation(origin = {32, 58}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Forces.WorldForce B_ForceWorld(N_to_m = Displacement*9.81/B, animation = AnimationForces, diameter = B/40) annotation(
          Placement(visible = true, transformation(origin = {66, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
        Modelica.Mechanics.MultiBody.Sensors.AbsoluteVelocity absoluteVelocity(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a) annotation(
          Placement(visible = true, transformation(origin = {-20, -48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Sensors.AbsoluteAngularVelocity absoluteAngularVelocity(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a) annotation(
          Placement(visible = true, transformation(origin = {-60, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        ShipSIM.SubComponents.VariableTranslation COF_pos annotation(
          Placement(visible = true, transformation(origin = {-54, -48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        ShipSIM.Interfaces.ShipDataOutput shipData annotation(
          Placement(visible = true, transformation(origin = {100, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {104, -66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        output Modelica.Blocks.Interfaces.RealOutput YawDeg "Ship course in degrees" annotation(
          Placement(visible = true, transformation(origin = {74, -108}, extent = {{-14, -14}, {14, 14}}, rotation = -90), iconTransformation(origin = {62, -102}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      protected
        Real Disp_aux[size(Disp_Table, 1)];
        Real LCB_aux[size(LCB_Table, 1)];
        Real TCB_aux[size(TCB_Table, 1)];
        Real VCB_aux[size(VCB_Table, 1)];
        Real BMt_aux[size(BMt_Table, 1)];
        Real BMl_aux[size(BMl_Table, 1)];
        Real P_s[3];
        Real P_f[3];
      equation
//Calculate the depth of the points to obtain heel, trim and draft
        P_s[:] = frame_a.r_0 + Modelica.Mechanics.MultiBody.Frames.resolve1(frame_a.R, {0, -B, 0});
        P_f[:] = frame_a.r_0 + Modelica.Mechanics.MultiBody.Frames.resolve1(frame_a.R, {Lpp, 0, 0});
        Heel = Modelica.Math.atan((frame_a.r_0[3] - P_s[3])/B);
        Trim = Modelica.Math.atan((P_f[3] - frame_a.r_0[3])/Lpp);
        Draft = Water_depth - (P_f[3] + frame_a.r_0[3])/2;
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
          Line(points = {{-44, -48}, {-30, -48}}, color = {95, 95, 95}));
        connect(frame_a, COF_pos.frame_a) annotation(
          Line(points = {{-100, 0}, {-82, 0}, {-82, -48}, {-64, -48}}));
//Connect data
        shipData.Draft = Draft;
        shipData.Displacement = Disp;
        shipData.CoG = CoG;
        shipData.Angles = {Heel, Trim, Yaw};
        shipData.AngularSpeed = {der(Heel), der(Trim), der(Yaw)};
        shipData.LinearSpeed = {Surge, Sway, Heave};
        YawDeg = -Yaw*180/Modelica.Constants.pi;
//Assert documentation
        assert(abs(Heel) < 0.35, "!W0001 [ShipModelTh]: Heel exceeds small movements theory for CoB position", level = AssertionLevel.warning);
        assert(abs(Trim) < 0.35, "!W0002 [ShipModelTh]: Trim exceeds small movements theory for CoB position", level = AssertionLevel.warning);
        assert(Draft > 0, "!W0003 [ShipModelTh]: Draft must be positive!", level = AssertionLevel.warning);
        annotation(
          Icon(graphics = {Rectangle(origin = {-0.01, 0}, borderPattern = BorderPattern.Engraved, extent = {{-99.99, 100}, {99.99, -100}}, radius = 15), Polygon(origin = {0, 3}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-56, 31}, {-56, 7}, {-78, 7}, {-78, -13}, {-62, -15}, {-56, -31}, {62, -31}, {70, -29}, {74, -25}, {76, -23}, {74, -19}, {70, -15}, {62, -13}, {78, 7}, {-42, 7}, {-42, 31}, {-56, 31}}), Line(origin = {-19.21, -5.26}, points = {{-52.1499, 33.1499}, {-52.1499, -22.8501}, {47.8501, -22.8501}}, arrow = {Arrow.Filled, Arrow.Filled}, arrowSize = 7), Line(origin = {76.23, -10.29}, points = {{-5.8536, 6.20711}, {16.1464, 6.20711}}), Line(origin = {80.3295, -6.61265}, points = {{-6, 0}, {8, 0}}), Line(origin = {82.0695, -9.45093}, points = {{-4, 0}, {4, 0}}), Line(origin = {-91.82, -9.66}, points = {{0.1464, 6.20711}, {12.1464, 6.20711}}), Text(origin = {-65, -68}, extent = {{-17, 14}, {17, -14}}, textString = "Th"), Rectangle(origin = {-65, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Rectangle(origin = {-60, 66}, extent = {{-24, 18}, {24, -18}}, radius = 5), Text(origin = {-64, 92}, extent = {{-12, 8}, {12, -8}}, textString = "k"), Rectangle(origin = {-19, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Line(origin = {-19.08, -71.19}, points = {{-16.916, 3.19338}, {17.084, 3.19338}}), Line(origin = {-17.1554, -72.7022}, points = {{-16.916, 3.19338}, {-6.916, 3.19338}}), Line(origin = {-15.2309, -74.0769}, points = {{-16.916, 3.19338}, {-10.916, 3.19338}}), Text(origin = {-17, -76}, rotation = 90, extent = {{-5, -16}, {5, 0}}, textString = "8"), Text(origin = {46, 59}, extent = {{-70, 29}, {70, -29}}, textString = "Mass, Inertia, 
Floatation
Forces", horizontalAlignment = TextAlignment.Left), Text(origin = {-47, 74}, extent = {{-5, 10}, {5, -10}}, textString = "Z"), Text(origin = {-61, 58}, extent = {{-5, 10}, {5, -10}}, textString = "P"), Text(origin = {-75, 58}, extent = {{-5, 10}, {5, -10}}, textString = "R")}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
          Documentation(info = "<html><head></head><body><div><font face=\"MS Shell Dlg 2\">Ship model simplified to small movements from level trim loading condition.&nbsp;</font></div><div><font face=\"MS Shell Dlg 2\">The phisics behind this model uses level trim hydrostatics to obtain the center of buoyancy position and apply the displacement force.&nbsp;</font></div><div><font face=\"MS Shell Dlg 2\">Centre of buoyancy is corrected by heel and trim using the floatation area inertia properties.</font></div><div><font face=\"MS Shell Dlg 2\">Ship mass and inertia is indicated on the model by use of radii of gyration or absolute inertia moments about the centre of gravity and parallel to frame_a.</font></div><div><br></div><div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div><u>Limitations:</u></div><div><br></div><div>Only small movements of heel and trim are implemented, capsizing or similar situations should arise simulation errors.&nbsp;</div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><u><br></u></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">[Principles] Edward V. Lewis et al, \"Princiles of Naval Architecture\",&nbsp;</span><em style=\"font-family: 'MS Shell Dlg 2';\">SNAME</em><span style=\"font-family: 'MS Shell Dlg 2';\">, Second Revision, 1988</span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\">[<span style=\"background-color: rgb(255, 255, 255);\">ModMultibody</span>] \"The new Modelica MultiBody Library\", M. Otter, H. Elmqvist and S.E. Mattsson. Proceedings of the 3rd International Modelica Conference (2003)</div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">N/A</span></div><div><br></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div><u>Further development:</u></div></div></div></body></html>", revisions = "<html><head></head><body><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.3 (06/05/2023): Added animation forces selector.</span></div><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.2 (01/03/2023): Added assert documentation</span></div><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.1 (14/02/2023): Renovated icon and integration of ship data connector</span></div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0 (17/06/2022): Initial release</span></body></html>"),
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
        parameter Real mx = 1/100*(0.398 + 11.97*Cb*(1 + 3.73*Draft/B) + 2.89*Cb*(Lpp/B)*(1 + 1.13*Draft/B) + 0.175*Cb*(1 + 0.54*Draft/B)*(Lpp/B)^2 - 1.107*(Lpp/B)*(Draft/B)) "Added Mass parameter X direction *(around 5%)" annotation(
          Dialog(tab = "Added Mass Parameters", group = "Added Mass"));
        parameter Real my = (0.882 - 0.54*Cb*(1 - 1.6*Draft/B) - 0.156*(1 - 0.673*Cb)*Lpp/B + 0.826*(Draft/B)*(Lpp/B)*(1 - 0.678*Draft/B) - 0.638*Cb*(Draft/B)*(Lpp/B)*(1 - 0.669*Draft/B)) "Added Mass parameter Y direction" annotation(
          Dialog(tab = "Added Mass Parameters", group = "Added Mass"));
        parameter Real Jz = (Lpp/100*(33 - 76.85*Cb*(1 - 0.784*Cb) + 3.43*(Lpp/B)*(1 - 0.63*Cb)))^2 "Added Mass parameter Yaw direction" annotation(
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
          Documentation(info = "<html><head></head><body><div class=\"htmlDoc\"><div style=\"font-family: 'MS Shell Dlg 2';\">HidrodynamicXYY provides hidrodynamic forces of Surge (X) , Sway (Y) and Yaw (Y) based on MMG standard method for ship maneuvering predictions.</div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-family: 'MS Shell Dlg 2';\">Current default equations for maneuvring parameters are based on empirical relations developed by various authors and referenced on [Jialun2020] and [Taimuri2020].</div><div style=\"font-family: 'MS Shell Dlg 2';\"><u><br></u></div><div style=\"font-family: 'MS Shell Dlg 2';\"><u>Limitations:</u></div><div style=\"font-family: 'MS Shell Dlg 2';\">Empirical equations provided as default parameters are only adequate for medium and large single propeller and rudder ships.</div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><u><br></u></div><div>[Yasukawa2015]<span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>Ghalib Taimuri et al, \"Introduction of MMG standard method for ship maneuvering predictions\", Journal of Marine Science and Technology, 20, 37-52, 2015, <a href=\"https://link.springer.com/article/10.1007/s00773-014-0293-y\">https://link.springer.com/article/10.1007/s00773-014-0293-y</a></div><div><u><br></u></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">[Jialun2020] Jialun Liu, \"Mathematical Modeling of Inland Vessel Maneuverability Considering Rudder Hydrodynamics\", Springer 2020,&nbsp;</span><a href=\"https://doi.org/10.1007/978-3-030-47475-1\" style=\"font-family: 'MS Shell Dlg 2';\">https://doi.org/10.1007/978-3-030-47475-1</a></div><div style=\"font-family: -webkit-standard;\"><br></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">[Taimuri2020] Ghalib Taimuri et al, \"A 6-DoF maneuvering model for the rapid estimation of hydrodynamic actions in deep and shallow waters\", Journal of Ocean Engineering, 2020,&nbsp;</span><a href=\"https://doi.org/10.1016/j.oceaneng.2020.108103\" style=\"font-family: 'MS Shell Dlg 2';\">https://doi.org/10.1016/j.oceaneng.2020.108103</a></div><div style=\"font-family: -webkit-standard;\"><br></div><div style=\"font-family: -webkit-standard;\">[<span style=\"background-color: rgb(255, 255, 255);\">ModMultibody</span>] \"The new Modelica MultiBody Library\", M. Otter, H. Elmqvist and S.E. Mattsson. Proceedings of the 3rd International Modelica Conference (2003)</div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div><font face=\"MS Shell Dlg 2\">mx, X_rr, X_vr factors need to be revised due differences detected during validation against [Taimuri2020]</font></div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div><u>Further development:</u></div></div></body></html>", revisions = "<html><head></head><body><div>Rev. 1.1 (06/05/2023): Added animation forces selector.</div><div><span style=\"font-size: 12px;\">Rev. 1.0 (06/03/2023): Full support with sea current</span></div><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.1 (14/02/2023): First official release</span></div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0 (27/01/2023): Initial release</span></body></html>"));
      end HidrodynamicXYY;

      model HidrodynamicZRP "Hydrodinamic ship forces model"
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
    Forces", horizontalAlignment = TextAlignment.Left), Text(origin = {-61, 74}, textColor = {200, 200, 200}, extent = {{-5, 10}, {5, -10}}, textString = "Y"), Text(origin = {-47, 74}, extent = {{-5, 10}, {5, -10}}, textString = "Z"), Text(origin = {-75, 58}, extent = {{-5, 10}, {5, -10}}, textString = "R"), Text(origin = {-61, 58}, extent = {{-5, 10}, {5, -10}}, textString = "P"), Text(origin = {-47, 58}, textColor = {200, 200, 200}, extent = {{-5, 10}, {5, -10}}, textString = "Y"), Text(origin = {-21, 58}, extent = {{-5, 10}, {5, -10}}, textString = "R"), Text(origin = {-21, 74}, textColor = {200, 200, 200}, extent = {{-5, 10}, {5, -10}}, textString = "X"), Text(origin = {7, 74}, extent = {{-5, 10}, {5, -10}}, textString = "Z"), Text(origin = {7, 58}, textColor = {200, 200, 200}, extent = {{-5, 10}, {5, -10}}, textString = "Y"), Text(origin = {-7, 58}, extent = {{-5, 10}, {5, -10}}, textString = "P"), Text(origin = {-7, 74}, textColor = {200, 200, 200}, extent = {{-5, 10}, {5, -10}}, textString = "Y"), Rectangle(origin = {0, 6}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-44, 28}, {44, -28}}, radius = 10), Line(origin = {70.02, 6.07}, points = {{-25, 0}, {-8, 10}, {8, -10}, {25, 0}}, smooth = Smooth.Bezier), Line(origin = {-69.34, 5.68}, points = {{-25, 0}, {-8, -10}, {8, 10}, {25, 0}}, smooth = Smooth.Bezier), Line(points = {{100, 100}, {-100, -100}}, color = {255, 0, 0}, thickness = 1.25)}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
          Documentation(info = "<html><head></head><body><div class=\"htmlDoc\"><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-family: 'MS Shell Dlg 2';\"><u>Limitations:</u></div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><br></div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div><br></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div><u>Further development:</u></div></div></body></html>", revisions = "<html><head></head><body><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0 (xx/xx/2023): Initial release</span></div></body></html>"));
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
          Documentation(revisions = "<html><head></head><body><div>Rev. 0.1 (06/05/2023): Added animation forces selector.</div><span style=\"font-size: 12px;\">Rev. 0.0 (08/03/2023): Initial release.</span></body></html>", info = "<html><head></head><body><div class=\"htmlDoc\"><div style=\"font-family: 'MS Shell Dlg 2';\">ShipWind evaluates the influence of wind on the ship.</div><div style=\"font-family: 'MS Shell Dlg 2';\">The following figure defines the principal characteristic parameters used in this model:</div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><img src=\"data:image/bmp;base64,Qk028wIAAAAAADYAAAAoAAAAkgEAAKAAAAABABgAAAAAAAAAAAAlFgAAJRYAAAAAAAAAAAAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Pz8/h4eH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////3JycnJycv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////0dHR2NjY////////////0dHR+/v7/////////Pz8r6+v/Pz8////////////////////29vbYWFhn5+f////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////j4+PcnJy////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////9SUlJfX1/////////s7OwICAjS0tL////////g4OAAAADh4eH///////////////////9kZGQEBARbW1v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Pj493d3f////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////5+fn5+fn////////////////////////////+/v7v7+/6+vr////////////////////////////////////////////////////r6+v5+fn///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////6GhoRAQEP///////6qqqgYGBuHh4f///////+Dg4AAAAOHh4f///////////////////0pKSm1tbf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4mJiZGRkf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1VVVXx8fP///////////////////////76+vjg4OAoKCkRERM3Nzf///////////4uLi3R0dP///////////////////+fn5z8/PwEBAR8fH8PDw////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////4eHhAAAAeXl5paWlOTk5Nzc3////////////4ODgAAAA4eHh////////////////////SkpKeHh4////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////ZmZmkZGR////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////U1NTb29v/////////////////////Pz8ISEhMzMztbW1MzMzRERE////////////YmJiISEh////////////////////UFBQNjY2xsbGLi4uSUlJ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////9/f0jIyMAAAAHBwcAAAB3d3f////////////g4OAAAADh4eH///////////////////9KSkp4eHj///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9oaGiRkZH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8sLCxvb2/////////////////////U1NQAAAC8vLz///+Xl5cPDw/5+fn///////9iYmIhISH////////////////h4eEFBQWbm5v////d3d2kpKT///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////2JiYl1dXaOjowAAAMbGxv///////////+Dg4AAAAOHh4f///////////////////0pKSnh4eP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////3d3d6Ghof///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////xQUFG9vb////////////////////7y8vAAAAMbGxv///7CwsAAAANLS0v///////2JiYldXV////////////////87OzgAAADQ0NGBgYGBgYHBwcP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////oaGhPz8/i4uLDQ0N+fn5////////////zs7OAAAAuLi46+vr////////////39/fMDAwSEhI3d3d////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////V1dXsbGx////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////FBQUQEBA1NTU7e3t7e3t9fX1////vLy8AQEB1NTU////sLCwAAAA0tLS////////YmJiODg4////////////////zs7OAAAAHR0dUlJSCgoKAQEB////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////S0tIDAwMZGRlHR0f////////////q6uoPDw8AAAAAAAB2dnb///////////9dXV0AAAAAAABMTEz///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9fX1+xsbH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8UFBQAAAAGBgYNDQ0NDQ26urr////k5OQAAAC8vLz///+mpqYQEBD6+vr///////9iYmIDAwOoqKj////////////5+fkVFRWUlJT///9JSUkpKSn///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP////////////////////////////////////////////////////////////////////////////////////////////////////z8/CQkJAAAAHd3d////////////////76+vgAAAKysrPb29v////////////Pz8zMzM05OTuHh4f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////29vb7Gxsf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////xQUFDk5OcPDw7m5ucTExPj4+P////7+/klJSS4uLnNzcwoKCk9PT////////////2JiYgAAAAMDA0FBQdXV1f///////4CAgBgYGFhYWAAAAIODg////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////UlJSAAAAxsbG////////////////5eXlBQUFe3t77+/v////////////////SkpKgoKC////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////iYmJsbGx////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////TU1Nb29v////////////////////////9fX1ampqTExMbm5u7+/v////////////s7OzmpqaqKioUVFRxsbG////////+vr6n5+fa2trmJiY+fn5////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////+vr69HR0f7+/v///////////////////+Hh4cFBQV2dnb////////////////U1NTn5+f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9zc3OhoaH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8YGBhjY2P///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Hx8fn5+f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1BQULGxsf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////xQUFAICAi4uLjw8PC8vL05OTv39/f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////UFBQoaGh////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////ra2tk5OTg4ODkZGRhYWFg4OD/v7+////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9QUFCxsbH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////15eXqGhof///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////2BgYAYGBgYGBgYGBgYGBgYGBgYGBrq6uv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+zs7EFBQSUlJSUlJSUlJSUlJVJSUtvb2////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////UFBQoaGh////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////TExMAAAALCwsPj4+Pj4+Pj4+Li4u1NTU////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////6Ojo9vb2////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////2dnZAAAAAAAAAAAAAAAAAAAAAAAALy8v/f39////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9fX1+hoaH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9bW1sAAADX19f////////////+/v7///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+zs7PLy8v////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////i4uIGBgYvLy/5+fn+/v7w8PBVVVUAAAC8vLz///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1BQUKGhof///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1tbWwAAAOfn5////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7Ozs8vLy////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9nZ2QAAABYWFvX19f///////7i4uAAAAHt7e////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////X19fn5+f////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////TExMAAAA5eXl////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////tbW1y8vL////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4uLiBgYGICAg+vr6////////0NDQAQEBcHBw////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9fX1+Tk5P///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9bW1sAAADZ2dn////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////BwcHIyMj////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////i4uIGBgYyMjL6+vr///////+EhIQAAACsrKz///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+/v79vb2////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////19fX52dnf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1tbWwAAAOfn5////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7Ozs76+vv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Li4gYGBioqKrGxsbGxsZWVlRAQEBUVFe/v7////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////z8/Px8fH////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////X19flZWV////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////V1dXAAAA19fX////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////s7Ozy8vL////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4uLiBgYGAAAAAAAAAAAAAAAAAAAAuLi4////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+zs7PAwMD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////x8fH4+Pj///9aWlqXl5f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9AQEAAAADi4uL///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+ZmZnGxsb////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////i4uIGBgYYGBiSkpKSkpJYWFgAAABRUVH+/v7///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7Ozs8XFxf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////0VFRTY2Nk9PTwICAggICEdHR4iIiDs7O25ubv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1tbWwAAANfX1////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4+Pj7u7u////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Li4gYGBjo6Ov///////////x4eHh0dHff39////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4ODgxMTE////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Pj4IiIiAAAAAAAAAAAAAAAAAAAAjY2N4ODg////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////TExMAAAA19fX////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////mpqau7u7////////////////////////////////////////////5+fn2tra////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4uLiBgYGSkpK////////////KCgoAAAA29vb////////////////////////////////////////////////////////////////////////////////////////////6Ojo6enp////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Dw8PCwsL////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////m5uYTExM+Pj4BAQEAAAAGBgYAAADCwsL///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9iYmIAAADX19f////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Dw8O7u7v////////////////////////////////////////////R0dGkpKT////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////m5uYJCQkrKyv39/f////k5OQODg4VFRXz8/P////////////////////////////////////////////////////////////////////////////////////////////Nzc2oqKj///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Li4ry8vP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8HBwS8vL+vr6yQkJAAAAIuLiycnJ5qamv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////2NjYwAAANfX1////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////6SkpLu7u////////////////////////////////////////////9LS0qSkpP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+fn5wkJCQAAADo6OiYmJhISEgAAAGlpaf///////////////////////////////////////////////////////////////////////////////////////////////87OzqioqP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////f39////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////s7Ozu7u7////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////r6+vKSkp6+vrJCQkAAAAZGRkJiYmmpqa////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////g4ODT09P8vLy////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////hISEu7u7////////////////////////////////////////////09PTpKSk////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////5+fnKSkpIiIiIiIiIiIiIiIiioqK9vb2////////////////////////////////////////////////////////////////////////////////////////////////4ODgra2t////////////////////////////////////////////////////////////////////////////////////////////////////q6urhYWFVVVVVlZWTk5OTk5OcnJy////////////////////////////////////AAD////////////////////////////////////t7e2ampqampqampqampqnp6f///////////////////////////////////////////////////////////////////+8vLy7u7v////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////f398TExNNTU0BAQEpKSkKCgoAAADS0tL///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+EhIS7u7v////////////////////////////////////////////R0dGkpKT////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Nzc2oqKj////////////////////////////////////////////////////////////////////////////////////////////////////BwcGjo6Ojo6Ojo6PMzMzi4uLn5+f///////////////////////////////////8AAP///////////////////////////////////9zc3Dk5OWdnZ35+fnh4eLKysv///////////////////////////////////////////////////////////////////8PDw7u7u////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+/v72RkZAICAgAAAAAAAHV1dS4uLgAAAIyMjPT09P///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4SEhLu7u////////////////////////////////////////////9ra2qSkpP////////////////////////////T09P////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////T09P///////////////////////////////9DQ0KioqP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////ubm5u7u7////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+/v7kZGRn5+fSEhIAAAAAAAAOTk5qampPT09uLi4////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////hISEu7u7////////////////////////////////////////////2trapKSk////////////////////3t7ek5OTUFBQfn5+////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////fHx8TExMoKCg4uLi////////////////////zMzMqKio////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////19fX3d3d5ubm////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Dw8O3t7f///////////////////////+2trZWVlZsbGz9/f3////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7+/tZWVlpaWn5+fn////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////y8vJiYmKxsbH09PT///////////////////+EhIS3t7f////////////////////////////////////////////a2tqkpKT////////k5OSnp6c8PDwHBwcAAAAAAAB8fHz///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8pKSkAAAAAAAANDQ1NTU2fn5/j4+P////////W1takpKT///////////////////////////////////////////////////////////////////////////////////////////+RkZETExMTExMTExMTExMeHh4aGhowMDAzMzNqamr///////////////////////////////8AAP////////////////////////////////////////////////////////f3983Nzc3NzdXV1f///////////////////////////////////////////////////////8PDw7u7u////////////93d3YeHhzMzMwAAAAAAABwcHPv7+////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////29vb42Njf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////97e3gAAAAAAAA4ODmFhYbGxsfX19f///////4SEhK+vr////////////////////////////////////////////9ra2n5+fqurq1xcXBMTEwAAAAAAAAAAAAAAAAAAADo6Oo6OjsbGxs3Nza6urs3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzb29vb29vbq6uomJiYyMjJiYmL29vaamprS0tLS0tK2trbe3t7KyssjIyM3Nzc3Nzc3Nzb29vb29vb29vby8vK2tra2tra2tra2tra2traOjo6enp52dnZ2dnZ2dnY6Ojp2dnRsbGwAAAAAAAAAAAAAAAAAAAAsLC15eXpCQkMnJyaioqP////////////////////////////////////////////////////////////////////////////////////////////n5+e7u7u7u7u7u7u7u7vLy8vHx8f///////////////////////////////////////////wAA////////////////////////////////ZmZmDQ0NDQ0NHx8fGhoaOzs7LCwsNDQ0NDQ0h4eH////////////////////////////////////////////////////////w8PDrq6u0NDQkpKSOTk5BAQEAAAAAAAAAAAAAAAADg4OxsbGq6urx8fH5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk19fX3t7e3Nzc19fX4ODg19fX19fXzMzM19fXysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK19fXysrKysrKysrK8fHxysrKysrK+vr6////////////8fHx8fHx8fHx8fHx8PDw5eXl8fHx7u7u5+fn7e3t5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk19fX5OTk19fX8vLy5OTk8fHx////////////5OTk3t7e19fX6+vr////////////////////2dnZ/f39////////5OTk5OTk5OTk7+/v9PT019fX5OTk0tLSysrK3d3d////////////////////b29vd3d3////////////////////////////////////////////8fHx8fHx8fHx6urq6+vr8fHx6Ojo7e3t5OTk5OTk8fHx////5eXl8fHx8PDw5OTk8/Pz////5OTk5OTk////8fHx5OTk3t7e+Pj45OTk19fXzs7O19fXysrKysrKysrKysrK19fX19fX1tbW19fXysrKysrK2tra////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8fHx9fX1+/v7////8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx////////8fHx8fHx////////8fHx8fHx8fHx5OTk8fHx8fHx5eXl/f393t7eAAAAAAAAAAAAAAAAAAAADw8PYGBgsLCwfHx8uLi4////////////////////////////////////////////2traSUlJUVFRCgoKAAAAAAAAAAAAAAAAAAAAAAAABwcHNDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0RERERERERERERERESEhIT09PREREU1NTU1NTU1NTU1NTXV1dVFRUCQkJAAAAAAAAAAAAAAAAAAAAAAAAKCgodXV1tLS0qKio////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////5+fn09PT09PT4+Pj39/f9/f37+/v////////////////////////////////////////////////////////////////////Dw8OxsbFoaGgGBgYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAbGxs6OjovLy88PDw8PDw8PDw8PDxMTExCQkI4ODhMTExRUVFKSkpUVFQpKSlGRkZVVVU+Pj4pKSlHR0dWVlYqKip2dnZlZWU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3NzcmJiYfHx8cHBw6OjokJCQvLy83Nzc/Pz83NzcgICAJCQkKCgoKCgoKCgoHBwcHBwcHBwcHBwcHBwcFBQUHBwcHBwcFBQUGBgYFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUSEhISEhISEhISEhIQEBAhISEeHh4zMzMwMDAgICArKys1NTU0NDQpKSk1NTUuLi4oKCgzMzMKCgoXFxclJSUXFxctLS0lJSUKCgpBQUEuLi4jIyMgICAHBwcICAgCAgIFBQUBAQEAAAADAwMKCgoKCgoKCgoKCgoKCgoDAwMCAgIKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoHBwcHBwcHBwcGBgYGBgYHBwcFBQUGBgYFBQUFBQUVFRUqKiojIyM2NjYWFhYFBQUpKSk3NzceHh4SEhIsLCw0NDQhISEgICA8PDwvLy8dHR0cHBwdHR0mJiY3Nzc3NzcqKiorKyseHh4sLCwsLCw3Nzc3Nzc3NzcKCgoPDw8gICA5OTkRERElJSUgICAPDw8KCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoHBwcXFxclJSU5OTknJycJCQkXFxcICAg1NTUJCQkzMzMXFxcmJiYpKSkpKSkrKysvLy8pKSkpKSk0NDQvLy8pKSkSEhItLS0qKiouLi4oKCgWFhYAAAAAAAAAAAAAAAAAAAAAAAAAAAATExMYGBiurq7////////////////////////////////////////////a2tqXl5f////z8/OioqJSUlIJCQkAAAAAAAAAAABubm7///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9BQUEAAAAAAAAAAAANDQ1ycnLU1NT8/Pz////W1taoqKj///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8PDw7u7u/////j4+LW1tV9fXxMTEwAAAAAAAAAAACkpKfb29vv7+/////39/f////////////////////////39/f////////39/f7+/vv7+/39/f7+/v39/f39/f7+/v////39/f////////////////////////////////////////////////////////////////////////////////////////////////z8/Pv7+/v7+/////z8/P39/f////////////z8/Pf39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/n5+fn5+fn5+fn5+fn5+fv7+/v7+/v7+/v7+/v7+/r6+vv7+/z8/Pv7+/z8/Pv7+/z8/P39/e3t7fT09Pv7+/n5+fv7+/v7+/f39/7+/v39/fn5+fn5+ff39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39y4uLn5+fvf39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/n5+ff39/f39/f39/f39/n5+fn5+fn5+fn5+fr6+vv7+/v7+/r6+vv7+/v7+/v7+/v7+/z8/P////////39/f39/fv7+/39/f39/f////////7+/vf39/j4+Ovr6/39/fj4+Pv7+/r6+vj4+Pf39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/n5+ff39/f39/f39/n5+fn5+fn5+fn5+fv7+/n5+fv7+/n5+cjIyAAAAAAAAAAAAAAAAAMDA0BAQLKysvr6+oSEhKurq////////////////////////////////////////////9ra2qOjo/////////////////Pz85OTky4uLgAAAH9/f////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////2JiYgoKCkhISKWlpff39/7+/v///////////9bW1pqamv///////////////////////////////////////////////////////////////////////////////+3t7ZGRkYWFhYWFhYWFhYWFhYWFhYWFhYWFhUxMTGVlZUZGRkZGRkZGRmBgYPz8/P///////////////////wAA/////////////////////Pz8j4+Pbm5uV1dXgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCycnJ////////////////////////////////////////////////w8PDrKys////////////////8PDwhISEISEhAAAAOjo6/f39////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////MTExoKCg////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7u7uAAAAAAAAIiIif39/3t7e/f39////////hISEurq6////////////////////////////////////////////2tratLS0/////////////////////////f3909PT1tbW////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7e3t6+vr/f39////////////////////////1tbWmJiY////////////////////////////////////////////////////////////////////////////////+vr6qKiofHx8fHx8fHx8fHx8fHx8jIyMtLS0u7u7u7u7u7u7u7u7u7u7ycnJ////////////////////////AAD////////////////////8/Py/v7++vr6fn5++vr6+vr6+vr6+vr62traIiIi+vr6+vr6+vr6jo6Pn5+f////////////////////////////////////////////////Dw8Orq6v////////////////////////+/v7Dw8Orq6v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9+fn6BgYH////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////u7u5/f3/AwMD+/v7///////////////////+Tk5Orq6v////////////////////////////////////////////a2tqVlZX////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////m5uaYmJj///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8PDw7u7u////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////21tbZGRkf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4WFhaurq/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////z8/PHx8f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////+fn59/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f3ra2tpaWl9/f39/f39/f39/f39/f3+Pj4////////+/v79/f39/f39/f39fX17e3t+vr65+fn5+fn+fn5/Pz8+fn5+vr6+vr6+/v7+fn5+/v79/f3+vr6+/v7+/v76enp6+vr+fn5+/v7+fn59/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f3+fn59/f39/f39/f39/f39/f35+fn5+fn5+fn5+fn6enp+/v72NjY5ubm19fX2NjY9vb22tra5eXl29vb+/v74eHh19fX4ODg+vr639/f0tLS+fn57e3t19fXx8fH1dXV9/f35+fn19fXubm59/f32NjYxcXFuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4KysrYWFhuLi4uLi4x8fHuLi4ubm55ubmuLi4uLi4uLi4uLi4uLi4uLi4v7+/39/fuLi4uLi4wsLCzc3NuLi44+Pj2tra1dXV9/f39/f35+fnx8fHycnJ1dXVtLS0nJycqKioo6Ojnp6euLi4sLCwmJiYmJiYmJiYmJiYmJiYmJiYmJiYlpaWioqKeXl5iIiIiIiIiIiIiIiIeXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5iIiIeXl5eXl5fHx8mZmZk5OTra2tkpKSkJCQkZGRkZGRuLi4uLi4uLi4uLi4q6urtbW1uLi4uLi4uLi4uLi4uLi4mZmZuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4kJCQjIyM/v7+////////////+/v72dnZ19fX19fX2NjY2NjY2NjY2NjY2NjY2NjY2NjY0tLSZmZmeHh4z8/P0NDQzs7OwsLCvb29uLi4uLi4uLi4/Pz8/////////Pz8xsbGuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4qampt7e3qKiop6enmpqaqKiopaWlnJyco6OjmJiYmJiYmJiYmJiYmJiYmJiYmJiYmJiYmJiYlZWVi4uLiIiIiIiIiIiIeXl5eXl5eXl5jo6O////////1NTUuLi4uLi4uLi4sLCwgYGBuLi4uLi4uLi4uLi4uLi4xcXFurq6uLi43d3d7e3teXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5Wlpaa2tr7+/vAAD///9ra2sKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoEBAQDAwMKCgoICAgKCgoKCgoBAQEDAwMKCgoKCgoICAgKCgoFBQUbGxv39/f///92dnYAAAAAAAAKCgoKCgonJyceHh4KCgoKCgosLCw+Pj4nJycuLi42NjY8PDw3Nzc/Pz8cHBweHh4hISEyMjI4ODhEREQ4ODhFRUU3NzcnJycdHR1JSUlJSUlJSUkzMzMKCgpBQUFJSUlJSUlJSUkQEBA1NTVJSUkaGhocHBxHR0dJSUkaGhoKCgobGxs3NzcKCgo9PT01NTUKCgoKCgoKCgoKCgoKCgojIyMQEBAKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoYGBgKCgoKCgoKCgoKCgoKCgoKCgoKCgoWFhYODg4lJSU3NzcoKCgaGhopKSkpKSk3NzcrKys0NDQpKSlEREQpKSkoKCgQEBAWFhYmJiYzMzNCQkI3Nzc1NTU6Ojo6OjpJSUlJSUlJSUlJSUlJSUkoKCg8PDxJSUlJSUlJSUlJSUlJSUlCQkIxMTFJSUkRERE0NDQ+Pj4DAwMEBAQ3NzdJSUkqKio6OjpISEgMDAwYGBgdHR0qKipJSUkkJCQgICA6OjpJSUkhISFCQkJJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlcXFxZWVlZWVljY2NYWFhgYGBhYWFoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGh3d3d4eHhaWlp5eXl5eXmIiIhpaWmIiIiIiIiCgoJvb29hYWFhYWGIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIh0dHR9fX2IiIiIiIiIiIhpaWmIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIhvb28ZGRnCwsL///////////+rq6tnZ2dpaWlZWVloaGhoaGhoaGhMTExpaWlQUFBTU1NTU1MfHx80NDRCQkI6OjpycnJubm5UVFR8fHxYWFhmZmbr6+v////////c3NwAAAA7OztJSUlJSUlJSUlPT09jY2NJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlsbGyDg4NJSUlfX19iYmJwcHBgYGBJSUlTU1OIiIhOTk5JSUlJSUlJSUlJSUlJSUlJSUlKSkqGhoZ4eHhcXFxlZWVYWFhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGh3d3d5eXmIiIiIiIh0dHQaGhry8vL///+dnZ2IiIiIiIiIiIhFRUUAAABnZ2fBwcHHx8fHx8fHx8fHx8fHx8fHx8fw8PD+/v62traIiIiIiIiIiIiIiIiIiIiIiIiXl5eIiIiIiIiIiIiIiIiIiIiTk5OMjIyIiIiIiIiIiIiIiIiIiIiIiIiZmZny8vIAAP///////////////////////////////////////////////////////////////////////////////////////////////////////+Pj49ra2v////Ly8v///////6ysrI+Pj/////////Ly8v///+Xl5eXl5f///////6WlpTMzM8nJyf////////z8/Obm5v////////////////////////////////////////Ly8ufn5+Tk5O/v7////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+fn57KystfX1/////////////////////n5+VdXVx8fH/Dw8P///////////////////////////////////////////////////////////////////////////////////////////////0BAQHJycv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////56enkRERP39/f///////////////////////////////////////////////////////5SUlKurq////////////////////////////////////////////+fn5woKCv////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////z8/DQ0NP///////////////////////2xsbAAAAKCgoP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////09PTnJyc////////////////////////////////YmJinp6e////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////29vbHR0dPj4+ERER7e3t////////////////9vb2GBgYAAAAvb29////////////////////////////////////////////////////////////////////////////////////////////////QEBAlZWV////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9/f3OTk5o6Oj////////////////////////////////////////////////////////n5+fnJyc////////////////////////////////////////////3t7eExMT/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Pz8QEBA////////////////////5ubmIiIiAAAAUVFR////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////T09OwsLD////////////////////////////6+voXFxfu7u7///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+cnJxkZGT9/f1PT0/Z2dn///////////////+/v78AAAAAAABpaWn///////////////////////////////////////////////////////////////////////////////////////////////9AQECNjY3///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+8vLwrKyv09PT///////////////////////////////////////////////////+YmJicnJz////////////////////////////////////////////q6uoHBwf////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////19fUmJib///////////////////+ZmZkAAAAAAAAQEBDr6+v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Pj47u7u////////////////////////////7Kysk5OTv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7Ozs7Kysvz8/P///////////7W1tbS0tP7+/kxMTICAgP///////////////////////////1paWgAAAAAAABcXF/X19f///////////////////////////////////////////////////////////////////////////////////////////0BAQHJycv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8nJybm5uaioqNbW1v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////z4+PoODg////////////////////////////////////////////////////5SUlJycnP///////////////////////////////////////////+rq6gcHB////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+7u7h0dHf////////////////z8/EpKSgAAAAAAAAAAAKGhof///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4+PjpaWl////////////////////////////Y2NjnZ2d////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Hh4eDQ0N7u7u////////////S0tLAAAA+Pj4QkJCgICA////////////////////////8PDwDw8PAAAAAAAAAAAAqKio////////////////////////////////////////////////////////////09PTgICAZ2dnlpaW9fX1////////////UFBQgYGB////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////29vbBwcHODg4SUlJvr6+////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1tbWExMT7Ozs////////////////////////////////////////////////pKSknJyc////////////////////////////////////////////6urqBwcH////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////6OjoGRkZ////////////////8fHxERERAAAAAAAAAAAAQkJC////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////j4+OcnJz///////////////////////////8jIyPs7Oz///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8eHh4mJib///////////////9LS0sAAAD4+PhYWFiAgID////a2tr///////////////+pqakAAAAAAAAAAAAAAABeXl7////////////////////////////////////////////////////8/Pyjo6MGBgYAAAAAAAAAAAA5OTn19fX///////9AQECgoKD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////ExMQ9PT3///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////99fX1kZGT///////////////////////////////////////////////+kpKScnJz////////////////////////////////////////////q6uoHBwf////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////6+vomJib///////////////+Xl5cAAAAAAAAAAAAAAAAQEBDr6+v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9PT08LCwv///////////////////////7q6uiIiIvv7+////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////x4eHiYmJv///////////////0tLSwAAAPj4+JiYmDExMbu7uwsLC+Pj4////////////1BQUAAAAAAAAAAAAAAAAA4ODvDw8P///////////////////////////////////////////////+jo6AoKChAQELm5ucXFxSMjIwAAAJaWlv///////1BQUHJycv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8zMzNPT0////////////////+Tk5L+/v+vr68TExD09Pf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+zs7BcXF93d3f///////////////////////////////////////////6SkpKOjo////////////////////////////////////////////+rq6gcHB////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+/v7/7+/v////////////////////////////////////////////////////////////////////////////////////////v7+y0tLf///////////////05OTgAAAAAAAAAAAAAAAAAAAJubm////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4+Pjy8vL////////////////////////c3NzdXV1////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Hh4eJiYm////////////////S0tLAAAA+Pj49/f3cHBwMzMzlZWV////////////9PT0R0dHQkJCFRUVCAgIPT09QUFBy8vL////////////////////////////////////////////////hYWFAAAAfn5+////////tra2AAAAZmZm////////UFBQgYGB////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////SUlJJSUl+/v7////////////dXV1AAAAra2txMTEPT09////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////jIyMXV1d/f39////////////////////////////////////////pKSks7Oz////////////////////////////////////////////+vr6BwcH////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////WVlZxsbG/////////////////////////////////////////////////////////////////////////////////////////f39Ozs7////////////////8/Pzz8/Po6OjFhYW2NjY39/f9PT0////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////j4+Pb29v///////////////////////8VFRXc3Nz///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8eHh4mJib///////////////9LS0sAAAD4+Pj///////////////////////////////////////+ZmZlcXFz7+/v////////////////////////////////////////////////////7+/s5OTkAAADNzc3////////q6upkZGSioqL///////9QUFCKior///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+JiYkAAADY2Nj///////////9FRUUAAADd3d3ExMQ9PT3////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////5+fkiIiLExMT///////////////////////////////////////+kpKScnJz////////////////////////////////////////////q6uoHBwf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9CQkK/v7/////////////////////////////////////////////////////////////////////////////////////////5+fkeHh7////////////////////////FxcUjIyP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Pj49DQ0P///////////////////8jIyCwsLPr6+v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////x4eHhYWFtDQ0MbGxsbGxsbGxh8fHwAAAPj4+P///////////////////////////////////////6GhoWBgYP///////////////////////////////////////////////////////////y8vLwgICObm5v///////////////////////////1BQULGxsf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7m5uQAAAJiYmP////////f39w0NDSEhIfv7+8TExD09Pf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////5ycnEVFRf7+/v///////////////////////////////////6SkpLu7u/////////////////////////////////////////////r6+iAgIP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////T09P///////0JCQr+/v/////////////////////////////////////////////////////////////////////////////////////////7+/jw8PP///////////////////////9fX1yMjI////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4+PjnJyc////////////////////dHR0jIyM////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Hh4eAAAAAAAAAAAAAAAAAAAAAAAAAAAA+Pj4////////////////////////////////////////oaGhYGBg////////////////////4ODg09PTpqamzc3NlJSUlZWVsrKyt7e3////9PT0Dw8PFRUV////////////////////////////////UFBQkZGR////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7OzsDAwMKioqdXV1dXV1WlpaAAAAbW1t////3Nzcfn5+////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+vr6Ozs7tLS0////////////////////////////////////pKSktra2////////////////////////////////////////////+vr6RkZG////////////////////////////////////////////////////////////////////////////////////////////////////////////q6urHh4e3t7e////////////6+vrHh4eQUFB////////a2trv7+//////////////////////////////////////////////////////////////////////////////////////////f39ODg4////////////////////////09PTIyMj////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+4uLicnJz///////////////////8uLi7t7e3///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8eHh4AAAA5OTlYWFhdXV1wcHACAgIAAAD4+Pj///////////////////////////////////////+hoaFgYGD///////////////////9NTU0AAAAAAAAEBAQAAAAAAAAAAAACAgLW1tbv7+8AAAAVFRX///////////////////////////////9QUFClpaX///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8qKioAAAAAAAAAAAAAAAAAAACdnZ3///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+7u7snJyfy8vL///////////////////////////////+kpKS/v7/////////////////////////////////////////////6+vobGxv////////////////////////////////////////////////////////////////////////////////////////////////////////////d3d0AAACUlJT////////////ExMQAAABfX1////////9lZWW/v7/////////////////////////////////////////////////////////////////////////////////////////5+fkiIiL////////////////////////JyckjIyP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////97e3re3t////////////////8fHx0xMTP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////x4eHiMjI/39/f///////////0ZGRgAAAPj4+P///////////////////////////////////////5SUlIuLi/////////////////////Pz88/Pz8DAwL6+vrCwsM7Ozq+vr9HR0f////b29hQUFBUVFf///////////////////////////////1BQUKysrP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////3l5eQAAAHR0dI+PjwgICAkJCeDg4P///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1tbW4WFhf///////////////////////////////6SkpNbW1v////////////////////////////////////////////r6+gcHB/////////////////////////////////////////////////////////////////////////////////////////////////////////////39/R8fH1RUVP///////////5GRkQAAAK6urv///8zMzDQ0NIqKiubm5v////////////////////////////////////////////////////////////////////////////////////b29g4ODv///////////////////////97e3iMjI////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4+Pjy8vL////////////////dXV1m5ub////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Hh4eJiYm////////////////S0tLAAAA+Pj4////////////////////////////8PDwUlJSXFxcFhYWEBAQLS0tVlZWyMjI////////////////////////////////////////////////Ly8vEBAQ9vb2////////////////////////////UFBQsbGx////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////qampAAAAqamp6+vrCgoKMTEx////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////2traISEh5eXl////////////////////////////pKSk29vb////////////////////////////////////////////+vr6BwcH////////////////////////////////////////////////////////////////////////////////////////////////////////////////XV1dEhISy8vL////6enpREREAAAA7u7u////TExMNDQ0NDQ0jIyM////////////////////////////////////////////////////////////////////////////////////9vb2CwsL////////////////////////wcHBIyMj////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////j4+Ourq7///////////////81NTXq6ur///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8eHh4mJib///////////////9LS0sAAAD4+Pj////////////////////////////4+PgqKioAAAAAAAAAAAAAAAAICAjp6en///////////////////////////////////////////////9MTEwAAADV1dX////////39/fHx8fd3d3///////9QUFCxsbH////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////j4+MGBgZpaWm1tbUAAAB7e3v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////97e3tzc3P///////////////////////////+kpKTb29v////////////////////////////////////////////6+vokJCT///////////////////////////////////////////////////////////////////////////////////////////////////////////////+NjY0AAAABAQEKCgoGBgYAAAAvLy/+/v7////////////////////////////////////////////////////////////////////////////////////////////////////////4+PgYGBj////////////////////////Ly8sjIyP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8XFxcnJyf///////////9/f3z8/P/7+/v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////x4eHiYmJv///////////////0tLSwAAAPj4+P///////////////////////////////4WFhQAAAAAAAAAAAAAAAERERP///////////////////////////////////////////////////4uLiwAAAImJif///////6+vrwAAAGZmZv///////1BQULGxsf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////xwcHCkpKXZ2dgAAAL29vf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+zs7BEREeLi4v///////////////////////6SkpMvLy/////////////////////////////////////////////r6+hgYGP///////////////////////////////////////////////////////////////////////////////////////////////////////////////729vQAAABYWFjo6OiEhIQAAAHx8fP////////////////////////////////////////////////////////////////////////////////////////////////////////////b29gsLC////////////////////////97e3iMjI////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4eHhnZ2d////////////hoaGioqK////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Hh4eJiYm////////////////S0tLDQ0N+fn5////////////////////////////////29vbCQkJAAAAAAAAAAAAs7Oz////////////////////////////////////////////////////39/fCgoKHR0dqKioubm5IiIiAAAAo6Oj////////UFBQsbGx////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////aWlpAAAAEBAQCwsL8vLy////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////e3t7R0dH////////////////////////pKSky8vL////////////////////////////////////////////+vr6BwcH////////////////////////////////////////////////////////////////////////////////////////////////////////////////7u7uDw8PZGRk////hISEAAAAvr6+////////////////////////////////////////////////////////////////////////////////////////////////////////////9vb2CwsL////////////////////////zs7OIyMj////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+0tLTa2tr///////////82Njba2tr////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////V1dXHx8f////////////////g4ODc3Nz///////////////////////////////////////81NTUAAAAAAAARERHx8fH///////////////////////////////////////////////////////+Pj48KCgoAAAAAAAAAAABKSkr4+Pj///////9QUFCxsbH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+pqakAAAAAAAAuLi7////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8/PwfHx/ExMT///////////////////+kpKS7u7v////////////////////////////////////////////6+voWFhb///////////////////////////////////////////////////////////////////////////////////////////////////////////////////8+Pj40NDT+/v41NTUWFhb29vb////////////////////////////////////////////////////////////////////////////////////////////////////////////29vYLCwv///////////////////////+urq4jIyP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Pj49vb2////////9/f3yYmJvn5+f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////5WVlQAAAAAAAFRUVP///////////////////////////////////////////////////////////////9ra2ouLi4KCgsHBwf///////////////1BQULGxsf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Pj4wYGBgAAAF5eXv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8nJyScnJ/7+/v///////////////6SkpNnZ2f////////////////////////////////////////////r6+jY2Nv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////35+fgAAAM7OzgoKCj4+Pv////////////////////////////////////////////////////////////////////////////////////////////////////////////////b29gsLC////////////////////////729vSMjI////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4+Pj29vb////////hoaGenp6////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////6urqCwsLAAAAwsLC////////////////////////////////////////////////////////////////////////////////////////////////UFBQsbGx////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////LCwsAwMDra2t/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////f39PDw8lpaW////////////////pKSkzMzM////////////////////////////////////////////+vr6FxcX////////////////////////////////////////////////////////////////////////////////////////////////////////////////////rq6uAAAAOzs7AAAAbm5u////////////////////////////////////////////////////////////////////////////////////////////////////////////////9vb2CwsL////////////////////////n5+fIyMj////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////r6+vl5eX///////84ODjKysr///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9iYmIcHBz4+Pj////////////////////////////5+fnGxsb////////////////////////////BwcHs7Oz///////////////////////9QUFCxsbH////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////o6Oji4uL6+vr////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Z2dkbGxv6+vr///////////+kpKTb29v////////////////////////////////////////////6+vpGRkb////////////////////////////////////////////////////////////////////////////////////////////////////////////////////d3d0BAQEAAAAAAAC+vr7////////////////////////////////////////////////////////////////////////////////////////////////////////////////29vYLCwv///////////////////////++vr4jIyP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////97e3i8vL////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7y8vOPj46ampoWFhfv7+3p6eu3t7f////////z8/NTU1HZ2dhsbGwAAANzc3P///////////////////////ykpKQUFBVtbW6Ojo/Pz8////////////1BQULGxsf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////3l5eWdnZ////////////6SkpNvb2/////////////////////////////////////////////r6+iYmJv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////z4+PgAAAAwMDPDw8P////////////////////////////////////////////////////////////////////////////////////////////////////////////////b29gsLC////////////////////////5+fnyMjI////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////h4eHeXl5////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1dXVR0dH4ODg6enpcXFxdnZ2/Pz85+fno6OjOjo6AAAAAAAAAAAAAAAAwMDA////////////////////+Pj4HBwcAAAAAAAAAAAABwcHWlpatLS09fX1PDw8sbGx////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7OzsIiIi0NDQ////////pKSk29vb////////////////////////////////////////////+vr6ExMT////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////X19fAAAALy8v////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9vb2CwsL////////////////////////n5+fNjY2////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////84ODjIyMj////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////U1NRTU1NDQ0NRUVGUlJQ8PDwLCwsAAAAAAAAAAAAAAAAAAAAAAAAjIyNNTU0uLi5dXV0uLi4uLi4qKioAAAAAAAAAAAAAAAAAAAAAAAAAAAATExMDAwOxsbH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+dnZ1ISEj///////+kpKTb29v////////////////////////////////////////////6+vo6Ojr////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////j4+ORkZG+vr7////////////////////////////////////////////////////////////////////////////////////////////////////////////////////29vYLCwv///////////////////////+fn59iYmL///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////93d3SgoKPr6+v////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////f39zo6OgUFBaenp8nJyYmJiSoqKgEBAQAAAAAAAAAAAAAAAAAAAJSUlNPT09PT09PT09PT09PT05mZmQ0NDQAAAAAAAAAAAAAAAA4ODllZWaOjowkJCbGxsf////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////z8/ERERLW1tf///6urq97e3v////////////////////////////////////////////r6+kZGRv////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////b29gsLC////////////////////////5+fn2JiYv///////////////////////////////////////////////3Z2disrKysrK5qamv///6Wlperq6vPz84yMjP///////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////eHh4iIiI////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8PDwTExMcnJysLCwNjY2vLy8////////zMzMioqKSkpKBwcHAAAAAAAA6enp////////////////////7OzsBgYGAAAAAgICQEBAmJiY8PDw////////ERERsbGx////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////xMTEOjo6+vr6////////////////////////////////////////////////////+vr6RkZG////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9vb2CwsL////////////////////////n5+fYmJi////////////////////////////////////////////////PDw8ycnJuLi4DAwM5ubmPz8/29vbkpKSeHh4////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////88PDza2tr///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////97e3uNjY35+fn////U1NQiIiLw8PD////////////////U1NSMjIwlJSXm5ub////////////////////29vZlZWWAgIDU1NT///////////////////8RERGxsbH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9JSUmIiIj////////////////////////////////////////////////////6+vpGRkb////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////29vYhISH///////////////////////+fn59iYmL///////////////////////////////////////////////9CQkL////4+PgeHh7Z2dk1NTXIyMgdHR3IyMj///////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9zc3Dw8PP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+bm5v///////////////9XV1fX19f////////////////////////b29v///////////////////////////////////////////////////////////xEREbGxsf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9PT0ywsLPDw8P////////////////////////////////////////////////r6+j4+Pv////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////r6+vv7+/////////////////f39/f39/f39/b29u/v7/b29u/v7/Dw8O/v7+/v7+/v7+/v7+/v7+/v7+vr6+zs7Orq6ufn5+3t7enp6efn5+fn59/f39/f39/f39/f38DAwBMTE////////////////////////5+fn2JiYv///////+Li4icnJ4WFhf////////////7+/jIyMl5eXvv7+yYmJmFhYUpKSjs7O////1xcXBEREQAAAMnJyf///////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////iIiIf39/////////////////////////////////////////////9vb29vb29vb29PT08PDw8/Pz7e3t7e3t8fHx+vr67e3t8/Pz9vb25+fn6+vr5+fn7Ozs7u7u9vb25eXl3Nzc3d3d9fX19/f3/////////////////////////////////////////////////////////////////////////////////f39+Pj49vb2////////////////////////////////////////9/f3/f399vb29vb29vb27u7u9vb29PT07+/v9vb27u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7u7e3t7e3t7e3t7e3t7e3t7e3t7e3t7e3t7e3t7e3t7e3t7e3t5eXl6urq5+fn5eXl5eXl3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc0dHRCgoKiYmJ3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzczc3Nzc3N5eXl1dXVzMzMzMzMvr6+zc3Nvb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29sLCwu7u7r6+vra2tvLy8ra2tnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dkJCQqqqqjo6Ojo6Ofn5+jo6Om5ubgICAjo6Ofn5+iIiIfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19bm5ufX19bm5ub29vfHx8bm5ucnJyenp6eHh4BQUFUFBQ39/f////////////////////////////////////////////+vr6AAAAIiIiXl5ePz8/Xl5eSUlJHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fGxsbHBwcHx8fHx8fHx8fHx8fFxcXFxcXFxcXFxcXERERHh4eGRkZKSkpHh4eGBgYGxsbFRUVEBAQHBwcHBwcHR0dHBwcGRkZHx8fGxsbGRkZGRkZGRkZIiIiIiIiIiIiISEhUVFR////////////////////////n5+fYmJi////////0dHRAAAAcnJy/////////////v7+AAAARUVF9/f3ERERk5OTTU1NS0tL////XFxcsLCwg4ODampq////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4+PghISEKCgocHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwVFRUVFRUVFRUTExMQEBATExMRERETExMgICA3NzcODg4SEhIlJSUJCQkMDAwXFxcaGhofHx8lJSUWFhYAAAAAAAAjIyMWFhYcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwbGxsXFxcVFRUcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwWFhYbGxsVFRUVFRUVFRUODg4VFRUUFBQPDw8VFRUODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4gICAODg4ODg4PDw8eHh4ODg4ODg4aGhogICATExMXFxcTExMZGRkhISEZGRkbGxsgICAlJSUlJSUlJSUlJSUlJSUlJSUaGhoJCQkAAAAAAAAAAAAVFRUbGxsXFxcJCQkFBQUbGxsDAwMAAAAAAAAAAAAAAAASEhIAAAAAAAAAAAAJCQkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHBwcHBwcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAbGxtOTk5kZGRfX19AQEAvLy9aWlpkZGRXV1dXV1dkZGQ7OztUVFRkZGRkZGRkZGRGRkZSUlJFRUVTU1NTU1MnJydUVFRBQUFISEhkZGRUVFRkZGRNTU1MTEw8PDw0NDROTk45OTklJSUlJSUlJSUyMjJkZGQ1NTVUVFRkZGRkZGRUVFRkZGRkZGRkZGRkZGRkZGRkZGRUVFRaWlpdXV1ubm5paWlzc3NjY2OBgYF1dXWCgoKDg4NjY2NWVlaEhIRxcXGDg4Nubm5tbW19fX2Dg4Pi4uL////////////////////////////////////////////+/v7Q0NCjo6O1tbXi4uK+vr7X19fi4uLi4uLi4uLi4uLi4uLi4uLi4uLGxsYyMjJWVlbi4uLi4uLi4uLi4uLi4uLi4uLf39+ysrLV1dXi4uLS0tLi4uLi4uLi4uLi4uK5ubm8vLyzs7Pi4uKnp6fPz8/i4uLi4uLDw8Pi4uLi4uLZ2dnq6urp6enu7u7p6enr6+uvr68SEhLk5OTw8PDw8PDw8PDw8PDw8PDw8PDw8PDw8PD39/f////////////39/f39/f///////////////////////+fn59iYmL////////R0dEAAABycnL////////////+/v4AAABFRUX9/f05OTn39/ejo6MVFRX///9OTk7R0dGrq6tjY2P///////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+jo6OXl5dXV1eXl5dXV1dXV1eXl5ampqdTU1OLi4tbW1qampsXFxbW1tbW1tbW1taamprq6utDQ0N3d3dLS0rW1tb29vby8vLW1tcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxdXV1ePj48fHx9XV1eDg4B0dHQAAAFRUVOXl5eXl5eXl5YqKigMDA1RUVODg4NXV1cjIyFJSUgAAAH5+fuXl5eXl5dPT00dHRwYGBsHBwdXV1dXV1cjIyBgYGA8PD7m5ueXl5bu7u4uLixERESAgIKampqampqampmdnZwAAAFVVVaamprW1taampkJCQgAAAICAgKampqampp2dnRYWFg8PD5+fn6amprW1tZmZmQQEBCsrKysrK1FRUfHx8ba2tsPDw8nJyfDw8MXFxcXFxe3t7fLy8uHh4ePj48nJyeLi4vT09ODg4PPz8/f39/////////////////////////f39+vr6+Xl5eXl5eXl5fT09Pj4+PX19evr6+jo6Pj4+Ofn59nZ2QsLC5+fn+Xl5fHx8eXl5eXl5eXl5evr6+Xl5eXl5W5ubhEREeXl5eXl5eXl5eXl5bS0tBUVFRMTE8zMzKqqqqampqampqampqampqampqampqSkpERERAAAAIaGhsHBwZGRkXx8fJ+fn3Z2dpWVlXZ2dn9/f3x8fAgICBwcHIaGhoaGhoaGhoaGhoaGhkJCQhwcHOnp6fn5+f////////j4+P////////////v7+/v7+/////j4+P///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1hYWIKCgv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Tk5B0dHf///////////////////////////////////////////////////////////////////////////////////5+fn2JiYv///////9HR0QAAAHJycv////////////7+/gAAAEVFRfz8/DExMRQUFA0NDXh4eP///3h4eA8PDw4ODqqqqv///////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////MTExfn5+IyMjl5eX////////////nZ2dDQ0Nra2t////////+fn5VVVVGhoa2NjY////////9fX1R0dHTExM9/f3////////0tLSGBgYcnJy////////////yMjIFRUVpKSk////////////h4eHHR0d3Nzc////////8/PzQkJCKCgo4+Pj////////19fXHx8fioqK////////////r6+vAwMDBQUFYmJi////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////ERERsbGx////////////////////////////////7+/vGRkZ4eHh////////////////zc3NFRUVY2Nj+/v7/////////////////////////////Pz8WFhYOjo66+vr////////////////////////////////tbW1ERERu7u7////////////////Ozs7lpaW////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////c3NzjY2N////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////5OTkHR0d////////////////////////////////////////////////////////////////////////////////////n5+fYmJi////////0dHRAAAAcnJy/////////////v7+AAAARUVF////8vLy6Ojo6enp/////////Pz86Ojo6+vr////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////89PT309PTW1tYdHR2NjY3///////////+dnZ0HBwepqan////////6+vpUVFQZGRnk5OT////////19fVHR0c9PT339/f////////S0tIaGhpubm76+vr////////IyMgUFBSkpKT////////+/v6IiIgdHR3c3Nz////////z8/NdXV0+Pj7s7Oz////////Y2NgeHh6Kior///////////+wsLACAgJ4eHj///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8RERGxsbH///////////////////////////////////9YWFiYmJj////////////////////Ozs4UFBSampr////////////////////////////////29vZkZGQ2Njbr6+v///////////////////////////////+2trYPDw+wsLD////////JycksLCz6+vr///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9eXl6mpqb////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////U1NQdHR3///////////////////////////////////////////////////////////////////////////////////+fn59iYmL////////R0dEAAABmZmb////////////+/v4AAABFRUX///////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////0JCQv///////9bW1h0dHY6Ojv///////////52dnRYWFs3Nzf////////r6+lNTUy0tLdjY2P////////X19UdHR01NTff39////////9LS0jMzM4uLi/r6+v///////8jIyBMTE6Wlpf////////7+/oiIiB4eHtzc3P////////39/UxMTE5OTuzs7P///////9/f3yQkJHt7e////////////3t7e319ff///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////xEREbGxsf///////////////////////////////////7Ozsz09Pf///////////////////////87OzhcXF5ycnP////////////////////////////////r6+mVlZTY2Nurq6v///////////////////////////////7q6uhISEsDAwP///ysrK5aWlv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////09PT56env///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Tk5B0dHf///////////////////////////////////////////////////////////////////////////////////5+fn2JiYv///////9HR0QAAAA8PD09PT09PT09PT0BAQAAAAEVFRf///////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8vLy5eXl////////////5eXl5OTk////////////////////PT099vb2////////1tbWJSUltLS0////////////np6eFRUVzs7O////////+vr6cHBwGhoa2NjY////////9fX1R0dHTExM9/f3////////1tbWJCQkioqK+/v7////////ycnJEhISpaWl/////////v7+iIiIHh4e3Nzc////////+vr6S0tLXl5e6+vr////////3t7eKCgoe3t7////////hISEfX19////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////ERERsbGx////////////////////////////////////+Pj4JCQk4uLi////////////////////////zs7OFhYWjIyM////////////////////////////////+fn5ZWVlNzc36enp////////////////////////////////u7u7FBQUW1tbKCgo+vr6////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////T09PsrKy////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////19fXHR0d////////////////////////////////////////////////////////////////////////////////////n5+fYmJi////////0dHRAAAAAAAAAAAAAAAAAAAAAAAAAAAARUVF////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////S0tIWFhYWFhZ6enr///+MjIwiIiIgICCJiYn///////////////8uLi57e3v////////////X19ccHByOjo7///////////+enp4UFBTOzs7////////+/v6Ojo47Ozvz8/P////////19fVHR0dNTU339/f////////W1tY0NDSUlJT////////////JyckRERGmpqb////////+/v6IiIgZGRnQ0ND////////7+/tXV1dGRkby8vL////////e3t4nJyd7e3v///+EhIR9fX3///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8RERGxsbH///////////////////////////////////////9lZWWMjIz////////////////////////////Pz88VFRWBgYH9/f3////////////////////////////5+flmZmY4ODjp6en///////////////////////////////+ioqIAAADFxcX///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9PT0+ysrL///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+lpaUdHR3///////////////////////////////////////////////////////////////////////////////////+fn59iYmL////////R0dEAAABAQED09PT09PT09PTz8/MAAABFRUX///////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7Gxsaamprm5uTQ0NP///2FhYcbGxry8vENDQ////////////////y4uLgAAAH19ff///////////9fX1xsbG4+Pj////////////5+fnxMTE8/Pz/////////z8/GNjYysrK+fn5/////////X19UZGRk1NTff39////////9XV1RgYGIaGhv///////////8rKyhAQEKampv////////7+/oiIiBkZGdHR0f////////X19VFRUTk5OfPz8////////9/f30ZGRnx8fFZWVn19ff///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////xEREb+/v////////////////////////////////////////8bGxioqKv///////////////////////////////9/f3xMTE42Njf////////////////////////////////j4+GZmZjg4OOjo6P///////////////////////////6mpqUdHR/39/f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////09PT7Kysv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////6WlpR0dHf///////////////////////////////////////////////////////////////////////////////////4+Pj2JiYv///////9HR0QAAAGBgYP////////////7+/gAAAEVFRf///////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7+/v/////////////////////////////////v7+/v7+n5+fUlJS/////f39////cXFxYWFh////////////////MjIyrq6uIyMjd3d39vb2////////19fXGhoaj4+P////////////n5+fEhISz8/P/////////f39f39/Pj4+8/Pz////////9fX1RUVFTU1N+Pj4////////4+PjFxcXd3d3////////////ysrKEBAQl5eX/////////v7+l5eXDg4Ozc3N/////////f39V1dXUVFR+fn5////////4uLiJCQkAQEBfX19////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////ERER0NDQ////////////////////////////////////////+Pj4HR0du7u7////////////////////////////////39/fIiIigICA/v7+////////////////////////////+Pj4Z2dnOTk59/f3////////////////////////SkpKp6en////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////T09PoqKi////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////paWlOzs7////////////////////////////////////////////////////////////////////////////////////f39/YmJi////////0dHRAAAAcnJy/////////////v7+AAAARUVF////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Dw8MBAQGvr6////////////////9YWFgYGBjl5eX///+srKwtLS3n5+f////w8PBiYmIwMDD+/v7///////////////9CQkL////h4eEiIiJ2dnb29vb////////Y2NgZGRmPj4/+/v7///////+goKARERHQ0ND////////7+/tTU1MfHx/j4+P////////29vZFRUVMTEz4+Pj////////U1NQWFhaHh4f+/v7////////KysoQEBCmpqb////////+/v6Xl5ctLS3s7Oz////////+/v5WVlZra2v+/v7////////h4eEiIiJ9fX3///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8RERHg4OD///////////////////////////////////////////+FhYUPDw/Nzc3////////////////////////////////R0dEhISF/f3/////////////////////////////////39/dYWFhZWVn39/f///////////////+3t7crKyv8/Pz///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9PT0+xsbH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+lpaVcXFz///////////////////////////////////////////////////////////////////////////////////+enp5iYmL////////R0dEAAABycnL////////////+/v4AAABFRUX///////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Li4gAAAFFRUf///////////+/v7w8PDzU1Nf///729vSwsLOfn5/7+/v///6KiojAwMO7u7v7+/v///////////////zc3N+jo6P///+jo6CsrK25ubv7+/v///////9jY2BkZGY+Pj/7+/v///////6CgoBISEs/Pz/////////r6+oODgy8vL/Pz8/////////b29kZGRkxMTPj4+P///////9XV1RYWFoeHh/7+/v///////8rKyiQkJLKysv///////////52dnTY2Ntvb2////////////1ZWVlVVVfT09P///////4SEhH19ff///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////xEREcHBwf///////////////////////////////////////////9PT0xMTEx4eHs3Nzf///////////////////////////////+Dg4CAgIK6urv///////////////////////////////+/v729vb1lZWfj4+P///////+/v7ygoKKampv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////09PT5OTk////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////6WlpVxcXP///////////////////////////////////////////////////////////////////////////////////2BgYGJiYv///////9HR0QAAAHJycv////////////7+/gAAAEVFRf///////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////MzMzICAg////////////zs7OAAAAhISE////lZWVWlpas7OzhISE////V1dXd3d3qKiojo6O////////////////Li4u0dHR////////4eHhQkJCfn5+/v7+////////2NjYGRkZkZGR////////////n5+fExMTzs7O////////////jo6OPz8/8fHx////////9fX1RkZGTExM+Pj4////////1dXVFxcXh4eH+/v75+fn3d3dycnJJSUloqKi////////////np6eGBgYysrK////////////VlZWNjY29vb2////dHR0bW1t////////////////////////////////////////////////////////////////////////////////////////////////////////////////////w8PD7+/v////////////////////ERER7u7u////////////////////////////////////////////////xMTENjY2FxcXfHx809PT////////////////////////////0dHRBQUFu7u7////////////////////////////////9vb2NjY2WFhYqampY2NjExMTTExM/Pz8////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////T09PsLCw////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////tLS0SkpK////////////////////////////////////////////////////////////////////////////////////YGBgYmJi////////9PT0iYmJq6ur/////////////v7+hISElpaW////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9zc3MDAwO1tbXp6enn5+d7e3sAAADExMT////19fVCQkIpKSmqqqr////V1dUrKysXFxenp6f///////////////89PT06Ojrw8PD////////p6elLS0t+fn77+/v////////Y2NglJSWRkZH+/v7///////+fn58UFBTOzs7///////////+NjY0rKyvY2Nj////////19fVGRkZMTEz39/f////////MzMwAAAAbGxsAAACDg4P////MzMwfHx+FhYX///////////+enp4YGBjOzs7///////////9WVlZeXl78/PyBgYF6enr///////////////////////////////////////////////////////////////////////////////////////////////////////////////////8mJiYGBgZPT0+fn5/v7+////////8RERGhoaH///////////////////////////////////////////////////////+1tbVGRkYMDAxSUlLMzMz+/v7////////////////////BwcEkJCS6urr////////////////////////m5ualpaUqKioEBAQzMzN+fn7ExMT7+/v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9PT09jY2P///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+lpaUVFRX29vb///////////////////////////////////////////////////////////////////////////////9gYGBfX1////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7OzswAAAAQEBBUVFQwMDAAAAAkJCenp6f////////////////////////////////Hx8f///////////////////zIyMhsbGzs7O/Dw8P////////f390xMTGJiYv39/f///////9jY2BkZGY+Pj/7+/v///////56enhUVFc3Nzf///////////42NjR0dHdjY2P////////X19UNDQ0xMTKWlpWZmZg4ODgAAAAAAAAAAAFNTU////////9LS0gQEBIWFhf///////////4GBgSsrK9vb2////////////0FBQWBgYDAwMGxsbPv7+/////////////////////////////////////////////////////////////////////////////////////////////////////////////39/SQkJAAAAAAAAAAAAAgICE9PT6KiogcHB7Gxsf///////////////////////////////////////////////////////////////9zc3IWFhQ8PD1xcXKysrP7+/v///////////////8DAwBgYGLm5uf////v7++Tk5Kampl1dXQ8PDzw8PIqKitjY2P///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1JSUpWVlf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7S0tCAgIP///////////////////////////////////////////////////////////////////////////////////29vb4aGhv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9/f3GhoaBQUFSkpKICAgAAAANDQ0////////////////////////////////////////////////////////////SUlJ7+/vWlpaOzs78PDw////////9vb2TExMfn5+/f39////////2NjYGRkZj4+P////////////oaGhIiIivb29////////////jIyMHR0d2NjY////8fHxNDQ0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAwMDcXFxcXFxSUlJAAAABAQESEhIcXFxSUlJHh4eAAAAFBQUXFxcUVFRVFRUGxsbAAAAAAAADAwMNTU1UFBQQUFBRERETk5OQUFBRkZGS0tLQUFBSUlJSUlJQUFBQUFBQUFBMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyLS0tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAUlJS/Pz8////////////////////////////////////////////////////////////////////9fX1lZWVCwsLPT09np6e9fX1////////////uLi4AgICYGBgNTU1FxcXTk5Ompqa6+vr////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////W1tboqKi////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////tLS0WFhY////////////////////////////////////////////////////////////////////////////////////YGBgkZGR////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8+Pj4/Pz////+/v78AAACDg4P///////////////////////////////////////////////////////////9LS0vw8PD6+vpaWlo7Ozvw8PD////////29vZHR0d/f3/9/f3////////Y2NgZGRmPj4////////////+hoaEiIiLNzc3///////////+MjIweHh7T09P29va0tLRISEgFBQUAAAAAAAAAAAAAAAAAAAAAAAAAAABubm6QkJCQkJCKiooVFRUdHR2Ojo6QkJCQkJB2dnYGBgZOTk6goKCdnZ2ioqI7Ozs3Nzevr6+goKCvr6+vr6+vr6+vr6+vr6+vr6+vr6+vr6+vr6+vr6+5ubnAwMDPz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/JyckVFRUAAAAAAAAAAAAAAAADAwMPDw8AAACVlZX///////////////////////////////////////////////////////////////////////////////+ampoAAAASEhIXFxeNjY3q6uqbm5svLy8KCgpFRUWZmZnr6+v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9PT0+ysrL///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+pqalLS0v///////////////////////////////////////////////////////////////////////////////////9vb2+RkZH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////3Jycg4ODvHx8X9/fwAAAMPDw////////////////////////////////////////////////////////////0xMTPPz8/////n5+Xx8fEdHR/f39////////+vr60xMTGJiYvX19f///////9jY2BoaGo+Pj////////////7GxsScnJ8zMzP///////////4uLixMTE9fX1////////9/f31paWgAAAAAAAAAAAAAAABcXFxwcHEFBQfX19f///////9nZ2R8fH4uLi/z8/P///////6GhoTAwMN/f3////////5OTk21tbf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////zU1NQAAAAAAABYWFm5ubsTExPf39x0dHdXV1f///////////////////////////////////////////////////////////////////////////////3Z2dgAAAM3NzbS0tGRkZBUVFUdHR6Wlperq6v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////15eXqKiov///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////6+vr0tLS////////////////////////////////////////////////////////////////////////////////////2VlZZGRkf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////uLi4AAAAr6+vPz8/ERER8fHx////////////////////////////////////////////////////////////PT09zMzM////////////b29vPDw87+/v////////9vb2S0tLVVVV/v7+////////19fXGxsbjo6O////////////vLy8IiIis7Oz////////////i4uLExMT09PT////////////i4uLBgYGGxsbCwsLbGxs4ODgKioqY2Nj////////////2dnZHx8fi4uL/Pz8////////paWlNTU14eHh////ZGRkbW1t////////////////////////////////////////////////////////////////////////////////////////////////////////////////////UVFRbm5urq6u7+/v////////////ERER4ODg////////////////////////////////////////////////////////////////////////////////JiYmAAAAY2Nj////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Xl5eoqKi////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////tLS0QkJC////////////////////////////////////////////////////////////////////////////////////ampqkZGR////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////u7u4EBAREREQFBQU9PT3///////////////////////////////////////////////////////////////89PT0wMDDp6en////////5+flbW1s8PDzv7+/////////39/dLS0tgYGD9/f3////////X19cbGxuNjY35+fn////////Ly8soKCizs7P7+/v///////+bm5sSEhLNzc3///////////91dXUjIyPOzs7s7Oz////g4OBDQ0NeXl7v7+/////////Y2NgfHx+Li4v8/Pz///////+srKwzMzPr6+tdXV1mZmb///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8gICDQ0ND////////////////////////////////////////////////////////////////////////////g4OAFBQUAAAAICAjz8/P///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9VVVWbm5v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+0tLRMTEz///////////////////////////////////////////////////////////////////////////////////9vb2+RkZH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////zs7OwAAAAAAAHNzc/////////////////////////////////////////////////////////////r6+jIyMiYmJjAwMOnp6f////////n5+VtbWzw8PPDw8P////////f390tLS35+fv7+/v///////9fX1x0dHbKysv///////////7y8vBsbG8HBwf///////////5ubmxwcHMjIyP///////////1xcXDMzM+Li4v////////j4+DIyMmlpafX19f///////9jY2B8fH7CwsP///////////6ysrCkpKRoaGmRkZP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////yAgIODg4P///////////////////////////////////////////////////////////////////////////6ampgAAAAAAAAAAAIyMjP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1dXV5mZmf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7S0tERERP///////////////////////////////////////////////////////////////////////////////////29vb4mJif///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////a2trAAAAAAAAo6Oj////////////////////////////////////////////////////////////////UlJS6+vrampqMDAw6enp////////+fn5WlpaPDw88PDw////////9/f3QkJCfn5+////////////1tbWHBwcfn5+////////////u7u7ICAgvb29////////////oKCgExMTxsbG/////////f39XV1dNDQ06urq////////7OzsUFBQZWVl////////////3t7eDg4Os7Oz////////////rKysCgoKbW1t////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////ICAg2NjY////////////////////////////////////////////////////////////////////////////ZmZmAAAAAAAAAAAAJSUl/v7+////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Xl5eoqKi////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////tLS0RERE////////////////////////////////////////////////////////////////////////39/f////////b29viYmJ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+qqqoAAAANDQ3l5eX///////////////////////////////////////////////////////////////9TU1P09PT8/PxqamowMDDp6en////////5+flaWlpHR0f8/Pz////////h4eEiIiJ+fn7////////////W1tYdHR2Ojo7///////////+rq6sxMTG9vb3///////////+pqakRERHHx8f////////8/PxgYGBDQ0Pq6ur////////29vZWVlZwcHD6+vr////////AwMAhISGoqKj///////////9tbW1kZGT////////////////////////////////////////////////////////////////////////////////////////r6+va2tr39/f////////////////x8fHw8PD///////////////////8gICDZ2dn///////////////////////////////////////////////////////////////////////////8mJiYAAAAAAAAAAAAAAADFxcX///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9eXl6ZmZn///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+9vb1MTEz///////////////////////////////////////////////////////////////////////////////////9vb2+RkZH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Dw8EtLS1paWvv7+////////////////////////////////////////////////////////////////0dHR+np6f////z8/I6OjjU1Nenp6f////////r6+lpaWlFRUfr6+v///////+Hh4Tw8PF5eXv///////////9vb2ygoKH5+fv///////////9HR0Tc3N729vf///////////6qqqh0dHcnJyf////////z8/GdnZ0JCQuvr6/////////X19SsrK3Fxcf///////////7i4uCEhIaioqP///////52dnWZmZv///////////////////////////////////////////////////////////////////////////////////+zs7BYWFiYmJioqKtbW1vDw8FNTU/v7+zw8PMTExP///////////////////yAgINbW1v///////////////////////////////////////////////////////////////////////+Dg4AUFBQAAAAAAAAAAAAAAAExMTP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////15eXpubm////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7W1tUJCQv///////////////////////////////////////////////////////////////////////////////////29vb4GBgf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Pz8PDw8x8fH////////////jIyMMDAw6enp////////+vr6WlpaYGBg8fHx////////5ubmIyMjbm5u////////////3NzcJycnmJiY+fn5////////u7u7EhISubm5////////////q6urKysr5OTk/////////Pz8ZWVlOjo66+vr////////5+fnNTU1b29v+vr6////////u7u7ICAgpKSk////b29vYmJi////////////////////////////////////////////////////////////////////////////////////0dHRKioq/v7+aWlpbW1t8vLyQ0ND4eHhKysr8vLy////////////////////ICAg2tra////////////////////////////////////////////////////////////////////////uLi4DQ0NAAAAAAAAAAAAFBQUb29v////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////aWlpkpKS////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////urq6PDw8////////////////////////////////////////////////////////////////////////////////////enp6hoaG////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////29vYmJiYRERG9vb3////////8/PxqamowMDDp6en////////6+vpZWVk6Ojri4uL////////y8vJXV1dra2v29vb////////m5uYmJiZ3d3f5+fn////////GxsYnJye6urr///////////+srKwvLy/k5OT////////6+vphYWEvLy/s7Oz////////f399FRUVsbGz6+vr////////U1NQbGxulpaVkZGRdXV3////////////////////////////////////////////////////////////////T09Pa2tr////////////Ly8slJSX///90dHR4eHj09PQZGRlFRUV0dHT///////////////////////8rKyvQ0ND////////////////////////////////////////////////////////////////////////////w8PC+vr48PDxvb2/09PT///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9jY2OSkpL///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+0tLQ8PDz///////////////////////////////////////////////////////////////////////////////////90dHSBgYH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////b29hoaGktLSwwMDL29vf////////z8/JGRkTQ0NOrq6v////////v7+1lZWTo6OvLy8v////////v7+z8/P2pqav///////////9ra2ioqKnZ2dvn5+f///////9zc3CkpKbu7u////////////6ysrB8fH8rKyv////////n5+WVlZTQ0NOHh4f////////z8/EBAQFxcXPr6+v///////8TExBMTEwQEBF1dXf///////////////////////////////////////////////////////8/PzzU1NQQEBAMDAy4uLtPT0////9fX1wEBAR8fHwoKCtTU1PX19RYWFgsLCzc3N/b29v///////////////////yQkJNDQ0P///////////////////////////////////////////////////////////////////////////////////2xsbJiYmP////////////////////////////////////////n5+VFRUYCAgL6+vvr6+v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////15eXpKSkv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////6SkpDw8PP///////////////////////////////////////////////////////////////////////////////////29vb4GBgf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////v7+UlJS6enprq6uExMTvb29////////////oqKiJCQk6urq////////+/v7aGhoOTk54+Pj////////5OTkLy8vampq6enp////////5eXlKSkpdnZ2+fn5////////s7OzFRUVvLy8/////////v7+rKysCwsLvb29////////+vr6bW1tOjo69/f3////////5eXlMzMzXFxc+/v7////////yMjIDw8PXV1d////////////////////////////////////////////////////3NzcISEhAAAAXFxcSkpKAAAAFRUV8PDwz8/PExMTvr6+JycnycnJ9fX1NDQ04+PjKCgowMDA////////////////////ICAg0NDQ////////////////////////////////////////////////////////////////////////////////////hISEi4uL////////////////////////////////////////7+/vDw8PAAAAAAAAFhYWV1dXtra2+/v7////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////a2trkpKS////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wcHBPDw8////////////////////////////////////////////////////////////////////////////////////fHx8gYGB////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////39/clJSXo6Oj///+xsbETExO9vb3///////////+YmJgjIyPn5+f////////8/PxnZ2cqKiry8vL////////09PRaWlppaWn////////////m5uYyMjKUlJT///////////+/v78UFBS+vr7////////+/v6urq4jIyPZ2dn////////9/f1sbGxNTU339/f////////v7+85OTmKior7+/v///////9iYmJdXV3///////////////////////////////////////////////////96enoAAACFhYX+/v78/PxDQ0MAAACfn5/Z2dkjIyPT09MfHx+srKzk5OQtLS3CwsIXFxfIyMj///////////////////8wMDCoqKj////////////////////////////////g4ODIyMj19fXx8fHx8fHx8fHx8fHx8fHLy8u4uLjKysq3t7fS0tJ4eHhMTEzIyMjIyMjHx8e3t7eqqqq4uLi0tLSoqKioqKioqKiKiooBAQEAAAAAAAAAAAAAAAAAAAAmJiZzc3O1tbXx8fH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9hYWGSkpL///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+3t7c8PDz///////////////////////////////////////////////////////////////////////////////////9ycnKBgYH///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////b29iAgIOjo6P///////7GxsRISEq+vr/////////39/YODgyUlJejo6P////////z8/HV1dSoqKuTk5P////////z8/GVlZV5eXv///////////+bm5jQ0NHx8fPr6+v///////729vRUVFbGxsf///////////66urioqKtnZ2f////////7+/mxsbEVFReLi4v////////Dw8Dk5OVtbW/z8/P///3R0dF1dXf///////////////////////////////////////////////////ygoKAsLC+Hh4f///////6GhoQAAAJ2dndzc3Dk5OTs7O09PT/Dw8Pf3909PTzk5OXx8fP39/f///////////////////y4uLikpKUFBQTQ0NBUVFUFBQTMzMzIyMjIyMjU1NT09PTk5ORAQEAsLCz8/PzExMSkpKTk5OS4uLjk5OTs7OxEREQICAgICAgAAAAAAABwcHAAAAAAAAAAAAA4ODhEREU1NTTs7OycnJwgICAAAAAAAAAAAAAAAAAAAAAAAAAAAAAsLCzo6OtnZ2f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////15eXltbW8XFxcXFxcXFxcXFxcXFxcXFxZOTk7i4uKamppGRkYaGhpycnLW1tbW1ta2tra6urrW1tZCQkJCQkLGxsaampqampqampqampqWlpaWlpaWlpaWlpaWlpaWlpaWlpYyMjFFRUTw8PP///////////////////////////////////////////////////////////////////////+Tk5IaGhoaGhjIyMkNDQ4aGhoaGhubm5v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8vLyCwsLYmJi0dHR0dHRycnJPj4+CQkJpaWlwsLCwsLCwsLCODg4ERERrq6uwsLCwsLCv7+/HR0dJiYmtbW1wsLCwsLCr6+vAAAAUVFRubm5wsLCwsLCkJCQAAAAWlpavr6+wsLCwsLCY2NjEBAQk5OTwsLCwsLCwsLCREREBwcHq6urwsLCwsLCsrKyCAgIJCQksbGxvLy8o6OjfX19AAAAW1tbpKSkQ0NDXV1d////////////////////////////////////////////////6+vrCwsLSkpK/v7+/////////f39+fn5/Pz8////////////////////////////////////////////////////////////MDAwz8/P/////f39+vr6/////f39/f39/f39/f39////////+vr6+vr6/////f39/Pz8/v7+/f39////////+/v7+fn5pKSkHBwc9/f3/Pz8+fn5+fn5+fn5+vr6+/v7/////f39/Pz85OTkCAgIAAAAAAAAAAAACgoKPDw8k5OT5+fn/f39////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////w8PDXl5ePDw8WlpaEBAQAAAAAAAAAAAAAAAADg4ODg4OAAAAAAAAAAAAAAAAJSUlNDQ0AAAAAAAAHR0dAAAAAAAAAAAAAAAAAAAAAAAAAAAALi4uS0tLS0tLGxsbFxcXioqKkJCQlJSUyMjI////////////////////////////////////////////////////////////////////////3d3dCQkJAAAAAAAAAAAAAAAAHh4e+Pj4////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+/v6VlZVUVFQvLy8vLy8vLy83Nzc/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8nJycAAAAaGho/Pz8UFBQAAAAdHR0/Pz8/Pz8/Pz8PDw8AAAAxMTE/Pz8/Pz87OzsAAAAVFRU/Pz8/Pz8/Pz82NjYAAAAKCgpOTk5OTk5bW1sVFRUAAAAAAABdXV3////////////////+/v7+/v7+/v7+/v7+/v7+/v7////////Hx8cAAABMTEz///////////////////////////////////////////////////////////////////////////////////8wMDDQ0ND////////////////////////////////////////////////////////////////////////////////////ExMQeHh78/Pz////////////////////////////////////w8PAREREAAAAyMjKIiIjIyMj+/v7///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9iYmJubm78/Pz8/Pz8/Pz9/f39/f38/Pz8/Pz8/Pz8/Pz+/v7+/v78/Pz8/Pz9/f38/Pz8/Pz8/Pz8/Pz8/Pz8/Pz8/Pz+/v7///////+RkZFvb2/////////////////////////////////////////////////////////////////////////////////////////+/v5GRkYAAAAAAAAAAAAAAABnZ2f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////zo6OsbGxv///+fn5ykpKWJiYv39/f///////76+vhAQEHR0dP///////////7GxsRcXF9nZ2f///////////2trayMjI/Ly8v////////Hx8RgYGAAAAF1dXf///////+rq6l5eXjc3Nx4eHh4eHh4eHhYWFh8fH3Z2dv7+/re3twAAAExMTP///////////////////////////////////////////////////////////////////////////////////zAwMNDQ0P///////////////////////////////////////////////////////////////////////////////////+Pj4yEhIfz8/P///////////////////////////////////////7m5udjY2P///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////2JiYp6env///////////////////////////////////////////////////////////////////////////////////////////////5GRkW9vb////////////////////////////////////////////////////////////////////////////////////////////6WlpQAAAAAAAAAAAAAAALe3t////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Ojo6w8PD////////8/PzLS0tZWVl+/v7////////zc3NJCQkoaGh////////////wMDAJycn2NjY////////9fX1VVVVTExM5+fn////////1NTUFBQUXV1d////////+vr6ZWVlZWVlZWVlZWVlSUlJJSUlJSUlXV1d+Pj4uLi4AAAATExM////////////////////////////////////////////////////////////////////////////////////MDAw0NDQ////////////////////////////////////////////////////////////////////////////////////8fHxIyMj/Pz8////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////YmJinp6e////////////////////////////////////////////////////////////////////////////////////////////////kZGRb29v////////////////////////////////////////////////////////////////////////////////////////////4+PjEhISAAAAAAAALCws+fn5////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////86Ojo6Ojr4+Pj////////l5eU4ODhlZWX7+/v////////Nzc0zMzOgoKD///////////+5ubkcHBzY2Nj////////19fVGRkZOTk74+Pj///////9kZGRbW1v////////////////////////////////////////////////S0tIGBgZMTEz///////////////////////////////////////////////////////////////////////////////////8wMDDCwsL///////////////////////////////////////////////////////////////////////////////////////8zMzPp6en///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9iYmKenp7///////////////////////////////////////////////////////////////////////////////////////////////+RkZFtbW3///////////////////////////////////////////////////////////////////////////////////////////////9kZGQAAAAAAABoaGj///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////zo6OgAAAFZWVvb29v///////+Xl5Tw8PGVlZfv7+////////+zs7CEhIaCgoP///////////5ubmx0dHdjY2P////////X19VhYWDExMeXl5f///2RkZF1dXf///////////////////////////////////////////////+vr6wsLC0xMTP////////////////z8/P7+/v///////////////////////////////////////////////////////////zAwMM3Nzf///////////////////////////////////////////////////////////////////////////////////////ykpKc3Nzf///////////////////////////////////////////////////////////////////////////////////////////+zs7ISEhO/v7////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////2JiYpGRkf///////////////////////////////////////////////////////////////////////////////////////////////56enmJiYv///////////////////////////////////////////////////////////////////////////////////////////////6enpwAAAAoKCt7e3v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////RkZGlZWVOzs7VFRU+vr6////////5OTkOzs7VVVV+/v7////////zMzMFRUVn5+f////////////i4uLISEh2NjY////////////enp6TU1N+Pj4Z2dnTU1N////////////////////////////////////////////////////KioqFBQU9fX1////////qampJiYmpqam////////////////////////////////////////////////////////////MDAwxMTE////////////////////////////////////////////////////////////////////////////////////////MjIy19fX////////////////////////////////////////////////////////////////////////////////////////////x8fHAAAAqKio////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////YmJil5eX////////////////////////////////////////////////////////////////////////+/v7/v7++vr6+vr69/f3+/v7jY2NbGxs////////////////////////////////////////////////////////////////////////////////////////////////6urqCgoKSUlJ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8+Pj67u7v29vZtbW1KSkr29vb////////z8/M8PDxWVlb6+vr////////Ly8sWFhafn5////////////+np6ceHh7Y2Nj///////////93d3dNTU06OjpSUlL///////////////////////////////////////////////////9qamoAAAChoaH////7+/tBQUEAAADAwMD///////////////////////////////////////////////////////////8wMDDMzMz///////////////////////////////////////////////////////////////////////////////////////8qKirKysr////////////////////////////////////////////////////////////////////////////////////////////W1tYAAACgoKD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9nZ2cLCwsvLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8kJCQuLi4jIyMjIyMdHR0oKCgRERFoaGj////////////////09PStra2Ojo6Ojo6Dg4N9fX2Kiop+fn5wcHBubm5ubm5ubm5ubm5ubm5ubm54eHiAgICAgICAgICAgICAgIAQEBApKSl+fn5ubm56enpjY2N0dHRycnJvb297e3uQkJD///////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////0VFRZSUlOnp6c7OzhkZGUlJSdfX1+np6enp6a2trQAAAFVVVdvb2+np6dnZ2YKCggQEBG5ubtnZ2dnZ2dnZ2SgoKBwcHLS0tNXV1crKysDAwAYGBgAAAFhYWP///////////////////////////////////////////////////9fX1wYGBggICCwsLCIiIgAAABkZGfHx8f///////////////////////////////////////////////////////////zU1NcDAwP///////////////////////////////////////////////////////////////////////////////////////2pqapaWlv///////////////////////////////////////////////////////////////////////////////////////////9HR0QAAAKampv////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////T09MLCwpOTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk6CgoKWlpZOTk7KystLS0tPT097e3t7e3ubm5vb29v////////////////n5+bOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs8LCwtLS0tLS0tLS0tLS0tLS0tLS0urq6v///////////////////9jY2NjY2Pj4+NLS0vDw8N7e3t/f39vb29PT0/Ly8v///////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////fn5+GBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYJycnJycnJycnJCQkKysrJycnNTU1KSkpf39/////////////////////////////////////////////////////////oqKiJycnFxcXGBgYNjY21tbW////////////////////////////////////////////////////////////////MDAwxsbG////////////////////////////////////////////////////////////////////////////////////////b29vkZGR////////////////////////////////////////////////////////////////////////////////////////////1tbWAAAAm5ub////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////39/f8/Pz///////////////////////////////////////////////////////////////////////////+pqanp6en///////////////////////////////////////////////////////////////////////////////////////9ra2uMjIz///////////////////////////////////////////////////////////////////////////////////////////+hoaEAAACrq6v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////f39/n5+ff39/39/f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////3x8fH19ff///////////////////////////////////////////////////////////////////////////////+Dg4HJycnFxcT4+PgAAAEVFRXFxcXFxcc3Nzf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////kZGRICAgICAgGBgYGhoaGBgYLCwsMjIyLy8vnZ2d////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////tLS0TExM////////////////////////////////////////////////////////////////////////////////wcHBEBAQGBgYCAgIAAAACgoKFhYWGBgYfn5+////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////6+vp2dnYDAwMAAAAAAAAAAAAAAAAAAAAAAACMjIz///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+0tLRMTEz////////////////////////////////////////////////////////////////////////////////////w8PD39/epqakAAACUlJT19fX39/f6+vr///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////5mZmQMDAwAAAAAAAAAAAAAAAAAAAIyMjP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7S0tD09Pf///////////////////////////////////////////////////////////////////////////////////////////6enpwAAAIyMjP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////w8PDERERAAAAAAAAAAAAAAAAGhoaZ2dn39/f////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////6urqCAgI/f39////////////////////////////////////////////////////////////////////////////////////////1tbWAAAAm5ub////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////l5eUwMDAAAAAAAABdXV26urpsbGw2NjZTU1Ojo6Pd3d3////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////09PQDAwP9/f3///////////////////////////////////////////////////////////////////////////////////////+np6cAAACMjIz///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////f3911dXSQkJOfn5/////////r6+qysrHl5eS4uLkVFRaSkpOvr6/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////r6+h8fH/39/f///////////////////////////////////////////////////////////////////////////////////////6enpwAAAIyMjP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+/v79/f3////////////////////////9vb2sbGxZGRkJycnW1tbzs7O////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////MzMz/f39////////////////////////////////////////////////////////////////////////////////////////09PTGxsbsrKy////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+/v7y8vKmpqZSUlI4ODh6enrX19f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9DQ0PAwMD////////////////////////////////////////////////////////////////////////////////////////+/v75+fn///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////39/djY2I2NjTQ0NDIyMoyMjN7e3v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////zMzM76+vv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Pz8z8/PdHR0FRUVQEBAnZ2d7e3t////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Q0NDvr6+////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9/f2zs7NRUVEhISFgYGCvr6/+/v7///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+BgYGurq7///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Hh4ZKSklJSUiIiImBgYN7e3v7+/v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4KCgn9/f////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7+/voKCgMzMzMzMznZ2d3d3d////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////goKCf39/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Ozs5zc3MnJydNTU2ioqL7+/v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+CgoJ/f3////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////r6+rS0tD8/PygoKIKCgsvLy/r6+v///////////////////////////////////////////////////////////////////////////////////////////////////////////////7Ozs2xsbP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7Ozsfn5+JCQkKSkpi4uL3Nzc////////////////////////////////////////////////////////////////////////////////////////////////////////wcHBQEBA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4+Pi2trZdXV0SEhJaWlqpqanx8fH////////////////////////////////////////////////////////////////////////////////////////////BwcE7Ozv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+zs7Kenp0xMTBoaGklJScbGxvn5+f///////////////////////////////////////////////////////////////////////////////8HBwQEBAf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4eHhe3t7KSkpHx8fh4eH19fX////////////////////////////////////////////////////////////////////////5eXlAgIC////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////JyclaWloNDQ1HR0eoqKjy8vL///////////////////////////////////////////////////////////////8DAwP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+vr64qKijs7OxkZGVpaWra2tvLy8v///////////////////////////////////////////////////wMDA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4eHhe3t7ISEhGBgYdXV12NjY////////////////////////////////////////////Ghoa9vb2////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////19fW8vLxmZmYaGhpERESsrKzi4uL///////////////////////////////9bW1vo6Oj////////////////////////////////AwMDAwMD////////X19ewsLC+vr729vb///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////X19ZWVlT4+PhUVFU1NTdLS0v///////////////////////////////////////////////////////////4mJiQ0NDQMDA3p6ev///ywsLBAQEBERES4uLvDw8P///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////0NDQfn5+tra2////////////////////////////////////////////////////////9PT0FRUVvb29iYmJFRUV9PT0FhYWpqam3t7eJSUli4uL////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////l5eUSEhLz8/Pi4uIEBATKysoWFhasrKz///+FhYU8PDz///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Xl5RwcHP///////xwcHLGxsRYWFqysrP///4uLizc3N////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////5eXlHBwc////////HBwc5eXlFhYWrKys////i4uLNzc3////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////x8fHk5OT////////////////////k5OTx8fHl5eUcHBz////d3d0BAQHl5eUWFhasrKz///99fX1TU1P///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////1dXVxUVFf///////////////7OzswQEBKOjo+rq6hcXF6qqqoqKijExMf7+/hYWFmpqaoaGhgkJCcDAwP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////gICAAAAA0dHR////////////cHBwBAQE3d3d////p6enGBgYJycnt7e3////e3t7MTExR0dHv7+//v7+////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AwMAAAACSkpL///////////9BQUEiIiL////////////9/f39/f3////////////9/f3+/v7///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7+/hEREUJCQurq6tzc3MLCwgAAAFJSUv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////UFBQAAAAAAAAAAAAAAAAAAAAkpKS////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+BgYEAAAA3NzdXV1cODg4AAADQ0ND///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////76+vgAAALGxsf7+/jExMQ8PD/X19f///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8PDwAwMDgYGB4ODgAAAAT09P////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////89PT1GRkaRkZEAAACCgoL///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////2FhYQwMDBQUFAEBAcXFxf///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////sLCwAAAAAAAAEhIS////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////g4OAAAAAAAABSUlL///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////v7+xUVFQAAAJKSkv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////pKSkf39/6urq////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8AAP///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAA=\"><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-family: 'MS Shell Dlg 2';\">&nbsp;</div><div style=\"font-family: 'MS Shell Dlg 2';\">L=Loa: Lenght over all (m).</div><div style=\"font-family: 'MS Shell Dlg 2';\">B: Breadth (m).</div><div style=\"font-family: 'MS Shell Dlg 2';\">A_T: Transverse projected area (m<sup>2</sup>).</div><div style=\"font-family: 'MS Shell Dlg 2';\">A_L: Lateral projected area (m<sup>2</sup>).</div><div style=\"font-family: 'MS Shell Dlg 2';\">A_0D: Lateral projected area of superstructure (A_ss) and LNG tanks, containers etc. on the deck (m<sup>2</sup>).</div><div style=\"font-family: 'MS Shell Dlg 2';\">C: Distance from midship section to center of lateral projected area (m).</div><div style=\"font-family: 'MS Shell Dlg 2';\">C_BR: Distance from midship section to center of the A_ss (m).</div><div style=\"font-family: 'MS Shell Dlg 2';\">H_BR:Height to top of superstructure (bridge) (m).</div><div style=\"font-family: 'MS Shell Dlg 2';\">H_C: Height to center of lateral projected area (m).</div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-family: 'MS Shell Dlg 2';\"><u><br></u></div><div style=\"font-family: 'MS Shell Dlg 2';\"><u>Limitations:</u></div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-family: 'MS Shell Dlg 2';\">The present method is more reliable than the Isherwood method due to it takes into account a greater number of examples and different types of ships. However this method has the following limitations:</div><div style=\"font-family: 'MS Shell Dlg 2';\"><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>- The type of ship will be tanker, cargo ship, container ship, passenger ship, fishing boat, research vessel, tug boat, LNG carrier, PCC, <span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Naval&nbsp;vessel or speed boat.</div><div style=\"font-family: 'MS Shell Dlg 2';\"><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>- The height of wind force is take into account in the center of lateral projected area.&nbsp;</div><div style=\"font-family: 'MS Shell Dlg 2';\"><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>- C<sub>k</sub> is not estimated according to this method. It is calculated taking into account the real force and moment of this model.</div><div><div><u>References:</u></div><div><u><br></u></div><div><span style=\"font-family: 'MS Shell Dlg 2';\">[Fujiwara] T. Fujiwara, M. Ueno, T. Nimura, \"An estimation method of wind forces and moments acting on ships\", Journal of the Society of Naval Architects of Japan - January 1998,</span><a href=\"http://dx.doi.org/10.2534/jjasnaoe1968.1998.77\" style=\"font-family: 'MS Shell Dlg 2';\">http://dx.doi.org/10.2534/jjasnaoe1968.1998.77</a></div></div><div><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div><br></div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><u>Further development:</u></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\">- Wind profile</div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><br></div></body></html>"));
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
      protected
        outer ShipSIM.Components.Environment environment;
      equation
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
        assert(J > 0, "!W0001 [Propeller1Q]: Advace ratio " + String(J) + " must be positive!", level = AssertionLevel.warning);
        assert(Z >= 2 and Z <= 7, "!W0002 [Propeller1Q]: Number of blades must be between 2 and 7", level = AssertionLevel.warning);
        assert(Ae_Ao >= 0.3 and Ae_Ao <= 1.05, "!W0003 [Propeller1Q]: Expanded area ratio must be between 0.3 and 1.05", level = AssertionLevel.warning);
        assert(P_D >= 0.5 and P_D <= 1.4, "!W0004 [Propeller1Q]: Pitch-diameter ratio must be between 0.5 and 1.4", level = AssertionLevel.warning);
        connect(frame_a, apparentSpeedXY.frame_a) annotation(
          Line(points = {{100, 2}, {64, 2}, {64, -70}, {38, -70}}));
        connect(PropellerVisualizer.frame_a, frame_a) annotation(
          Line(points = {{34, -36}, {64, -36}, {64, 2}, {100, 2}}, color = {95, 95, 95}));
        annotation(
          Icon(graphics = {Text(origin = {0, 70}, extent = {{-94, 10}, {94, -10}}, textString = "B-Series"), Polygon(origin = {23, 0}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{15, 12}, {15, 26}, {5, 48}, {-7, 60}, {-13, 58}, {-15, 52}, {-15, 34}, {-1, 12}, {-1, -12}, {-15, -34}, {-15, -52}, {-13, -58}, {-7, -60}, {5, -48}, {15, -26}, {15, 12}}, smooth = Smooth.Bezier), Polygon(origin = {26, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, points = {{16, 12}, {16, -12}, {-6, -12}, {-12, -8}, {-16, -4}, {-16, 4}, {-12, 8}, {-6, 12}, {16, 12}}), Ellipse(origin = {24, 0}, rotation = -45, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{2, 22}, {-2, -22}}), Rectangle(origin = {71, 0}, fillColor = {200, 200, 200}, fillPattern = FillPattern.CrossDiag, extent = {{29, 6}, {-29, -6}}), Line(origin = {-30, 40}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-29.9957, 19.9494}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-30, -0.101291}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-30, -19.8062}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-29.6543, -39.8569}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Rectangle(origin = {-65, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Text(origin = {-65, -68}, extent = {{-17, 14}, {17, -14}}, textString = "1Q")}),
          Diagram,
          Documentation(info = "<html><head></head><body><div>Ship propeller model (1 quadrant) based on Kt, Kq curves according to Wageningen B-Series curves.&nbsp;</div><div>This model has incorporated empirical values of the following parameters:</div><div>- Rotative relative efficiency</div><div>- Thrust deduction coefficient</div><div>- Wake factor coefficient</div><div><br></div><div>Output is the thrust force of the propeller and mechanical torque on the shaft.</div><div><br></div><div><i><b>NOTE</b></i>:</div><div>Torque does not include shaft efficiency.</div><div>Thrust output value is effective thrust to be compared directly to the resistance curve.</div><div><br></div><div><u>Limitations</u>:</div><div><br></div><div>2 &lt;= Z &lt;= 7 (number of blades)</div><div>0.30 &lt;= Ae/Ao &lt;= 1.05 (expaded area ratio)</div><div>0.5 &lt;= P/D &lt;= 1.40 (pitch-diameter ratio)</div><div>Rn &lt;= 2x10^6 (Reynolds number)</div><div><br></div><div><u>References</u>:</div><div><br></div><div><span style=\"font-family: 'MS Shell Dlg 2';\">[Oosterveld1975] M.W.C. Oosterveld and P. Van Oossanen, \"Further computer-analyzed data of the wageningen B-screw series\", International Shipbuilding Progress, Vol. 22, No. 251, July 1975</span></div><p>[Harvald1983]&nbsp;Harvald S.A., \"Resistance and Propulsion of Ships\", Wiley 1983, ISBN 0-89464-754-7</p><p>[Holtrop1984]&nbsp;Holtrop J., \"A Statistical Re-analysis of Resistance and Propulsion Data\", ISP, Vol.31</p><p>[Brix1993]<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Brix J., \"Manoeuvring technical manual\", Hamburg: Seehafen Verlag</p><p><u>Know issues</u>:</p><div>- Only works with forward speed and J&gt;0. The other three quadrants are not developed.</div><div><br></div><div><u>Further development</u>:</div><div><br></div><div>- Include corrections for Rn &gt; 2x10^6&nbsp;</div><div>- Cavitation warning</div></body></html>", revisions = "<html><head></head><body><div>Rev. 1.2 (06/05/2023): Added animation forces selector.</div><div><span style=\"font-size: 12px;\">Rev. 1.1 (10/04/2023): Full environment support. Added propeller 3D drawing.</span></div><div><span style=\"font-size: 12px;\">Rev. 1.0 (06/03/2023): Full support with sea current.</span></div><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.2 (01/03/2023): Added assert documentation.</span></div><div>Rev. 0.1 (14/02/2023): Major changes</div><div>Rev. 0.0 (11/08/2021): Initial release</div></body></html>"));
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
        if noEvent(n == 0) then
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
        if noEvent(Vr == 0) then
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
          if noEvent((n*Cq) == 0) then
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
        if noEvent(Vr == 0) then
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
        assert(Cavitation_Warning < 1, "!W0001 [Propeller4Q]: Cavitation in propeller!!", level = AssertionLevel.warning);
        annotation(
          Icon(graphics = {Text(origin = {0, 70}, extent = {{-94, 10}, {94, -10}}, textString = "B-Series"), Polygon(origin = {23, 0}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{15, 12}, {15, 26}, {5, 48}, {-7, 60}, {-13, 58}, {-15, 52}, {-15, 34}, {-1, 12}, {-1, -12}, {-15, -34}, {-15, -52}, {-13, -58}, {-7, -60}, {5, -48}, {15, -26}, {15, 12}}, smooth = Smooth.Bezier), Polygon(origin = {26, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, points = {{16, 12}, {16, -12}, {-6, -12}, {-12, -8}, {-16, -4}, {-16, 4}, {-12, 8}, {-6, 12}, {16, 12}}), Ellipse(origin = {24, 0}, rotation = -45, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{2, 22}, {-2, -22}}), Rectangle(origin = {71, 0}, fillColor = {200, 200, 200}, fillPattern = FillPattern.CrossDiag, extent = {{29, 6}, {-29, -6}}), Line(origin = {-30, 40}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-29.9957, 19.9494}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-30, -0.101291}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-30, -19.8062}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-29.6543, -39.8569}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Rectangle(origin = {-65, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Text(origin = {-65, -68}, extent = {{-17, 14}, {17, -14}}, textString = "4Q")}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
          Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})),
          Documentation(info = "<html><head></head><body><div>Ship propeller model (4 quadrant) based on Ct, Cq curves according to Wageningen B-Series curves.&nbsp;</div><div>This model has incorporated empirical values of the following parameters:</div><div>- Rotative relative efficiency</div><div>- Thrust deduction coefficient</div><div>- Wake factor coefficient</div><div><br></div><div>Output is the thrust force of the propeller and mechanical torque on the shaft.</div><div><br></div><div><i><b>NOTE</b></i>:</div><div>Torque does not include shaft efficiency.</div><div>Thrust output value is effective thrust to be compared directly to the resistance curve.</div><div><br></div><div><u>Limitations</u>:</div><div><br></div><div>Propeller-rudder interaction only implemented in first quadrant (normal propeller operation).</div><div><br></div><div><u>References</u>:</div><div><br></div><div><font face=\"MS Shell Dlg 2\"><i>See Propeller1Q and POD4Q models.</i></font></div><div><font face=\"MS Shell Dlg 2\"><i><br></i></font></div><div><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[Roddy]</td><td>Robert F. Roddy, David E. Hess, Will Faller, \"Neural network predictions of the 4-quadrant Wageningen propeller series\", David Taylor Model Basin - April 2006,&nbsp;<a href=\"https://apps.dtic.mil/sti/pdfs/ADA455497.pdf\">NSWCCD-50-TR-2006/004</a><br><br></td></tr></tbody></table></div><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[Burrill]</td><td>L.C. Burrill, \"The Phenomenon of Cavitation\", Int. Shipbuilding Prog., 1955, Vol.2, No.15</td></tr></tbody></table><p><u>Know issues</u>:</p><div><br></div><div><u>Further development</u>:</div><div><br></div><div>- Propeller rudder interaction on other quadrants</div><div>- Oblique flow forces calculation</div></body></html>", revisions = "<html><head></head><body><div>Rev. 0.2 (06/05/2023): Added animation forces selector.</div><div>Rev. 0.1 (23/04/2023): Cavitation warning and implementation of propeller-rudder interact. on 1st Quadrant</div><div>Rev. 0.0 (22/04/2023): Initial release</div></body></html>"));
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
        if noEvent(n == 0) then
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
        if noEvent(Vr == 0) then
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
          if noEvent((n*Cq) == 0) then
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
        if noEvent(Vr == 0) then
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
        assert(Cavitation_Warning < 1, "!W0001 [Propeller4Q]: Cavitation in propeller!!", level = AssertionLevel.warning);
        annotation(
          Icon(graphics = {Text(origin = {4, -76}, extent = {{-94, 10}, {94, -10}}, textString = "B-Series"), Polygon(origin = {-5, 0}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{15, 12}, {15, 26}, {5, 48}, {-7, 60}, {-13, 58}, {-15, 52}, {-15, 34}, {-1, 12}, {-1, -12}, {-15, -34}, {-15, -52}, {-13, -58}, {-7, -60}, {5, -48}, {15, -26}, {15, 12}}, smooth = Smooth.Bezier), Polygon(origin = {-2, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, points = {{16, 12}, {16, -12}, {-6, -12}, {-12, -8}, {-16, -4}, {-16, 4}, {-12, 8}, {-6, 12}, {16, 12}}), Ellipse(origin = {-4, 0}, rotation = -45, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{2, 22}, {-2, -22}}), Rectangle(origin = {53, 0}, fillColor = {200, 200, 200}, fillPattern = FillPattern.CrossDiag, borderPattern = BorderPattern.Engraved, extent = {{33, 22}, {-33, -22}}, radius = 10), Line(origin = {-50.8495, 40}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-50.8452, 19.9494}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-50.8495, -0.101291}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-50.8495, -19.8062}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-50.5038, -39.8569}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Rectangle(origin = {-65, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Text(origin = {-65, -68}, extent = {{-17, 14}, {17, -14}}, textString = "4Q"), Rectangle(origin = {56, 61}, fillColor = {200, 200, 200}, fillPattern = FillPattern.CrossDiag, extent = {{10, 39}, {-10, -39}}), Line(origin = {-42, 93.03}, points = {{-58, 0}, {48, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 14), Line(origin = {-33.74, 75.06}, points = {{-58, 0}, {48, 0}}, color = {200, 200, 200}, arrow = {Arrow.Filled, Arrow.None}, arrowSize = 14)}),
          Diagram,
          Documentation(info = "<html><head></head><body><div>This POD model takes into account the use of a set of 14 Wageningen B-Series propellers modeled with four quadrant Ct and Cq coefficients. These propeller model is selected by means of a combo box.</div><div>This model only uses the flow perpendicular to the propeller disc to determine Va.</div><div><br></div><div><u>Limitations</u>:</div><div><br></div><div>There is no implemented:</div><div>- Wake fraction, thrust deduction and rotative relative factors (with empirical formulae)</div><div>- Forces due to flow transversal to the propeller</div><div>- POD blind angles due to ship hull interaction</div><div><br></div><div><u>References</u>:</div><div><br></div><div><i>See Propeller1Q for other references</i></div><div><br></div><div><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[Roddy]</td><td>Robert F. Roddy, David E. Hess, Will Faller, \"Neural network predictions of the 4-quadrant Wageningen propeller series\", David Taylor Model Basin - April 2006,&nbsp;<a href=\"https://apps.dtic.mil/sti/pdfs/ADA455497.pdf\">NSWCCD-50-TR-2006/004</a></td></tr></tbody></table></div><div><br></div><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[Burrill]</td><td>L.C. Burrill, \"The Phenomenon of Cavitation\", Int. Shipbuilding Prog., 1955, Vol.2, No.15</td></tr></tbody></table><p><u>Know issues</u>:</p><div><br></div><div><br></div><div><u>Further development</u>:</div><div><br></div><div>- Implement POD blind angles</div><div>- Implement Wake fraction, thrust deduction and rotative relative factors (with empirical formulae)</div><div>- Oblique flow forces calculation</div><div><br></div></body></html>", revisions = "<html><head></head><body><div><font face=\"MS Shell Dlg 2\">Rev. 0.2 (06/05/2023): Added animation forces selector.</font></div><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.1 (23/04/2023): Cavitation warning</span></div><div>Rev. 0.0 (22/04/2023): Initial release</div></body></html>"));
      end POD4Q;

      model Rudder "Rudder model"
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
        parameter Real Surf(unit = "m2") = C*s "Proyected surface of rudder";
        parameter Real Asp(unit = "") = Surf/s^2 "Aspect Ratio of the rudder";
        //intermediate variables
        Real Beta_inter;
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
        if noEvent(WaterSpeed > 0) then
//Determine attack angle
          Beta_inter = (Water_Speed_XY[1]*(-Modelica.Math.cos(Alpha)) + Water_Speed_XY[2]*(-Modelica.Math.sin(Alpha)))/WaterSpeed;
// Avoid errors reaching +-1
          if Beta_inter <= (-0.9999999) then
            Beta = Modelica.Math.acos(-1);
          elseif Beta_inter >= 0.9999999 then
            Beta = Modelica.Math.acos(1);
          else
            Beta = Modelica.Math.acos(Beta_inter);
          end if;
          if Water_Speed_XY[1]*(-Modelica.Math.sin(Alpha)) - Water_Speed_XY[2]*(-Modelica.Math.cos(Alpha)) >= 0 then
            Sign = -1;
          else
            Sign = 1;
          end if;
//Determine Cl, Cd, y Cm
          (Cl, Cd, Cm) = ShipSIM.Functions.NACA0018(Beta, Re, Asp);
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
          Cd = 0;
          Cl = 0;
          Cm = 0;
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
          Documentation(revisions = "<html><head></head><body><div>Rev. 1.2 (06/05/2023): Added animation forces selector.</div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><span style=\"font-family: -webkit-standard;\">Rev. 1.1 (10/04/2023): Full environment support.</span></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><span style=\"font-family: -webkit-standard;\">Rev. 1.0 (06/03/2023): Full support with sea current.</span></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><span style=\"font-family: -webkit-standard;\">Rev. 0.2 (24/02/2023): Rudder representation fixed.</span></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><span style=\"font-family: -webkit-standard;\">Rev. 0.1 (26/01/2023): Connection with propeller speed and get speed from frame.</span></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><span style=\"font-family: -webkit-standard;\">Rev. 0.0 (26/09/2022): Released under CC-BY by Antonio Corts de la Peña, MSc Thesis&nbsp;</span><span style=\"font-family: -webkit-standard;\">\"Gemelo digital de timón y servo usando Modelica\", 2022</span></div></body></html>", info = "<html><head></head><body><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">Ship rudder model with the following connections:</span></p><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">- frame_a: connect to the position of the rudder servo</span></p><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">- Rudder_Order: Desired angle of the rudder (+ stbd)</span></p><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">- Rudder_position: Current angle of the rudder</span></p><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">- Propeller_speed: connect with propeller flow speed output</span></p><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">- Propeller_flow_diameter: connect with propeller flow diameter output</span></p><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div class=\"htmlDoc\" style=\"font-size: 12px;\"><div><br></div><div><i><b>NOTE</b></i>:</div><div>Water speed is obtained from rudder center of forces using apparent speed and X-direction is corrected by the propeller flow.</div><div><br></div><div><u>Limitations:</u></div><div>Rudder weight and inertia is not considered.</div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><u><br></u></div><div style=\"font-family: -webkit-standard;\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[Acorts]</td><td>Antonio Corts, \"Gemelo digital de timón y servo usando Modelica\", MSc Thesis 2022</td></tr></tbody></table></div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div><br></div></div><div class=\"htmlDoc\" style=\"font-size: 12px;\"><div><u>Further development:</u></div><div>Correct rudder forces due to open ends of the profile.</div><div><br></div><div><div><u>Copyright:</u></div><div><span style=\"font-family: -webkit-standard;\"><br></span></div><div><span style=\"font-family: -webkit-standard;\">Rev. 0.0: Released under CC-BY by Antonio Corts de la Peña, MSc Thesis&nbsp;</span><span style=\"font-family: -webkit-standard;\">\"Gemelo digital de timón y servo usando Modelica\", 2022</span></div></div><div><span style=\"font-family: -webkit-standard;\"><br></span></div><div><span style=\"font-family: -webkit-standard;\">Following revisions released with the same ShipSIM library license.</span></div></div></div></body></html>"));
      end Rudder;
      annotation(
        Icon(graphics = {Rectangle(origin = {76, 0}, fillColor = {200, 200, 200}, fillPattern = FillPattern.CrossDiag, extent = {{12, 6}, {-12, -6}}), Polygon(origin = {45, 0}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{15, 12}, {15, 26}, {5, 48}, {-7, 60}, {-13, 58}, {-15, 52}, {-15, 34}, {-1, 12}, {-1, -12}, {-15, -34}, {-15, -52}, {-13, -58}, {-7, -60}, {5, -48}, {15, -26}, {15, 12}}, smooth = Smooth.Bezier), Polygon(origin = {48, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, points = {{16, 12}, {16, -12}, {-6, -12}, {-12, -8}, {-16, -4}, {-16, 4}, {-12, 8}, {-6, 12}, {16, 12}}), Polygon(origin = {2, 40}, points = {{10, -38}, {-10, -38}, {-10, -26}, {0, -26}, {0, 52}, {10, 52}, {10, -38}}), Polygon(origin = {-31, -8}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{43, 10}, {37, -70}, {-23, -70}, {-43, 70}, {33, 70}, {33, 22}, {23, 22}, {23, 10}, {43, 10}})}));
    end Propulsion;

    package AlternativePropulsion "Components relative to alternative ship propulsion"
      model WingSail "WingSail model"
        parameter Modelica.SIunits.Distance C = 7 "Chord [m]";
        parameter Modelica.SIunits.Distance s = 20 "spam [m]";
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
      protected
        outer ShipSIM.Components.Environment environment;
        parameter Modelica.SIunits.Area Surf = C*s "Proyected surface of WingSail";
      equation
// Connect apparent speed (wind)
        apparentSpeedXY.WorldSpeed = environment.WindVector;
// Calculate Re and connect attack angle
        AttackAngle = apparentSpeedXY.AttackAngleSigned;
        Sign = sign(apparentSpeedXY.AttackAngleSigned);
        Cl_Table.u1 = abs(apparentSpeedXY.AttackAngleSigned)*360/(2*Modelica.Constants.pi);
        Cd_Table.u1 = abs(apparentSpeedXY.AttackAngleSigned)*360/(2*Modelica.Constants.pi);
        Cm_Table.u1 = abs(apparentSpeedXY.AttackAngleSigned)*360/(2*Modelica.Constants.pi);
        Re = apparentSpeedXY.ApparentSpeed*C/environment.AirKViscosity;
        Cl_Table.u2 = Re;
        Cd_Table.u2 = Re;
        Cm_Table.u2 = Re;
//Calculate forces and moments
        Drag = Cd_Table.y*0.5*environment.AirDensity*Surf*apparentSpeedXY.ApparentSpeed^2;
        Lift = Cl_Table.y*0.5*environment.AirDensity*Surf*apparentSpeedXY.ApparentSpeed^2;
        Moment = Cm_Table.y*0.5*environment.AirDensity*Surf*C*apparentSpeedXY.ApparentSpeed^2;
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
          Icon(graphics = {Polygon(fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{30, -80}, {-30, -80}, {-30, 88}, {-10, 88}, {30, 88}, {30, -80}}), Rectangle(origin = {0, -85}, extent = {{-10, 5}, {10, -5}}), Line(origin = {62.0283, -59.9355}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {61.3685, 19.9921}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {61.6724, 40.05}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {61.6441, -0.142118}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {61.5786, -20.1318}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {61.6724, 59.804}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {61.7244, -40.1816}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {-26.1775, -80.107}, points = {{-58, 0}, {-8, 0}}, color = {200, 200, 200}, arrow = {Arrow.Filled, Arrow.None}, arrowSize = 14), Line(origin = {-34.5718, -59.8956}, points = {{-58, 0}, {2, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 14)}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
          Diagram,
          Documentation(info = "<html><head></head><body><div><u>Working Principles</u>:</div><div>Wingsail model with the following functions:</div><div><br></div><div>- The sail is oriented by means of a input at constant speed</div><div>- The sail is to be used with a record of the Cl, Cd and Cm profile coefficients.</div><div>- Indication of the current attack angle is provided as output</div><div><br></div><div>This sail receives the apparent wind on X and Y coordinates and calculates the force applied to the wingsail that is translated to the ship using frame_a connector.</div><div><br></div><div><u>Limitations</u>:</div><div>- There is no modelled the inertia of the wingsail. This inertia is to be included into ship own inertia.</div><div>- Only takes into account the X and Y components of the wind.</div><div>- The sail can be stackable with other components, but there is not modelled the efect of other sails or superstructures on the wind flow.</div><div><br></div><div><u>References</u>:</div><div>For wing coefficients:</div><div><br></div><div><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[SAND8O-2114]</td><td>Robert E. Sheldahl, Paul C. Klimas, \"Aerodynamic Characteristics of Seven Symmetrical Airfoil Sections Through 180-Degree Angle of Attack for Use in Aerodynamic Analysis of Vertical Axis Wind Turbines\", Sandia National Laboratories, SAND8O-2144, March 1981,&nbsp;<a href=\"https://www.osti.gov/servlets/purl/6548367\">https://doi.org/10.2172/6548367</a></td></tr></tbody></table></div><p><u>Know issues</u>:</p><div><u>Further development</u>:</div><div>- Include wind speed profile Vs height.</div><div>- Include a polar wind reduction for use with other sails or superstructures.</div></body></html>", revisions = "<html><head></head><body><div>Rev. 0.1 (06/05/2023): Added animation forces selector.</div><span style=\"font-size: 12px;\">Rev. 0.0 (04/05/2023): Initial release</span></body></html>"));
      end WingSail;
      annotation(
        Icon(graphics = {Polygon(origin = {10, 6}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{30, -70}, {-30, -70}, {-30, 0}, {-10, 70}, {30, 70}, {30, -70}}), Rectangle(origin = {55, -2}, extent = {{-15, 2}, {15, -2}}), Rectangle(origin = {-43, -2}, extent = {{-23, 2}, {23, -2}}), Rectangle(origin = {-74, -2}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-8, 22}, {8, -22}}), Rectangle(origin = {10, -69}, extent = {{-10, 5}, {10, -5}})}));
    end AlternativePropulsion;

    package Machines "Components relative to ship main machinery"
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
          Icon(coordinateSystem(extent = {{-150, -100}, {150, 100}}), graphics = {Rectangle(origin = {0, -10}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-120, 70}, {120, -70}}), Rectangle(origin = {-136, -40}, fillColor = {80, 80, 80}, fillPattern = FillPattern.Solid, extent = {{-4, 30}, {4, -30}}), Rectangle(origin = {-126, -40}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-6, 6}, {6, -6}}), Rectangle(origin = {0, -40}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-120, 40}, {120, -40}}), Line(origin = {-80, 30}, points = {{0, 30}, {0, -30}}), Line(origin = {-39.865, 29.6864}, points = {{0, 30}, {0, -30}}), Line(origin = {0.27004, 29.6864}, points = {{0, 30}, {0, -30}}), Line(origin = {40.0915, 30}, points = {{0, 30}, {0, -30}}), Line(origin = {80.2265, 30}, points = {{0, 30}, {0, -30}}), Ellipse(origin = {-120, 60}, fillColor = {80, 80, 80}, fillPattern = FillPattern.Solid, extent = {{-20, 20}, {20, -20}}), Line(points = {{100, 100}, {-100, -100}}, color = {255, 0, 0}, thickness = 1.25)}),
          Diagram(coordinateSystem(extent = {{-150, -100}, {150, 100}})),
          Documentation(info = "<html><head></head><body><div><br></div><div><div class=\"htmlDoc\"><div style=\"font-family: 'MS Shell Dlg 2';\"><u>Limitations:</u></div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><div><div><u>References:</u></div><div><br></div></div><div><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div><br></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><u>Further development:</u></div></div></body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0 (xx/xx/2023): Initial release</span></body></html>"));
      end SimpleDieselEngine;
      annotation(
        Icon(graphics = {Rectangle(origin = {-1, 51}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-25, 17}, {25, -17}}), Ellipse(origin = {0, 40}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-4, 4}, {4, -4}}), Line(origin = {-0.880158, 64.9556}, points = {{-25, 0}, {25, 0}, {25, 0}}), Line(origin = {-0.880158, 61.4272}, points = {{-25, 0}, {25, 0}, {25, 0}}), Rectangle(origin = {0, 3}, extent = {{-8, 31}, {8, -31}}), Ellipse(origin = {0, -46}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-26, 26}, {26, -26}}), Ellipse(origin = {0, -46}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-14, 14}, {14, -14}})}));
    end Machines;

    package Electrical "Components relative to ship electrical equipment"
      model OnOffConsumer "Consumer using an on-off switch"
        extends ShipSIM.Components.Electrical.Internal.RandomStart;
        parameter Real StartTable[:, 2] = {{0, 0}, {1, 0.4}, {2, 0.8}, {3, 1}, {4, 1.5}, {5, 1}} "Table Time Vs Power for starting period" annotation(
          Dialog(tab = "Factors", group = "Power Factors"));
        parameter Real CycleTable[:, 2] = {{0, 1}, {1, 0.9}, {2, 1.1}, {3, 0.9}, {4, 1.1}, {5, 0.9}, {6, 1.1}, {7, 0.9}, {8, 1}} "Table Time Vs Power for operating period" annotation(
          Dialog(tab = "Factors", group = "Power Factors"));
        parameter Real NominalPower = 1000 "Nominal Power in kW (faceplate power)" annotation(
          Dialog(tab = "Factors", group = "Power Factors"));
        parameter Real Kr = 0.85 "Percentage of nominal power used (0-1]" annotation(
          Dialog(tab = "Factors", group = "Power Factors"));
        Real SimultaneousFactor "Percentage of time that the consumer is working";
        Real AveragePower "Average power";
        Modelica.Blocks.Interfaces.RealOutput y annotation(
          Placement(visible = true, transformation(origin = {102, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {102, 2.22045e-16}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
        Modelica.Blocks.Continuous.Integrator integrator1 annotation(
          Placement(visible = true, transformation(origin = {62, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      protected
        Modelica.Blocks.Tables.CombiTable1D StartInterpolation(extrapolation = Modelica.Blocks.Types.Extrapolation.HoldLastPoint, table = StartTable) annotation(
          Placement(visible = true, transformation(origin = {-58, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Tables.CombiTable1D CycleInterpolation(extrapolation = Modelica.Blocks.Types.Extrapolation.HoldLastPoint, table = CycleTable) annotation(
          Placement(visible = true, transformation(origin = {-58, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Logical.Timer timer annotation(
          Placement(visible = true, transformation(origin = {-58, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Continuous.Integrator integrator annotation(
          Placement(visible = true, transformation(origin = {-20, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        parameter Real Tstart = StartTable[size(StartTable, 1), 1];
        parameter Real Tcycle = CycleTable[size(CycleTable, 1), 1];
        Real Tinternal(start = 0) "Cycle time";
      equation
        Tinternal = if (timer.y < Tstart) then timer.y else Tcycle*(((timer.y - Tstart)/Tcycle) - integer(floor((timer.y - Tstart)/Tcycle)));
        StartInterpolation.u[1] = Tinternal;
        CycleInterpolation.u[1] = Tinternal;
        y = (if (timer.y < Tstart) then StartInterpolation.y[1] else CycleInterpolation.y[1])*NominalPower*Kr;
        integrator.u = if Work then 1 else 0;
        SimultaneousFactor = if time > 0 then integrator.y/time else 0;
        AveragePower = if time > 0 then integrator1.y/time else 0;
        timer.u = Work;
        connect(y, integrator1.u) annotation(
          Line(points = {{102, 0}, {36, 0}, {36, -24}, {50, -24}}, color = {0, 0, 127}));
        annotation(
          uses(Modelica(version = "3.2.3")),
          Icon(graphics = {Rectangle(origin = {-14, 12}, rotation = 35, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, extent = {{-4, 23}, {4, -23}}), Ellipse(origin = {-6, 0}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-11, 12}, {11, -12}}), Rectangle(rotation = 90, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-39, 6}, {39, -6}})}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
          Documentation(info = "<html><head></head><body><div><u>Working Principles</u>:</div><div><br></div><div>This component will provide an output while the cycle is in ON.</div><div><br></div><div>This component provides a real output using \"On\" \"Off\" random cycles with the following characteristics:</div><div><br></div><div>- <b>NominalPower</b>: Nominal output signal, to be multiplied by the StartTable/CycleTable and Kr</div><div>- <b>StartTable</b>: Non-dimensional table of the signal at start period. Only used when trggers from OFF to ON.</div><div>- <b>CycleTable</b>: Non-dimensional table of the signal at cycle period. Used and repeated after the end of StartTable.</div><div>- <b>Kr</b>: Percentage of the NominalPower used for the signal (gain)</div><div><br></div><div>For the random ON/OFF cycles, the following parameters apply:</div><div><br></div><div>- <b>Seed</b>: Seed to feed the random nuber generator. If two components have the same parameters and also the same seed (not being zero), then produce the same result</div><div>- <b>Kt</b> and <b>Kt_dev</b>: Percentage of \"On\" time and their typical deviation</div><div>- <b>StartsHour</b> and <b>StartsHour_dev</b>: Number of \"On\" starts on an hour with their typical deviation.</div><div><br></div><div>Internally we can find the following variables:</div><div><br></div><div>- <b>SimultaneousFactor</b>: Percentage of time in \"ON\" status.</div><div>- <b>AveragePower</b>: Average value of the output signal.&nbsp;</div><div><br></div><div><u>Limitations</u>:</div><div>Since \"On\" time cannot be negative, the output is truncated to +-3*typical deviation, and the minimum cannot be below zero.&nbsp;</div><div>On this cases, if we put a mean value of Kt=3 with a Kt_dev=2, then the distribution is truncated to (0,9], producing a mean value that does not match with 3.</div><div><br></div><div><u>References</u>:</div><div><br></div><div><u>Know issues</u>:</div><div><u><br></u></div><div><u>Further development</u>:</div></body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0 (14/05/2023): Initial release</span></body></html>"));
      end OnOffConsumer;

      model TriggerConsumer "Consumer using a trigger switch"
        extends ShipSIM.Components.Electrical.Internal.RandomStart;
        parameter Real StartTable[:, 2] = {{0, 0}, {1, 0.4}, {2, 0.8}, {3, 1}, {4, 1.5}, {5, 1}} "Table Time Vs Power for starting period" annotation(
          Dialog(tab = "Factors", group = "Power Factors"));
        parameter Real CycleTable[:, 2] = {{0, 1}, {1, 0.9}, {2, 1.1}, {3, 0.9}, {4, 1.1}, {5, 0.9}, {6, 1.1}, {7, 0.9}, {8, 0}} "Table Time Vs Power for operating period, shall end in zero" annotation(
          Dialog(tab = "Factors", group = "Power Factors"));
        parameter Real NominalPower = 1000 "Nominal Power in kW (faceplate power)" annotation(
          Dialog(tab = "Factors", group = "Power Factors"));
        parameter Real Kr = 0.85 "Percentage of nominal power used (0-1]" annotation(
          Dialog(tab = "Factors", group = "Power Factors"));
        Real SimultaneousFactor "Percentage of time that the consumer is working";
        Real AveragePower "Average power";
        Boolean Working;
        Modelica.Blocks.Interfaces.RealOutput y annotation(
          Placement(visible = true, transformation(origin = {102, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {102, 2.22045e-16}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
        Modelica.Blocks.Continuous.Integrator integrator1 annotation(
          Placement(visible = true, transformation(origin = {62, -26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      protected
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
        Modelica.Blocks.Continuous.Integrator integrator annotation(
          Placement(visible = true, transformation(origin = {-20, -52}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        parameter Real Tstart = StartTable[size(StartTable, 1), 1];
        parameter Real Tcycle = CycleTable[size(CycleTable, 1), 1];
      equation
        StartInterpolation.u[1] = add.y;
        CycleInterpolation.u[1] = add.y - Tstart;
        y = (if (add.y < Tstart) then StartInterpolation.y[1] else CycleInterpolation.y[1])*NominalPower*Kr;
        less.u2 = Tstart + Tcycle;
        Working = less.y;
        integrator.u = if Working then 1 else 0;
        SimultaneousFactor = if time > 0 then integrator.y/time else 0;
        AveragePower = if time > 0 then integrator1.y/time else 0;
        logicalSwitch.u3 = Work;
        connect(logicalSwitch.y, triggeredSampler.trigger) annotation(
          Line(points = {{-38, 61}, {-38, 62}, {-22, 62}, {-22, 65}}, color = {255, 0, 255}));
        connect(add.y, less.u1) annotation(
          Line(points = {{23, 84}, {28, 84}, {28, 56}, {23, 56}}, color = {0, 0, 127}));
        connect(timesignal.y, add.u1) annotation(
          Line(points = {{-55, 78}, {-47, 78}, {-47, 96}, {-1, 96}, {-1, 90}}, color = {0, 0, 127}));
        connect(less.y, logicalSwitch.u2) annotation(
          Line(points = {{1, 56}, {-5, 56}, {-5, 46}, {-19, 46}, {-19, 38}, {-38, 38}}, color = {255, 0, 255}));
        connect(logicalSwitch.u1, booleanExpression.y) annotation(
          Line(points = {{-46, 38}, {-46, 16}, {-67, 16}}, color = {255, 0, 255}));
        connect(triggeredSampler.y, add.u2) annotation(
          Line(points = {{-11, 78}, {-1, 78}}, color = {0, 0, 127}));
        connect(timesignal.y, triggeredSampler.u) annotation(
          Line(points = {{-55, 78}, {-35, 78}}, color = {0, 0, 127}));
        connect(y, integrator1.u) annotation(
          Line(points = {{102, 0}, {40, 0}, {40, -26}, {50, -26}}, color = {0, 0, 127}));
        annotation(
          uses(Modelica(version = "3.2.3")),
          Icon(graphics = {Line(origin = {8, 0}, points = {{0, 0}}), Rectangle(origin = {8, 18}, fillColor = {200, 200, 200}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-15, 8}, {15, -8}}), Ellipse(origin = {8, 26}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-15, 8}, {15, -8}}), Ellipse(origin = {8, 10}, fillColor = {200, 200, 200}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-15, 8}, {15, -8}}, endAngle = 180, closure = EllipseClosure.Chord), Polygon(origin = {8, 10}, points = {{-24, 30}, {54, 30}, {28, -24}, {-52, -24}, {-46, -12}, {-24, 30}}), Rectangle(origin = {-4, -19}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-40, 5}, {40, -5}}), Polygon(origin = {52, 16}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{10, 24}, {10, 14}, {-16, -40}, {-16, -30}, {-16, -30}, {10, 24}})}),
          Documentation(info = "<html><head></head><body><div><u>Working Principles</u>:</div><div><br></div><div>This component will provide a complete StartTable+CycleTable sequence when a change from OFF to ON occurs (trigger event). After trigger, the complete cycle is executed, irrelevant to the ON/OFF internal signals produced.</div><div>When the cycle finishes, a next cycle will trigger when a OFF-&gt;ON event raises. &nbsp;</div><div><br></div><div>This component provides a real output using \"On\" \"Off\" random cycles with the following characteristics:</div><div><br></div><div>-&nbsp;<b>NominalPower</b>: Nominal output signal, to be multiplied by the StartTable/CycleTable and Kr</div><div>-&nbsp;<b>StartTable</b>: Non-dimensional table of the signal at start period. Only used when trggers from OFF to ON.</div><div>-&nbsp;<b>CycleTable</b>: Non-dimensional table of the signal at cycle period. Used and repeated after the end of StartTable.</div><div>-&nbsp;<b>Kr</b>: Percentage of the NominalPower used for the signal (gain)</div><div><br></div><div>For the random ON/OFF cycles, the following parameters apply:</div><div><br></div><div>-&nbsp;<b>Seed</b>: Seed to feed the random nuber generator. If two components have the same parameters and also the same seed (not being zero), then produce the same result</div><div>-&nbsp;<b>Kt</b>&nbsp;and&nbsp;<b>Kt_dev</b>: Percentage of \"On\" time and their typical deviation</div><div>-&nbsp;<b>StartsHour</b>&nbsp;and&nbsp;<b>StartsHour_dev</b>: Number of \"On\" starts on an hour with their typical deviation.</div><div><br></div><div>Internally we can find the following variables:</div><div><br></div><div>-&nbsp;<b>SimultaneousFactor</b>: Percentage of time in \"ON\" status.</div><div>-&nbsp;<b>AveragePower</b>: Average value of the output signal.&nbsp;</div><div><br></div><div><u>Limitations</u>:</div><div>Since \"On\" time cannot be negative, the output is truncated to +-3*typical deviation, and the minimum cannot be below zero.&nbsp;</div><div>On this cases, if we put a mean value of Kt=3 with a Kt_dev=2, then the distribution is truncated to (0,9], producing a mean value that does not match with 3.</div><div><br></div><div><u>References</u>:</div><div><br></div><div><u>Know issues</u>:</div><div><u><br></u></div><div><u>Further development</u>:</div></body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0 (14/05/2023): Initial release</span></body></html>"));
      end TriggerConsumer;

      model StartGenerator
        extends ShipSIM.Components.Electrical.Internal.RandomStart;
        Modelica.Blocks.Interfaces.BooleanOutput y annotation(
          Placement(visible = true, transformation(origin = {106, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        y = Work;
        annotation(
          Icon(graphics = {Rectangle(fillColor = {210, 210, 210}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, extent = {{-100, 100}, {100, -100}}), Polygon(origin = {0, -6}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid, points = {{-80, 88}, {-88, 66}, {-72, 66}, {-80, 88}}), Polygon(origin = {-6, -2}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid, points = {{90, -70}, {68, -62}, {68, -78}, {90, -70}}), Line(origin = {0.754467, -3.01771}, points = {{-80, -70}, {-40, -70}, {-40, 44}, {0, 44}, {0, -70}, {40, -70}, {40, 44}, {79, 44}}), Line(origin = {3.77247, -3.01771}, points = {{-90, -70}, {72, -70}}, color = {255, 0, 255}), Line(origin = {0.754467, 0.754427}, points = {{-80, 66}, {-80, -82}}, color = {255, 0, 255})}),
          Documentation(info = "<html><head></head><body><div><u>Working Principles</u>:</div><div>This component provides a random start and stop cycles using the following parameters:</div><div>- <b>Seed</b>: Seed to feed the random nuber generator. If two components have the same parameters and also the same seed (not being zero), then produce the same result</div><div>- <b>Kt</b> and <b>Kt_dev</b>: Percentage of \"On\" time and their typical deviation</div><div>- <b>StartsHour</b> and <b>StartsHour_dev</b>: Number of \"On\" starts on an hour with their typical deviation.</div><div><br></div><div>The output is \"true\" (ON) or \"false\" (OFF)</div><div><br></div><div><u>Limitations</u>:</div><div>Since \"On\" time cannot be negative, the output is truncated to +-3*typical deviation, and the minimum cannot be below zero.&nbsp;</div><div>On this cases, if we put a mean value of Kt=3 with a Kt_dev=2, then the distribution is truncated to (0,9], producing a mean value that does not match with 3.</div><div><br></div><div><u>References</u>:</div><div><br></div><div><u>Know issues</u>:</div><div><u><br></u></div><div><u>Further development</u>:</div></body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0 (14/05/2023): Initial release</span></body></html>"));
      end StartGenerator;

      package Internal
        extends Modelica.Icons.InternalPackage;

        model RandomStart
          parameter Integer Seed = 0 "Random seed, Zero for automatic seed" annotation(
            Dialog(tab = "Factors", group = "Start Factors"));
          parameter Real Kt = 0.5 "Percentage of running time (0-1]" annotation(
            Dialog(tab = "Factors", group = "Start Factors"));
          parameter Real Kt_dev = 0.1 "Tipical deviation of Kt" annotation(
            Dialog(tab = "Factors", group = "Start Factors"));
          parameter Real StartsHour = 10 "Number of starts in a hour, greater than zero" annotation(
            Dialog(tab = "Factors", group = "Start Factors"));
          parameter Real StartsHour_dev = 2 "Tipical deviation of number of starts on a hour" annotation(
            Dialog(tab = "Factors", group = "Start Factors"));
          discrete Boolean Work;
          final parameter Real MeanWorkingTime = Kt*3600/StartsHour;
          final parameter Real MeanStopTime = (1 - Kt)*3600/StartsHour;
        protected
          final parameter Real SamplingRate = max(1, floor(min(((Kt - 3*Kt_dev)*3600/(StartsHour + 3*StartsHour_dev)), ((1 - (Kt - 3*Kt_dev))*3600/(StartsHour + 3*StartsHour_dev)))*100)/100) "Set the samplig rate to a 1/100th seconds";
          Modelica.Blocks.Noise.TruncatedNormalNoise NoiseKt(enableNoise = true, fixedLocalSeed = Seed, samplePeriod = SamplingRate, sigma = max(0.0001, (NoiseKt.y_max - NoiseKt.y_min)/6), useAutomaticLocalSeed = if (Seed == 0) then true else false, useGlobalSeed = false, y_max = min(0.9999, Kt + 3*Kt_dev), y_min = max(0.0001, Kt - 3*Kt_dev)) annotation(
            Placement(visible = true, transformation(origin = {-10, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
          Modelica.Blocks.Noise.TruncatedNormalNoise NoiseStartsHour(enableNoise = true, fixedLocalSeed = Seed, samplePeriod = SamplingRate, sigma = max(0.0001, (NoiseStartsHour.y_max - NoiseStartsHour.y_min)/6), useAutomaticLocalSeed = if (Seed == 0) then true else false, useGlobalSeed = false, y_max = StartsHour + 3*StartsHour_dev, y_min = max(0.0001, StartsHour - 3*StartsHour_dev)) annotation(
            Placement(visible = true, transformation(origin = {-10, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
          discrete Real NextStep;
        initial equation
// Provides randomess at initial condition
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
            Documentation(info = "<html><head></head><body><div><u>Working Principles</u>:</div><div>This component provides a random start and stop cycles using the following parameters:</div><div>- Seed: Seed to feed the random nuber generator. If two components have the same parameters and also the same seed (not being zero), then produce the same result</div><div>- Kt and Kt_dev: Percentage of \"On\" time and their typical deviation</div><div>- StartsHour and StartsHour_dev: Number of \"On\" starts on an hour with their typical deviation.</div><div><br></div><div><u>Limitations</u>:</div><div>Since \"On\" time cannot be negative, the output is truncated to +-3*typical deviation, and the minimum cannot be below zero.&nbsp;</div><div>On this cases, if we put a mean value of Kt=3 with a Kt_dev=2, then the distribution is truncated to (0,9], producing a mean value that does not match with 3.</div><div><br></div><div><u>References</u>:</div><div><br></div><div><u>Know issues</u>:</div><div><u><br></u></div><div><u>Further development</u>:</div><div><br></div></body></html>", revisions = "<html><head></head><body><span style=\"font-size: 12px;\">Rev. 0.0 (14/05/2023): Initial release</span></body></html>"));
        end RandomStart;
      end Internal;
      annotation(
        Icon(graphics = {Line(origin = {-3, 45}, points = {{-72, -55}, {-42, -55}}), Line(origin = {9, 54}, points = {{31, -49}, {71, -49}}), Line(origin = {6.2593, 48}, points = {{53.7407, -58}, {53.7407, -93}, {-66.2593, -93}, {-66.2593, -58}}), Line(origin = {1, 50}, points = {{-61, -45}, {-61, -10}, {-26, -10}}), Rectangle(origin = {20.31, 82.86}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-45.31, -57.86}, {4.69, -27.86}}), Line(origin = {7, 50}, points = {{18, -10}, {53, -10}, {53, -45}}), Line(origin = {-2, 55}, points = {{-83, -50}, {-33, -50}}), Line(origin = {8, 48}, points = {{32, -58}, {72, -58}}), Line(origin = {-3, 45}, points = {{-72, -55}, {-42, -55}}), Line(origin = {9, 54}, points = {{31, -49}, {71, -49}})}));
    end Electrical;
    annotation(
      Icon(graphics = {Polygon(origin = {-36, 14}, rotation = -170, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-5, 45}, {-10, 10}, {-45, 5}, {-45, -5}, {-10, -10}, {-5, -45}, {5, -45}, {10, -10}, {45, -5}, {45, 5}, {10, 10}, {5, 45}, {-5, 45}}), Polygon(origin = {-36, 14}, rotation = -35, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-5, 45}, {-10, 10}, {-45, 5}, {-45, -5}, {-10, -10}, {-5, -45}, {5, -45}, {10, -10}, {45, -5}, {45, 5}, {10, 10}, {5, 45}, {-5, 45}}), Ellipse(origin = {-37, 17}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-27, 27}, {27, -27}}), Polygon(origin = {40, -22}, rotation = 10, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-5, 45}, {-10, 10}, {-45, 5}, {-45, -5}, {-10, -10}, {-5, -45}, {5, -45}, {10, -10}, {45, -5}, {45, 5}, {10, 10}, {5, 45}, {-5, 45}}), Polygon(origin = {40, -22}, rotation = 55, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-5, 45}, {-10, 10}, {-45, 5}, {-45, -5}, {-10, -10}, {-5, -45}, {5, -45}, {10, -10}, {45, -5}, {45, 5}, {10, 10}, {5, 45}, {-5, 45}}), Ellipse(origin = {39, -21}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-27, 27}, {27, -27}}), Ellipse(origin = {-36, 16}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-8, 8}, {8, -8}}), Ellipse(origin = {38, -20}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-8, 8}, {8, -8}})}));
  end Components;

  package Interfaces
    extends Modelica.Icons.InterfacesPackage;

    connector ShipDataOutput "Ship data connector Output"
      output Modelica.SIunits.Length Draft;
      output Modelica.SIunits.Mass Displacement;
      output Modelica.SIunits.Length CoG[3] "Center of Gravity";
      output Modelica.SIunits.Angle Angles[3] "Angles [Heel, Trim, Course]";
      output Modelica.SIunits.Velocity LinearSpeed[3] "Linear Speed [surge, sway, heave]";
      output Modelica.SIunits.AngularVelocity AngularSpeed[3] "Angular Speed [Roll, Pitch, Yaw]";
      annotation(
        Documentation(info = "<html><head></head><body><p>
  Data connector (surge, sway, heave, roll, pith, yaw, etc...)</p>
  </body></html>", revisions = "<html><head></head><body><div><span style=\"font-size: 12px;\">Rev. 1.0 (05/04/2023): Duplicated in Output and Input</span></div><span style=\"font-size: 12px;\">Rev. 0.0 (14/02/2023): Initial release</span></body></html>"),
        Icon(graphics = {Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, 80}, {100, -80}}), Polygon(origin = {-25, 35}, lineColor = {200, 200, 200}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-15, 10}, {-15, 30}, {-65, 0}, {-15, -30}, {-15, -10}, {65, -10}, {65, 10}, {37, 10}, {-15, 10}}), Polygon(origin = {25, -35}, rotation = 180, fillPattern = FillPattern.Solid, points = {{-15, 10}, {-15, 30}, {-65, 0}, {-15, -30}, {-15, -10}, {65, -10}, {65, 10}, {37, 10}, {-15, 10}})}, coordinateSystem(grid = {1, 1}, extent = {{-100, -80}, {100, 80}})),
        Diagram(coordinateSystem(grid = {1, 1}, extent = {{-100, -80}, {100, 80}})));
    end ShipDataOutput;

    connector ShipDataInput "Ship data connector Input"
      input Modelica.SIunits.Length Draft;
      input Modelica.SIunits.Mass Displacement;
      input Modelica.SIunits.Length CoG[3] "Center of Gravity";
      input Modelica.SIunits.Angle Angles[3] "Angles [Heel, Trim, Course]";
      input Modelica.SIunits.Velocity LinearSpeed[3] "Linear Speed [surge, sway, heave]";
      input Modelica.SIunits.AngularVelocity AngularSpeed[3] "Angular Speed [Roll, Pitch, Yaw]";
      annotation(
        Documentation(info = "<html><head></head><body><p>
  Data connector (surge, sway, heave, roll, pith, yaw, etc...)</p>
  </body></html>", revisions = "<html><head></head><body><div><span style=\"font-size: 12px;\">Rev. 1.0 (05/04/2023): Duplicated in Output and Input</span></div><span style=\"font-size: 12px;\">Rev. 0.0 (14/02/2023): Initial release</span></body></html>"),
        Icon(graphics = {Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, 80}, {100, -80}}), Polygon(origin = {-25, 35}, fillPattern = FillPattern.Solid, points = {{-15, 10}, {-15, 30}, {-65, 0}, {-15, -30}, {-15, -10}, {65, -10}, {65, 10}, {37, 10}, {-15, 10}}), Polygon(origin = {25, -35}, rotation = 180, lineColor = {200, 200, 200}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-15, 10}, {-15, 30}, {-65, 0}, {-15, -30}, {-15, -10}, {65, -10}, {65, 10}, {37, 10}, {-15, 10}})}, coordinateSystem(grid = {1, 1}, extent = {{-100, -80}, {100, 80}})),
        Diagram(coordinateSystem(grid = {1, 1}, extent = {{-100, -80}, {100, 80}})));
    end ShipDataInput;
  end Interfaces;

  package MiscSamples "Samples of several components are found here"
    extends Modelica.Icons.Package;

    model Balance
      Modelica.Blocks.Interfaces.RealOutput y annotation(
        Placement(visible = true, transformation(origin = {124, 8.88178e-16}, extent = {{-32, -32}, {32, 32}}, rotation = 0), iconTransformation(origin = {104, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    protected
      Modelica.Blocks.Math.Sum sum1(nin = 177);
      ShipSIM.Components.Electrical.OnOffConsumer C1(Seed = 1, NominalPower = 5.5, Kr = 0.85, Kt = 1, Kt_dev = 0, StartsHour = 2, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C2(Seed = 1, NominalPower = 5.5, Kr = 0.85, Kt = 1, Kt_dev = 0, StartsHour = 5, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C4(Seed = 2, NominalPower = 11, Kr = 0.8, Kt = 1, Kt_dev = 0, StartsHour = 3, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C5(Seed = 2, NominalPower = 11, Kr = 0.8, Kt = 1, Kt_dev = 0, StartsHour = 20, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C8(Seed = 3, NominalPower = 11, Kr = 0.8, Kt = 1, Kt_dev = 0, StartsHour = 9, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C9(Seed = 3, NominalPower = 11, Kr = 0.8, Kt = 1, Kt_dev = 0, StartsHour = 2, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C12(Seed = 4, NominalPower = 37, Kr = 0.8, Kt = 1, Kt_dev = 0, StartsHour = 3, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C13(Seed = 4, NominalPower = 37, Kr = 0.8, Kt = 1, Kt_dev = 0, StartsHour = 20, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C15(Seed = 5, NominalPower = 4, Kr = 0.8, Kt = 1, Kt_dev = 0, StartsHour = 8, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C16(Seed = 5, NominalPower = 4, Kr = 0.8, Kt = 1, Kt_dev = 0, StartsHour = 9, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C21(Seed = 8, NominalPower = 2.2, Kr = 0.8, Kt = 1, Kt_dev = 0, StartsHour = 20, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C23(Seed = 8, NominalPower = 4, Kr = 0.8, Kt = 1, Kt_dev = 0, StartsHour = 8, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C25(Seed = 9, NominalPower = 11, Kr = 0.8, Kt = 0.2, Kt_dev = 0.1, StartsHour = 2, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C26(Seed = 9, NominalPower = 11, Kr = 0.8, Kt = 0.2, Kt_dev = 0.1, StartsHour = 5, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C27(Seed = 10, NominalPower = 15, Kr = 0.8, Kt = 0.2, Kt_dev = 0.2, StartsHour = 10, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C28(Seed = 10, NominalPower = 15, Kr = 0.8, Kt = 0.2, Kt_dev = 0.2, StartsHour = 3, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C32(NominalPower = 6.6, Kr = 0.8, Kt = 1, Kt_dev = 0, StartsHour = 9, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C33(NominalPower = 6.6, Kr = 0.8, Kt = 1, Kt_dev = 0, StartsHour = 2, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C35(NominalPower = 6.6, Kr = 0.8, Kt = 1, Kt_dev = 0, StartsHour = 10, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C36(NominalPower = 6.6, Kr = 0.8, Kt = 1, Kt_dev = 0, StartsHour = 3, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C38(NominalPower = 15, Kr = 0.8, Kt = 0.2, Kt_dev = 0.1, StartsHour = 6, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C40(NominalPower = 4, Kr = 0.8, Kt = 0.2, Kt_dev = 0.1, StartsHour = 9, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C41(NominalPower = 9, Kr = 0.8, Kt = 0.5, Kt_dev = 0.1, StartsHour = 2, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C42(NominalPower = 1.5, Kr = 0.8, Kt = 1, Kt_dev = 0, StartsHour = 5, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C49(NominalPower = 5, Kr = 0.8, Kt = 1, Kt_dev = 0, StartsHour = 2, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C51(NominalPower = 0.1, Kr = 0.8, Kt = 0.2, Kt_dev = 0.1, StartsHour = 10, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C52(NominalPower = 0.1, Kr = 0.8, Kt = 0.2, Kt_dev = 0.1, StartsHour = 3, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C53(NominalPower = 0.1, Kr = 0.8, Kt = 0.2, Kt_dev = 0.1, StartsHour = 20, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C54(NominalPower = 0.1, Kr = 0.8, Kt = 0.2, Kt_dev = 0.1, StartsHour = 6, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C56(NominalPower = 4, Kr = 0.625, Kt = 0.5, Kt_dev = 0.2, StartsHour = 9, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C59(NominalPower = 3.4, Kr = 0.735294117647059, Kt = 0.5, Kt_dev = 0.2, StartsHour = 10, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C60(NominalPower = 3.4, Kr = 0.735294117647059, Kt = 0.5, Kt_dev = 0.2, StartsHour = 3, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C71(NominalPower = 0.4, Kr = 0.8, Kt = 1, Kt_dev = 0.3, StartsHour = 8, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C73(NominalPower = 5.5, Kr = 0.8, Kt = 0.2, Kt_dev = 0.2, StartsHour = 2, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C75(NominalPower = 5.5, Kr = 0.8, Kt = 0.2, Kt_dev = 0.2, StartsHour = 10, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C77(NominalPower = 1.1, Kr = 0.8, Kt = 0.5, Kt_dev = 0.1, StartsHour = 20, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C78(NominalPower = 15, Kr = 1, Kt = 0.5, Kt_dev = 0.15, StartsHour = 6, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C79(NominalPower = 3, Kr = 0.8, Kt = 0.2, Kt_dev = 0.1, StartsHour = 8, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C80(NominalPower = 2.5, Kr = 0.8, Kt = 0.5, Kt_dev = 0.25, StartsHour = 9, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C81(NominalPower = 0.2, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 2, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C82(NominalPower = 2.2, Kr = 0.8, Kt = 0.2, Kt_dev = 0.25, StartsHour = 5, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C84(NominalPower = 0.75, Kr = 0.8, Kt = 0.2, Kt_dev = 0.25, StartsHour = 3, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C85(NominalPower = 3, Kr = 0.8, Kt = 0.2, Kt_dev = 0.25, StartsHour = 20, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C86(NominalPower = 1.5, Kr = 0.8, Kt = 0.2, Kt_dev = 0.25, StartsHour = 6, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C87(NominalPower = 0.5, Kr = 0.8, Kt = 0.2, Kt_dev = 0.25, StartsHour = 8, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C88(NominalPower = 9, Kr = 0.8, Kt = 0.2, Kt_dev = 0.25, StartsHour = 9, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C89(NominalPower = 1.5, Kr = 0.8, Kt = 0.2, Kt_dev = 0.25, StartsHour = 2, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C90(NominalPower = 38, Kr = 0.8, Kt = 0.5, Kt_dev = 0.25, StartsHour = 5, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C94(NominalPower = 17, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 6, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C95(NominalPower = 17, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 8, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C96(NominalPower = 17, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 9, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C97(NominalPower = 17, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 2, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C98(NominalPower = 7, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 5, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C99(NominalPower = 7, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 10, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C100(NominalPower = 7, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 3, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C101(NominalPower = 7, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 20, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C102(NominalPower = 17, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 6, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C103(NominalPower = 11, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 8, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C105(NominalPower = 15, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 2, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C107(NominalPower = 15, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 10, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C108(NominalPower = 15, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 3, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C111(NominalPower = 15, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 8, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C112(NominalPower = 15, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 9, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C115(NominalPower = 0.95, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 10, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C118(NominalPower = 0.4, Kr = 0.8, Kt = 0.2, Kt_dev = 0.25, StartsHour = 6, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C120(NominalPower = 0.23, Kr = 0.8, Kt = 0.5, Kt_dev = 0.25, StartsHour = 9, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C121(NominalPower = 0.23, Kr = 0.8, Kt = 0.5, Kt_dev = 0.25, StartsHour = 2, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C122(NominalPower = 0.23, Kr = 0.8, Kt = 0.5, Kt_dev = 0.25, StartsHour = 5, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C123(NominalPower = 0.23, Kr = 0.8, Kt = 0.5, Kt_dev = 0.25, StartsHour = 10, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C124(NominalPower = 0.23, Kr = 0.8, Kt = 0.5, Kt_dev = 0.25, StartsHour = 3, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C125(NominalPower = 0.23, Kr = 0.8, Kt = 0.5, Kt_dev = 0.25, StartsHour = 20, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C126(NominalPower = 0.23, Kr = 0.8, Kt = 0.5, Kt_dev = 0.25, StartsHour = 6, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C127(NominalPower = 0.23, Kr = 0.8, Kt = 0.5, Kt_dev = 0.25, StartsHour = 8, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C128(NominalPower = 0.23, Kr = 0.8, Kt = 0.5, Kt_dev = 0.25, StartsHour = 9, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C129(NominalPower = 0.23, Kr = 0.8, Kt = 0.5, Kt_dev = 0.25, StartsHour = 2, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C130(NominalPower = 0.23, Kr = 0.8, Kt = 0.5, Kt_dev = 0.25, StartsHour = 5, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C131(NominalPower = 0.23, Kr = 0.8, Kt = 0.5, Kt_dev = 0.25, StartsHour = 10, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C132(NominalPower = 0.23, Kr = 0.8, Kt = 0.2, Kt_dev = 0.25, StartsHour = 3, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C133(NominalPower = 0.4, Kr = 0.8, Kt = 0.5, Kt_dev = 0.25, StartsHour = 20, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C134(NominalPower = 0.6, Kr = 0.8, Kt = 0.5, Kt_dev = 0.25, StartsHour = 6, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C135(NominalPower = 0.6, Kr = 0.8, Kt = 0.7, Kt_dev = 0.25, StartsHour = 8, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C136(NominalPower = 1.5, Kr = 0.8, Kt = 0.5, Kt_dev = 0.25, StartsHour = 9, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C141(NominalPower = 0.15, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 20, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C143(NominalPower = 55, Kr = 0.8, Kt = 0.5, Kt_dev = 0.25, StartsHour = 8, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C145(NominalPower = 15, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 2, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C146(NominalPower = 18.5, Kr = 0.8, Kt = 0.5, Kt_dev = 0.25, StartsHour = 5, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C148(NominalPower = 5, Kr = 0.8, Kt = 0.5, Kt_dev = 0.25, StartsHour = 3, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C149(NominalPower = 1.5, Kr = 0.8, Kt = 0.5, Kt_dev = 0.25, StartsHour = 20, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C152(NominalPower = 0.1, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 9, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C158(NominalPower = 2.2, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 6, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C170(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 5, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C171(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 10, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C172(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 3, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C173(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 20, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C174(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 6, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C175(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 8, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C176(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 9, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C177(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 2, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C178(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 5, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C179(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 10, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C180(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 3, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C181(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 20, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C182(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 6, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C183(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 8, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C184(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 9, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C185(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 2, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C186(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 5, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C187(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 10, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C188(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 3, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C189(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 20, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C190(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 6, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C191(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 8, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C192(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 9, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C193(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 2, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C194(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 5, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C195(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 10, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C196(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 3, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C197(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 20, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C198(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 6, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C199(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 8, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C200(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 9, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C201(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 2, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C202(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 5, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C203(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 10, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C204(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 3, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C205(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 20, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C206(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 6, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C207(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 8, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C208(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 9, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C209(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 2, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C210(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 5, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C211(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 10, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C212(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 3, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C213(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 20, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C214(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 6, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C215(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 8, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C216(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 9, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C217(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 2, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C218(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 5, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C219(NominalPower = 15, Kr = 0.8, Kt = 0.6, Kt_dev = 0.25, StartsHour = 10, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C251(NominalPower = 23, Kr = 1, Kt = 0.5, Kt_dev = 0.25, StartsHour = 10, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C252(NominalPower = 5, Kr = 1, Kt = 0.5, Kt_dev = 0.25, StartsHour = 3, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C253(NominalPower = 1, Kr = 0.8, Kt = 0.2, Kt_dev = 0.25, StartsHour = 20, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C254(NominalPower = 5.5, Kr = 0.8, Kt = 0.5, Kt_dev = 0.25, StartsHour = 6, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.TriggerConsumer C255(NominalPower = 3.35, Kr = 1, Kt = 0.5, Kt_dev = 0.25, StartsHour = 8, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.TriggerConsumer C256(NominalPower = 2.6, Kr = 1, Kt = 0.5, Kt_dev = 0.25, StartsHour = 9, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C257(NominalPower = 0.3, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 2, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.TriggerConsumer C258(NominalPower = 1.85, Kr = 0.8, Kt = 0.2, Kt_dev = 0.25, StartsHour = 5, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.TriggerConsumer C259(NominalPower = 1.85, Kr = 0.8, Kt = 0.2, Kt_dev = 0.25, StartsHour = 10, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C260(NominalPower = 2.4, Kr = 0.8, Kt = 0.2, Kt_dev = 0.25, StartsHour = 3, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C261(NominalPower = 4, Kr = 1, Kt = 1, Kt_dev = 0.25, StartsHour = 20, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C262(NominalPower = 40, Kr = 1, Kt = 0.2, Kt_dev = 0.25, StartsHour = 6, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C264(NominalPower = 4, Kr = 1, Kt = 0.5, Kt_dev = 0.25, StartsHour = 9, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C265(NominalPower = 1.2, Kr = 1, Kt = 0.5, Kt_dev = 0.25, StartsHour = 9, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C267(NominalPower = 3, Kr = 1, Kt = 0.2, Kt_dev = 0.25, StartsHour = 5, StartsHour_dev = 2, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C268(NominalPower = 5, Kr = 1, Kt = 1, Kt_dev = 0.25, StartsHour = 10, StartsHour_dev = 1, StartTable = {{0, 1}, {0.01, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C269(NominalPower = 0.5, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 3, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C270(NominalPower = 0.2, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 20, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C271(NominalPower = 2, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 6, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C273(NominalPower = 0.2, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 9, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C274(NominalPower = 0.2, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 2, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C275(NominalPower = 2.2, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 5, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C276(NominalPower = 0.1, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 10, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C277(NominalPower = 0.2, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 3, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C278(NominalPower = 0.1, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 20, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C279(NominalPower = 0.1, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 6, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C280(NominalPower = 0.1, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 8, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C281(NominalPower = 0.2, Kr = 0.8, Kt = 0.2, Kt_dev = 0.25, StartsHour = 9, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C282(NominalPower = 0.5, Kr = 0.8, Kt = 0.2, Kt_dev = 0.25, StartsHour = 2, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C283(NominalPower = 0.5, Kr = 0.8, Kt = 0.2, Kt_dev = 0.25, StartsHour = 5, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C284(NominalPower = 1, Kr = 0.8, Kt = 0.2, Kt_dev = 0.25, StartsHour = 10, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C285(NominalPower = 0.2, Kr = 0.8, Kt = 0.2, Kt_dev = 0.25, StartsHour = 3, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C286(NominalPower = 0.2, Kr = 0.8, Kt = 0.2, Kt_dev = 0.25, StartsHour = 20, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C287(NominalPower = 0.2, Kr = 0.8, Kt = 0.2, Kt_dev = 0.25, StartsHour = 6, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C290(NominalPower = 1, Kr = 0.8, Kt = 0.2, Kt_dev = 0.25, StartsHour = 2, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C291(NominalPower = 1, Kr = 0.8, Kt = 0.2, Kt_dev = 0.25, StartsHour = 5, StartsHour_dev = 2, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
      ShipSIM.Components.Electrical.OnOffConsumer C292(NominalPower = 0.2, Kr = 0.8, Kt = 1, Kt_dev = 0.25, StartsHour = 10, StartsHour_dev = 1, StartTable = {{0, 0}, {2, 0.8}, {3, 1.2}, {4, 1.1}, {5, 1}}, CycleTable = {{0, 1}, {1000, 1}});
    equation
      connect(C1.y, sum1.u[1]);
      connect(C2.y, sum1.u[2]);
      connect(C4.y, sum1.u[3]);
      connect(C5.y, sum1.u[4]);
      connect(C8.y, sum1.u[5]);
      connect(C9.y, sum1.u[6]);
      connect(C12.y, sum1.u[7]);
      connect(C13.y, sum1.u[8]);
      connect(C15.y, sum1.u[9]);
      connect(C16.y, sum1.u[10]);
      connect(C21.y, sum1.u[11]);
      connect(C23.y, sum1.u[12]);
      connect(C25.y, sum1.u[13]);
      connect(C26.y, sum1.u[14]);
      connect(C27.y, sum1.u[15]);
      connect(C28.y, sum1.u[16]);
      connect(C32.y, sum1.u[17]);
      connect(C33.y, sum1.u[18]);
      connect(C35.y, sum1.u[19]);
      connect(C36.y, sum1.u[20]);
      connect(C38.y, sum1.u[21]);
      connect(C40.y, sum1.u[22]);
      connect(C41.y, sum1.u[23]);
      connect(C42.y, sum1.u[24]);
      connect(C49.y, sum1.u[25]);
      connect(C51.y, sum1.u[26]);
      connect(C52.y, sum1.u[27]);
      connect(C53.y, sum1.u[28]);
      connect(C54.y, sum1.u[29]);
      connect(C56.y, sum1.u[30]);
      connect(C59.y, sum1.u[31]);
      connect(C60.y, sum1.u[32]);
      connect(C71.y, sum1.u[33]);
      connect(C73.y, sum1.u[34]);
      connect(C75.y, sum1.u[35]);
      connect(C77.y, sum1.u[36]);
      connect(C78.y, sum1.u[37]);
      connect(C79.y, sum1.u[38]);
      connect(C80.y, sum1.u[39]);
      connect(C81.y, sum1.u[40]);
      connect(C82.y, sum1.u[41]);
      connect(C84.y, sum1.u[42]);
      connect(C85.y, sum1.u[43]);
      connect(C86.y, sum1.u[44]);
      connect(C87.y, sum1.u[45]);
      connect(C88.y, sum1.u[46]);
      connect(C89.y, sum1.u[47]);
      connect(C90.y, sum1.u[48]);
      connect(C94.y, sum1.u[49]);
      connect(C95.y, sum1.u[50]);
      connect(C96.y, sum1.u[51]);
      connect(C97.y, sum1.u[52]);
      connect(C98.y, sum1.u[53]);
      connect(C99.y, sum1.u[54]);
      connect(C100.y, sum1.u[55]);
      connect(C101.y, sum1.u[56]);
      connect(C102.y, sum1.u[57]);
      connect(C103.y, sum1.u[58]);
      connect(C105.y, sum1.u[59]);
      connect(C107.y, sum1.u[60]);
      connect(C108.y, sum1.u[61]);
      connect(C111.y, sum1.u[62]);
      connect(C112.y, sum1.u[63]);
      connect(C115.y, sum1.u[64]);
      connect(C118.y, sum1.u[65]);
      connect(C120.y, sum1.u[66]);
      connect(C121.y, sum1.u[67]);
      connect(C122.y, sum1.u[68]);
      connect(C123.y, sum1.u[69]);
      connect(C124.y, sum1.u[70]);
      connect(C125.y, sum1.u[71]);
      connect(C126.y, sum1.u[72]);
      connect(C127.y, sum1.u[73]);
      connect(C128.y, sum1.u[74]);
      connect(C129.y, sum1.u[75]);
      connect(C130.y, sum1.u[76]);
      connect(C131.y, sum1.u[77]);
      connect(C132.y, sum1.u[78]);
      connect(C133.y, sum1.u[79]);
      connect(C134.y, sum1.u[80]);
      connect(C135.y, sum1.u[81]);
      connect(C136.y, sum1.u[82]);
      connect(C141.y, sum1.u[83]);
      connect(C143.y, sum1.u[84]);
      connect(C145.y, sum1.u[85]);
      connect(C146.y, sum1.u[86]);
      connect(C148.y, sum1.u[87]);
      connect(C149.y, sum1.u[88]);
      connect(C152.y, sum1.u[89]);
      connect(C158.y, sum1.u[90]);
      connect(C170.y, sum1.u[91]);
      connect(C171.y, sum1.u[92]);
      connect(C172.y, sum1.u[93]);
      connect(C173.y, sum1.u[94]);
      connect(C174.y, sum1.u[95]);
      connect(C175.y, sum1.u[96]);
      connect(C176.y, sum1.u[97]);
      connect(C177.y, sum1.u[98]);
      connect(C178.y, sum1.u[99]);
      connect(C179.y, sum1.u[100]);
      connect(C180.y, sum1.u[101]);
      connect(C181.y, sum1.u[102]);
      connect(C182.y, sum1.u[103]);
      connect(C183.y, sum1.u[104]);
      connect(C184.y, sum1.u[105]);
      connect(C185.y, sum1.u[106]);
      connect(C186.y, sum1.u[107]);
      connect(C187.y, sum1.u[108]);
      connect(C188.y, sum1.u[109]);
      connect(C189.y, sum1.u[110]);
      connect(C190.y, sum1.u[111]);
      connect(C191.y, sum1.u[112]);
      connect(C192.y, sum1.u[113]);
      connect(C193.y, sum1.u[114]);
      connect(C194.y, sum1.u[115]);
      connect(C195.y, sum1.u[116]);
      connect(C196.y, sum1.u[117]);
      connect(C197.y, sum1.u[118]);
      connect(C198.y, sum1.u[119]);
      connect(C199.y, sum1.u[120]);
      connect(C200.y, sum1.u[121]);
      connect(C201.y, sum1.u[122]);
      connect(C202.y, sum1.u[123]);
      connect(C203.y, sum1.u[124]);
      connect(C204.y, sum1.u[125]);
      connect(C205.y, sum1.u[126]);
      connect(C206.y, sum1.u[127]);
      connect(C207.y, sum1.u[128]);
      connect(C208.y, sum1.u[129]);
      connect(C209.y, sum1.u[130]);
      connect(C210.y, sum1.u[131]);
      connect(C211.y, sum1.u[132]);
      connect(C212.y, sum1.u[133]);
      connect(C213.y, sum1.u[134]);
      connect(C214.y, sum1.u[135]);
      connect(C215.y, sum1.u[136]);
      connect(C216.y, sum1.u[137]);
      connect(C217.y, sum1.u[138]);
      connect(C218.y, sum1.u[139]);
      connect(C219.y, sum1.u[140]);
      connect(C251.y, sum1.u[141]);
      connect(C252.y, sum1.u[142]);
      connect(C253.y, sum1.u[143]);
      connect(C254.y, sum1.u[144]);
      connect(C255.y, sum1.u[145]);
      connect(C256.y, sum1.u[146]);
      connect(C257.y, sum1.u[147]);
      connect(C258.y, sum1.u[148]);
      connect(C259.y, sum1.u[149]);
      connect(C260.y, sum1.u[150]);
      connect(C261.y, sum1.u[151]);
      connect(C262.y, sum1.u[152]);
      connect(C264.y, sum1.u[153]);
      connect(C265.y, sum1.u[154]);
      connect(C267.y, sum1.u[155]);
      connect(C268.y, sum1.u[156]);
      connect(C269.y, sum1.u[157]);
      connect(C270.y, sum1.u[158]);
      connect(C271.y, sum1.u[159]);
      connect(C273.y, sum1.u[160]);
      connect(C274.y, sum1.u[161]);
      connect(C275.y, sum1.u[162]);
      connect(C276.y, sum1.u[163]);
      connect(C277.y, sum1.u[164]);
      connect(C278.y, sum1.u[165]);
      connect(C279.y, sum1.u[166]);
      connect(C280.y, sum1.u[167]);
      connect(C281.y, sum1.u[168]);
      connect(C282.y, sum1.u[169]);
      connect(C283.y, sum1.u[170]);
      connect(C284.y, sum1.u[171]);
      connect(C285.y, sum1.u[172]);
      connect(C286.y, sum1.u[173]);
      connect(C287.y, sum1.u[174]);
      connect(C290.y, sum1.u[175]);
      connect(C291.y, sum1.u[176]);
      connect(C292.y, sum1.u[177]);
      connect(sum1.y, y);
      annotation(
        experiment(StartTime = 0, StopTime = 50000, Tolerance = 1e-06, Interval = 0.5),
        uses(Modelica(version = "3.2.3")),
        Diagram,
        Icon(graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}), Line(origin = {-77.79, 4.15}, points = {{-2.20711, 75.8536}, {-2.20711, -76.1464}, {-2.20711, -76.1464}}, arrow = {Arrow.Open, Arrow.None}, arrowSize = 10), Line(origin = {-5, -60}, points = {{-85, 0}, {85, 0}}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 10), Line(origin = {-2.07033, 32.0261}, points = {{-75.9297, 3.97395}, {-65.9297, 11.9739}, {-59.9297, 3.97395}, {-55.9297, -6.02605}, {-47.9297, 1.97395}, {-41.9297, 11.9739}, {-31.9297, 11.9739}, {-31.9297, 1.97395}, {-27.9297, -2.02605}, {-23.9297, -10.0261}, {-17.9297, -12.0261}, {-13.9297, -2.02605}, {-9.92967, 1.97395}, {-5.92967, 13.974}, {4.07033, 13.9739}, {6.07033, 11.9739}, {8.07033, 7.97395}, {10.0703, 1.97395}, {12.0703, -2.02605}, {20.0703, -2.02605}, {24.0703, 3.97395}, {26.0703, 7.97395}, {30.0703, -0.026052}, {32.0703, -8.02605}, {40.0703, 3.97395}, {44.0703, 13.9739}, {44.0703, 1.97395}, {44.0703, -10.0261}, {50.0703, -6.02605}, {58.0703, 5.97395}, {62.0703, 7.97395}, {66.0703, 3.97395}, {70.0703, 1.97395}, {76.0703, 3.97395}})}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
        Documentation(info = "<html><head></head><body>This is an example of a EPLA (Electric Power Load Analysis) using the OnOffConsumer and TriggerConsumer to model each electric consumer.<div>The output is the electric power over time.</div></body></html>"));
    end Balance;
    annotation(
      Icon(graphics = {Line(origin = {-0.11566, -1.01656}, points = {{-15.9961, 49}, {-15.9961, 21}, {-53.9961, -59}, {54.0039, -59}, {16.0039, 19}, {16.0039, 49}, {-15.9961, 49}}), Rectangle(origin = {0, 51}, extent = {{-18, 3}, {18, -3}}), Line(origin = {0, -10}, points = {{-30, 0}, {30, 0}}), Ellipse(origin = {3, -15}, extent = {{-3, 3}, {3, -3}}), Ellipse(origin = {17, -26}, extent = {{-9, 8}, {9, -8}})}));
  end MiscSamples;

  package Records "Component data used in the library"
    extends Modelica.Icons.RecordsPackage;

    package WingProfile "Wing profile Cl, Cd & Cm data"
      extends Modelica.Icons.RecordsPackage;

      record WingData "Sample data structure"
        extends Modelica.Icons.Record;
        parameter String wingName = "";
        parameter Real Cl[:, :];
        parameter Real Cd[:, :];
        parameter Real Cm[:, :];
        annotation(
          Documentation(revisions = "<html><head></head><body><span style=\"font-size: 12px;\">Rev. 0.0 (04/05/2023): Initial release</span></body></html>"));
      end WingData;

      record NACA0015 "NACA 0015 profile"
        extends Modelica.Icons.Record;
        extends ShipSIM.Records.WingProfile.WingData(final wingName = "NACA 0015", final Cl = [0, 10000, 20000, 40000, 80000, 160000, 360000, 700000, 1000000, 2000000, 5000000, 10000000; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 1, 0.0434, 0.0891, 0.1054, 0.11, 0.11, 0.11, 0.11, 0.11, 0.11, 0.11, 0.11; 2, 0.0715, 0.174, 0.2099, 0.22, 0.22, 0.22, 0.22, 0.22, 0.22, 0.22, 0.22; 3, 0.0725, 0.2452, 0.3078, 0.33, 0.33, 0.33, 0.33, 0.33, 0.33, 0.33, 0.33; 4, 0.0581, 0.3041, 0.4017, 0.4186, 0.44, 0.44, 0.44, 0.44, 0.44, 0.44, 0.44; 5, 0.0162, 0.3359, 0.4871, 0.518, 0.55, 0.55, 0.55, 0.55, 0.55, 0.55, 0.55; 6, -0.0781, 0.3001, 0.5551, 0.6048, 0.6299, 0.66, 0.66, 0.66, 0.66, 0.66, 0.66; 7, -0.1517, 0.057, 0.573, 0.676, 0.715, 0.739, 0.7483, 0.77, 0.77, 0.77, 0.77; 8, -0.1484, -0.1104, 0.4663, 0.7189, 0.7851, 0.824, 0.8442, 0.8504, 0.88, 0.88, 0.88; 9, -0.1194, -0.105, 0.0433, 0.6969, 0.8311, 0.8946, 0.926, 0.9387, 0.9574, 0.99, 0.99; 10, -0.0791, -0.0728, -0.0413, 0.5122, 0.8322, 0.944, 0.9937, 1.0141, 1.0433, 1.0685, 1.1; 11, -0.0348, -0.03, -0.0144, 0.1642, 0.7623, 0.9572, 1.0363, 1.0686, 1.1133, 1.1553, 1.1749; 12, 0.0138, 0.0173, 0.0261, 0.0749, 0.5936, 0.9285, 1.0508, 1.0971, 1.1667, 1.229, 1.2591; 13, 0.0649, 0.0678, 0.0741, 0.0967, 0.3548, 0.8562, 1.0302, 1.0957, 1.1943, 1.2847, 1.33; 14, 0.1172, 0.1193, 0.1244, 0.1382, 0.2371, 0.7483, 0.9801, 1.0656, 1.1962, 1.3187, 1.3825; 15, 0.1706, 0.1721, 0.1756, 0.1861, 0.2376, 0.635, 0.9119, 1.0145, 1.1744, 1.3298, 1.4136; 16, 0.2242, 0.2256, 0.228, 0.2364, 0.2665, 0.5384, 0.8401, 0.9567, 1.1356, 1.3186, 1.4233; 17, 0.278, 0.2792, 0.2815, 0.2873, 0.3098, 0.4851, 0.7799, 0.8996, 1.0921, 1.2917, 1.4136; 18, 0.3319, 0.3331, 0.3351, 0.3393, 0.3567, 0.4782, 0.7305, 0.8566, 1.051, 1.2576, 1.3897; 19, 0.3859, 0.3869, 0.3889, 0.3927, 0.4066, 0.4908, 0.7041, 0.8226, 1.0173, 1.2242, 1.3608; 20, 0.4399, 0.4409, 0.4427, 0.4463, 0.4575, 0.5247, 0.699, 0.8089, 0.9954, 1.1965, 1.3325; 21, 0.4939, 0.4949, 0.4966, 0.5001, 0.5087, 0.5616, 0.7097, 0.8063, 0.9837, 1.1771, 1.3077; 22, 0.5479, 0.5489, 0.5506, 0.5539, 0.5611, 0.6045, 0.7298, 0.8189, 0.9827, 1.1647, 1.2767; 23, 0.6019, 0.6029, 0.6045, 0.6078, 0.6148, 0.6528, 0.7593, 0.8408, 0.991, 1.1611, 1.1981; 24, 0.6559, 0.6569, 0.6585, 0.6617, 0.6685, 0.7015, 0.7961, 0.8668, 1.0078, 1.1563, 1.1538; 25, 0.7099, 0.7109, 0.7125, 0.7156, 0.7224, 0.7511, 0.8353, 0.9023, 1.0317, 1.1322, 1.138; 26, 0.7639, 0.7649, 0.7666, 0.77, 0.7771, 0.8055, 0.8838, 0.9406, 1.0591, 1.1268, 1.1374; 27, 0.8174, 0.8191, 0.8222, 0.8277, 0.8382, 0.8788, 0.9473, 0.9912, 1.081, 1.1397, 1.1519; 30, 0.855, 0.855, 0.855, 0.855, 0.855, 0.855, 0.855, 0.855, 0.855, 0.855, 0.855; 35, 0.98, 0.98, 0.98, 0.98, 0.98, 0.98, 0.98, 0.98, 0.98, 0.98, 0.98; 40, 1.035, 1.035, 1.035, 1.035, 1.035, 1.035, 1.035, 1.035, 1.035, 1.035, 1.035; 45, 1.05, 1.05, 1.05, 1.05, 1.05, 1.05, 1.05, 1.05, 1.05, 1.05, 1.05; 50, 1.02, 1.02, 1.02, 1.02, 1.02, 1.02, 1.02, 1.02, 1.02, 1.02, 1.02; 55, 0.955, 0.955, 0.955, 0.955, 0.955, 0.955, 0.955, 0.955, 0.955, 0.955, 0.955; 60, 0.875, 0.875, 0.875, 0.875, 0.875, 0.875, 0.875, 0.875, 0.875, 0.875, 0.875; 65, 0.76, 0.76, 0.76, 0.76, 0.76, 0.76, 0.76, 0.76, 0.76, 0.76, 0.76; 70, 0.63, 0.63, 0.63, 0.63, 0.63, 0.63, 0.63, 0.63, 0.63, 0.63, 0.63; 75, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5; 80, 0.365, 0.365, 0.365, 0.365, 0.365, 0.365, 0.365, 0.365, 0.365, 0.365, 0.365; 85, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23; 90, 0.09, 0.09, 0.09, 0.09, 0.09, 0.09, 0.09, 0.09, 0.09, 0.09, 0.09; 95, -0.05, -0.05, -0.05, -0.05, -0.05, -0.05, -0.05, -0.05, -0.05, -0.05, -0.05; 100, -0.185, -0.185, -0.185, -0.185, -0.185, -0.185, -0.185, -0.185, -0.185, -0.185, -0.185; 105, -0.32, -0.32, -0.32, -0.32, -0.32, -0.32, -0.32, -0.32, -0.32, -0.32, -0.32; 110, -0.45, -0.45, -0.45, -0.45, -0.45, -0.45, -0.45, -0.45, -0.45, -0.45, -0.45; 115, -0.575, -0.575, -0.575, -0.575, -0.575, -0.575, -0.575, -0.575, -0.575, -0.575, -0.575; 120, -0.67, -0.67, -0.67, -0.67, -0.67, -0.67, -0.67, -0.67, -0.67, -0.67, -0.67; 125, -0.76, -0.76, -0.76, -0.76, -0.76, -0.76, -0.76, -0.76, -0.76, -0.76, -0.76; 130, -0.85, -0.85, -0.85, -0.85, -0.85, -0.85, -0.85, -0.85, -0.85, -0.85, -0.85; 135, -0.93, -0.93, -0.93, -0.93, -0.93, -0.93, -0.93, -0.93, -0.93, -0.93, -0.93; 140, -0.98, -0.98, -0.98, -0.98, -0.98, -0.98, -0.98, -0.98, -0.98, -0.98, -0.98; 145, -0.9, -0.9, -0.9, -0.9, -0.9, -0.9, -0.9, -0.9, -0.9, -0.9, -0.9; 150, -0.77, -0.77, -0.77, -0.77, -0.77, -0.77, -0.77, -0.77, -0.77, -0.77, -0.77; 155, -0.67, -0.67, -0.67, -0.67, -0.67, -0.67, -0.67, -0.67, -0.67, -0.67, -0.67; 160, -0.635, -0.635, -0.635, -0.635, -0.635, -0.635, -0.635, -0.635, -0.635, -0.635, -0.635; 165, -0.68, -0.68, -0.68, -0.68, -0.68, -0.68, -0.68, -0.68, -0.68, -0.68, -0.68; 170, -0.85, -0.85, -0.85, -0.85, -0.85, -0.85, -0.85, -0.85, -0.85, -0.85, -0.85; 175, -0.66, -0.66, -0.66, -0.66, -0.66, -0.66, -0.66, -0.66, -0.66, -0.66, -0.66; 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], final Cd = [0, 10000, 20000, 40000, 80000, 160000, 360000, 700000, 1000000, 2000000, 5000000, 10000000; 0, 0.036, 0.0265, 0.0196, 0.0147, 0.0116, 0.0091, 0.0077, 0.0074, 0.007, 0.0068, 0.0068; 1, 0.0362, 0.0267, 0.0198, 0.0148, 0.0117, 0.0092, 0.0078, 0.0075, 0.0071, 0.0069, 0.0068; 2, 0.0366, 0.0271, 0.0202, 0.0151, 0.012, 0.0094, 0.008, 0.0076, 0.0072, 0.007, 0.0069; 3, 0.0373, 0.0279, 0.0209, 0.0156, 0.0124, 0.0098, 0.0083, 0.00794, 0.0075, 0.0073, 0.0071; 4, 0.0383, 0.029, 0.0219, 0.0168, 0.0132, 0.0105, 0.0089, 0.0083, 0.0078, 0.0075, 0.0074; 5, 0.0393, 0.0303, 0.0232, 0.0181, 0.0142, 0.0114, 0.0098, 0.0091, 0.0083, 0.008, 0.0077; 6, 0.04, 0.041, 0.0249, 0.0197, 0.016, 0.0126, 0.0108, 0.0101, 0.009, 0.0084, 0.0081; 7, 0.051, 0.051, 0.0267, 0.0214, 0.0176, 0.0143, 0.0122, 0.0111, 0.0098, 0.0089, 0.0086; 8, 0.064, 0.064, 0.052, 0.0234, 0.0193, 0.0157, 0.0135, 0.0126, 0.0108, 0.0095, 0.009; 9, 0.077, 0.077, 0.077, 0.0255, 0.0212, 0.0173, 0.0149, 0.0138, 0.0121, 0.0102, 0.0096; 10, 0.091, 0.091, 0.091, 0.0277, 0.0233, 0.0191, 0.0164, 0.0152, 0.0133, 0.0113, 0.0103; 11, 0.107, 0.107, 0.107, 0.076, 0.0256, 0.0211, 1.0182, 0.0168, 0.0146, 0.0124, 0.0114; 12, 0.123, 0.123, 0.123, 0.123, 0.0281, 0.0233, 0.02, 0.0186, 0.0161, 0.0136, 0.0123; 13, 0.14, 0.14, 0.14, 0.14, 0.0302, 0.0257, 0.0221, 0.0205, 0.0177, 0.0149, 0.0134; 14, 0.158, 0.158, 0.158, 0.158, 0.104, 0.0283, 0.0244, 0.0225, 0.0195, 0.0164, 0.0147; 15, 0.177, 0.177, 0.177, 0.177, 0.177, 0.0312, 0.0269, 0.0249, 0.0215, 0.018, 0.0161; 16, 0.196, 0.196, 0.196, 0.196, 0.197, 0.124, 0.0297, 0.0275, 0.0237, 0.0198, 0.0176; 17, 0.217, 0.217, 0.217, 0.217, 0.217, 0.217, 0.134, 0.0303, 0.0261, 0.0218, 0.0194; 18, 0.238, 0.238, 0.238, 0.238, 0.238, 0.238, 0.238, 0.145, 0.0288, 0.024, 0.0213; 19, 0.26, 0.26, 0.26, 0.26, 0.26, 0.26, 0.26, 0.26, 0.155, 0.0265, 0.0234; 20, 0.282, 0.282, 0.282, 0.282, 0.282, 0.282, 0.282, 0.282, 0.282, 0.166, 0.0257; 21, 0.305, 0.305, 0.305, 0.305, 0.305, 0.305, 0.305, 0.305, 0.305, 0.305, 0.177; 22, 0.329, 0.329, 0.329, 0.329, 0.329, 0.329, 0.329, 0.329, 0.329, 0.329, 0.329; 23, 0.354, 0.354, 0.354, 0.354, 0.354, 0.354, 0.354, 0.354, 0.354, 0.354, 0.354; 24, 0.379, 0.379, 0.379, 0.379, 0.379, 0.379, 0.379, 0.379, 0.379, 0.379, 0.379; 25, 0.405, 0.405, 0.405, 0.405, 0.405, 0.405, 0.405, 0.405, 0.405, 0.405, 0.405; 26, 0.432, 0.432, 0.432, 0.432, 0.432, 0.432, 0.432, 0.432, 0.432, 0.432, 0.432; 27, 0.46, 0.46, 0.46, 0.46, 0.46, 0.46, 0.46, 0.46, 0.46, 0.46, 0.46; 30, 0.57, 0.57, 0.57, 0.57, 0.57, 0.57, 0.57, 0.57, 0.57, 0.57, 0.57; 35, 0.745, 0.745, 0.745, 0.745, 0.745, 0.745, 0.745, 0.745, 0.745, 0.745, 0.745; 40, 0.92, 0.92, 0.92, 0.92, 0.92, 0.92, 0.92, 0.92, 0.92, 0.92, 0.92; 45, 1.075, 1.075, 1.075, 1.075, 1.075, 1.075, 1.075, 1.075, 1.075, 1.075, 1.075; 50, 1.215, 1.215, 1.215, 1.215, 1.215, 1.215, 1.215, 1.215, 1.215, 1.215, 1.215; 55, 1.343, 1.345, 1.345, 1.345, 1.345, 1.345, 1.345, 1.345, 1.345, 1.345, 1.345; 60, 1.47, 1.47, 1.47, 1.47, 1.47, 1.47, 1.47, 1.47, 1.47, 1.47, 1.47; 65, 1.575, 1.575, 1.575, 1.575, 1.575, 1.575, 1.575, 1.575, 1.575, 1.575, 1.575; 70, 1.665, 1.665, 1.665, 1.665, 1.665, 1.665, 1.665, 1.665, 1.665, 1.665, 1.665; 75, 1.735, 1.735, 1.735, 1.735, 1.735, 1.735, 1.735, 1.735, 1.735, 1.735, 1.735; 80, 1.78, 1.78, 1.78, 1.78, 1.78, 1.78, 1.78, 1.78, 1.78, 1.78, 1.78; 85, 1.8, 1.8, 1.80002, 1.8, 1.8, 1.8, 1.8, 1.8, 1.8, 1.8, 1.8; 90, 1.8, 1.8, 1.8, 1.8, 1.8, 1.8, 1.8, 1.8, 1.8, 1.8, 1.8; 95, 1.78, 1.78, 1.78, 1.78, 1.78, 1.78, 1.78, 1.78, 1.78, 1.78, 1.78; 100, 1.75, 1.75, 1.75, 1.75, 1.75, 1.75, 1.75, 1.75, 1.75, 1.75, 1.75; 105, 1.7, 1.7, 1.7, 1.7, 1.7, 1.7, 1.7, 1.7, 1.7, 1.7, 1.7; 110, 1.635, 1.635, 1.635, 1.635, 1.635, 1.635, 1.635, 1.635, 1.635, 1.635, 1.635; 115, 1.555, 1.555, 1.555, 1.555, 1.555, 1.555, 1.555, 1.555, 1.555, 1.555, 1.555; 120, 1.465, 1.465, 1.465, 1.465, 1.465, 1.465, 1.465, 1.465, 1.465, 1.465, 1.465; 125, 1.35, 1.35, 1.35, 1.35, 1.35, 1.35, 1.35, 1.35, 1.35, 1.35, 1.35; 130, 1.225, 1.225, 1.225, 1.225, 1.225, 1.225, 1.225, 1.225, 1.225, 1.225, 1.225; 135, 1.085, 1.085, 1.085, 1.085, 1.085, 1.085, 1.085, 1.085, 1.085, 1.085, 1.085; 140, 0.925, 0.925, 0.925, 0.925, 0.925, 0.925, 0.925, 0.925, 0.925, 0.925, 0.925; 145, 0.755, 0.755, 0.755, 0.755, 0.755, 0.755, 0.755, 0.755, 0.755, 0.755, 0.755; 150, 0.575, 0.575, 0.575, 0.575, 0.575, 0.575, 0.575, 0.575, 0.575, 0.575, 0.575; 155, 0.42, 0.42, 0.42, 0.42, 0.42, 0.42, 0.42, 0.42, 0.42, 0.42, 0.42; 160, 0.32, 0.32, 0.32, 0.32, 0.32, 0.32, 0.32, 0.32, 0.32, 0.32, 0.32; 165, 0.23, 0.23, 2.3, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23; 170, 0.14, 0.14, 0.14, 0.14, 0.14, 0.14, 0.14, 0.14, 0.14, 0.14, 0.14; 175, 0.055, 0.055, 0.055, 0.055, 0.055, 0.055, 0.055, 0.055, 0.055, 0.055, 0.055; 180, 0.025, 0.025, 0.025, 0.025, 0.025, 0.025, 0.025, 0.025, 0.025, 0.025, 0.025], final Cm = [0, 360000, 680000; 0, 0, 0; 2.5595, 0.00113, 0.0047; 6.4855, 0.00717, 0.01394; 10.7475, 0.02598, 0.03195; 14.759, 0.04149, 0.04591; 18.59, -0.0598, -0.00632; 22.6775, -0.05802, -0.05259; 26.5765, -0.08229, -0.07067; 30.6995, -0.08909, -0.12875; 34.6025, -0.08894, -0.14512; 38.475, -0.20015, -0.17227; 40.5695, -0.10216, -0.16548; 42.57, -0.05946, -0.2197; 45.3935, -0.22518, -0.16275; 50.391, -0.34478, -0.2671; 55.5235, -0.35135, -0.04582; 60.482, -0.39787, -0.26938; 65.46, -0.45753, -0.14878; 70.4825, -0.15704, -0.40508; 75.4645, -0.48262, -0.30546; 80.4515, -0.262, -0.2084; 85.4085, -0.49265, -0.38121; 90.391, -0.52767, -0.42177; 95.5495, -0.28151, -0.4183; 100.486, -0.46037, -0.45413; 105.519, -0.27295, -0.45453; 110.5665, -0.49075, -0.19289; 115.504, -0.54078, -0.39272; 120.4775, -0.55632, -0.53945; 125.4365, -0.471, -0.49122; 130.593, -0.4037, -0.4559; 135.5915, -0.44432, -0.51675; 140.5805, -0.40062, -0.47865; 145.4795, -0.4974, -0.39231; 150.586, -0.35717, -0.38745; 155.573, -0.32732, -0.33435; 160.623, -0.28579, -0.2935; 165.721, -0.279, -0.35144; 170.745, -0.41985, -0.42721; 175.8775, -0.28506, -0.30242; 180, 0, 0]);
        annotation(
          defaultComponentName = "wingData",
          defaultComponentPrefixes = "parameter",
          Icon(graphics = {Text(origin = {2, -200}, textColor = {0, 0, 255}, extent = {{-150, 60}, {150, 100}}, textString = "%wingName")}),
          Documentation(info = "<html><head></head><body><div>Cl, Cd &amp; Cm coefficients on 360º attack angle at various Re numbers.</div><div><br></div><div><u>Limitations</u>:</div><div><br></div><div><u>References</u>:</div><div><br></div><div><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[SAND8O-2114]</td><td>Robert E. Sheldahl, Paul C. Klimas, \"Aerodynamic Characteristics of Seven Symmetrical Airfoil Sections Through 180-Degree Angle of Attack for Use in Aerodynamic Analysis of Vertical Axis Wind Turbines\", Sandia National Laboratories, SAND8O-2144, March 1981,&nbsp;<a href=\"https://www.osti.gov/servlets/purl/6548367\">https://doi.org/10.2172/6548367</a></td></tr></tbody></table></div><p><u>Know issues</u>:</p><div><u>Further development</u>:</div><div><br></div></body></html>", revisions = "<html><head></head><body><span style=\"font-size: 12px;\">Rev. 0.0 (04/05/2023): Initial release</span></body></html>"));
      end NACA0015;
    end WingProfile;
  end Records;

  package Functions "Functions used in the library"
    extends Modelica.Icons.FunctionsPackage;

    package PropellerFunctions "Functions used in the library"
      extends Modelica.Icons.FunctionsPackage;
      //Aqui van las funciones de 4Q

      function WageningenB_Kt_Kq "Wageningen B series Kt & Kq"
        extends Modelica.Icons.Function;
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
          Kt := Kt + T[i, 1]*J^T[i, 2]*P_D^T[i, 3]*Ae_Ao^T[i, 4]*Z^T[i, 5];
        end for;
        Kq := 0;
        for i in 1:47 loop
          Kq := Kq + Q[i, 1]*J^Q[i, 2]*P_D^Q[i, 3]*Ae_Ao^Q[i, 4]*Z^Q[i, 5];
        end for;
        annotation(
          Documentation(info = "<html><head></head><body>Kt &amp; Kq values for wageningen B-series obtained from:<div><br></div><div>[Oosterveld1975]&nbsp;M.W.C. Oosterveld and P. Van Oossanen, \"Further computer-analyzed data of the wageningen B-screw series\", International Shipbuilding Progress, Vol. 22, No. 251, July 1975</div><div><br></div><div><u>Limitations:</u></div><div><u><br></u></div><div>2 &lt;= Z &lt;= 7 (number of blades)</div><div>0.30 &lt;= Ae/Ao &lt;= 1.05 (expaded area ratio)</div><div>0.5 &lt;= P/D &lt;= 1.40 (pitch-diameter ratio)</div><div>Rn &lt;= 2x10^6 (Reynolds number)</div><div><br></div><div><div><br></div><div><u>Fhurter development:</u></div><div>- Include corrections for Rn &gt; 2x10^6&nbsp;</div></div></body></html>", revisions = "<html><head></head><body>Rev. 0.0 (11/08/2021): Initial release</body></html>"));
      end WageningenB_Kt_Kq;

      function WageningenB_4Q_Matrix "Wageningen B series 4Q matrix"
        extends Modelica.Icons.Function;
        input ShipSIM.Types.Propeller4Q PropModel "Wageningen B propeller model";
        output Real T_Q[31, 5] "Ct and Cq coefficient matrix";
      algorithm
        if PropModel == ShipSIM.Types.Propeller4Q.B4_100_1 then
          T_Q[1, :] := {0, 3.6313, 0, -5.4152, 0};
          T_Q[2, :] := {1, 21.42, -88.911, -33.975, 130.8};
          T_Q[3, :] := {2, 1.5928, -1.6965, 0.53548, 0.89413};
          T_Q[4, :] := {3, 1.8415, 14.273, -3.0096, -23.341};
          T_Q[5, :] := {4, -2.8971, -1.8655, 3.9144, 4.0615};
          T_Q[6, :] := {5, -5.6476, 2.6846, 6.1993, -3.6292};
          T_Q[7, :] := {6, 1.3012, 2.1062, -1.0195, -3.0396};
          T_Q[8, :] := {7, 3.2048, 1.128, -3.948, -0.21287};
          T_Q[9, :] := {8, -0.722, -1.6558, 2.2104, 1.8664};
          T_Q[10, :] := {9, -1.3587, 1.6606, 1.7921, -3.3024};
          T_Q[11, :] := {10, 0.30497, 1.2311, -0.89254, -2.5667};
          T_Q[12, :] := {11, 2.5154, 0.55586, -4.2271, -0.70419};
          T_Q[13, :] := {12, -0.024965, -0.30974, -0.062203, 1.2292};
          T_Q[14, :] := {13, -0.22675, 0.67583, -0.049032, -0.24159};
          T_Q[15, :] := {14, 0.71969, 0.31051, -0.63836, -0.00044045};
          T_Q[16, :] := {15, 1.2806, -0.70452, -1.0459, 1.0799};
          T_Q[17, :] := {16, -0.63334, -0.24519, 1.2421, -0.2796};
          T_Q[18, :] := {17, -0.18471, 0.59265, -0.34991, -0.93174};
          T_Q[19, :] := {18, 0.75799, 0.2908, -1.3759, -0.059079};
          T_Q[20, :] := {19, 0.71537, -0.73888, -0.66658, 1.5553};
          T_Q[21, :] := {20, -0.48378, -0.24769, 1.1478, 0.2985};
          T_Q[22, :] := {21, -0.14651, 0.23705, 0.45079, -0.60358};
          T_Q[23, :] := {22, 0.45192, 0.078719, -0.84318, -0.43329};
          T_Q[24, :] := {23, 0.10214, -0.59234, -0.17289, 0.7583};
          T_Q[25, :] := {24, -0.43181, 0.016187, 0.38746, -0.19583};
          T_Q[26, :] := {25, 0.0056714, 0.32714, -0.36456, -0.27982};
          T_Q[27, :] := {26, 0.42155, -0.034213, -0.65377, 0.5796};
          T_Q[28, :] := {27, -0.14898, -0.4871, 0.67956, 0.70315};
          T_Q[29, :] := {28, -0.39834, 0.051105, 0.62507, -0.39551};
          T_Q[30, :] := {29, -0.013107, 3.1461, -0.31981, -0.68067};
          T_Q[31, :] := {30, 0.26745, -0.062656, -0.77599, 0.4043};
        elseif PropModel == ShipSIM.Types.Propeller4Q.B4_85_1 then
          T_Q[1, :] := {0, 2.6102, 0, -3.7707, 0};
          T_Q[2, :] := {1, 19.78, -83.385, -31.22, 123.61};
          T_Q[3, :] := {2, 2.5473, -1.3842, -1.192, 0.26523};
          T_Q[4, :] := {3, 1.9337, 13.214, -3.7257, -21.48};
          T_Q[5, :] := {4, -3.0298, -1.4691, 4.2776, 3.6257};
          T_Q[6, :] := {5, -5.0797, 3.3852, 6.2912, -5.1065};
          T_Q[7, :] := {6, 0.9605, 1.5936, -1.3615, -2.5414};
          T_Q[8, :] := {7, 3.2035, -0.025044, -4.6351, 1.1668};
          T_Q[9, :] := {8, -0.48522, -1.1115, 2.0431, 1.5437};
          T_Q[10, :] := {9, -1.5927, 1.9801, 2.7037, -3.6152};
          T_Q[11, :] := {10, 0.066631, 0.97636, -1.0469, -1.7656};
          T_Q[12, :] := {11, 2.2878, 0.41025, -4.173, -0.51881};
          T_Q[13, :] := {12, 0.00111679, -0.27847, 0.36137, 0.87759};
          T_Q[14, :] := {13, 0.073961, 0.74872, -0.28369, -0.52016};
          T_Q[15, :] := {14, 0.595, 0.095637, -0.78457, 0.17533};
          T_Q[16, :] := {15, 1.0609, -0.55969, -0.95078, 1.1217};
          T_Q[17, :] := {16, -0.63953, -0.068172, 1.3838, -0.56001};
          T_Q[18, :] := {17, 0.082122, 0.49803, -0.51436, -0.84591};
          T_Q[19, :] := {18, 0.78204, 0.14477, -1.4185, 0.30022};
          T_Q[20, :] := {19, 0.5709, -0.78111, -0.34278, 1.5616};
          T_Q[21, :] := {20, -0.36914, -0.19997, 1.0912, -0.018423};
          T_Q[22, :] := {21, -0.032885, 0.1814, 0.052872, -0.42394};
          T_Q[23, :] := {22, 0.33895, -0.034312, -0.64971, 0.12852};
          T_Q[24, :] := {23, -0.11647, -0.55144, 0.24277, 0.55345};
          T_Q[25, :] := {24, -0.25801, 0.063289, 0.25687, -0.39165};
          T_Q[26, :] := {25, 0.062052, 0.19735, -0.41882, -0.030776};
          T_Q[27, :] := {26, 0.28105, -0.20256, -0.33611, 0.75088};
          T_Q[28, :] := {27, -0.33189, -0.37134, 0.78826, -0.30283};
          T_Q[29, :] := {28, -0.912, 0.16925, 0.39635, -0.6905};
          T_Q[30, :] := {29, 0.062163, 0.27936, -0.4934, -0.25673};
          T_Q[31, :] := {30, 0.15537, -0.15245, -0.26213, 0.62653};
        elseif PropModel == ShipSIM.Types.Propeller4Q.B4_70_1 then
          T_Q[1, :] := {0, 2.6617, 0, -2.2945, 0};
          T_Q[2, :] := {1, 17.802, -74.797, -26.989, 110.38};
          T_Q[3, :] := {2, 1.3828, -1.3632, -1.8758, -0.52852};
          T_Q[4, :] := {3, 2.7871, 10.246, -6.3552, -16.544};
          T_Q[5, :] := {4, -1.624, -1.0865, 2.1668, 1.929};
          T_Q[6, :] := {5, -5.3084, 4.7346, 7.653, -8.448};
          T_Q[7, :] := {6, 0.1918, 1.1355, -0.56516, -0.90714};
          T_Q[8, :] := {7, 3.8318, -0.9318, -6.2654, 3.1042};
          T_Q[9, :] := {8, -0.22892, -0.72471, 1.9211, 0.68648};
          T_Q[10, :] := {9, -1.8656, 2.3747, 3.3456, -4.5196};
          T_Q[11, :] := {10, 0.349, 0.86208, -1.2956, -1.0928};
          T_Q[12, :] := {11, 2.2321, 0.0070224, -3.1294, -0.044966};
          T_Q[13, :] := {12, -0.35976, -0.36422, 1.2475, 0.72404};
          T_Q[14, :] := {13, 0.13606, 0.91758, -1.4351, -1.5284};
          T_Q[15, :] := {14, 0.47192, 0.089383, -0.83201, -0.23983};
          T_Q[16, :] := {15, 0.87235, -0.59364, 0.034868, 1.6074};
          T_Q[17, :] := {16, -0.35748, -0.070954, 0.89981, -0.66184};
          T_Q[18, :] := {17, 0.35955, 0.48825, -1.4247, -1.2084};
          T_Q[19, :] := {18, 0.52896, -0.090587, -1.1064, 0.58384};
          T_Q[20, :] := {19, 0.21045, -0.81163, 0.27359, 1.3397};
          T_Q[21, :] := {20, -0.27057, -0.056659, 0.6759, -0.29095};
          T_Q[22, :] := {21, 0.10509, 0.12011, -0.57328, -0.089605};
          T_Q[23, :] := {22, 0.27733, -0.13042, -0.22609, 0.54988};
          T_Q[24, :] := {23, -0.11596, -0.48187, 0.70691, 0.14626};
          T_Q[25, :] := {24, -0.1745, 0.045412, -0.030228, -0.4838};
          T_Q[26, :] := {25, 0.040782, -0.019469, -0.46043, 0.38709};
          T_Q[27, :] := {26, 0.099247, -0.21858, 0.25629, 0.72114};
          T_Q[28, :] := {27, -0.3465, -0.16314, 0.76092, -0.13767};
          T_Q[29, :] := {28, -0.12357, 0.14865, 0.0026235, -0.45823};
          T_Q[30, :] := {29, 0.063929, 0.10185, -0.19316, 0.1052};
          T_Q[31, :] := {30, 0.061933, -0.16735, 0.31487, 0.27547};
        elseif PropModel == ShipSIM.Types.Propeller4Q.B4_55_1 then
          T_Q[1, :] := {0, 3.4064, 0, -4.4164, 0};
          T_Q[2, :] := {1, 16.145, -63.411, -24.434, 88.771};
          T_Q[3, :] := {2, 0.17506, -1.1389, 3.3492, -2.6891};
          T_Q[4, :] := {3, 2.9221, 5.2075, -4.9793, -5.5156};
          T_Q[5, :] := {4, -0.56875, -0.82996, -1.3605, 3.0992};
          T_Q[6, :] := {5, -5.2907, 6.4256, 4.6743, -12.714};
          T_Q[7, :] := {6, 0.15641, 0.92855, 0.137913, -1.5158};
          T_Q[8, :] := {7, 3.9211, -0.59179, -1.9481, 2.8294};
          T_Q[9, :] := {8, -0.50689, -0.37997, 2.6848, 1.1595};
          T_Q[10, :] := {9, -1.4437, 0.18518, -1.0396, -2.8652};
          T_Q[11, :] := {10, 0.55005, 0.38178, -2.2505, -0.46642};
          T_Q[12, :] := {11, 1.1986, -0.066059, 0.29114, -1.1678};
          T_Q[13, :] := {12, -0.23543, -0.027401, 1.137, -0.91904};
          T_Q[14, :] := {13, 0.65241, 1.0085, -2.5187, 0.086949};
          T_Q[15, :] := {14, 0.28688, -0.13712, 0.23806, 1.4642};
          T_Q[16, :] := {15, 0.173, -0.69713, -0.0042229, 0.1278};
          T_Q[17, :] := {16, -0.21127, 0.27074, -0.67432, -1.3332};
          T_Q[18, :] := {17, 0.67966, 0.43689, -0.7663, 0.3962};
          T_Q[19, :] := {18, 0.26391, -0.32628, 0.60254, 0.75362};
          T_Q[20, :] := {19, -0.10945, -0.54754, -0.19228, -0.19235};
          T_Q[21, :] := {20, 0.02224, 0.14242, -0.63017, 0.39452};
          T_Q[22, :] := {21, 0.33699, -0.14012, -0.039738, 1.0624};
          T_Q[23, :] := {22, -0.13877, -0.23628, 0.66197, -0.65197};
          T_Q[24, :] := {23, -0.3114, -0.11184, -0.19484, -0.18034};
          T_Q[25, :] := {24, 0.10828, 0.17998, -0.29096, 0.61558};
          T_Q[26, :] := {25, 0.11705, -0.18777, 0.69327, 0.44397};
          T_Q[27, :] := {26, -0.048567, -0.10904, 0.015987, -0.27923};
          T_Q[28, :] := {27, -0.1921, 0.013036, -0.34259, 0.09716};
          T_Q[29, :] := {28, 0.13741, -0.036628, 0.3656, 0.19218};
          T_Q[30, :] := {29, -0.060125, -0.0993, 0.50379, -0.41757};
          T_Q[31, :] := {30, -0.13257, -0.015754, -0.43807, -0.30054};
        elseif PropModel == ShipSIM.Types.Propeller4Q.B4_40_1 then
          T_Q[1, :] := {0, 2.6614, 0, -3.0164, 0};
          T_Q[2, :] := {1, 15.21, -45.208, -22.609, 62.798};
          T_Q[3, :] := {2, 0.58496, -0.25662, 2.8027, -3.557};
          T_Q[4, :] := {3, 0.124, -2.1958, -0.40627, 4.3225};
          T_Q[5, :] := {4, 0.58317, -0.68275, -1.3371, 0.7427};
          T_Q[6, :] := {5, -1.4497, 6.8057, 0.0080854, -11.474};
          T_Q[7, :] := {6, -0.23586, -0.013586, -0.30625, 0.56226};
          T_Q[8, :] := {7, 0.14112, 1.5949, 0.68395, -3.2668};
          T_Q[9, :] := {8, -0.25652, 0.2359, 0.08267, -0.034084};
          T_Q[10, :] := {9, 1.1617, -0.44863, -1.5681, 1.228};
          T_Q[11, :] := {10, -0.069024, -0.20488, 0.58928, 0.31488};
          T_Q[12, :] := {11, 0.48012, 0.72939, -1.3963, -1.0651};
          T_Q[13, :] := {12, 0.12225, 0.11758, -0.063161, 0.32814};
          T_Q[14, :] := {13, 0.018858, 0.63909, -0.099631, -0.91986};
          T_Q[15, :] := {14, 0.041708, 0.094342, 0.061397, -0.18077};
          T_Q[16, :] := {15, 0.53829, -0.2558, -0.7453, 0.69849};
          T_Q[17, :] := {16, 0.067385, -0.20823, 0.44171, 0.087367};
          T_Q[18, :] := {17, 0.48559, -0.12937, -0.8006, 0.062145};
          T_Q[19, :] := {18, 0.046868, -0.13876, 0.082415, 0.14682};
          T_Q[20, :] := {19, 0.038216, -0.067134, 0.079696, -0.22208};
          T_Q[21, :] := {20, -0.029226, 0.028668, -0.021586, -0.27584};
          T_Q[22, :] := {21, 0.060614, -0.18953, 0.016083, 0.36942};
          T_Q[23, :] := {22, 0.008474, -0.074945, 0.14863, -0.04301};
          T_Q[24, :] := {23, 0.094147, -0.1468, -0.21349, 0.32712};
          T_Q[25, :] := {24, 0.02939, -0.10319, -0.069116, 0.073986};
          T_Q[26, :] := {25, -0.058038, -0.082363, 0.096105, 0.090497};
          T_Q[27, :] := {26, -0.066301, 0.00096922, -0.1056, -0.18117};
          T_Q[28, :] := {27, -0.089282, -0.10354, 0.10245, 0.13436};
          T_Q[29, :] := {28, -0.059148, 0.04291, 0.05715, -0.077223};
          T_Q[30, :] := {29, -0.032278, -0.098394, 0.050088, 0.10368};
          T_Q[31, :] := {30, 0.042074, -0.03159, -0.084056, 0.098427};
        elseif PropModel == ShipSIM.Types.Propeller4Q.B3_65_1 then
          T_Q[1, :] := {0, 1.6498, 0, -3.3605, 0};
          T_Q[2, :] := {1, 18.754, -73.236, -27.953, 107.91};
          T_Q[3, :] := {2, 1.4666, -1.08, 0.78796, -0.37911};
          T_Q[4, :] := {3, 2.7847, 8.4217, -6.9239, -12.147};
          T_Q[5, :] := {4, -1.345, -0.66913, 0.58625, 2.8089};
          T_Q[6, :] := {5, -7.3355, 7.4183, 10.047, -12.642};
          T_Q[7, :] := {6, 0.16449, -0.57837, 1.0484, 0.14085};
          T_Q[8, :] := {7, 6.1982, -2.8837, -8.1929, 5.1415};
          T_Q[9, :] := {8, -1.3221, 0.60458, 1.8096, 0.44144};
          T_Q[10, :] := {9, -2.3546, 3.1942, 3.1796, -4.8316};
          T_Q[11, :] := {10, 0.7319, -0.057098, -1.3911, -1.535};
          T_Q[12, :] := {11, 1.691, -0.69568, -1.3941, 0.83412};
          T_Q[13, :] := {12, -0.36303, 0.19927, 1.3403, 1.2032};
          T_Q[14, :] := {13, 1.3126, 1.5548, -3.191, -2.2482};
          T_Q[15, :] := {14, 0.44006, -0.10376, -1.1882, -0.51464};
          T_Q[16, :] := {15, -0.13953, -1.43, 0.93999, 2.1294};
          T_Q[17, :] := {16, -0.18083, 0.50044, 1.1745, -0.64138};
          T_Q[18, :] := {17, 1.1899, 0.53262, -2.2996, -0.61401};
          T_Q[19, :] := {18, -0.50567, -0.44117, -1.2528, 0.74075};
          T_Q[20, :] := {19, -0.448304, -0.86731, 0.64176, 0.83404};
          T_Q[21, :] := {20, 0.096625, 0.25883, 0.792, -0.67309};
          T_Q[22, :] := {21, 0.6014, -0.28861, -0.68939, 0.95343};
          T_Q[23, :] := {22, -0.14015, -0.52302, -0.33659, 0.8142};
          T_Q[24, :] := {23, -0.66617, -0.15084, 0.92414, -0.04129};
          T_Q[25, :] := {24, 0.29043, 0.3046, -0.21777, -0.93633};
          T_Q[26, :] := {25, 0.27327, -0.41341, -0.23964, 0.67242};
          T_Q[27, :] := {26, -0.33217, -0.44725, 0.36577, 1.1905};
          T_Q[28, :] := {27, -0.53551, 0.29332, 0.60258, -0.41223};
          T_Q[29, :] := {28, 0.20456, 0.09312, -0.37933, -0.68135};
          T_Q[30, :] := {29, 0.059079, -0.29783, 0.0084302, 0.35205};
          T_Q[31, :] := {30, -0.42272, 0.034593, 0.73971, 0.20847};
        elseif PropModel == ShipSIM.Types.Propeller4Q.B5_75_1 then
          T_Q[1, :] := {0, 2.3789, 0, -3.6237, 0};
          T_Q[2, :] := {1, 18.34, -77.904, -27.937, 115.96};
          T_Q[3, :] := {2, 2.0488, -1.076, -0.66299, -2.3242};
          T_Q[4, :] := {3, 3.0441, 11.434, -5.4467, -18.178};
          T_Q[5, :] := {4, -1.8902, -1.3412, 2.9313, 3.1306};
          T_Q[6, :] := {5, -4.5797, 4.4769, 6.6296, -8.5578};
          T_Q[7, :] := {6, 0.073021, 1.3343, -1.1661, -1.9796};
          T_Q[8, :] := {7, 3.0675, -0.25793, -6.1682, 1.6154};
          T_Q[9, :] := {8, 0.030931, -0.79416, 0.81564, 1.9766};
          T_Q[10, :] := {9, -1.4792, 1.6931, 3.1021, -2.5492};
          T_Q[11, :] := {10, 0.32953, 0.95293, -0.95864, -1.4119};
          T_Q[12, :] := {11, 2.1375, 0.48815, -2.8222, -0.91978};
          T_Q[13, :] := {12, -0.17534, -0.4346, 1.0404, 1.0268};
          T_Q[14, :] := {13, 0.21329, 0.67918, -1.0788, -1.1279};
          T_Q[15, :] := {14, 0.56549, 0.053468, -1.1154, -0.13153};
          T_Q[16, :] := {15, 0.99086, -0.48632, -1.0726, 1.2651};
          T_Q[17, :] := {16, -0.39362, -0.14606, 1.2754, 0.055412};
          T_Q[18, :] := {17, 0.45302, 0.090688, -0.42667, -0.68496};
          T_Q[19, :] := {18, 0.53874, 0.070976, -0.70961, -0.23291};
          T_Q[20, :] := {19, 0.40051, -0.75991, -0.54691, 1.5048};
          T_Q[21, :] := {20, -0.3743, -0.15624, 0.55781, -0.0013578};
          T_Q[22, :] := {21, 0.03935, -0.26295, -0.068255, -0.068908};
          T_Q[23, :] := {22, 0.13076, -0.029191, -0.45442, 0.31262};
          T_Q[24, :] := {23, -0.12747, -0.55584, 0.38597, 0.67113};
          T_Q[25, :] := {24, -0.17155, 0.070082, 0.43641, -0.25323};
          T_Q[26, :] := {25, -0.15631, -0.056891, -0.10643, 0.043119};
          T_Q[27, :] := {26, 0.088063, -0.091075, -0.20786, 0.20504};
          T_Q[28, :] := {27, -0.33143, -0.20419, 0.54863, 0.38239};
          T_Q[29, :] := {28, -0.067347, 0.12815, 0.34089, -0.32364};
          T_Q[30, :] := {29, -0.12643, 0.067695, 0.035566, -0.32854};
          T_Q[31, :] := {30, 0.078595, -0.054265, -0.085156, 0.254};
        elseif PropModel == ShipSIM.Types.Propeller4Q.B6_80_1 then
          T_Q[1, :] := {0, 2.3885, 0, -3.9554, 0};
          T_Q[2, :] := {1, 18.569, -80.26, -29.939, 118.21};
          T_Q[3, :] := {2, 2.349, -0.89144, 0.37349, -1.8342};
          T_Q[4, :] := {3, 2.6931, 12.31, -2.4912, -19.364};
          T_Q[5, :] := {4, -1.5836, -1.6402, 1.4604, 3.3206};
          T_Q[6, :] := {5, -3.7031, 4.5511, 5.5565, -7.9312};
          T_Q[7, :] := {6, -0.17271, 1.357, -0.36161, -2.7975};
          T_Q[8, :] := {7, 2.8126, 0.23926, -5.9253, 0.69709};
          T_Q[9, :] := {8, 0.2676, -0.70718, -0.28201, 2.2282};
          T_Q[10, :] := {9, -0.87374, 1.0863, 2.9389, -1.5005};
          T_Q[11, :] := {10, -0.16643, 0.73646, -0.13655, -1.3884};
          T_Q[12, :] := {11, 2.3165, 0.5447, -2.9405, -1.715};
          T_Q[13, :] := {12, -0.10879, -0.39224, 0.84505, 0.53582};
          T_Q[14, :] := {13, 0.10513, 0.17634, -0.7141, -0.98608};
          T_Q[15, :] := {14, 0.47152, 0.33659, -0.86231, -0.27418};
          T_Q[16, :] := {15, 0.934, -0.3504, -1.5616, 1.0052};
          T_Q[17, :] := {16, -0.19368, -0.10975, 0.85605, 0.64888};
          T_Q[18, :] := {17, 0.24676, -0.13452, -0.31555, -0.20859};
          T_Q[19, :] := {18, 0.45864, 0.11536, -0.41001, -0.67037};
          T_Q[20, :] := {19, 0.2371, -0.65161, -0.56112, 1.231};
          T_Q[21, :] := {20, -0.1466, -0.30074, 0.28685, 0.1856};
          T_Q[22, :] := {21, -0.17395, -0.1416, 0.17783, 0.056991};
          T_Q[23, :] := {22, 0.19594, -0.084092, -0.24137, 0.12699};
          T_Q[24, :] := {23, -0.14369, -0.35306, 0.17339, 0.73894};
          T_Q[25, :] := {24, -0.079146, -0.0625, 0.34547, -0.050377};
          T_Q[26, :] := {25, -0.16577, -0.016184, 0.19101, -0.035304};
          T_Q[27, :] := {26, -0.03862, -0.1217, -0.30316, 0.021677};
          T_Q[28, :] := {27, -0.20606, -0.083304, 0.30303, 0.27516};
          T_Q[29, :] := {28, -0.20522, -0.0009112, 0.41374, -0.065413};
          T_Q[30, :] := {29, -0.1326, 0.12761, 0.16729, -0.24137};
          T_Q[31, :] := {30, 0.0054342, 0.027347, -0.01632, 0.04653};
        elseif PropModel == ShipSIM.Types.Propeller4Q.B7_85_1 then
          T_Q[1, :] := {0, 2.4389, 0, -5.7064, 0};
          T_Q[2, :] := {1, 18.694, -82.814, -31.175, 121.67};
          T_Q[3, :] := {2, 2.6744, -0.54262, 1.9723, -3.5015};
          T_Q[4, :] := {3, 2.2275, 12.694, -1.187, -19.599};
          T_Q[5, :] := {4, -1.1903, -1.3735, 1.3971, 3.3644};
          T_Q[6, :] := {5, -2.9845, 4.6985, 4.4535, -8.6978};
          T_Q[7, :] := {6, -0.27776, 1.1718, -0.45063, -2.9361};
          T_Q[8, :] := {7, 2.3045, 0.81697, -5.7248, -0.20754};
          T_Q[9, :] := {8, 0.883, -0.51393, -1.3039, 2.0728};
          T_Q[10, :] := {9, -1.1551, 0.72295, 2.2518, -0.65947};
          T_Q[11, :] := {10, 0.015601, 0.55451, 0.015788, -0.34937};
          T_Q[12, :] := {11, 1.9953, 0.83004, -2.2074, -1.6684};
          T_Q[13, :] := {12, -0.051119, -0.51602, 0.79638, 0.05794};
          T_Q[14, :] := {13, 0.24584, 0.41596, -0.54973, -0.82227};
          T_Q[15, :] := {14, 0.46208, 0.19881, -0.60304, -0.40748};
          T_Q[16, :] := {15, 0.99117, -0.13658, -1.9476, 0.53464};
          T_Q[17, :] := {16, -0.17561, -0.42832, 0.66914, 0.75114};
          T_Q[18, :] := {17, 0.31567, -0.17465, -0.61779, 0.1395};
          T_Q[19, :] := {18, 0.29311, 0.17519, -0.3178, -0.7042};
          T_Q[20, :] := {19, 0.43665, -0.60453, -0.40365, 1.0987};
          T_Q[21, :] := {20, -0.24989, -0.24513, 0.050233, 0.3074};
          T_Q[22, :] := {21, -0.014826, -0.23031, 0.043532, 0.15874};
          T_Q[23, :] := {22, 0.12522, 0.098137, 0.012015, 0.10332};
          T_Q[24, :] := {23, -0.099886, -0.39983, 0.2052, 0.74456};
          T_Q[25, :] := {24, -0.09605, -0.11309, 0.091405, -0.12885};
          T_Q[26, :] := {25, -0.19669, -0.083862, 0.29537, 0.072704};
          T_Q[27, :] := {26, 0.070053, 0.028767, -0.24191, -0.030231};
          T_Q[28, :] := {27, -0.25764, -0.28235, 0.25944, 0.18741};
          T_Q[29, :] := {28, -0.19363, 0.010305, 0.16245, -0.082735};
          T_Q[30, :] := {29, -0.18412, 0.15327, 0.41608, -0.090507};
          T_Q[31, :] := {30, 0.11147, -0.0084083, 0.092657, 0.013142};
        elseif PropModel == ShipSIM.Types.Propeller4Q.B4_70_5 then
          T_Q[1, :] := {0, 5.0001, 0, -3.2792, 0};
          T_Q[2, :] := {1, 5.876, -80.271, -5.2552, 61.374};
          T_Q[3, :] := {2, -2.2733, -1.2337, 2.6413, -1.1267};
          T_Q[4, :] := {3, 2.1575, 11.762, -3.4908, -9.8851};
          T_Q[5, :] := {4, -0.56527, -1.1263, -0.19581, 1.1875};
          T_Q[6, :] := {5, -3.9577, 3.9944, 3.1287, -4.0676};
          T_Q[7, :] := {6, 0.45509, 0.82148, -0.56581, -0.21526};
          T_Q[8, :] := {7, 3.2426, -0.40882, -2.0201, 2.0145};
          T_Q[9, :] := {8, -0.4235, -0.57539, 0.44606, 0.45146};
          T_Q[10, :] := {9, -2.0298, 1.7398, 0.3988, -1.8924};
          T_Q[11, :] := {10, -0.0023261, 0.83612, 0.03552, -0.2137};
          T_Q[12, :] := {11, 1.6667, -0.079228, 0.37716, 0.26951};
          T_Q[13, :] := {12, 0.096252, -0.52069, -0.10241, -0.009078};
          T_Q[14, :] := {13, -0.3764, 0.58585, -0.84055, -0.58152};
          T_Q[15, :] := {14, -0.1371, 0.21697, 0.16432, 0.34793};
          T_Q[16, :] := {15, 0.62941, -0.034327, 0.31864, -0.097472};
          T_Q[17, :] := {16, 0.069047, -0.093112, -0.0053692, -0.35771};
          T_Q[18, :] := {17, 0.15705, 0.30087, -0.59511, 0.15756};
          T_Q[19, :] := {18, 0.13879, -0.068619, 0.12325, 0.14972};
          T_Q[20, :] := {19, 0.23373, -0.25555, -0.022804, -0.25339};
          T_Q[21, :] := {20, 0.053738, -0.092172, -0.14037, -0.037172};
          T_Q[22, :] := {21, 0.082336, 0.074118, -0.11026, 0.20516};
          T_Q[23, :] := {22, 0.045903, -0.038721, 0.15237, -0.070022};
          T_Q[24, :] := {23, 0.1006, -0.2707, -0.27863, -0.055053};
          T_Q[25, :] := {24, -0.010524, -0.12257, -0.070256, 0.10883};
          T_Q[26, :] := {25, -0.037495, -0.11908, 0.0255, 0.17391};
          T_Q[27, :] := {26, -0.12019, 0.034708, 0.052602, -0.081579};
          T_Q[28, :] := {27, 0.020932, -0.08422, -0.12466, 0.088518};
          T_Q[29, :] := {28, -0.0099185, -0.062135, 0.062962, 0.058771};
          T_Q[30, :] := {29, -0.05637, -0.099182, 0.015253, 0.071292};
          T_Q[31, :] := {30, -0.14427, 0.038918, 0.008455, -0.012361};
        elseif PropModel == ShipSIM.Types.Propeller4Q.B4_70_6 then
          T_Q[1, :] := {0, 3.8804, 0, -3.0251, 0};
          T_Q[2, :] := {1, 8.3653, -79.381, -8.3989, 73.285};
          T_Q[3, :] := {2, -0.85859, -1.3907, 0.71692, -0.434};
          T_Q[4, :] := {3, 2.3607, 11.251, -4.079, -10.188};
          T_Q[5, :] := {4, -1.0596, -0.78851, -1.1812, 1.8683};
          T_Q[6, :] := {5, -4.1596, 4.2391, 3.7134, -5.4538};
          T_Q[7, :] := {6, 0.46247, 0.94902, -0.05967, -0.44193};
          T_Q[8, :] := {7, 3.333, -0.43077, -1.6205, 2.4562};
          T_Q[9, :] := {8, -0.37098, -0.90581, 0.66419, -0.19151};
          T_Q[10, :] := {9, -1.9768, 1.6585, 0.50947, -2.8162};
          T_Q[11, :] := {10, -0.11972, 0.86297, -0.44153, -0.49213};
          T_Q[12, :] := {11, 1.757, -0.079001, 0.014705, 0.26996};
          T_Q[13, :] := {12, 0.027679, -0.60216, 0.080409, -0.066335};
          T_Q[14, :] := {13, -0.43212, 0.80185, -1.2038, -0.80036};
          T_Q[15, :] := {14, 0.028939, 0.34344, -0.10362, 0.51807};
          T_Q[16, :] := {15, 0.78009, -0.16327, 0.37694, -0.21008};
          T_Q[17, :] := {16, -0.0080617, -0.003006, -0.040115, -0.76038};
          T_Q[18, :] := {17, 0.19424, 0.44053, -0.98726, 0.24171};
          T_Q[19, :] := {18, 0.12056, 0.054953, 0.082172, 0.34793};
          T_Q[20, :] := {19, 0.35168, -0.40025, -0.070744, -0.26115};
          T_Q[21, :] := {20, -0.067099, -0.176, -0.10326, -0.013431};
          T_Q[22, :] := {21, 0.12167, 0.13029, -0.11046, 0.44147};
          T_Q[23, :] := {22, 0.16065, -0.0014661, 0.22583, -0.07351};
          T_Q[24, :] := {23, 0.18555, -0.30406, -0.30042, -0.17194};
          T_Q[25, :] := {24, -0.052739, -0.17165, -0.28688, 0.10443};
          T_Q[26, :] := {25, -0.038986, -0.031444, 0.11911, 0.45408};
          T_Q[27, :] := {26, -0.085151, 0.022516, 0.19927, -0.089083};
          T_Q[28, :] := {27, 0.020961, -0.10705, -0.16814, -0.015384};
          T_Q[29, :] := {28, -0.051549, -0.095616, 0.023093, 0.17106};
          T_Q[30, :] := {29, -0.083052, -0.071008, 0.20092, 0.0065482};
          T_Q[31, :] := {30, -0.038942, 0.05025, -0.028048, -0.11218};
        elseif PropModel == ShipSIM.Types.Propeller4Q.B4_70_8 then
          T_Q[1, :] := {0, 2.8757, 0, -2.5783, 0};
          T_Q[2, :] := {1, 13.007, -77.762, -15.727, 93.08};
          T_Q[3, :] := {2, 0.62869, -1.3032, -0.6896, -0.20482};
          T_Q[4, :] := {3, 2.8104, 10.58, -5.4402, -13.786};
          T_Q[5, :] := {4, -1.6832, -1.0413, 2.4674, 1.5588};
          T_Q[6, :] := {5, -4.4894, 4.5769, 5.0717, -6.8953};
          T_Q[7, :] := {6, 0.37703, 1.4296, -1.1964, -0.19773};
          T_Q[8, :] := {7, 3.1647, -0.39612, -3.1161, 3.1295};
          T_Q[9, :] := {8, -0.13492, -0.9917, 1.5838, -0.011366};
          T_Q[10, :] := {9, -1.9905, 2.0759, 1.4925, -4.0967};
          T_Q[11, :] := {10, 0.17576, 0.90153, -0.90898, -0.3281};
          T_Q[12, :] := {11, 1.975, -0.029877, -1.2135, 0.79539};
          T_Q[13, :] := {12, -0.11063, -0.56354, 0.50126, -0.26624};
          T_Q[14, :] := {13, -0.069828, 0.94773, -1.4143, -1.4536};
          T_Q[15, :] := {14, 0.25665, 0.23681, -0.18873, 0.68666};
          T_Q[16, :] := {15, 0.80681, -0.53204, 0.15422, 0.45499};
          T_Q[17, :] := {16, -0.18781, -0.071537, 0.17294, -0.84792};
          T_Q[18, :] := {17, 0.29821, 0.52768, -1.333, -0.15911};
          T_Q[19, :] := {18, 0.48643, 0.0174, -0.2262, 0.59733};
          T_Q[20, :] := {19, 0.33893, -0.68105, 0.14299, 0.25445};
          T_Q[21, :] := {20, -0.26851, -0.204, -0.045335, -0.21991};
          T_Q[22, :] := {21, 0.096098, 0.14086, -0.40051, 0.47535};
          T_Q[23, :] := {22, 0.2145, -0.057914, 0.20629, 0.15397};
          T_Q[24, :] := {23, 0.06644, -0.44898, -0.069705, -0.073692};
          T_Q[25, :] := {24, -0.1321, -0.11454, -0.18254, -0.022654};
          T_Q[26, :] := {25, 0.016378, -0.012005, -0.056307, 0.47256};
          T_Q[27, :] := {26, 0.012367, -0.11932, 0.24282, 0.13061};
          T_Q[28, :] := {27, -0.16113, -0.24427, 0.079606, -0.061311};
          T_Q[29, :] := {28, -0.10536, 0.049882, -0.069503, 0.0097692};
          T_Q[30, :] := {29, -0.041139, 0.063587, 0.080075, 0.13102};
          T_Q[31, :] := {30, -0.0089569, -0.073611, 0.042156, -0.019047};
        elseif PropModel == ShipSIM.Types.Propeller4Q.B4_70_12 then
          T_Q[1, :] := {0, 2.4003, 0, -3.9384, 0};
          T_Q[2, :] := {1, 22.762, -71.042, -41.114, 125.78};
          T_Q[3, :] := {2, 1.7143, -1.2393, 0.56015, -0.30172};
          T_Q[4, :] := {3, 2.1316, 9.2564, -6.7469, -19.193};
          T_Q[5, :] := {4, -1.4846, -1.3138, 0.76472, 3.0528};
          T_Q[6, :] := {5, -5.912, 4.926, 10.259, -9.353};
          T_Q[7, :] := {6, 0.025876, 0.78601, 1.6558, -1.6738};
          T_Q[8, :] := {7, 4.2514, -1.0738, -9.7787, 2.4956};
          T_Q[9, :] := {8, -0.28765, -0.37068, 0.33065, 1.6433};
          T_Q[10, :] := {9, -1.8761, 2.803, 5.0625, -4.2091};
          T_Q[11, :] := {10, 0.50888, 0.48259, -1.2604, -2.3535};
          T_Q[12, :] := {11, 2.3192, -0.053271, -4.5527, -1.0521};
          T_Q[13, :] := {12, -0.40999, -0.39799, 0.95818, 1.7638};
          T_Q[14, :] := {13, 0.63295, 0.95456, -0.65886, -1.4926};
          T_Q[15, :] := {14, 0.6453, 0.00062669, -1.3658, -0.52861};
          T_Q[16, :] := {15, 0.55885, -0.99188, -1.4995, 2.1916};
          T_Q[17, :] := {16, -0.30962, 0.031957, 1.2968, 0.29604};
          T_Q[18, :] := {17, 0.47413, 0.42703, -0.12656, -1.4969};
          T_Q[19, :] := {18, 0.40053, -0.32774, -1.4665, -0.23462};
          T_Q[20, :] := {19, 0.099838, -1.0834, -1.163, 2.1835};
          T_Q[21, :] := {20, -0.18166, 0.01807, 0.67022, 0.7094};
          T_Q[22, :] := {21, 0.040827, 0.038407, 0.48209, -0.40565};
          T_Q[23, :] := {22, 0.038262, -0.31692, -0.42282, 0.43493};
          T_Q[24, :] := {23, -0.41911, -0.39395, 0.39209, 1.01};
          T_Q[25, :] := {24, -0.083219, 0.066227, 0.71664, -0.1704};
          T_Q[26, :] := {25, 0.070326, -0.029338, -0.22312, -0.50326};
          T_Q[27, :] := {26, -0.10107, -0.22194, -0.41788, 0.62064};
          T_Q[28, :] := {27, -0.54178, 0.0080383, 0.65396, 0.73711};
          T_Q[29, :] := {28, -0.027507, 0.15926, 0.9811, -0.17595};
          T_Q[30, :] := {29, 0.042468, 0.15056, 0.10324, -0.80327};
          T_Q[31, :] := {30, -0.13783, -0.045321, -0.083362, -0.036084};
        elseif PropModel == ShipSIM.Types.Propeller4Q.B4_70_14 then
          T_Q[1, :] := {0, 1.8891, 0, -6.273, 0};
          T_Q[2, :] := {1, 28.033, -65.683, -59.067, 137.18};
          T_Q[3, :] := {2, 1.886, -0.23066, 3.4811, -0.060201};
          T_Q[4, :] := {3, 0.59973, 7.4446, -4.3989, -20.555};
          T_Q[5, :] := {4, -1.0858, -1.2398, -0.4052, 3.3632};
          T_Q[6, :] := {5, -6.4362, 4.7921, 11.843, -8.9586};
          T_Q[7, :] := {6, -0.15631, 0.71695, 3.086, -2.6638};
          T_Q[8, :] := {7, 5.0311, 0.034276, -13.137, -0.9819};
          T_Q[9, :] := {8, -0.063924, -0.29434, -1.4057, 2.2511};
          T_Q[10, :] := {9, -2.0315, 2.0101, 5.6834, -0.87269};
          T_Q[11, :] := {10, 0.60866, 0.27097, 0.26129, -3.1696};
          T_Q[12, :] := {11, 1.8917, 0.1648, -4.5913, -3.3156};
          T_Q[13, :] := {12, -0.41935, -0.17983, -0.58107, 2.1286};
          T_Q[14, :] := {13, 0.67181, 1.0989, -0.12353, -1.0776};
          T_Q[15, :] := {14, 0.6423, -0.16326, -1.6486, -1.3561};
          T_Q[16, :] := {15, 0.72715, -1.3135, -4.3524, 2.0842};
          T_Q[17, :] := {16, -0.17483, -0.0030559, 0.95606, 2.0193};
          T_Q[18, :] := {17, 0.17548, 0.46619, 2.0063, 0.33011};
          T_Q[19, :] := {18, 0.3548, -0.39988, -0.67764, -1.0371};
          T_Q[20, :] := {19, 0.0797, -0.74616, -2.086, 1.3432};
          T_Q[21, :] := {20, -0.099109, 0.018552, 0.10021, 1.2629};
          T_Q[22, :] := {21, 0.22019, -0.091938, 1.4317, 0.39292};
          T_Q[23, :] := {22, -0.04753, -0.41697, -0.40246, -0.15316};
          T_Q[24, :] := {23, -0.52461, -0.30539, -0.34768, 1.2626};
          T_Q[25, :] := {24, 0.053469, 0.14211, 1.1234, 1.106};
          T_Q[26, :] := {25, 0.09951, 0.063486, 1.822, -0.76676};
          T_Q[27, :] := {26, -0.16191, -0.27402, -0.34224, -0.71063};
          T_Q[28, :] := {27, -0.34163, 0.0092732, -0.67856, 0.078099};
          T_Q[29, :] := {28, 0.025212, 0.11064, 0.8999, 0.70479};
          T_Q[30, :] := {29, 0.0046286, -0.017769, 0.8462, -0.66394};
          T_Q[31, :] := {30, -0.20432, 0.0064717, -0.084567, -0.61846};
        else
          T_Q[1, :] := {0, 0, 0, 0, 0};
          T_Q[2, :] := {1, 0, 0, 0, 0};
          T_Q[3, :] := {2, 0, 0, 0, 0};
          T_Q[4, :] := {3, 0, 0, 0, 0};
          T_Q[5, :] := {4, 0, 0, 0, 0};
          T_Q[6, :] := {5, 0, 0, 0, 0};
          T_Q[7, :] := {6, 0, 0, 0, 0};
          T_Q[8, :] := {7, 0, 0, 0, 0};
          T_Q[9, :] := {8, 0, 0, 0, 0};
          T_Q[10, :] := {9, 0, 0, 0, 0};
          T_Q[11, :] := {10, 0, 0, 0, 0};
          T_Q[12, :] := {11, 0, 0, 0, 0};
          T_Q[13, :] := {12, 0, 0, 0, 0};
          T_Q[14, :] := {13, 0, 0, 0, 0};
          T_Q[15, :] := {14, 0, 0, 0, 0};
          T_Q[16, :] := {15, 0, 0, 0, 0};
          T_Q[17, :] := {16, 0, 0, 0, 0};
          T_Q[18, :] := {17, 0, 0, 0, 0};
          T_Q[19, :] := {18, 0, 0, 0, 0};
          T_Q[20, :] := {19, 0, 0, 0, 0};
          T_Q[21, :] := {20, 0, 0, 0, 0};
          T_Q[22, :] := {21, 0, 0, 0, 0};
          T_Q[23, :] := {22, 0, 0, 0, 0};
          T_Q[24, :] := {23, 0, 0, 0, 0};
          T_Q[25, :] := {24, 0, 0, 0, 0};
          T_Q[26, :] := {25, 0, 0, 0, 0};
          T_Q[27, :] := {26, 0, 0, 0, 0};
          T_Q[28, :] := {27, 0, 0, 0, 0};
          T_Q[29, :] := {28, 0, 0, 0, 0};
          T_Q[30, :] := {29, 0, 0, 0, 0};
          T_Q[31, :] := {30, 0, 0, 0, 0};
          T_Q[29, :] := {28, 0, 0, 0, 0};
          T_Q[30, :] := {29, 0, 0, 0, 0};
          T_Q[31, :] := {30, 0, 0, 0, 0};
        end if;
        annotation(
          Documentation(revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0 (21/04/2023): Initial release</span></body></html>", info = "<html><head></head><body><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Ct* &amp; Cq* coefficient matrix for the following 14 wageningen B-series:&nbsp;</span></div><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></span></div><div><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_100_1 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"4_100 P/D=1.0\"</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_85_1 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"4_85 P/D=1.0\"</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_70_1 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"4_70 P/D=1.0\"</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_55_1 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"4_55 P/D=1.0\"</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_40_1 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"4_40 P/D=1.0\"</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B3_65_1 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"3_65 P/D=1.0\"</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B5_75_1 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"5_75 P/D=1.0\"</span><span style=\"font-family: 'Courier New'; font-size: 12pt;\">&nbsp;</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B6_80_1 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"6_80 P/D=1.0\"</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B7_85_1 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"7_85 P/D=1.0\"</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_70_5 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"4_70 P/D=0.5\"</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_70_6 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"4_70 P/D=0.6\"</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_70_8 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"4_70 P/D=0.8\"</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_70_12 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"4_70 P/D=1.2\"</span><span style=\"font-family: 'Courier New'; font-size: 12pt;\">&nbsp;</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_70_14 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"4_70 P/D=1.4\"</span></pre></div><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></span></div><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">obtained from:</span></div><div><br><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[Roddy]</td><td>Robert F. Roddy, David E. Hess, Will Faller, \"Neural network predictions of the 4-quadrant Wageningen propeller series\", David Taylor Model Basin - April 2006,&nbsp;<a href=\"https://apps.dtic.mil/sti/pdfs/ADA455497.pdf\">NSWCCD-50-TR-2006/004</a><br></td></tr></tbody></table></div></body></html>"));
      end WageningenB_4Q_Matrix;

      function CavitationLimit_MS "Merchant ship Burrill cavitation limit percentage"
        extends Modelica.Icons.Function;
        input Real Thrust_Load "Thrust load coefficient";
        input Real Cavitation_Number "Cavitation number at 0.7R";
        output Real CavitationPercentage "Percentage of the limit [0-1 or >1]";
      protected
        Real CavitationLimit;
      algorithm
        if Cavitation_Number < 0.124 then
          CavitationLimit := 0.075;
        elseif Cavitation_Number > 1.5 then
          CavitationLimit := 0.338;
        else
          CavitationLimit := -0.086514*Cavitation_Number^4 + 0.33891*Cavitation_Number^3 - 0.51222*Cavitation_Number^2 + 0.5111*Cavitation_Number + 0.018006;
        end if;
        CavitationPercentage := Thrust_Load/CavitationLimit;
        annotation(
          Documentation(info = "<html><head></head><body>Cavitation limit percentage using the Burrill diagram for common merchant ships propellers.</body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0 (23/04/2023): Initial release</span></body></html>"));
      end CavitationLimit_MS;
    end PropellerFunctions;

    function NACA0018
      extends Modelica.Icons.Function;
      input Real BetaRad "Attack angle";
      input Real Re "Reynolds number";
      input Real Asp "Aspect Ratio";
      output Real Cl "Lift coefficient";
      output Real Cd "Draft coefficient";
      output Real Cm "Moment coefficient";
    protected
      Real Re_inf "Reynolds less than Reynolds used";
      Real Re_sup "Reynolds greater than Reynolds used";
      Real CL_inf "CL less than Reynolds used";
      Real CL_sup "CL greater than Reynolds used";
      Real CD_inf "CD less than Reynolds used";
      Real CD_sup "CD greater than Reynolds used";
      Real CM_inf "CM less than Reynolds used";
      Real CM_sup "CM greater than Reynolds used";
      Real CN "Normal coefficient to chord";
      Real CNLc "Coef norm Lift corrected";
      Real CNDc "Coef norm Drag corrected";
      Real CNc "Normal coefficient to chord, corrected by 3D flow";
      Real CLT1 "Proportional part of CN due to CL";
      Real CDT1 "Proportional part of CN due to CD";
      Real Beta "Beta in degrees";
    algorithm
      Beta := BetaRad*180/Modelica.Constants.pi;
      if Re <= 10760000 then
        Re_inf := 0;
        Re_sup := 10760000;
        CL_inf := 0;
        if Beta < 13 then
          CL_sup := 2*Modelica.Constants.pi*Modelica.Math.tan(Modelica.Constants.pi*Beta/180);
        elseif 13 <= Beta and Beta <= 35 then
          CL_sup := 0.000162951*Beta^3 + (-0.01396165107)*Beta^2 + 0.346983204021*Beta^1 + (-1.066263470829);
        elseif 35 < Beta and Beta <= 135 then
          CL_sup := 0.000000057865776*Beta^4 + (-0.000020584903189)*Beta^3 + 0.002819733306956*Beta^2 + (-0.17534684597967)*Beta^1 + 4.43601223297784;
        else
          CL_sup := 0.00000234965035*Beta^4 + (-0.001537513597514)*Beta^3 + 0.372926107226277*Beta^2 + (-39.7607651903834)*Beta^1 + 1574.32500000072;
        end if;
        CD_inf := 0;
        if Beta <= 35 then
          CD_sup := 0.000000002367*Beta^6 + (-0.000000264312)*Beta^5 + 0.000010524057*Beta^4 + (-0.000169545539)*Beta^3 + 0.001182043628*Beta^2 + (-0.002888895318)*Beta^1 + 0.010370719493;
        elseif 35 < Beta and Beta <= 85 then
          CD_sup := (-0.000006603418803)*Beta^3 + 0.001007937995338*Beta^2 + (-0.023022842268829)*Beta^1 + 0.203659743589387;
        elseif 85 < Beta and Beta <= 130 then
          CD_sup := 0.000000920673401*Beta^3 + (-0.00048202525252)*Beta^2 + 0.065851745791228*Beta^1 + (-2.05627338383755);
        else
          CD_sup := (-0.000001324428904)*Beta^3 + 0.00075146993007*Beta^2 + (-0.141458388111881)*Beta^1 + 8.84853927272686;
        end if;
        CM_inf := 0;
        if Beta <= 35 then
          CM_sup := (-0.000000059715)*Beta^4 + 0.000004184973*Beta^3 + (-0.000051492062)*Beta^2 + (-0.001861616)*Beta^1 + 0.00001313054;
        elseif 35 < Beta and Beta <= 135 then
          CM_sup := 0.000000000127592*Beta^4 + (-0.00000014113985)*Beta^3 + 0.000031652959804*Beta^2 + (-0.001646880464226)*Beta^1 + (-0.01359604544956);
        else
          CM_sup := 0.000000024009324*Beta^4 + (-0.000015547008547)*Beta^3 + 0.003727593240095*Beta^2 + (-0.393061266511464)*Beta^1 + 15.4428636363715;
        end if;
      elseif Re > 10760000 and Re <= 30130000 then
        Re_inf := 10760000;
        Re_sup := 30130000;
        if Beta < 13 then
          CL_inf := 2*Modelica.Constants.pi*Modelica.Math.tan(Modelica.Constants.pi*Beta/180);
          CL_sup := CL_inf;
        elseif 13 <= Beta and Beta <= 35 then
          CL_inf := 0.000162950951*Beta^3 + (-0.01396165107)*Beta^2 + 0.346983204021*Beta^1 + (-1.066263470829);
          CL_sup := 0.000175211235*Beta^3 + (-0.014925689447)*Beta^2 + 0.370380132616*Beta^1 + (-1.223495131922);
        elseif 35 < Beta and Beta <= 135 then
          CL_inf := 0.000000057865776*Beta^4 + (-0.000020584903189)*Beta^3 + 0.002819733306956*Beta^2 + (-0.17534684597967)*Beta^1 + 4.43601223297784;
          CL_sup := CL_inf;
        else
          CL_inf := 0.00000234965035*Beta^4 + (-0.001537513597514)*Beta^3 + 0.372926107226277*Beta^2 + (-39.7607651903834)*Beta^1 + 1574.32500000072;
          CL_sup := CL_inf;
        end if;
        if Beta <= 35 then
          CD_inf := 0.000000002367*Beta^6 + (-0.000000264312)*Beta^5 + 0.000010524057*Beta^4 + (-0.000169545539)*Beta^3 + 0.001182043628*Beta^2 + (-0.002888895318)*Beta^1 + 0.010370719493;
          CD_sup := 0.000000001817*Beta^6 + (-0.000000215343)*Beta^5 + 0.000009064869*Beta^4 + (-0.000153373191)*Beta^3 + 0.001108992399*Beta^2 + (-0.00286672437)*Beta^1 + 0.010840157307;
        elseif 35 < Beta and Beta <= 85 then
          CD_inf := (-0.000006603418803)*Beta^3 + 0.001007937995338*Beta^2 + (-0.023022842268829)*Beta^1 + 0.203659743589387;
          CD_sup := CD_inf;
        elseif 85 < Beta and Beta <= 130 then
          CD_inf := 0.000000920673401*Beta^3 + (-0.00048202525252)*Beta^2 + 0.065851745791228*Beta^1 + (-2.05627338383755);
          CD_sup := CD_inf;
        else
          CD_inf := (-0.000001324428904)*Beta^3 + 0.00075146993007*Beta^2 + (-0.141458388111881)*Beta^1 + 8.84853927272686;
          CD_sup := CD_inf;
        end if;
        if Beta <= 35 then
          CM_inf := (-0.000000059715)*Beta^4 + 0.000004184973*Beta^3 + (-0.000051492062)*Beta^2 + (-0.001861615632)*Beta^1 + 0.00001313054;
          CM_sup := (-0.000000062999)*Beta^4 + 0.000004567799*Beta^3 + (-0.000064557867)*Beta^2 + (-0.001755473275)*Beta^1 + (-0.000125673244);
        elseif 35 < Beta and Beta <= 135 then
          CM_inf := 0.000000000127592*Beta^4 + (-0.00000014113985)*Beta^3 + 0.000031652959804*Beta^2 + (-0.001646880464226)*Beta^1 + (-0.01359604544956);
          CM_sup := CM_inf;
        else
          CM_inf := 0.000000024009324*Beta^4 + (-0.000015547008547)*Beta^3 + 0.003727593240095*Beta^2 + (-0.393061266511464)*Beta^1 + 15.4428636363715;
          CM_sup := CM_inf;
        end if;
      elseif Re > 30130000 and Re <= 49500000 then
        Re_inf := 30130000;
        Re_sup := 49500000;
        if Beta < 13 then
          CL_inf := 2*Modelica.Constants.pi*Modelica.Math.tan(Modelica.Constants.pi*Beta/180);
          CL_sup := CL_inf;
        elseif 13 <= Beta and Beta <= 35 then
          CL_inf := 0.000175211235*Beta^3 + (-0.014925689447)*Beta^2 + 0.370380132616*Beta^1 + (-1.223495131922);
          CL_sup := 0.000181084348*Beta^3 + (-0.015393263178)*Beta^2 + 0.381880872456*Beta^1 + (-1.302575977163);
        elseif 35 < Beta and Beta <= 135 then
          CL_inf := 0.000000057865776*Beta^4 + (-0.000020584903189)*Beta^3 + 0.002819733306956*Beta^2 + (-0.17534684597967)*Beta^1 + 4.43601223297784;
          CL_sup := CL_inf;
        else
          CL_inf := 0.00000234965035*Beta^4 + (-0.001537513597514)*Beta^3 + 0.372926107226277*Beta^2 + (-39.7607651903834)*Beta^1 + 1574.32500000072;
          CL_sup := CL_inf;
        end if;
        if Beta <= 35 then
          CD_inf := 0.000000001817*Beta^6 + (-0.000000215343)*Beta^5 + 0.000009064869*Beta^4 + (-0.000153373191)*Beta^3 + 0.001108992399*Beta^2 + (-0.00286672437)*Beta^1 + 0.010840157307;
          CD_sup := 0.000000001524*Beta^6 + (-0.000000189118)*Beta^5 + 0.000008286119*Beta^4 + (-0.00014509316)*Beta^3 + 0.001084231854*Beta^2 + (-0.002951869156)*Beta^1 + 0.011211182556;
        elseif 35 < Beta and Beta <= 85 then
          CD_inf := (-0.000006603418803)*Beta^3 + 0.001007937995338*Beta^2 + (-0.023022842268829)*Beta^1 + 0.203659743589387;
          CD_sup := CD_inf;
        elseif 85 < Beta and Beta <= 130 then
          CD_inf := 0.000000920673401*Beta^3 + (-0.00048202525252)*Beta^2 + 0.065851745791228*Beta^1 + (-2.05627338383755);
          CD_sup := CD_inf;
        else
          CD_inf := (-0.000001324428904)*Beta^3 + 0.00075146993007*Beta^2 + (-0.141458388111881)*Beta^1 + 8.84853927272686;
          CD_sup := CD_inf;
        end if;
        if Beta <= 35 then
          CM_inf := (-0.000000062999)*Beta^4 + 0.000004567799*Beta^3 + (-0.000064557867)*Beta^2 + (-0.001755473275)*Beta^1 + (-0.000125673244);
          CM_sup := (-0.000000069839)*Beta^4 + 0.000005044608*Beta^3 + (-0.000075878964)*Beta^2 + (-0.001675754552)*Beta^1 + (-0.000225310331);
        elseif 35 < Beta and Beta <= 135 then
          CM_inf := 0.000000000127592*Beta^4 + (-0.00000014113985)*Beta^3 + 0.000031652959804*Beta^2 + (-0.001646880464226)*Beta^1 + (-0.01359604544956);
          CM_sup := CM_inf;
        else
          CM_inf := 0.000000024009324*Beta^4 + (-0.000015547008547)*Beta^3 + 0.003727593240095*Beta^2 + (-0.393061266511464)*Beta^1 + 15.4428636363715;
          CM_sup := CM_inf;
        end if;
      elseif Re > 49500000 and Re <= 68870000 then
        Re_inf := 49500000;
        Re_sup := 68870000;
        if Beta < 13 then
          CL_inf := 2*Modelica.Constants.pi*Modelica.Math.tan(Modelica.Constants.pi*Beta/180);
          CL_sup := CL_inf;
        elseif 13 <= Beta and Beta <= 35 then
          CL_inf := 0.000181084348*Beta^3 + (-0.015393263178)*Beta^2 + 0.381880872456*Beta^1 + (-1.302575977163);
          CL_sup := 0.000185078207*Beta^3 + (-0.015712151616)*Beta^2 + 0.389738566265*Beta^1 + (-1.357002462754);
        elseif 35 < Beta and Beta <= 135 then
          CL_inf := 0.000000057865776*Beta^4 + (-0.000020584903189)*Beta^3 + 0.002819733306956*Beta^2 + (-0.17534684597967)*Beta^1 + 4.43601223297784;
          CL_sup := CL_inf;
        else
          CL_inf := 0.00000234965035*Beta^4 + (-0.001537513597514)*Beta^3 + 0.372926107226277*Beta^2 + (-39.7607651903834)*Beta^1 + 1574.32500000072;
          CL_sup := CL_inf;
        end if;
        if Beta <= 35 then
          CD_inf := 0.000000001524*Beta^6 + (-0.000000189118)*Beta^5 + 0.000008286119*Beta^4 + (-0.00014509316)*Beta^3 + 0.001084231854*Beta^2 + (-0.002951869156)*Beta^1 + 0.011211182556;
          CD_sup := 0.000000001442*Beta^6 + (-0.000000182299)*Beta^5 + 0.000008125859*Beta^4 + (-0.000144559751)*Beta^3 + 0.001088686839*Beta^2 + (-0.002943963609)*Beta^1 + 0.011273813686;
        elseif 35 < Beta and Beta <= 85 then
          CD_inf := (-0.000006603418803)*Beta^3 + 0.001007937995338*Beta^2 + (-0.023022842268829)*Beta^1 + 0.203659743589387;
          CD_sup := CD_inf;
        elseif 85 < Beta and Beta <= 130 then
          CD_inf := 0.000000920673401*Beta^3 + (-0.00048202525252)*Beta^2 + 0.065851745791228*Beta^1 + (-2.05627338383755);
          CD_sup := CD_inf;
        else
          CD_inf := (-0.000001324428904)*Beta^3 + 0.00075146993007*Beta^2 + (-0.141458388111881)*Beta^1 + 8.84853927272686;
          CD_sup := CD_inf;
        end if;
        if Beta <= 35 then
          CM_inf := (-0.000000069839)*Beta^4 + 0.000005044608*Beta^3 + (-0.000075878964)*Beta^2 + (-0.001675754552)*Beta^1 + (-0.000225310331);
          CM_sup := (-0.000000067302)*Beta^4 + 0.000004951063*Beta^3 + (-0.000075703519)*Beta^2 + (-0.001674244566)*Beta^1 + (-0.000226146187);
        elseif 35 < Beta and Beta <= 135 then
          CM_inf := 0.000000000127592*Beta^4 + (-0.00000014113985)*Beta^3 + 0.000031652959804*Beta^2 + (-0.001646880464226)*Beta^1 + (-0.01359604544956);
          CM_sup := CM_inf;
        else
          CM_inf := 0.000000024009324*Beta^4 + (-0.000015547008547)*Beta^3 + 0.003727593240095*Beta^2 + (-0.393061266511464)*Beta^1 + 15.4428636363715;
          CM_sup := CM_inf;
        end if;
      elseif Re > 68870000 and Re <= 88240000 then
        Re_inf := 68870000;
        Re_sup := 88240000;
        if Beta < 13 then
          CL_inf := 2*Modelica.Constants.pi*Modelica.Math.tan(Modelica.Constants.pi*Beta/180);
          CL_sup := CL_inf;
        elseif 13 <= Beta and Beta <= 35 then
          CL_inf := 0.000185078207*Beta^3 + (-0.015712151616)*Beta^2 + 0.389738566265*Beta^1 + (-1.357002462754);
          CL_sup := 0.000188329035*Beta^3 + (-0.015970865286)*Beta^2 + 0.396107782019*Beta^1 + (-1.401453265092);
        elseif 35 < Beta and Beta <= 135 then
          CL_inf := 0.000000057865776*Beta^4 + (-0.000020584903189)*Beta^3 + 0.002819733306956*Beta^2 + (-0.17534684597967)*Beta^1 + 4.43601223297784;
          CL_sup := CL_inf;
        else
          CL_inf := 0.00000234965035*Beta^4 + (-0.001537513597514)*Beta^3 + 0.372926107226277*Beta^2 + (-39.7607651903834)*Beta^1 + 1574.32500000072;
          CL_sup := CL_inf;
        end if;
        if Beta <= 35 then
          CD_inf := 0.000000001442*Beta^6 + (-0.000000182299)*Beta^5 + 0.000008125859*Beta^4 + (-0.000144559751)*Beta^3 + 0.001088686839*Beta^2 + (-0.002943963609)*Beta^1 + 0.011273813686;
          CD_sup := 0.000000001397*Beta^6 + (-0.000000180283)*Beta^5 + 0.000008196701*Beta^4 + (-0.0001492775)*Beta^3 + 0.001153750475*Beta^2 + (-0.003209013356)*Beta^1 + 0.011473380592;
        elseif 35 < Beta and Beta <= 85 then
          CD_inf := (-0.000006603418803)*Beta^3 + 0.001007937995338*Beta^2 + (-0.023022842268829)*Beta^1 + 0.203659743589387;
          CD_sup := CD_inf;
        elseif 85 < Beta and Beta <= 130 then
          CD_inf := 0.000000920673401*Beta^3 + (-0.00048202525252)*Beta^2 + 0.065851745791228*Beta^1 + (-2.05627338383755);
          CD_sup := CD_inf;
        else
          CD_inf := (-0.000001324428904)*Beta^3 + 0.00075146993007*Beta^2 + (-0.141458388111881)*Beta^1 + 8.84853927272686;
          CD_sup := CD_inf;
        end if;
        if Beta <= 35 then
          CM_inf := (-0.000000067302)*Beta^4 + 0.000004951063*Beta^3 + (-0.000075703519)*Beta^2 + (-0.001674244566)*Beta^1 + (-0.000226146187);
          CM_sup := (-0.000000058372)*Beta^4 + 0.000004368736*Beta^3 + (-0.000064227997)*Beta^2 + (-0.001746771647)*Beta^1 + (-0.00014027489);
        elseif 35 < Beta and Beta <= 135 then
          CM_inf := 0.000000000127592*Beta^4 + (-0.00000014113985)*Beta^3 + 0.000031652959804*Beta^2 + (-0.001646880464226)*Beta^1 + (-0.01359604544956);
          CM_sup := CM_inf;
        else
          CM_inf := 0.000000024009324*Beta^4 + (-0.000015547008547)*Beta^3 + 0.003727593240095*Beta^2 + (-0.393061266511464)*Beta^1 + 15.4428636363715;
          CM_sup := CM_inf;
        end if;
      else
        Re_inf := 88240000;
        Re_sup := 107600000;
        if Beta < 13 then
          CL_inf := 2*Modelica.Constants.pi*Modelica.Math.tan(Modelica.Constants.pi*Beta/180);
          CL_sup := CL_inf;
        elseif 13 <= Beta and Beta <= 35 then
          CL_inf := 0.000188329035*Beta^3 + (-0.015970865286)*Beta^2 + 0.396107782019*Beta^1 + (-1.401453265092);
          CL_sup := 0.000190329156*Beta^3 + (-0.016136934563)*Beta^2 + 0.40032766348*Beta^1 + (-1.431290199656);
        elseif 35 < Beta and Beta <= 135 then
          CL_inf := 0.000000057865776*Beta^4 + (-0.000020584903189)*Beta^3 + 0.002819733306956*Beta^2 + (-0.17534684597967)*Beta^1 + 4.43601223297784;
          CL_sup := CL_inf;
        else
          CL_inf := 0.00000234965035*Beta^4 + (-0.001537513597514)*Beta^3 + 0.372926107226277*Beta^2 + (-39.7607651903834)*Beta^1 + 1574.32500000072;
          CL_sup := CL_inf;
        end if;
        if Beta <= 35 then
          CD_inf := 0.000000001397*Beta^6 + (-0.000000180283)*Beta^5 + 0.000008196701*Beta^4 + (-0.0001492775)*Beta^3 + 0.001153750475*Beta^2 + (-0.003209013356)*Beta^1 + 0.011473380592;
          CD_sup := 0.000000001217*Beta^6 + (-0.000000164083)*Beta^5 + 0.000007703761*Beta^4 + (-0.000143633728)*Beta^3 + 0.001134630347*Beta^2 + (-0.003237530724)*Beta^1 + 0.011566638425;
        elseif 35 < Beta and Beta <= 85 then
          CD_inf := (-0.000006603418803)*Beta^3 + 0.001007937995338*Beta^2 + (-0.023022842268829)*Beta^1 + 0.203659743589387;
          CD_sup := CD_inf;
        elseif 85 < Beta and Beta <= 130 then
          CD_inf := 0.000000920673401*Beta^3 + (-0.00048202525252)*Beta^2 + 0.065851745791228*Beta^1 + (-2.05627338383755);
          CD_sup := CD_inf;
        else
          CD_inf := (-0.000001324428904)*Beta^3 + 0.00075146993007*Beta^2 + (-0.141458388111881)*Beta^1 + 8.84853927272686;
          CD_sup := CD_inf;
        end if;
        if Beta <= 35 then
          CM_inf := (-0.000000058372)*Beta^4 + 0.000004368736*Beta^3 + (-0.000064227997)*Beta^2 + (-0.001746771647)*Beta^1 + (-0.00014027489);
          CM_sup := (-0.000000065936)*Beta^4 + 0.000004958117*Beta^3 + (-0.000078326018)*Beta^2 + (-0.001646744988)*Beta^1 + (-0.000265282489);
        elseif 35 < Beta and Beta <= 135 then
          CM_inf := 0.000000000127592*Beta^4 + (-0.00000014113985)*Beta^3 + 0.000031652959804*Beta^2 + (-0.001646880464226)*Beta^1 + (-0.01359604544956);
          CM_sup := CM_inf;
        else
          CM_inf := 0.000000024009324*Beta^4 + (-0.000015547008547)*Beta^3 + 0.003727593240095*Beta^2 + (-0.393061266511464)*Beta^1 + 15.4428636363715;
          CM_sup := CM_inf;
        end if;
      end if;
//Third: Calculate value of CL, CD and CM interpolating with reynolds
      Cl := CL_inf + (Re - Re_inf)*((CL_sup - CL_inf)/(Re_sup - Re_inf));
      Cd := CD_inf + (Re - Re_inf)*((CD_sup - CD_inf)/(Re_sup - Re_inf));
      Cm := CM_inf + (Re - Re_inf)*((CM_sup - CM_inf)/(Re_sup - Re_inf));
//Correct CL and CD on 0<=Beta<=35
      if Beta <= 35 then
        CN := Cl*Modelica.Math.cos(Modelica.Constants.pi*Beta/180) + Cd*Modelica.Math.sin(Modelica.Constants.pi*Beta/180);
        if CN == 0 then
          Cl := 0;
        else
          CLT1 := Cl*Modelica.Math.cos(Modelica.Constants.pi*Beta/180)/CN;
          CDT1 := Cd*Modelica.Math.sin(Modelica.Constants.pi*Beta/180)/CN;
          CNc := CN/(1 + 2.25/Asp);
          CNLc := CNc*CLT1;
          CNDc := CNc*CDT1;
          Cl := CNLc/Modelica.Math.cos(Modelica.Constants.pi*Beta/180);
          Cd := CNDc/Modelica.Math.sin(Modelica.Constants.pi*Beta/180);
        end if;
      end if;
      annotation(
        Documentation(info = "<html><head></head><body><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">NACA0018 coefficients obtained from javafoil</span></p><div class=\"htmlDoc\"><div class=\"htmlDoc\"><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><u>Limitations:</u></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div><div style=\"font-family: -webkit-standard; font-size: 12px;\"><u>References:</u></div><div style=\"font-family: -webkit-standard; font-size: 12px;\"><u><br></u></div><div>[Acorts]<span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>Antonio Corts, \"Gemelo digital de timón y servo usando Modelica\", MSc Thesis 2022</div></div><div style=\"font-family: -webkit-standard; font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard; font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard; font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-size: 12px;\"><font face=\"MS Shell Dlg 2\">Does not compile on Dymola.</font></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><div><u>Further development:</u></div><div><br></div><div><br></div><div><u>Copyright:</u></div><div><span style=\"font-family: -webkit-standard;\"><br></span></div><div><span style=\"font-family: -webkit-standard;\">Rev. 0.0: Released under CC-BY by Antonio Corts de la Peña, MSc Thesis&nbsp;</span><span style=\"font-family: -webkit-standard;\">\"Gemelo digital de timón y servo usando Modelica\", 2022</span></div></div></div></body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0 (26-09-2022): Initial release</span></body></html>"));
    end NACA0018;
  end Functions;

  package Types "Constants and types with choices, especially to build menus"
    extends Modelica.Icons.TypesPackage;
    type Propeller4Q = enumeration(B4_100_1 "4_100 P/D=1.0", B4_85_1 "4_85 P/D=1.0", B4_70_1 "4_70 P/D=1.0", B4_55_1 "4_55 P/D=1.0", B4_40_1 "4_40 P/D=1.0", B3_65_1 "3_65 P/D=1.0", B5_75_1 "5_75 P/D=1.0", B6_80_1 "6_80 P/D=1.0", B7_85_1 "7_85 P/D=1.0", B4_70_5 "4_70 P/D=0.5", B4_70_6 "4_70 P/D=0.6", B4_70_8 "4_70 P/D=0.8", B4_70_12 "4_70 P/D=1.2", B4_70_14 "4_70 P/D=1.4") "Enumeration of 4Q Wageningen B-Series propellers" annotation(
      Documentation(info = "<html><head></head><body>4Q Wageningen B-Series Propellers:<div>
<pre style=\"margin-top: 0px; margin-bottom: 0px;\"><!--StartFragment--><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_100_1 </span><span style=\" font-family:'Courier New'; font-size:12pt; color:#008b00;\">\"4_100 P/D=1.0\"</span></pre><pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_85_1 </span><span style=\" font-family:'Courier New'; font-size:12pt; color:#008b00;\">\"4_85 P/D=1.0\"</span></pre><pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_70_1 </span><span style=\" font-family:'Courier New'; font-size:12pt; color:#008b00;\">\"4_70 P/D=1.0\"</span></pre><pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_55_1 </span><span style=\" font-family:'Courier New'; font-size:12pt; color:#008b00;\">\"4_55 P/D=1.0\"</span></pre><pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_40_1 </span><span style=\" font-family:'Courier New'; font-size:12pt; color:#008b00;\">\"4_40 P/D=1.0\"</span></pre><pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B3_65_1 </span><span style=\" font-family:'Courier New'; font-size:12pt; color:#008b00;\">\"3_65 P/D=1.0\"</span></pre><pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B5_75_1 </span><span style=\" font-family:'Courier New'; font-size:12pt; color:#008b00;\">\"5_75 P/D=1.0\"</span><span style=\"font-family: 'Courier New'; font-size: 12pt;\">&nbsp;</span></pre><pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B6_80_1 </span><span style=\" font-family:'Courier New'; font-size:12pt; color:#008b00;\">\"6_80 P/D=1.0\"</span></pre><pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B7_85_1 </span><span style=\" font-family:'Courier New'; font-size:12pt; color:#008b00;\">\"7_85 P/D=1.0\"</span></pre><pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_70_5 </span><span style=\" font-family:'Courier New'; font-size:12pt; color:#008b00;\">\"4_70 P/D=0.5\"</span></pre><pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_70_6 </span><span style=\" font-family:'Courier New'; font-size:12pt; color:#008b00;\">\"4_70 P/D=0.6\"</span></pre><pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_70_8 </span><span style=\" font-family:'Courier New'; font-size:12pt; color:#008b00;\">\"4_70 P/D=0.8\"</span></pre><pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_70_12 </span><span style=\" font-family:'Courier New'; font-size:12pt; color:#008b00;\">\"4_70 P/D=1.2\"</span><span style=\"font-family: 'Courier New'; font-size: 12pt;\">&nbsp;</span></pre><pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_70_14 </span><span style=\" font-family:'Courier New'; font-size:12pt; color:#008b00;\">\"4_70 P/D=1.4\"</span><!--EndFragment--></pre><div><br></div></div></body></html>"));
  end Types;

  package SubComponents "Library SubComponents"
    extends Modelica.Icons.InternalPackage;

    model VariableTranslation "Derivative work of Translation component of MSL"
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
// Force and torque balance
      zeros(3) = frame_a.f + frame_b.f;
      zeros(3) = frame_a.t + frame_b.t + cross(r_vect, frame_b.f);
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(textColor = {0, 0, 255}, extent = {{-150, 85}, {150, 45}}, textString = "%name"), Text(extent = {{150, -50}, {-150, -20}}, textString = "r=%r_vect"), Text(textColor = {128, 128, 128}, extent = {{-89, 38}, {-53, 13}}, textString = "a"), Text(textColor = {128, 128, 128}, extent = {{57, 39}, {93, 14}}, textString = "b"), Line(origin = {-10, 0}, points = {{10, 20}, {-10, -20}}), Line(origin = {10, 0}, points = {{10, 20}, {-10, -20}}), Polygon(origin = {-54, 0}, fillPattern = FillPattern.Solid, points = {{-46, 4}, {46, 4}, {42, -4}, {-46, -4}, {-46, 4}}), Polygon(origin = {54, 0}, rotation = 180, fillPattern = FillPattern.Solid, points = {{-46, 4}, {46, 4}, {42, -4}, {-46, -4}, {-46, 4}})}),
        Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(fillPattern = FillPattern.Solid, extent = {{-100, 5}, {100, -5}}), Line(points = {{-95, 20}, {-58, 20}}, color = {128, 128, 128}, arrow = {Arrow.None, Arrow.Filled}), Line(points = {{-94, 18}, {-94, 50}}, color = {128, 128, 128}, arrow = {Arrow.None, Arrow.Filled}), Text(textColor = {128, 128, 128}, extent = {{-72, 35}, {-58, 24}}, textString = "x"), Text(textColor = {128, 128, 128}, extent = {{-113, 57}, {-98, 45}}, textString = "y"), Line(points = {{-100, -4}, {-100, -69}}, color = {128, 128, 128}), Line(points = {{-100, -63}, {90, -63}}, color = {128, 128, 128}), Text(textColor = {128, 128, 128}, extent = {{-22, -39}, {16, -63}}, textString = "input r"), Polygon(fillPattern = FillPattern.Solid, points = {{88, -59}, {88, -68}, {100, -63}, {88, -59}}), Line(points = {{100, -3}, {100, -68}}, color = {128, 128, 128}), Line(points = {{69, 20}, {106, 20}}, color = {128, 128, 128}, arrow = {Arrow.None, Arrow.Filled}), Line(points = {{70, 18}, {70, 50}}, color = {128, 128, 128}, arrow = {Arrow.None, Arrow.Filled}), Text(textColor = {128, 128, 128}, extent = {{92, 35}, {106, 24}}, textString = "x"), Text(textColor = {128, 128, 128}, extent = {{51, 57}, {66, 45}}, textString = "y")}),
        Documentation(info = "<html><head></head><body><p>This component is a modification of \"fixedTranslation\" of Modelica.Mechanics.Multibody to enable a real time bar changing. 3D visualization was disabled.</p><pre style=\"font-size: 12px;\"><div style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\"><u>Copyright:</u></div><div style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\"><span style=\"font-family: 'Times New Roman'; orphans: 2; widows: 2;\">Original Work:&nbsp;</span></div><div style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\"><span style=\"font-family: 'Times New Roman'; orphans: 2; widows: 2;\">Copyright&nbsp;</span><span style=\"font-family: -webkit-standard;\">©</span><span style=\"font-family: 'Times New Roman'; orphans: 2; widows: 2;\">&nbsp;2021-2022 Modelica Association</span></div><div style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\"><span style=\"font-family: 'Times New Roman'; orphans: 2; widows: 2;\"><br></span></div><div style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\"><span style=\"font-family: 'Times New Roman'; orphans: 2; widows: 2;\">Derivative Work:&nbsp;</span></div><div style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\"><p style=\"font-size: 10pt; font-family: Arial, sans-serif;\"><b style=\"font-size: 10pt;\">ShipSIM package</b></p><p style=\"font-size: 10pt; font-family: Arial, sans-serif;\"><em style=\"font-size: 10pt;\">(for license see ShipSIM.UsersGuide.License)</em></p></div></pre>
</body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0: (01/03/2021): Initial release</span></body></html>"));
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
</p><pre style=\"margin-top: 0px; margin-bottom: 0px;\"><!--StartFragment--><span style=\"font-family: 'Courier New'; font-size: 12pt;\">apparentSpeedXY.WorldSpeed = environment.CurrentVector;</span><!--EndFragment--></pre><div class=\"htmlDoc\" style=\"white-space: normal; font-family: 'MS Shell Dlg 2';\"><div class=\"htmlDoc\" style=\"font-size: 12px;\"><div><br></div><div>Then, the component will use the absolute speed from the frame_a connector and add the current speed. The output of this component is:</div><div>- SpeedLocal[3]: vector X and Y (Z=0) with the apparent speed</div><div>- ApparentSpeed: Lenght of the above mentioned vector</div><div>- AttackAngle: Attack angle in radians of the apparent speed and the frame_a axis</div><div><br></div><div><br></div><div><u>Limitations:</u></div><div>Only calculates using X and Y components.</div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><br></div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div><br></div></div><div class=\"htmlDoc\" style=\"font-size: 12px;\"><div><u>Further development:</u></div><div><div><br></div><div><br></div></div></div></div></pre><pre style=\"margin-top: 0px; margin-bottom: 0px;\"><!--EndFragment--></pre></body></html>", revisions = "<html><head></head><body><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.1 (03/05/2023): Added signed attack angle</span></div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0 (06/03/2023): Initial release</span></body></html>"),
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
    end Ikeda;
  end SubComponents;

  package Outdated
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
        Documentation(info = "<html><head></head><body><div><font face=\"MS Shell Dlg 2\">Ship model simplified to small movements from level trim loading condition. The phisics behind this model uses level trim hydrostatics to obtain the center of buoyancy position and applly the displacement force. Centre of buoyancy is corrected by heel and trim using the floatation area inertia properties.</font></div><div><font face=\"MS Shell Dlg 2\">Ship mass and inertia is indicated on the model by use of radii of gyration or absolute inertia moments about the centre of gravity and parallel to frame_a.</font></div><div><font face=\"MS Shell Dlg 2\">Damping factors are introduced by means of an equation depending on the relevant speed as follows:</font></div><div><font face=\"MS Shell Dlg 2\"><br></font></div><div><font face=\"MS Shell Dlg 2\">B = sum(ai * V ^ bi)</font></div><div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div><br></div><div><u>Limitations:</u></div><div><u><br></u></div><div>Damping factors are represented by simple equations and no cross terms are used. These factors shall include added mass effect.</div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><u><br></u></div><div style=\"font-family: -webkit-standard;\"><div><span style=\"font-family: 'MS Shell Dlg 2';\">[Principles] Edward V. Lewis et al, \"Princiles of Naval Architecture\",&nbsp;</span><em style=\"font-family: 'MS Shell Dlg 2';\">SNAME</em><span style=\"font-family: 'MS Shell Dlg 2';\">, Second Revision, 1988</span></div><div><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div>[<span style=\"background-color: rgb(255, 255, 255);\">ModMultibody</span>] \"The new Modelica MultiBody Library\", M. Otter, H. Elmqvist and S.E. Mattsson. Proceedings of the 3rd International Modelica Conference (2003)</div></div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">N/A</span></div><div><br></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div><u>Further development:</u></div><div><u><br></u></div><div>- Enhance damping factors</div><div><br></div></div></div></body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev 0.0: (17/06/2022): Initial release</span></body></html>"),
        Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})));
    end SimpleShipModel;
  end Outdated;
  annotation(
    preferredView = "info",
    version = "1.3.0",
    versionBuild = 0,
    versionDate = "2023-05-31",
    dateModified = "2023-05-31",
    revisionId = "$Format:%h %ci$",
    Icon(graphics = {Text(origin = {33, -54}, textColor = {80, 80, 80}, extent = {{-67, 54}, {67, -54}}, textString = "SS", fontName = "Franklin Gothic Demi", textStyle = {TextStyle.Bold}), Line(origin = {0, 20}, points = {{100, -20}, {50, 10}, {0, -20}, {-50, -50}, {-100, -20}}, smooth = Smooth.Bezier), Polygon(origin = {-30, 40}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-70, 10}, {64, 10}, {50, -10}, {-70, -10}, {-70, 10}}), Line(origin = {10, 15}, points = {{10, 15}, {-11, -15}}), Rectangle(origin = {-16, 65}, fillColor = {80, 80, 80}, fillPattern = FillPattern.Solid, extent = {{-5, 15}, {0, -15}}), Line(origin = {0, 10}, points = {{100, -20}, {50, 10}, {0, -20}, {-50, -50}, {-100, -20}}, smooth = Smooth.Bezier), Polygon(origin = {-25, 10}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-9.5, 6}, {-9.5, -6}, {9.5, -6}, {9.5, 6}, {3.5, -2}, {1.5, -2}, {1.5, 5}, {-1.5, 5}, {-1.5, -2}, {-3.5, -2}, {-9.5, 6}})}, coordinateSystem(grid = {1, 1})),
    uses(Modelica(version = "3.2.3")),
    Documentation(info = "<html><head></head><body><p style=\"font-size: 10pt; font-family: Arial, sans-serif;\"><b style=\"font-size: 10pt;\">ShipSIM package</b></p><p style=\"font-size: 10pt; font-family: Arial, sans-serif;\">Licensed by&nbsp;Basilio Puente and M Dolores Fernandez&nbsp;under the 3-Clause BSD license.<br style=\"font-size: 10pt;\">Copyright © 2021-2023, Basilio Puente, M Dolores Fernandez.</p><p style=\"font-size: 10pt; font-family: Arial, sans-serif;\"><em style=\"font-size: 10pt;\">ShipSIM Modelica package is&nbsp;<u style=\"font-size: 10pt;\">free</u>&nbsp;software and the use is completely at&nbsp;<u style=\"font-size: 10pt;\">your own risk</u>; it can be redistributed and/or modified under the terms of the 3-Clause BSD license. For license conditions (including the disclaimer of warranty) see ShipSIM.UsersGuide.License</em></p></body></html>"),
    Diagram(coordinateSystem(grid = {1, 1})));
end ShipSIM;

