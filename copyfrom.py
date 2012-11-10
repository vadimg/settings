#!/usr/bin/env python

import os
import shutil

def get_files():
    for root, dirs, files in os.walk('.'):
        for name in files:
            filename = os.path.normpath(os.path.join(root, name))

            if filename == 'copyfrom.py':
                continue

            if filename.startswith('.git'):
                continue

            if filename.endswith('.pyc'):
                continue

            if filename == 'install.py':
                continue

            yield filename

def main():
    for filename in get_files():
        print 'Copying', filename,
        try:
            shutil.copy2(os.path.join(os.path.expanduser('~'), filename), filename)
            print
        except IOError:
            print '.... Failed'
            pass

if __name__ == '__main__':
    main()
