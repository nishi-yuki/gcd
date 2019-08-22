if test -z $GHQCD_CMD
    set -U GHQCD_CMD g
end

# Set alias for ghqcd
if test ! -z $GHQCD_CMD
    complete -c g --no-files -a "(ghq list)"
    function g --description 'abbreviating command for ghqcd'
	    ghqcd  $argv;
    end
end
