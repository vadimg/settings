#!/usr/bin/env python

import os
import shutil
import sys
import errno

from copyfrom import get_files


def mkdir_p(path):
    try:
        os.makedirs(path)
    except OSError as exc: # Python >2.5
        if exc.errno == errno.EEXIST and os.path.isdir(path):
            pass
        else:
            raise

def main():
    for filename in get_files():
        print 'Copying', filename
        new_filename = os.path.join(os.path.expanduser('~'), filename)
        mkdir_p(os.path.dirname(new_filename))
        shutil.copy2(filename, new_filename)


if __name__ == '__main__':
    sys.exit(main())
