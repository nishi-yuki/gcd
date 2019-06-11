function gcd -a query -d "Change the current directory to repository's directory"
    set -l backmsg "(back)"
    set -l ghq_root (ghq root)

    # when query = reponame
    set -l matched_repos (ghq list $query)
    if test (count $matched_repos) = 1
        cd "$ghq_root"/"$matched_repos"
        return 0
    end

    set -l repo_path "$ghq_root"/(string split " " "$backmsg" (ghq list) | peco)
    switch "$repo_path"
        case ""
            return 1
        case "$ghq_root"/"$backmsg"
            return 0
        case "*"
            cd "$repo_path"
        end
end
