#!/bin/bash

bindir=$(dirname "$0")
cd "$bindir" || exit 1

for test_dir in report convert_schemes schemes damon_reclaim
do
	if ! "./$test_dir/test.sh"
	then
		exit 1
	fi
done

echo "PASS ALL"
