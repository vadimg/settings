#!/usr/bin/env python

import os
import shutil
import sys

from copyfrom import get_files

def main():
    for filename in get_files():
        print 'Copying', filename
        shutil.copy2(filename, os.path.join(os.path.expanduser('~'), filename))


if __name__ == '__main__':
    sys.exit(main())
