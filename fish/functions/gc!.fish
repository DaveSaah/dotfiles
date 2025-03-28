# Defined via `source`
function gc! --description 'alias for git commit --amend'
  git commit --amend -m $argv;
end