function ga --wraps 'git add --verbose' --description 'add file(s) to git repository'
  git add --verbose $argv;
end
