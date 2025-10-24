function chef
    # Change directory to the Git folder's system directory
    cd $HOME/git/system

    # Pull the latest changes from Git
    git pull

    # This line sets a variable in the original script but isn't used
    # in the subsequent command, so it's kept as a comment or omitted.
    # set insideContainerCmd "USER=rahulbhonsale -v /Users/vesuvio/.chef:/srv/ruby-2.7-dev/.chef"

    # Print a message
    echo "Entering a chef container..." 

    # Execute the container command
    sc crun -i -vvv system:latest -o ' -v /Users/vesuvio/.chef:/srv/ruby-2.7-dev/.chef -e USER=rahulbhonsale' --isolated -- bash
    
    # Print the final message
    echo "kiss"
end
