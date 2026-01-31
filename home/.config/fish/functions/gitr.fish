function gitr --wraps='git remote -v' --description 'alias gitr git remote -v'
  git remote -v $argv
        
end
