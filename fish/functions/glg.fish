# Defined via `source`
function glg --wraps='git log --graph' --description 'alias glg git log --graph'
  git log --graph $argv;
end