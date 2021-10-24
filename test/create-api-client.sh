#!/bin/bash
helpFunction()
{
   echo ""
   echo "Usage: $0 -b <node | spring>"
   echo "\t-b Backend to use for client code generation"
}

while getopts b: flag
do
    case "${flag}" in
        b) backend=${OPTARG?helpFunction};;
        ?) helpFunction
           exit;;
    esac
done

if [ $# -eq 0 ] || [ -z "$backend" ] || [ $backend != node ] && [ $backend != spring ]
then
  helpFunction
  exit 1
fi

echo "Removing old client version"
rm -rf generated
mkdir "generated"

echo "Generating dart client from ${backend}"
if [ $backend = spring ]
then
  docker-compose up openApiShowcaseFromSpring
elif [ $backend = node ]
then
  docker-compose up openApiShowcaseFromNodeJS
fi