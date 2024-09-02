{ pkgs }:
{
  "redhat.telemetry.enabled" =  true;
  "window.zoomLevel" = 2;
  "files.autoSave" = "afterDelay";
  "workbench.colorTheme" = "Catppuccin Mocha";
  "java.jdt.ls.java.home" = "${pkgs.openjdk17}/lib/openjdk";
  "editor.fontFamily" = "'Cascadia Code', Consolas, 'Courier New', monospace";
  "editor.fontLigatures" = true;
  # "java.configuration.runtime" = [
  #   {
  #     "name" = "JavaSE-17";
  #     "path" = "${pkgs.openjdk17}/lib/openjdk";
  #     "default" = true;
  #   }
  # ];
  "editor.wordWrap" = "on";
}