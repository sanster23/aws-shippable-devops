#!/bin/bash

LDIF_EXTENSION="ldif"
USER_LDIF_FOLDER="folder"


echo "Checking if the file is ldif or not ...."

if [[ $CHANGES_TO_FOLDER = $USER_LDIF_FOLDER ]]; then 
	
	echo "Changes were made to the user ldif folder..."

	if [[ $NEW_FILE = *".${LDIF_EXTENSION}" ]]; then
		echo "YES this is a ldif file...."
		echo "Adding the new user to ldap..."
	else
		echo "This is not a ldif file. Ignoring this ....."
	fi
else
	echo "No new user ldif file is added..."
fi