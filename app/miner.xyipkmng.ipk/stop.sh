#!/bin/sh

MAIN_EXE='xyipkd'
base_path=$(dirname $0)
cd ${base_path}


stop_app () 
{
    ps | grep check_xyipkmng | grep -v grep | awk '{print $1}' | xargs kill -9
    killall ${MAIN_EXE}
}
stop_app

