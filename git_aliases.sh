# Aliases
alias g='git'
alias gst='git status'
alias gd='git diff | mate'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'

# Will return the current branch name
# Usage example: git pull origin $(current_branch)
#
function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

# These aliases take advangate of the previous function
alias gpull='git pull origin $(current_branch)'
alias gpush='git push origin $(current_branch)'
