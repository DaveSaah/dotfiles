# Defined via `source`
function gpl --wraps='git pull' --description 'alias for git pull'
  git pull $argv;
end