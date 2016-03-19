#!/bin/bash

echo "Checking SSH connection...";
if [ -z "$SSH_CONNECTION" ]; then
	echo "No SSH connection, launching scripts.";
	# Your scripts here
else
	echo "SSH connection, nothing to be launched.";
fi
