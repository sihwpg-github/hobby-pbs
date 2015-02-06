#!/bin/bash

# This script manages external go pkgs dependency on this hobby playground. 

go_pkgs=(\
	# Add any third_party pkgs here.
	"github.com/go-sql-driver/mysql"\
	"code.google.com/p/go-sqlite/go1/sqlite3"\
)

for pkg in ${go_pkgs[@]}
do
	echo "download pkg $pkg to ${GOPATH}"
	go get ${pkg}
done
