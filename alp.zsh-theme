function precmd() {
    # Print a newline before the prompt, unless it's the
    # first prompt in the process.
    if [ -z "$NEW_LINE_BEFORE_PROMPT" ]; then
        NEW_LINE_BEFORE_PROMPT=1
    elif [ "$NEW_LINE_BEFORE_PROMPT" -eq 1 ]; then
        echo
    fi
}

PROMPT="%(#,%{$fg[red]%},%{$fg[cyan]%})%n \
%{$reset_color%}at %{$fg[magenta]%}%M \
%{$reset_color%}in %{$fg[green]%}%~
%(?,%{$fg[green]%},%{$fg[red]%})➜ \
%{$reset_color%}"