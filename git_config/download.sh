# download updates for git-prompt and git-completion
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh\
  -N\
  -O git_config/git-prompt.sh

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh\
  -N\
  -O git_config/git-completion.zsh

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash\
  -N\
  -O git_config/git-completion.bash

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.tcsh\
  -N\
  -O git_config/git-completion.tcsh
