if status is-interactive
    # Commands to run in interactive sessions can go here
    alias ll="ls -ltrh"
    alias la="ls -ltrhA"
    alias free="free -h"
    alias df="df -h"
    set fish_greeting
end

function fish_prompt

  echo ""
  set_color green

  echo -n (whoami)

  set_color normal

  echo -n "@"
  echo -n (hostname)
  echo -n " "

  set_color green
  echo -n "[ "
  echo -n (date +%Y.%m.%d\ -\ %H:%M)
  echo -n " ]"

  echo -n " - "
  set_color blue

  echo -n (pwd)

  set_color normal

  echo -n (fish_git_prompt)

  echo ""
  echo -n "λ "

end
