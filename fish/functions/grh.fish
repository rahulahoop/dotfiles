function grh --wraps='git reset --hard HEAD' --description 'alias grh=git reset --hard HEAD'
    git reset --hard HEAD $argv
end
