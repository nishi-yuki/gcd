function gcd -d "Change the current directory to repository's directory"
    set -l repo_path (ghq list -p | peco)
    switch "$repo_path"
        case ""
            return 1
        case "*"
            cd "$repo_path"
        end
end
