#!/bin/bash
#script name :assign_script.sh
#purpose:automate academic project ,folder creation and display system uptime summary
#author:Priyanka Singh


echo "Enter your project name:"
read  project_name
mkdir -p "$project_name"
echo "Creating folder structure"
mkdir -p "$project_name"/{docs,src,data,outputs,resources,reports}
mkdir -p "$project_name"/src/{scripts,modules}
mkdir -p "$project_name"/data/{raw,processed}
mkdir -p "$project_name"/reports/{drafts,final}

echo "Folder structure created successfully!"
echo "Creating default files"
touch "$project_name/README.md"
touch "$project_name/src/main.py"
touch "$project_name/docs/notes.txt"

echo "# $project_name" >> "$project_name/README.md"
echo "print('Hello from $project_name project!')" >>
"$project_name/src/main.py"

echo "Default files created!"
echo
echo "SYSTEM STATUS SUMMARY"
uptime
echo
echo "Your project setup is complete!"
