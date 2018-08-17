#!/bin/bash

echo "Checking if the file is ldif or not ...."


if [[ $NEW_FILE = "*.ldif" ]]; then
	echo "YES this is a ldif file...."
	echo "Adding the new user to ldap..."
else
	echo "This is not a ldif file"
fi