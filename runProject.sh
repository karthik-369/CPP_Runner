#!/bin/bash

read -p "Enter the project name: " project_name

bin_dir="$project_name/bin/debug"

source_dir="$project_name/sources"
main_cpp="$source_dir/main.cpp"

if [ ! -d "$project_name" ]; then
    echo "Project directory does not exist. Please run the create_project.sh script first."
    exit 1
fi

g++ -o "$source_dir/console1" "$main_cpp"

if [ $? -eq 0 ]; then
    echo "Compilation successful. Running the executable..."
    ./"$source_dir/console1"
else
    echo "Compilation failed."
fi
