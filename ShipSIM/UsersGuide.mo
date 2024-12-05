within ShipSIM;

package UsersGuide "User's Guide"
  extends Modelica.Icons.Information;

  package Overview "Overview"
    extends Modelica.Icons.Information;
    annotation(
      DocumentationClass = true,
      Documentation(info = "<html><head></head><body>ShipSIM package has the aim to provide Modelica models relative to Naval Architecture, specially to perform 6 DoF simulations, propulsion systems, electrical plant, engines, etc... to enable designers a true Model-Based Engineering (MBE) based on open source solutions.<div><br><div>Through decades of investigation, naval architecture knowledge was documented in natural language on papers, books, thesis and other scientific publications. The rise of CFD programs in the last decades, looking for a generalized solution, puts all this knowledge in the background. But CFD calculation times are not adequate for the real-time simulations required by digital twin technology.</div><div><br></div><div>Mature acausal simulation languages, such as Modelica, enables the use of all this knowledge in a practical way to develop an trusted, easy to maintain and reusable simulation library.</div><div><br><div><div>This library remains under heavy development and exhaustive validation is needed to gain confidence on the results. Nevertheless, the library is based on state-of-the art publications coded by Naval Architects that ensure a correct implementations of the background physics.</div></div></div></div><div><br></div><div><b>NOTE</b>: <i>Components crossed with a red line are under development and shall not be used!</i></div><div><b>NOTE</b>:&nbsp;<i>Obsolete components shall not be used!</i></div><div><br></div><div><b><u>Instructions:</u></b></div><div><b><u><br></u></b></div><div>To use this library on a new model please follow this steps:</div><div><br></div><div>1- Insert a Modelica.Mechanics.Multibody.World with label2=\"z\" and set gravity acting on negative Z axis ( {0,0,-1} ).</div><div>2- Insert a ShipSIM.Components.Environment and set the current and wind conditions</div><div>3- Insert a ShipSIM.Components.Ship.ShipModelTh and parametrize</div><div>4- Add other components (hydrodynamic, wind, rudder, propeller, etc...)</div><div><br></div><div><br></div><div>Please find more information on the examples provided.</div></body></html>"));
  end Overview;

  package License "License"
    extends Modelica.Icons.ReleaseNotes;
    annotation(
      DocumentationClass = true,
      Documentation(info = "<html><head></head><body lang=\"en-US\">
        <p><b>Authors (copyrights holders):</b></p><p><strong><span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>Basilio Puente Varela</strong><br><span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>15624 Ares (A Coruña)<br><span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>Spain<br><span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>email:&nbsp;<a href=\"mailto:basiliopuentevarela@gmail.com\">basiliopuentevarela@gmail.com</a><br><span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>web:&nbsp;<a href=\"https://modelica-spain.org\">https://modelica-spain.org</a></p><p><span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>Linkedin:&nbsp;<a href=\"https://es.linkedin.com/in/basiliopuentevarela\">https://es.linkedin.com/in/basiliopuentevarela</a></p><p><span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>ORCID:&nbsp;0000-0003-1363-5032</p><p><span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>[BPuente]</p><p><br></p><p><strong><span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>Maria Dolores Fernandez Ballesteros</strong><br><span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>15624 Ares (A Coruña)<br><span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>Spain<br><span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>email:&nbsp;<a href=\"mailto:lolifernandezballesteros@gmail.com\">lolifernandezballesteros@gmail.com</a><br><span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>web:&nbsp;<a href=\"https://modelica-spain.org\">https://modelica-spain.org</a></p><p><span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>LinkedIn:&nbsp;<a href=\"https://es.linkedin.com/in/maría-dolores-fernández-ballesteros-22815443\">https://es.linkedin.com/in/maría-dolores-fernández-ballesteros-22815443</a></p><p><span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>ORCID:&nbsp;0000-0002-1501-8890</p><p><span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>[DFernandez]</p><p><b>IMPORTANT NOTE:</b></p><p>Each component has in their \"revision\" metadata the name of the author of each revision between brackets ([author]), using a name pseudonym stated in ShipSIM.UsersGuide.Contact.</p><p>Since only [BPuente] and [DFernandez] are the copyright holders, other authors has only moral rights in this library (according to RD 1/1996 LPI).</p><p>For those components that has no author indicated, it is assumed to be [BPuente] with all rights reverved.</p><p>-----------------------------------------</p><p>All files in this directory and in all subdirectories, as well as the entire ShipSIM package, are released under
        the 4-Clause BSD license explained on this document, except otherwise indicated on components.</p><p>All works that use this package shall include the \"Attribution notice\" shown below. This includes any report that uses this library to provide the results.</p><p><b>IMPORTANT NOTE</b>: Some components have a special license. Please read carefully the documentation of each component. Component specific license (if it's specified) prevails over this license. Components without license or copyright data is assumed to have this package license.</p><p>-----------------------------------------</p><p><b><i><u><font size=\"4\">\"Attribution Notice\" for the use of this package on other works:</font></u></i></b></p><p><b><font size=\"4\">This product uses Modelica</font></b><b><font size=\"4\">&nbsp;ShipSIM package</font></b></p><p><font size=\"4\">Licensed by&nbsp;Basilio Puente and M Dolores Fernandez&nbsp;under the 4-Clause BSD license.<br>Copyright © 2021-2024, Basilio Puente, M Dolores Fernandez. All rights reserved.</font></p><p><em style=\"font-size: 13.333333015441895px;\">ShipSIM Modelica package is&nbsp;<u>free</u>&nbsp;software and the use is completely at&nbsp;<u>your own risk</u>; it can be redistributed and/or modified under the terms of the 4-Clause BSD license. For license conditions (including the disclaimer of warranty) see ShipSIM.UsersGuide.License</em></p><p>----------------------------------------</p><p><b><i><font size=\"4\"><u>\"Derivative Work Attribution Notice\" for the use of this package (modified) on other works:</u></font></i></b></p><p style=\"font-size: 13.333333015441895px;\"><b>This product contains Derivative Work from Modelica ShipSIM package</b></p><p style=\"font-size: 13.333333015441895px;\">Licensed by&nbsp;<span style=\"font-size: 13.333333015441895px;\">Basilio Puente and M Dolores Fernandez</span>&nbsp;under the 4-Clause BSD license.<br>Copyright © 2021-2024, Basilio Puente, M Dolores Fernandez. All rights reserved.</p><p style=\"font-size: 13.333333015441895px;\"><em style=\"font-size: 13.333333015441895px;\">ShipSIM Modelica package is&nbsp;<u>free</u>&nbsp;software and the use is completely at&nbsp;<u>your own risk</u>; it can be redistributed and/or modified under the terms of the 4-Clause BSD license. For license conditions (including the disclaimer of warranty) see ShipSIM.UsersGuide.License</em></p><hr>
        <h4><a name=\"The_Modelica_License_2-outline\" id=\"The_Modelica_License_2-outline\"></a>The 4-Clause BSD License</h4><div><!--StartFragment--><p style=\"margin: 0px 0px 0.75em; line-height: 1.5em; font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\"><span style=\"font-family: -webkit-standard; orphans: auto; widows: auto;\">Licensed by&nbsp;Basilio Puente and M Dolores Fernandez&nbsp;under the 4-Clause BSD license.</span><br style=\"font-family: -webkit-standard; orphans: auto; widows: auto;\"><span style=\"font-family: -webkit-standard; orphans: auto; widows: auto;\">Copyright © 2021-2024, Basilio Puente, M Dolores Fernandez. All rights reserved.&nbsp;</span></p><p style=\"margin: 0px 0px 0.75em; line-height: 1.5em; font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\"><br></p><p style=\"margin: 0px 0px 0.75em; line-height: 1.5em; font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:</p><p style=\"margin: 0px 0px 0.75em; line-height: 1.5em; font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.</p><p style=\"margin: 0px 0px 0.75em; line-height: 1.5em; font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.</p><p style=\"margin: 0px 0px 0.75em; line-height: 1.5em; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\"><font face=\"Lucida Grande, Verdana, Lucida, Helvetica, Arial, sans-serif\">3. All advertising materials mentioning features or use of this software must display the following acknowledgement:&nbsp;</font><b>This product uses Modelica ShipSIM package, developed by Basilio Puente and M Dolores Fernandez.</b></p><p style=\"margin: 0px 0px 0.75em; line-height: 1.5em; font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">4. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.</p><p style=\"margin: 0px 0px 0.75em; line-height: 1.5em; font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.</p><p style=\"margin: 0px 0px 0.75em; line-height: 1.5em; font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\"><!--StartFragment--><span style=\"font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-variant-ligatures: normal;\">-- The above is the license, and is the standard 4-clause BSD license</span><span style=\"font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-variant-ligatures: normal;\">&nbsp;with&nbsp;<span style=\"orphans: auto; widows: auto;\">Basilio Puente and M Dolores Fernandez</span>&nbsp;as copyright holders.</span><!--EndFragment-->
    
    </p><p style=\"margin: 0px 0px 0.75em; line-height: 1.5em; font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-size: 12.144px; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\"><br></p><!--EndFragment--></div>
    
    </body></html>"),
      Icon(graphics = {Ellipse(origin = {29, 23}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-25, 25}, {25, -25}}), Polygon(origin = {30, -20}, lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, points = {{-8, 16}, {-18, -38}, {2, -14}, {22, -40}, {8, 16}, {8, 16}, {-8, 16}})}));
  end License;

  package ReleaseNotes "Release Notes"
    extends Modelica.Icons.ReleaseNotes;
    annotation(
      DocumentationClass = true,
      Documentation(info = "<html><head></head><body><div><p style=\"font-size: 10pt; font-family: Arial, sans-serif;\">Get the latest version of ShipSIM at:</p><p style=\"font-size: 10pt; font-family: Arial, sans-serif;\"><a href=\"https://github.com/BasilioPV/ShipSIM\" style=\"font-family: -webkit-standard;\">https://github.com/BasilioPV/ShipSIM</a></p><div><div><b>Version 2.0.0 (xx-xx-20xx):</b></div><div><br></div><div><br></div><div><br></div><div><b>Version 1.9.0 (02-12-2024):</b></div><div>Increase speed on electrical components.</div></div><div>Change to 4-clause BSD license.</div><div>Review of all license text.</div><div>Some minor bugfix.</div><div><b><br></b></div><div><b>Version 1.8.0 (23-11-2024):</b></div><div>Library splitted in several files for best performance.</div><div>Bugfix on several components.</div><div>Added autopilot model.</div><div><b><br></b></div><div><b>Version 1.7.1 (20-06-2024):</b></div><div>Minor changes.</div><div><b><br></b></div><div><b>Version 1.7.0 (30-03-2024):</b></div><div>Added more NACA00xx profile data</div></div><div>Added DynamicSelect for diagram animation</div><div>Added component name on assert messages</div><div>Added plate forced convection</div><div>Added moist air components</div><div><br></div><div><b>Version 1.6.0 (23-12-2023):</b></div><div>Added the following sections and models:</div><div>- Data processing:</div><div>Novel components for extract peaks of a signal and process them using a innovative real time rainflow counter developed exclusively for this library.</div><div>- Environmental Heat Transfer: Model that agrupates all the environment variables for heat transfer</div><div>- Solar components: Irradiation, sun screens, multibody plane, complete wall heat transfer</div><div>- Heat transfer:</div><div><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>- Convection factors for cylinder, internal boundary, external boundary.</div><div><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>- Temperature dataset from external file</div><div><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>- Plate and cylinder discrete element models for transient heat analysis</div><div><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>- Simple air exchanger model</div><div>- Other useful functions (min/max, day of the year, angle between vectors, etc...)</div><div>- Added a Debugging package to store those model with unknown issues to be solved.</div><div>- Rudder model now depends on the same wingData as wing sails. Cl,Cd,Cm NACA0018 function has large inconsistencies and it is removed from ShipSIM library. IMPORTANT: this component is not compatible with older versions.</div><div><br></div><div><b>Version 1.5.0 (22-10-2023):</b></div><div>Added Antiheeling system</div><div><b><br></b></div><div><b>Version 1.4.1 (14-10-2023):</b></div><div>Added cable and crane model</div><div>GitHub issues #4 solved</div><div>This release correspond to the course \"Inicialización a la simulación con Modelica\" of the authors of this library.</div><div><br></div><div><b>Version 1.3.0 (31-05-2023):</b></div><div>Added WingSail model</div><div>Added cavitation warning for 4Q propeller models</div><div>Implemented propeller-rudder interaction on 1stQ on Propeller4Q&nbsp;</div><div>Added animation forces selector for several components</div><div>Added electrical consumers components and EPLA sample</div><div><b><br></b></div><div><b>Version 1.2.0 (22-04-2023):</b></div><div>Added POD4Q model</div><div>Added (not complete) Propeller4Q model</div><div>GitHub issues #2 to #3 solved</div><div>Minor bugs fixed</div><div>Added propeller visualization</div><div><b><br></b></div><div><b>Version 1.1.0 (08-03-2023):</b></div><div>Included assert documentation on models</div><div>Added wind and current effects</div><div>Added ship wind model</div><div>Change to BSD 3-Clause license</div><div>Translate internal comments to English</div><div><b><br></b></div><div><b>Version 1.0.0 (14-02-2023):</b></div><div>First official release of the library on GitHub (BasilioPV/ShipSIM)</div><div>Released under Modelica License 2 with additional clause 16</div><b><div><b><br></b></div>Version 0.0.0 (July 2022):</b><div>First publication on GitHub (BasilioPV/ShipSIM)</div><div><br></div><div><i>Note: the last digit on version number (e.g. 1.0.<u>x</u>) represents a bugfix release, according to semantic versioning (<a href=\"https://semver.org\">https://semver.org</a>).</i></div><div><div><br></div></div></body></html>"));
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
    <tr>
    <td>[IS2008]</td>
    <td>International Marine Organization,
    \"International Code on Intact Stability 2008\",
    IMO 2020
    </td>
    </tr>
    <tr>
    <td>[NCarnerero]</td>
    <td>Noé Carnerero Durán,
    \"Simulación del comportamiento de tanques anti-escora a partir de herramientas de modelado acausal\",
    Proyecto Fin de Carrera, Grado en Arquitectura Naval, July 2023, 
    <a href=\"https://oa.upm.es/75126/\">https://oa.upm.es/75126/</a></td>
    </td>
    </tr>
    <tr>
    <td>[Chapman]</td>
    <td>Alan J. Chapman,
    \"Heat Transfer\",
    McMillan Publishing Company, 4th Edition, 1984
    </td>
    </tr>
    <tr>
    <td>[PhotoVoltaics]</td>
    <td>Christian Kral, Jovan Brkic, Muaz Ceran, Mohamed Elmoghazy, Ramazan Kavlak,
    \"PhotoVoltaics Modelica Library 1.6.0\",
    Library published under the BSD-3-Clause. Copyright 2016-2019.
    </td>
    </tr>
    <tr>
    <td>[Lienhard]</td>
    <td>John H. Lienhard IV, John H. Lienhard V,
    \"A Heat Transfer Textbook\",
    Phlogiston Press, 3rd Edition, 2006
    </td>
    </tr>
    <tr>
    <td>[ThSysEng]</td>
    <td>Michael J. Moran, Howard N. Shapiro, Bruce R. Munson, David P. DeWitt,
    \"Introduction to Thermal Systems Engineering\",
    John Wiley & Sons, Inc., 1st Edition, 2003
    </td>
    </tr>
    <tr>
    <td>[Nahon]</td>
    <td>R. Nahon, O. Blanpain, B. Beckers,
    \"Impact of the anisotropy of the sky vault emissivity on the building envelope radiative budget\",
    First International Conference on Urban Physics, September 2016, 
    <a href=\"https://www.researchgate.net/publication/315292999_Impact_of_the_anisotropy_of_the_sky_vault_emissivity_on_the_building_envelope_radiative_budget\">https://www.researchgate.net/publication/315292999_Impact_of_the_anisotropy_of_the_sky_vault_emissivity_on_the_building_envelope_radiative_budget</a></td>
    </td>
    </tr>
    <tr>
    <td>[Palyvos]</td>
    <td>J.A. Palyvos,
    \"A survey of wind convection coefficient correlations for building envelope energy systems’ modeling\",
    Applied Thermal Engineering, Volume 28, Issues 8–9, June 2008, Pages 801-808, 
    <a href=\"http://dx.doi.org/10.1016/j.applthermaleng.2007.12.005\">DOI:10.1016/j.applthermaleng.2007.12.005</a></td>
    </td>
    </tr>
    <tr>
    <td>[Buildings]</td>
    <td>Lawrence Berkeley National Laboratory,
    \"Modelica Buildings Library\",
    Copyright © 1998-2023 The Regents of the University of California (through Lawrence Berkeley National Laboratory), subject to receipt of any required approvals from U.S. Department of Energy.
    </td>
    </tr>
    <tr>
    <td>[Jialun2016]</td>
    <td>Jialun Liu, Frans Quadvlieg, Robert Hekkenberg,
    \"Impacts of the rudder profile on manoeuvring performance of ships\",
    Delft University of Technology, 2016
    <a href=\"https://doi.org/10.1016/j.oceaneng.2016.07.064\">DOI:https://doi.org/10.1016/j.oceaneng.2016.07.064</a></td>
    </tr>
