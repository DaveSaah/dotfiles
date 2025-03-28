# Defined via `source`
function gbl --wraps='git blame -b -w' --description 'git blame alias'
  git blame -b -w $argv;
end
