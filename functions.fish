function check-git
    # Use fd to find all .git directories, -H includes hidden files/dirs
    # -t d only looks for directories
    fd -H -t d '\.git$' | while read -l git_dir
        set -l repo_path (dirname $git_dir)
        
        # Enter repo directory
        pushd $repo_path >/dev/null
        
        set -l status_output ""
        
        # Check for uncommitted changes (including untracked files)
        # --porcelain ensures machine-readable output
        if test -n "$(git status --porcelain)"
            set status_output "uncommitted changes"
        end
        
        # Check for unpushed commits on any branch
        # git rev-list @{u}..HEAD would only check current branch
        # this checks all branches for unpushed commits
        if test -n "$(git for-each-ref --format='%(upstream:track)' refs/heads)"
            if test -n "$status_output"
                set status_output "$status_output, unpushed commits"
            else
                set status_output "unpushed commits"
            end
        end
        
        # If we found any issues, print the repository path and status
        if test -n "$status_output"
            echo "$repo_path: $status_output"
        end
        
        # Return to original directory
        popd >/dev/null
    end
end
