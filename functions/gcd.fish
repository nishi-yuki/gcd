function gcd -d "Change the current directory to repository's directory"
    set -l backmsg "(back)"
    set -l ghq_root (ghq root)
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
