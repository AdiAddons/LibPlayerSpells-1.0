#!/bin/bash

echo "Mixed indentation:"
is_indented=true
grep -n -E '^	* 	' $(find '../' -name "*.lua" -o -name "*.toc" -o -name "*.xml") && is_indented=false
if [ $is_indented = true ] ; then
	echo "OK"
fi

echo "Trailing whitespaces:"
is_not_trailing=true
grep -n -E '[ 	]+$' $(find '../' -name "*.lua" -o -name "*.toc" -o -name "*.xml") && is_not_trailing=false
if [ $is_not_trailing = true ] ; then
	echo "OK"
fi

if [ ! $is_indented = true ] || [ ! $is_not_trailing = true ] ; then
	exit 1
fi
