#!/bin/bash
    
function arch {
    archive_file_extensions=( ".7z" ".ace" ".arj" ".cab" ".cbr" ".deb" ".gz" ".gzip" ".jar"  \
".one" ".pak" ".pkg" ".ppt" ".rar" ".rpm" ".sib" ".sis" ".sisx" ".sit" ".sitx" ".spl" ".tar" ".tar-gz" ".tgz" ".xar" ".zip" ".zipx" )
    arch_file_num=0
    for i in ${archive_file_extensions[@]}; do
        let "arch_file_num += `find $1 -name "*$1" | wc -l`"
    done
}
arch
function exe {
    exe_file=( ".so" ".o" ".a" ".elf" ".bin" ".sh" ".exe" ".deb" ".rpm" ".tar" ".tar.gz" ".gz" ".ko" ".sh" ".php" ".py" ".etc" )
    exe_file_num=0
    for i in ${exe_file[@]}; do
        let "exe_file_num += `find $1 -name "*$1" | wc -l`"
    done
}
exe
. ./error.sh

exit 0