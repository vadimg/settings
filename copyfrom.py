#!/usr/bin/env python

import os
import shutil

BASE_PATH = 'copy_files'

def get_files():
    for root, dirs, files in os.walk(BASE_PATH):
        for name in files:
            filename = os.path.normpath(os.path.relpath(os.path.join(root, name),
                                                        BASE_PATH))

            settings_path = os.path.abspath(os.path.join(BASE_PATH, filename))
            install_path = os.path.abspath(os.path.join(os.path.expanduser('~'), filename))

            yield filename, settings_path, install_path

def main():
    for filename, settings_path, install_path in get_files():
        print 'Copying', filename,
        try:
            shutil.copy2(install_path, settings_path)
            print
        except IOError:
            print '.... Failed'
            pass

if __name__ == '__main__':
    main()
