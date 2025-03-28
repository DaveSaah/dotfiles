function gaup --wraps 'git add --verbose --update' --description 'update tracked files'
  ga --update $argv;
end
