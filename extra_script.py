'''
Copyright (c) 2023 uni-ubi
Project:     base
FileName:    extra_script.py
Author:      yarnell
Email:       mryarnell@foxmail.com
Version:     V1.0.0
Date:        2023-02-16 14:35:26
Description: 
Others: 
'''
import os
Import("env")

# include toolchain paths
env.Replace(COMPILATIONDB_INCLUDE_TOOLCHAIN=True)

# override compilation DB path
env.Replace(COMPILATIONDB_PATH=os.path.join("$BUILD_DIR", "compile_commands.json"))