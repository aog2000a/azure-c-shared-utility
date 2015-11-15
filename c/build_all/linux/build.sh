#!/bin/bash
#set -o pipefail
#

set -e

build_folder=~/sharedutil
script_dir=$(cd "$(dirname "$0")" && pwd)
build_root=$(cd "${script_dir}/../.." && pwd)
log_dir=$build_root
run_unit_tests=ON
make_install=

usage ()
{
    echo "build.sh [options]"
    echo "options"
    echo " -cl, --compileoption <value>  specify a compile option to be passed to gcc"
    echo "   Example: -cl -O1 -cl ..."
    exit 1
}

process_args ()
{
    save_next_arg=0
    extracloptions=" "

    for arg in $*
    do
      if [ $save_next_arg == 1 ]
      then
        # save arg to pass to gcc
        extracloptions="$arg $extracloptions"
        save_next_arg=0
      else
          case "$arg" in
              "-cl" | "--compileoption" ) save_next_arg=1;;
              "-i" | "--install" ) make_install=install;;
              * ) usage;;
          esac
      fi
    done
}

process_args $*

rm -r -f $build_folder
mkdir $build_folder
pushd $build_folder
cmake -DcompileOption_C:STRING="$extracloptions" $build_root
make --jobs=$(nproc) $make_install
ctest -C "Debug" -V
popd