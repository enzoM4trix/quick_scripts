#!/bin/bash
if [ -e /usr/bin/apt ] ; then
    echo "Found apt package manager"
    apt-get remove -y datadog-agent
elif [-e/usr/bin/yum] ; then
    echo "Found yum package manager"
    yum remove -y datadog-agent
elif [-e/usr/bin/zypper] ; then
    echo "Found zypper package manager"
    zypper --non-interactive remove datadog-agent
else
    echo "Didn't find package manager apt or yum or zypper"
    exit 1
fi