#!/bin/bash

read -p "Enter the project name: " project_name

bin_dir="$project_name/bin/debug"
source_dir="$project_name/sources"
exe_file="$bin_dir/$project_name"

if [ ! -d "$project_name" ]; then
    echo "Project directory does not exist. Please run the create_project.sh script first."
    exit 1
fi

g++ -o "$exe_file" "$source_dir"/*.cpp

if [ $? -eq 0 ]; then
    echo "Compilation successful. Running the executable..."
    ./"$exe_file"
else
    echo "Compilation failed."
fi
