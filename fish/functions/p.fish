function p -d "cd into a project directory in ~/git"
    set project_dir "$HOME/git/$argv[1]"
    if test -d "$project_dir"
        cd "$project_dir"
    else
        echo "Project '$argv[1]' not found in $HOME/git" >&2
        return 1
    end
end
