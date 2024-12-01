within ShipSIM;
  package Functions "Functions used in the library"
    extends Modelica.Icons.FunctionsPackage;

    package DataFunctions "Functions used in the library"
      extends Modelica.Icons.FunctionsPackage;

      function SimpleAddRainflowMatrix
        extends Modelica.Icons.Function;
        input Real ini "Start of the new cicle";
        input Real fin "End of the new cicle";
        input Real Matrix[:, :];
        output Real Matrix_Out[:, :];
        output Boolean OutOfMatrix;
      protected
        Real Range;
        Real Level;
        Integer RangePos;
        Integer LevelPos;
      algorithm
        OutOfMatrix := false;
        Range := abs(fin - ini);
        Level := (ini + fin)/2;
// Copy the matrix
        Matrix_Out := Matrix;
// Determine the position in the matrix - Range
        if (Range < Matrix_Out[3, 1]) or (Range >= Matrix_Out[size(Matrix_Out, 1), 2]) then
          RangePos := 0;
          OutOfMatrix := true;
        else
          for i in 3:size(Matrix_Out, 1) loop
            if (Range >= Matrix_Out[i, 1]) and (Range < Matrix_Out[i, 2]) then
              RangePos := i;
              break;
            end if;
          end for;
        end if;
// Determine the position in the matrix - Level
        if (Level < Matrix_Out[1, 3]) or (Level >= Matrix_Out[2, size(Matrix_Out, 2)]) then
          LevelPos := 0;
          OutOfMatrix := true;
        else
          for i in 3:size(Matrix_Out, 2) loop
            if (Level >= Matrix_Out[1, i]) and (Level < Matrix_Out[2, i]) then
              LevelPos := i;
              break;
            end if;
          end for;
        end if;
// Add Value to matrix
        if RangePos > 0 and LevelPos > 0 then
          Matrix_Out[RangePos, LevelPos] := Matrix_Out[RangePos, LevelPos] + 0.5;
        end if;
        annotation(
          Documentation(revisions = "<html><head></head><body><span style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">(09/12/2023): Initial release</span></body></html>", info = "<html><head></head><body><div style=\"font-family: 'MS Shell Dlg 2';\"><div style=\"font-size: 12px; font-family: -webkit-standard;\"><u>License:</u></div><div style=\"font-size: 12px; font-family: -webkit-standard;\"><u><br></u></div><div style=\"font-family: -webkit-standard;\"><span property=\"dct:title\" style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">Modelica RainflowCounter&nbsp;</span><span style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">© 2023&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">by&nbsp;</span><span property=\"cc:attributionName\" style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">Basilio Puente Varela&nbsp;</span><span style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">is licensed under</span><span style=\"color: rgb(51, 51, 51); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">&nbsp;</span><a href=\"https://creativecommons.org/licenses/by-nc-nd/4.0/?ref=chooser-v1\" target=\"_blank\" rel=\"license noopener noreferrer\" style=\"box-sizing: inherit; color: rgb(209, 69, 0); cursor: pointer; text-decoration: none; background-color: rgb(255, 255, 255); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2;\">CC BY-NC-ND 4.0&nbsp;<span data-v-a0d4e8a8=\"\" class=\"icon\" style=\"font-size: var(--icon-sprite-size); box-sizing: inherit; font-style: inherit; display: inline-flex; height: 1em; width: 1em; align-items: center; white-space: nowrap; vertical-align: middle; margin-right: 3px;\"><img data-v-a0d4e8a8=\"\" width=\"20\" height=\"20\" src=\"https://chooser-beta.creativecommons.org/img/cc-logo.f0ab4ebe.svg\" style=\"box-sizing: inherit; height: auto; max-width: 100%; border-style: none; margin-right: 3px;\"><img data-v-a0d4e8a8=\"\" width=\"20\" height=\"20\" src=\"https://chooser-beta.creativecommons.org/img/cc-by.21b728bb.svg\" style=\"box-sizing: inherit; height: auto; max-width: 100%; border-style: none; margin-right: 3px;\"><img data-v-a0d4e8a8=\"\" width=\"20\" height=\"20\" src=\"https://chooser-beta.creativecommons.org/img/cc-nc.218f18fc.svg\" style=\"box-sizing: inherit; height: auto; max-width: 100%; border-style: none; margin-right: 3px;\"><img data-v-a0d4e8a8=\"\" width=\"20\" height=\"20\" src=\"https://chooser-beta.creativecommons.org/img/cc-nd.de89fdeb.svg\" style=\"box-sizing: inherit; height: auto; max-width: 100%; border-style: none; margin-right: 3px;\"></span></a></div><div style=\"font-size: 12px; font-family: -webkit-standard;\"><br></div></div><div style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\"></span></div><div style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">This algorithm was developed by Basilio Puente Varela,&nbsp;</span><span style=\"font-family: Arial, sans-serif; font-size: 13.333333015441895px;\">©</span><span style=\"font-family: 'MS Shell Dlg 2';\">&nbsp;all rights are reserved. Contact for permission on other uses.</span></div><div><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div></body></html>"));
      end SimpleAddRainflowMatrix;

      function AddRainflowMatrix
        extends Modelica.Icons.Function;
        input Real ini "Start of the new cicle";
        input Real fin "End of the new cicle";
        input Real Matrix[:, :];
        input Real min_max_Range[2];
        input Real min_max_Level[2];
        input Boolean min_max_flag;
        output Real Matrix_Out[:, :];
        output Real min_max_Range_Out[2];
        output Real min_max_Level_Out[2];
        output Boolean min_max_flag_Out;
        output Boolean OutOfMatrix;
      protected
        Real Range;
        Real Level;
      algorithm
        OutOfMatrix := false;
        Range := abs(fin - ini);
        Level := (ini + fin)/2;
        if min_max_flag then
