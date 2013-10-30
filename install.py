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
    for filename, settings_path, install_path in get_files():
        print 'Copying', filename
        mkdir_p(os.path.dirname(install_path))
        shutil.copy2(settings_path, install_path)


if __name__ == '__main__':
    sys.exit(main())
