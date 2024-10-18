#!/bin/bash

read -p "Enter the project name: " project_name

bin_dir="$project_name/bin/debug"
source_dir="$project_name/sources"

mkdir -p $bin_dir $source_dir

main_cpp="$source_dir/main.cpp"
if [ ! -f "$main_cpp" ]; then
    echo -e '#include <iostream>\nusing namespace std;\nint main() {\n    cout << "Hail Hitler!" << endl;\n    return 0;\n}' > "$main_cpp"

    echo "Created $main_cpp"
else
    echo "$main_cpp already exists."
fi

echo "Project structure created for $project_name."
