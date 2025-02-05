function squashon --description "Squash current branch commits into one unstaged commit"
    # If no arguments are provided, show help text
    if test (count $argv) -eq 0
        echo "Hello! This will squash your current branch down to one unstaged commit."
        echo "Use by typing squashon rootBranchName"
        echo "usage: squashon develop"
        return
    end

    # If a root branch is provided, run the squasher
    if test (count $argv) -eq 1
        set branch (git symbolic-ref HEAD)
        set numOfCommits (git rev-list --count HEAD ^$argv[1])
        
        echo "Squashing all commits [$numOfCommits] from $branch"
        
        git reset (git merge-base $argv[1] $branch)
        
        echo "------SUCCESS!------"
        echo "Commits successfully squashed, all file changes are unstaged."
        echo "Run 'git add -A' and 'git commit -m \"your commit message\"' to add your squashed commit."
    end
end
