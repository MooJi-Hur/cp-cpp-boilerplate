#!/bin/bash

mkdir -p ".vscode"

cd ".vscode"
cat > tasks.json <<EOL
{
    "tasks": [
        {
            "type": "cppbuild",
            "label": "C/C++: clang++ build active file",
            "command": "/usr/bin/clang++",
            "args": [
                "-std=c++17",
                "-stdlib=libc++",
                "-fcolor-diagnostics",
                "-fansi-escape-codes",
                "-g",
                "\${file}",
                "-o",
                "\${fileDirname}/\${fileBasenameNoExtension}"
            ],
            "options": {
                "cwd": "\${fileDirname}"
            },
            "problemMatcher": [
                "\$gcc"
            ],
            "group": {
                "kind": "build",
                "isDefault": true
            },
            "detail": "Task generated by Debugger."
        }
    ],
    "version": "2.0.0"
}
EOL

cat > settings.json <<EOL
{
    "files.autoSave": "onFocusChange",
    "editor.formatOnSave": true,
    "editor.defaultFormatter": "ms-vscode.cpptools",
    "C_Cpp.default.compilerPath": "/usr/bin/clang++",
    "C_Cpp.default.cppStandard": "c++17",
    "C_Cpp.default.intelliSenseMode": "macos-clang-x64",
    "C_Cpp.clang_format_fallbackStyle": "google"
}

EOL

cat > extensions.json <<EOL
{
    "recommendations": [
        "ms-vscode.cpptools",
        "ms-vscode.cpptools-extension-pack"
    ]
}

EOL

cat > c_cpp_properties.json <<EOL

{
    "configurations": [
        {
            "name": "Mac",
            "includePath": [
                "\${workspaceFolder}/**"
            ],
            "defines": [],
            "macFrameworkPath": [
                "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/System/Library/Frameworks"
            ],
            "cStandard": "c17",
            "compilerPath": "/usr/bin/clang++",
            "intelliSenseMode": "macos-clang-x64",
            "cppStandard": "c++17"
        }
    ],
    "version": 4
}

EOL

echo "Setup completed."
echo "Please install the recommanded extensions and verify your c++ compiler path, e.g. 'which clang++'."
echo "To set up a specific problem, run the setup-vscode.sh with the problem number, e.g. './setup-vscode.sh 1001'."
