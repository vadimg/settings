#!/usr/bin/env python

import os
import shutil

from copyfrom import get_files

def main():
    for filename in get_files():
        print 'Copying', filename
        shutil.copy2(filename, os.path.join(os.path.expanduser('~'), filename))