//si no hay datos previos
          min_max_Range_Out[1] := Range;
          min_max_Range_Out[2] := Range;
          min_max_Level_Out[1] := Level;
          min_max_Level_Out[2] := Level;
          min_max_flag_Out := false;
        else
          min_max_Range_Out[1] := min(min_max_Range[1], Range);
          min_max_Range_Out[2] := max(min_max_Range[2], Range);
          min_max_Level_Out[1] := min(min_max_Level[1], Level);
          min_max_Level_Out[2] := max(min_max_Level[2], Level);
        end if;
// Copy the matrix
        (Matrix_Out, OutOfMatrix) := ShipSIM.Functions.DataFunctions.SimpleAddRainflowMatrix(ini, fin, Matrix);
        annotation(
          Documentation(revisions = "<html><head></head><body><span style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">(09/12/2023): Initial release</span></body></html>", info = "<html><head></head><body><div style=\"font-family: 'MS Shell Dlg 2';\"><div style=\"font-size: 12px; font-family: -webkit-standard;\"><u>License:</u></div><div style=\"font-size: 12px; font-family: -webkit-standard;\"><u><br></u></div><div style=\"font-family: -webkit-standard;\"><span property=\"dct:title\" style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">Modelica RainflowCounter&nbsp;</span><span style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">© 2023&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">by&nbsp;</span><span property=\"cc:attributionName\" style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">Basilio Puente Varela&nbsp;</span><span style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">is licensed under</span><span style=\"color: rgb(51, 51, 51); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">&nbsp;</span><a href=\"https://creativecommons.org/licenses/by-nc-nd/4.0/?ref=chooser-v1\" target=\"_blank\" rel=\"license noopener noreferrer\" style=\"box-sizing: inherit; color: rgb(209, 69, 0); cursor: pointer; text-decoration: none; background-color: rgb(255, 255, 255); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2;\">CC BY-NC-ND 4.0&nbsp;<span data-v-a0d4e8a8=\"\" class=\"icon\" style=\"font-size: var(--icon-sprite-size); box-sizing: inherit; font-style: inherit; display: inline-flex; height: 1em; width: 1em; align-items: center; white-space: nowrap; vertical-align: middle; margin-right: 3px;\"><img data-v-a0d4e8a8=\"\" width=\"20\" height=\"20\" src=\"https://chooser-beta.creativecommons.org/img/cc-logo.f0ab4ebe.svg\" style=\"box-sizing: inherit; height: auto; max-width: 100%; border-style: none; margin-right: 3px;\"><img data-v-a0d4e8a8=\"\" width=\"20\" height=\"20\" src=\"https://chooser-beta.creativecommons.org/img/cc-by.21b728bb.svg\" style=\"box-sizing: inherit; height: auto; max-width: 100%; border-style: none; margin-right: 3px;\"><img data-v-a0d4e8a8=\"\" width=\"20\" height=\"20\" src=\"https://chooser-beta.creativecommons.org/img/cc-nc.218f18fc.svg\" style=\"box-sizing: inherit; height: auto; max-width: 100%; border-style: none; margin-right: 3px;\"><img data-v-a0d4e8a8=\"\" width=\"20\" height=\"20\" src=\"https://chooser-beta.creativecommons.org/img/cc-nd.de89fdeb.svg\" style=\"box-sizing: inherit; height: auto; max-width: 100%; border-style: none; margin-right: 3px;\"></span></a></div><div style=\"font-size: 12px; font-family: -webkit-standard;\"><br></div></div><div style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\"></span></div><div style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">This algorithm was developed by Basilio Puente Varela,&nbsp;</span><span style=\"font-family: Arial, sans-serif; font-size: 13.333333015441895px;\">©</span><span style=\"font-family: 'MS Shell Dlg 2';\">&nbsp;all rights are reserved. Contact for permission on other uses.</span></div><div><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div></body></html>"));
      end AddRainflowMatrix;

      function AddRainflowData
        extends Modelica.Icons.Function;
        input Real ini "Start of the new cicle";
        input Real fin "End of the new cicle";
        input Real Sol[4, :];
        input Integer N_Sol;
        output Real Sol_Out[4, :];
        output Integer N_Sol_Out;
      algorithm
        Sol_Out := Sol;
        Sol_Out[1, N_Sol] := ini;
        Sol_Out[2, N_Sol] := fin;
        Sol_Out[3, N_Sol] := abs(fin - ini);
        Sol_Out[4, N_Sol] := (ini + fin)/2;
        N_Sol_Out := N_Sol + 1;
        annotation(
          Documentation(revisions = "<html><head></head><body><span style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-size: 12px; font-family: 'MS Shell Dlg 2';\">(09/12/2023): Initial release</span></body></html>", info = "<html><head></head><body><div style=\"font-family: 'MS Shell Dlg 2';\"><div style=\"font-size: 12px; font-family: -webkit-standard;\"><u>License:</u></div><div style=\"font-size: 12px; font-family: -webkit-standard;\"><u><br></u></div><div style=\"font-family: -webkit-standard;\"><span property=\"dct:title\" style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">Modelica RainflowCounter&nbsp;</span><span style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">© 2023&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">by&nbsp;</span><span property=\"cc:attributionName\" style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">Basilio Puente Varela&nbsp;</span><span style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">is licensed under</span><span style=\"color: rgb(51, 51, 51); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">&nbsp;</span><a href=\"https://creativecommons.org/licenses/by-nc-nd/4.0/?ref=chooser-v1\" target=\"_blank\" rel=\"license noopener noreferrer\" style=\"box-sizing: inherit; color: rgb(209, 69, 0); cursor: pointer; text-decoration: none; background-color: rgb(255, 255, 255); font-family: 'Source Sans Pro', sans-serif; font-variant-ligatures: normal; orphans: 2; widows: 2;\">CC BY-NC-ND 4.0&nbsp;<span data-v-a0d4e8a8=\"\" class=\"icon\" style=\"font-size: var(--icon-sprite-size); box-sizing: inherit; font-style: inherit; display: inline-flex; height: 1em; width: 1em; align-items: center; white-space: nowrap; vertical-align: middle; margin-right: 3px;\"><img data-v-a0d4e8a8=\"\" width=\"20\" height=\"20\" src=\"https://chooser-beta.creativecommons.org/img/cc-logo.f0ab4ebe.svg\" style=\"box-sizing: inherit; height: auto; max-width: 100%; border-style: none; margin-right: 3px;\"><img data-v-a0d4e8a8=\"\" width=\"20\" height=\"20\" src=\"https://chooser-beta.creativecommons.org/img/cc-by.21b728bb.svg\" style=\"box-sizing: inherit; height: auto; max-width: 100%; border-style: none; margin-right: 3px;\"><img data-v-a0d4e8a8=\"\" width=\"20\" height=\"20\" src=\"https://chooser-beta.creativecommons.org/img/cc-nc.218f18fc.svg\" style=\"box-sizing: inherit; height: auto; max-width: 100%; border-style: none; margin-right: 3px;\"><img data-v-a0d4e8a8=\"\" width=\"20\" height=\"20\" src=\"https://chooser-beta.creativecommons.org/img/cc-nd.de89fdeb.svg\" style=\"box-sizing: inherit; height: auto; max-width: 100%; border-style: none; margin-right: 3px;\"></span></a></div><div style=\"font-size: 12px; font-family: -webkit-standard;\"><br></div></div><div style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\"></span></div><div style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">This algorithm was developed by Basilio Puente Varela,&nbsp;</span><span style=\"font-family: Arial, sans-serif; font-size: 13.333333015441895px;\">©</span><span style=\"font-family: 'MS Shell Dlg 2';\">&nbsp;all rights are reserved. Contact for permission on other uses.</span></div><div><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div></body></html>"));
      end AddRainflowData;
    end DataFunctions;

    package PropellerFunctions "Functions used in the library"
      extends Modelica.Icons.FunctionsPackage;

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
          Documentation(info = "<html><head></head><body>Kt &amp; Kq values for wageningen B-series obtained from:<div><br></div><div>[Oosterveld1975]&nbsp;M.W.C. Oosterveld and P. Van Oossanen, \"Further computer-analyzed data of the wageningen B-screw series\", International Shipbuilding Progress, Vol. 22, No. 251, July 1975</div><div><br></div><div><u>Limitations:</u></div><div><u><br></u></div><div>2 &lt;= Z &lt;= 7 (number of blades)</div><div>0.30 &lt;= Ae/Ao &lt;= 1.05 (expaded area ratio)</div><div>0.5 &lt;= P/D &lt;= 1.40 (pitch-diameter ratio)</div><div>Rn &lt;= 2x10^6 (Reynolds number)</div><div><br></div><div><div><br></div><div><u>Fhurter development:</u></div><div>- Include corrections for Rn &gt; 2x10^6&nbsp;</div></div></body></html>", revisions = "<html><head></head><body>Rev. 0.0&nbsp;<span style=\"font-size: 12px;\">[BPuente]&nbsp;</span>(11/08/2021): Initial release</body></html>"));
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
          Documentation(revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(21/04/2023): Initial release</span></body></html>", info = "<html><head></head><body><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Ct* &amp; Cq* coefficient matrix for the following 14 wageningen B-series:&nbsp;</span></div><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></span></div><div><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_100_1 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"4_100 P/D=1.0\"</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_85_1 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"4_85 P/D=1.0\"</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_70_1 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"4_70 P/D=1.0\"</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_55_1 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"4_55 P/D=1.0\"</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_40_1 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"4_40 P/D=1.0\"</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B3_65_1 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"3_65 P/D=1.0\"</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B5_75_1 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"5_75 P/D=1.0\"</span><span style=\"font-family: 'Courier New'; font-size: 12pt;\">&nbsp;</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B6_80_1 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"6_80 P/D=1.0\"</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B7_85_1 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"7_85 P/D=1.0\"</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_70_5 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"4_70 P/D=0.5\"</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_70_6 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"4_70 P/D=0.6\"</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_70_8 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"4_70 P/D=0.8\"</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_70_12 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"4_70 P/D=1.2\"</span><span style=\"font-family: 'Courier New'; font-size: 12pt;\">&nbsp;</span></pre><pre style=\"font-size: 12px; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt;\">B4_70_14 </span><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 139, 0);\">\"4_70 P/D=1.4\"</span></pre></div><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></span></div><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">obtained from:</span></div><div><br><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[Roddy]</td><td>Robert F. Roddy, David E. Hess, Will Faller, \"Neural network predictions of the 4-quadrant Wageningen propeller series\", David Taylor Model Basin - April 2006,&nbsp;<a href=\"https://apps.dtic.mil/sti/pdfs/ADA455497.pdf\">NSWCCD-50-TR-2006/004</a><br></td></tr></tbody></table></div></body></html>"));
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
          Documentation(info = "<html><head></head><body>Cavitation limit percentage using the Burrill diagram for common merchant ships propellers.</body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(23/04/2023): Initial release</span></body></html>"));
      end CavitationLimit_MS;
    end PropellerFunctions;

    package HeatTransfer
      extends Modelica.Icons.FunctionsPackage;

      function DiscretizePlate "Plate discretization for transient heat transfer"
        extends Modelica.Icons.Function;
        input Real e "Plate thickness";
        input Integer N "Half-number of elements (elements per side from center) Min=1";
        input Integer Sol "Array wanted";
        output Real Arr[2*N - 1] "Array requested";
      protected
        Real Rm[2*N - 1] "Mean position";
        Real Res[2*N - 1] "Resistances lenght";
        Real Cap[2*N - 1] "Thickness for calculate heat transfer capacitance";
        Real DeltaT "Equivalent step";
      algorithm
        DeltaT := 1/(N*2 - 1);
        for i in N:(2*N - 1) loop
          Rm[i] := (e/2)*(1 + ((i - N)*DeltaT*2));
          if i == N then
            Cap[i] := (e)*((DeltaT));
          else
            Cap[i] := (e/2)*(((i - N + 0.5)*DeltaT*2) - ((i - N - 0.5)*DeltaT*2));
          end if;
        end for;
        for i in 1:(N - 1) loop
          Rm[i] := e - Rm[2*N - i];
          Cap[i] := Cap[2*N - i];
        end for;
        Res[1] := 1/Rm[1];
        for i in 2:(2*N - 1) loop
          Res[i] := 1/(Rm[i] - Rm[i - 1]);
        end for;
        if Sol == 1 then
          Arr := Res;
        elseif Sol == 2 then
          Arr := Cap;
        else
          Arr := Rm;
        end if;
        annotation(
          Documentation(revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(09/12/2023): Initial release</span></body></html>", info = "<html><head></head><body>This function discretizes a plate with a center element.</body></html>"));
      end DiscretizePlate;

      function DiscretizePlateNotUSED "Plate discretization for transient heat transfer"
        extends Modelica.Icons.InternalPackage;
        input Real e "Plate thickness";
        input Integer N "Half-number of elements (elements per side from center) Min=1";
        input Integer Sol "Array wanted";
        output Real Arr[2*N - 1] "Array requested";
      protected
        Real Rm[2*N - 1] "Mean position";
        Real Res[2*N - 1] "Resistances lenght";
        Real Cap[2*N - 1] "Thickness for calculate heat transfer capacitance";
        Real DeltaT "Equivalent temperature step";
      algorithm
        DeltaT := 1/(N*2 - 1);
        for i in N:(2*N - 1) loop
          Rm[i] := (e/2)*(1 + sqrt((i - N)*DeltaT*2));
          if i == N then
            Cap[i] := (e)*(sqrt(DeltaT));
          else
            Cap[i] := (e/2)*(sqrt((i - N + 0.5)*DeltaT*2) - sqrt((i - N - 0.5)*DeltaT*2));
          end if;
        end for;
        for i in 1:(N - 1) loop
          Rm[i] := e - Rm[2*N - i];
          Cap[i] := Cap[2*N - i];
        end for;
        Res[1] := 1/Rm[1];
        for i in 2:(2*N - 1) loop
          Res[i] := 1/(Rm[i] - Rm[i - 1]);
        end for;
        if Sol == 1 then
          Arr := Res;
        elseif Sol == 2 then
          Arr := Cap;
        else
          Arr := Rm;
        end if;
        annotation(
          Documentation(revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(09/12/2023): Initial release</span></body></html>", info = "<html><head></head><body>This function discretizes a plate by using a temperature decay based system. It was proved non efficient when calculating transient heat transfer.</body></html>"));
      end DiscretizePlateNotUSED;

      function DiscretizeCylinder "Cylinder discretization for transient heat transfer"
        extends Modelica.Icons.Function;
        input Real R "Cylinder radious";
        input Integer N "Number of elements";
        input Integer Sol "Array wanted";
        output Real Arr[N] "Array requested";
      protected
        Real Re[N] "External radious";
        Real Rm[N] "Mean radious";
        Real A[N] "Area";
        Real Heat[N] "2*pi/log(Re/Ri)";
        Real An "Area of each part";
      algorithm
        An := (Modelica.Constants.pi*R^2)/N;
        Re[1] := sqrt(An/Modelica.Constants.pi);
        Rm[1] := Re[1]/sqrt(2) "First at half area distance";
        A[1] := An;
        for i in 2:N loop
          Re[i] := sqrt((An + Modelica.Constants.pi*Re[i - 1]^2)/Modelica.Constants.pi);
          Rm[i] := (Re[i - 1] + Re[i])/2;
//Rm[i]:=Re[i-1]+(Re[i]-Re[i-1])/sqrt(2); "Using middle area position, not work as expected"
          A[i] := An;
        end for;
        if N == 1 then
          Heat[1] := Modelica.Constants.inf;
        else
          for i in 1:(N - 1) loop
            Heat[i] := (2*Modelica.Constants.pi)/log(Rm[i + 1]/Rm[i]);
          end for;
          Heat[N] := (2*Modelica.Constants.pi)/log(Re[N]/Rm[N]);
        end if;
        if Sol == 1 then
          Arr := Re;
        elseif Sol == 2 then
          Arr := Rm;
        elseif Sol == 3 then
          Arr := A;
        else
          Arr := Heat;
        end if;
        annotation(
          Documentation(revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(09/12/2023): Initial release</span></body></html>", info = "<html><head></head><body>This function discretizes a cylinder radially by equal-surface parts.</body></html>"));
      end DiscretizeCylinder;
    end HeatTransfer;

    package Others
      extends Modelica.Icons.FunctionsPackage;

      function dayOfTheYear "Determine day of the year based on day, month and year"
        extends Modelica.Icons.Function;
        input Integer day "Day";
        input Integer month "Month";
        input Integer year "Year";
        output Integer dayOfYear "Day of the year";
      protected
        Boolean leapYear "Indicates leap year";
      algorithm
        leapYear := if mod(year, 4) == 0 then true else false;
        if (mod(year, 100) == 0) and (mod(year, 400) <> 0) then
          leapYear := false;
        end if;
        dayOfYear := day;
        dayOfYear := dayOfYear + (if month > 1 then 31 else 0);
        dayOfYear := dayOfYear + (if month > 2 then 28 + (if leapYear then 1 else 0) else 0);
        dayOfYear := dayOfYear + (if month > 3 then 31 else 0);
        dayOfYear := dayOfYear + (if month > 4 then 30 else 0);
        dayOfYear := dayOfYear + (if month > 5 then 31 else 0);
        dayOfYear := dayOfYear + (if month > 6 then 30 else 0);
        dayOfYear := dayOfYear + (if month > 7 then 31 else 0);
        dayOfYear := dayOfYear + (if month > 8 then 31 else 0);
        dayOfYear := dayOfYear + (if month > 9 then 30 else 0);
        dayOfYear := dayOfYear + (if month > 10 then 31 else 0);
        dayOfYear := dayOfYear + (if month > 11 then 30 else 0);
        annotation(
          Documentation(revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(09/12/2023): Initial release</span></body></html>", info = "<html><head></head><body>This function outputs the day of the year with day, month and year input. The function accounts for leap years.</body></html>"));
      end dayOfTheYear;

      function min_max "Min / Max limits"
        extends Modelica.Icons.Function;
        input Real X "Value";
        input Real minimum "Minimum";
        input Real maximum "Maximum";
        output Real Y "Output";
      algorithm
        Y := max(min(X, maximum), minimum);
        annotation(
          Documentation(revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(09/12/2023): Initial release</span></body></html>", info = "<html><head></head><body>This function limits the input between min and max values.</body></html>"));
      end min_max;

      function angle_btw_vectors "Angle between vectors"
        extends Modelica.Icons.Function;
        import Modelica.Math.Vectors.length;
        import Modelica.Math.Vectors.normalize;
        input Real A[3] "A vector";
        input Real B[3] "B vector";
        output Modelica.SIunits.Angle Ang "angle between vectors";
      protected
        Real product;
      algorithm
        if (length(A) > 0) and (length(B) > 0) then
          product := normalize(A)*normalize(B);
          product := ShipSIM.Functions.Others.min_max(product, -0.999999999999, 0.999999999999);
          Ang := acos(product);
        else
          Ang := 0;
        end if;
        annotation(
          Documentation(revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(09/12/2023): Initial release</span></body></html>", info = "<html><head></head><body>This function outputs the angle between vectors in radians.</body></html>"));
      end angle_btw_vectors;

      function signed_angle_btw_vectors_2D "Signed angle between vectors 2D, Positive counterclockwise from A to B"
        extends Modelica.Icons.Function;
        import Modelica.Math.Vectors.length;
        import Modelica.Math.Vectors.normalize;
        input Real A[2] "A vector";
        input Real B[2] "B vector";
        output Modelica.SIunits.Angle Ang "angle between vectors";
      protected
        Real productA;
        Real productB;
      algorithm
        if (length(A) > 0) and (length(B) > 0) then
          productA := B[2]*A[1] - B[1]*A[2];
          productB := B[1]*A[1] + B[2]*A[2];
          Ang := atan2(productA, productB);
        else
          Ang := 0;
        end if;
        annotation(
          Documentation(revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0&nbsp;</span><span style=\"font-size: 12px;\">[BPuente]&nbsp;</span><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">(20/05/2024): Initial release</span></body></html>", info = "<html><head></head><body>This function outputs the signed angle between 2D vectors in radians. Positive counterclockwise from A to B.</body></html>"));
      end signed_angle_btw_vectors_2D;
    end Others;
  end Functions;
