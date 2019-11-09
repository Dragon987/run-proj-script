#!/bin/bash 

exe=put-exe-name
current_source_dir=$(pwd)
out_dir=put-output-directory

echo Running in $current_source_dir

build()
{
    if [ -d "$out_dir" ]
    then
        cd $out_dir
        cmake ..
        make
    else
        mkdir $out_dir
        cd $out_dir
        cmake ..
        make
    fi

    echo Done building!
}

run()
{
    if [ -d "$out_dir" ]
    then
        cd $out_dir
        ./$exe
    else
        build
        cd $out_dir
        ./$exe        
    fi

    echo Done running...
}

if [ "$1" = "b" ]
then
    echo Builing...
    build

elif [ "$1" = "br" ]
then
    echo Builing...
    build
    echo Running...
    run
    
elif [ "$1" = "r" ]
then
    echo Running...
    run
    
elif [ "$1" = "c" ]
then
    echo Cleaning...
    rm -r $out_dir
fi
