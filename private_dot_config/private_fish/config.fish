alias doc "docker-compose"

set -gx PATH ~/.local/bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/go/bin $PATH
set -gx PATH ~/.cargo/bin $PATH
set -gx PATH ~/Library/Python/3.7/bin/ $PATH
set -gx PATH /home/linuxbrew/.linuxbrew/bin $PATH

# opam configuration
source /Users/Sebastian/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

# Direnv
eval (direnv hook fish)

