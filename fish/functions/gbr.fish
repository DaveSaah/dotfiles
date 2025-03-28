# Defined via `source`
function gbr --wraps='git branch --remote' --description 'alias for git branch --remote'
  git branch --remote $argv;
end
