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

  set_color blue
  echo -n "["
  echo -n (pwd)
  echo -n "]"

  set_color normal
  echo -n " - "

  set_color normal
  echo -n "["
  echo -n (date +%Y.%m.%d\ -\ %H:%M)
  echo -n "]"

  set_color blue
  echo -n (fish_git_prompt)

  echo ""

  set_color green
  echo -n (whoami)
  echo -n "@"
  echo -n (hostname)
  echo -n ""
  set_color normal
  echo -n ":\$ "

end
