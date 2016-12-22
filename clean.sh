#!/bin/bash
# Delete all temporary files
# if the first parameter is 'full' then delete compiled version of mercury6
echo $'\n'

echo "Delete all temporary files"
rm *.dmp *.clo *.out *.tmp *.aei

echo "Delete compiled files? (yes/no)"
read need_delete

if [ $need_delete = 'yes' ] || [ $need_delete = 'y' ]; then
  echo "Compiled files are deleted"
  if [ -e 'close6' ]; then
    rm close6
  fi
  if [ -e 'element6' ]; then
    rm element6
  fi
  if [ -e 'mercury6' ]; then
    rm mercury6
  fi
fi

echo "Delete input files? (yes/no)"
read need_delete_input

if [ $need_delete_input = 'yes' ] || [ $need_delete_input = 'y' ]; then
  echo "Deleting input files"
  rm *.in
fi

echo $'\n'
