{
  enableNeovim = true;
  camelCaseMotion.enable = true;
  handleKeys = {
    "<C-a>" = true;
    "<C-d>" = true;
    "<C-u>" = true;
    "<C-v>" = true;
    "<C-w>" = true;
    "<C-x>" = true;
  };
  smartRelativeLine = true;
  highlightedyank.color = "rgba(127, 128, 128, 0.8)";
  highlightedyank.enable = true;
  hlsearch = false;
  incsearch = true;
  insertModeKeyBindings = [
    {
      before = [ "j" "k" ]; # The sequence "j" followed by "k"
      after = [ "<Esc>" ]; # Exit insert mode
    }
    {
      before = [ "<C-Space>" ];
      commands = [ "editor.action.triggerSuggest" ];
    }
  ];
  leader = "<space>";
  normalModeKeyBindingsNonRecursive = [
    {
      before = [ "<leader>" "n" ];
      commands = [ "editor.action.marker.next" ];
    }
    {
      before = [ "<leader>" "p" ];
      commands = [ "editor.action.marker.prev" ];
    }
    {
      before = [ "<leader>" "f" "a" ];
      commands = [ "workbench.action.showAllSymbols" ];
    }
    {
      before = [ "<leader>" "f" "s" ];
      commands = [ "workbench.action.gotoSymbol" ];
    }
    {
      before = [ "<leader>" "f" "r" ];
      commands = [ "workbench.action.quickOpenRecent" ];
    }
    {
      before = [ "<leader>" "r" "n" ];
      commands = [ "editor.action.rename" ];
    }
    {
      before = [ "<C-Space>" ];
      commands = [ "editor.action.showHover" ];
    }
    {
      before = [ "<leader>" "c" "a" ];
      commands = [ "editor.action.quickFix" ];
    }
    {
      before = [ "<leader>" "l" ];
      after = [ "<C-W>" "l" ];
    }
    {
      before = [ "<leader>" "g" ];
      commands = [ "workbench.view.explorer" ];
    }
    {
      before = [ "<leader>" "h" ];
      after = [ "<C-W>" "h" ];
    }
    {
      before = [ "<leader>" "f" "f" ];
      commands = [ "workbench.action.quickOpen" ];
    }
    {
      before = [ "<leader>" "f" "t" ];
      commands = [ "workbench.action.selectTheme" ];
    }
    {
      before = [ "<leader>" "f" "g" ];
      commands = [ "workbench.view.search" ];
    }
    {
      before = [ "<leader>" "y" ];
      commands = [ "editor.action.formatDocument" ];
    }
    {
      after = [ "<C-W>" "l" ];
      before = [ "<C-l>" ];
    }
    {
      after = [ "<C-W>" "h" ];
      before = [ "<C-h>" ];
    }
    {
      after = [ "<C-W>" "v" ];
      before = [ "<C-W>" "\\" ];
    }
    {
      after = [ "<C-W>" "s" ];
      before = [ "<C-W>" "-" ];
    }
    {
      commands = [ "editor.action.moveLinesDownAction" ];
      before = [ "<C-j>" ];
    }
    {
      commands = [ "editor.action.moveLinesUpAction" ];
      before = [ "<C-k>" ];
    }
    {
      after = [ "$" ];
      before = [ "L" ];
    }
    {
      after = [ "^" ];
      before = [ "H" ];
    }
    {
      before = [ "J" ];
      after = [ "1" "0" "j" ];
    }
    {
      before = [ "K" ];
      after = [ "1" "0" "k" ];
    }
    {
      before = [ "D" ];
      after = [ "\"" "_" "D" ];
    }
    {
      before = [ "d" ];
      after = [ "\"" "_" "d" ];
    }
    {
      before = [ "d" "d" ];
      after = [ "\"" "_" "d" "d" ];
    }
    {
      before = [ "c" ];
      after = [ "\"" "_" "c" ];
    }
    {
      before = [ "C" ];
      after = [ "\"" "_" "C" ];
    }
    {
      before = [ "c" "c" ];
      after = [ "\"" "_" "c" "c" ];
    }
    {
      before = [ "x" ];
      after = [ "d" ];
    }
    {
      before = [ "x" "x" ];
      after = [ "d" "d" ];
    }
  ];
  visualModeKeyBindingsNonRecursive = [
    {
      after = [ "$" ];
      before = [ "L" ];
    }
    {
      after = [ "^" ];
      before = [ "H" ];
    }
    {
      before = [ "J" ];
      after = [ "1" "0" "j" ];
    }
    {
      before = [ "K" ];
      after = [ "1" "0" "k" ];
    }
    {
      before = [ "d" ];
      after = [ "\"" "_" "d" ];
    }
    {
      before = [ "c" ];
      after = [ "\"" "_" "c" ];
    }
    {
      before = [ "x" ];
      after = [ "d" ];
    }
    {
      commands = [ "editor.action.moveLinesDownAction" ];
      before = [ "<C-j>" ];
    }
    {
      commands = [ "editor.action.moveLinesUpAction" ];
      before = [ "<C-k>" ];
    }
  ];
  operatorPendingModeKeyBindingsNonRecursive = [
    {
      after = [ "$" ];
      before = [ "L" ];
    }
    {
      after = [ "^" ];
      before = [ "H" ];
    }
  ];
  replaceWithRegister = true;
  useSystemClipboard = false;
}
