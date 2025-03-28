# Defined via `source`
function gcb --wraps='git checkout -b' --description 'create a new branch'
  git checkout -b $argv;
end