</tbody></table>
</body></html>"));
  end References;

  package Contact "Contact contributors"
    extends Modelica.Icons.Contact;
    annotation(
      DocumentationClass = true,
      Documentation(info = "<html><head></head><body><p>ShipSIM repository:</p><p><a href=\"https://github.com/BasilioPV/ShipSIM\">https://github.com/BasilioPV/ShipSIM</a></p><p><b>Main authors (copyrights holders):</b></p>
    
    <p>
    <strong><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Basilio Puente Varela</strong><br><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>15624 Ares (A Coruña)<br><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Spain<br><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>email: <a href=\"mailto:basiliopuentevarela@gmail.com\">basiliopuentevarela@gmail.com</a><br><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>web:&nbsp;<a href=\"https://modelica-spain.org\">https://modelica-spain.org</a></p><p><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Linkedin:&nbsp;<a href=\"https://es.linkedin.com/in/basiliopuentevarela\">https://es.linkedin.com/in/basiliopuentevarela</a></p><p><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>ORCID:&nbsp;0000-0003-1363-5032</p><p><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>[BPuente]</p><p><br></p>
    
    <p>
    <strong><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Maria Dolores Fernandez Ballesteros</strong><br><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>15624 Ares (A Coruña)<br><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Spain<br><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>email:&nbsp;<a href=\"mailto:lolifernandezballesteros@gmail.com\">lolifernandezballesteros@gmail.com</a><br><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>web:&nbsp;<a href=\"https://modelica-spain.org\">https://modelica-spain.org</a></p><p><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>LinkedIn:&nbsp;<a href=\"https://es.linkedin.com/in/maría-dolores-fernández-ballesteros-22815443\">https://es.linkedin.com/in/maría-dolores-fernández-ballesteros-22815443</a></p><p><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>ORCID:&nbsp;0000-0002-1501-8890</p><p><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>[DFernandez]</p>
    
    <h4>Contributors to this library (without copyright rights):</h4><div>The following contributors release their material with a permissive license that enables their inclusion on this library without any copyright rights.</div><div><br></div><div><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span><b>Individuals (in chronological order):</b></div>
    
    <ul>
    <li><i>Antonio Corts de la Peña [ACorts] (Rudder component - obsolete)</i></li><li>Noé Carnerero Durán [NCarnerero] (Anti-heeling system)</li><li>Mayco Erano [MErano] (NACA profile data)</li></ul><h4>Acknowledgements:</h4>
    
    <p>
    The authors would like to thank following entities for your contribution to spread both Modelica language as well this package:</p><p></p><ul><li><a href=\"http://www.tphispania.com/\">Techno Pro Hispania S.L.</a></li><li><a href=\"https://www.udc.es/\">Universidade da Coruña</a></li><li><a href=\"https://www.upm.es/\">Universidad Politécnica de Madrid</a></li></ul><p></p>
    </body></html>"));
  end Contact;
end UsersGuide;
