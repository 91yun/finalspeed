#! /bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
install_path=/fs/

function checkos(){
    if [ -f /etc/redhat-release ];then
        OS='centos'
    elif [ ! -z "`cat /etc/issue | grep bian`" ];then
        OS='debian'
    elif [ ! -z "`cat /etc/issue | grep Ubuntu`" ];then
        OS='ubuntu'
    else
        echo "Not support OS, Please reinstall OS and retry!"
        exit 1
    fi
}

# Uninstall finalspeed
uninstall_finalspeed(){
/etc/init.d/finalspeed stop
        checkos
        if [ "$OS" == 'centos' ]; then
            chkconfig --del finalspeed
        else
            update-rc.d -f finalspeed remove
        fi
        rm -f /etc/init.d/finalspeed
        rm -rf $install_path
        echo "finalspeed uninstall success!"
}

uninstall_finalspeed
