#!/usr/bin/env python

import os
import shutil

for root, dirs, files in os.walk('.'):
    normroot = os.path.normpath(root)

    # ignore .git
    if normroot.startswith('.git'):
        continue

    for name in files:
        if normroot == '.' and name == 'copyfrom.py':
            continue

        filename = os.path.normpath(os.path.join(normroot, name))
        print 'Copying', filename,
        try:
            shutil.copy2(os.path.join(os.path.expanduser('~'), filename), filename)
            print
        except IOError:
            print '.... Failed'
            pass
