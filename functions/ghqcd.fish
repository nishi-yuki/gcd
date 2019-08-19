function ghqcd -a query -d "Change the current directory to repository's directory"
    set -l backmsg "(back)"
    set -l prompt "select repo>"
    set -l ghq_root (ghq root)

    # when query = reponame
    set -l matched_repos (ghq list $query)
    if test (count $matched_repos) = 1
        cd "$ghq_root"/"$matched_repos"
        return 0
    end

    set -l repo_name (string split " " "$backmsg" (ghq list) | peco --query="$query" --prompt="$prompt")
    switch "$repo_name"
        case ""
            return 1
        case "$backmsg"
            return 0
        case "*"
            cd "$ghq_root"/"$repo_name"
        end
end
