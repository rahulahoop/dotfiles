function __p_projects
    find $HOME/git -mindepth 1 -maxdepth 3 -type d | string replace "$HOME/git/" ""
end

complete -c p -f -a "(__p_projects)"
