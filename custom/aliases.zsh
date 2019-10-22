##################
# custom aliases #
##################

# sshfs - ws16
alias mount_ws16hdd='sshfs -o idmap=user,umask=$(umask),gid=$(id -g),uid=$(id -u),user,reconnect,ServerAliveInterval=15 ws16:/srv/hdd ~/mnt/ws16hdd'
alias umount_ws16hdd='fusermount -u ~/mnt/ws16hdd'
alias mount_ws16ssd='sshfs -o idmap=user,umask=$(umask),gid=$(id -g),uid=$(id -u),user,reconnect,ServerAliveInterval=15 ws16:/srv/ssd ~/mnt/ws16ssd'
alias umount_ws16ssd='fusermount -u ~/mnt/ws16ssd'
alias mount_ws16ssd_nvm='sshfs -o idmap=user,umask=$(umask),gid=$(id -g),uid=$(id -u),user,reconnect,ServerAliveInterval=15 ws16:/srv/ssd_nvm ~/mnt/ws16ssd_nvm'
alias umount_ws16ssd_nvm='fusermount -u ~/mnt/ws16ssd_nvm'

# sshfs - Wolves GPU
alias mount_wolves_var_storage='sshfs -o idmap=user,umask=$(umask),gid=$(id -g),uid=$(id -u),user,reconnect,ServerAliveInterval=15 wolvesgpu:/var/storage/local/users/dspeck ~/mnt/wolves_var_storage'

# sshfs - hummel
alias mount_hummel1work='sshfs -o idmap=user,umask=$(umask),gid=$(id -g),uid=$(id -u),user,reconnect,ServerAliveInterval=15 hummel1:/work/intx033 ~/mnt/hummel_work'
alias mount_hummel2work='sshfs -o idmap=user,umask=$(umask),gid=$(id -g),uid=$(id -u),user,reconnect,ServerAliveInterval=15 hummel2:/work/intx033 ~/mnt/hummel_work'
alias umount_hummelwork='fusermount -u ~/mnt/hummel_work'

# syn - ws07
alias mount_ws07home='sshfs -o idmap=user,umask=$(umask),gid=$(id -g),uid=$(id -u),user,reconnect,ServerAliveInterval=15 dsp@ws07.synergeticon.com:/home/dsp ~/mnt/syn_ws07_home'
alias mount_ws07srv='sshfs -o idmap=user,umask=$(umask),gid=$(id -g),uid=$(id -u),user,reconnect,ServerAliveInterval=15 dsp@ws07.synergeticon.com:/srv ~/mnt/syn_ws07_srv'

# ls aliases
alias lsl='ls -lh'

# virtual environments
alias roboai36='source ~/roboai367/roboai367-venv/bin/activate'
alias roboai-experimental='source ~/roboai-experimental/roboai367-venv/bin/activate'

# feh aliases
alias fehaa='feh --auto-zoom --force-alias'

alias gitroot='cd $(git rev-parse --show-toplevel)'

## find executables of a given program line ipython that can be installed on the system and in the virtual-env
function executables {
    echo $(echo "-c \"find ${PATH//:/ } -name $@ -executable\"" | xargs bash)
}
function executable {
    echo "$(executables $@ | sed -r 's/ .*//')"
}
## Surpress a programs output
function quiet {
    $@ >/dev/null 2>&1
}
## additionally run it in background
function bquiet {
    $@ >/dev/null 2>&1 &
}
