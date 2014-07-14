#!/usr/bin/env python
import os
import sys

if __name__ == "__main__":
    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "tango.settings")

    from django.core.management import execute_from_command_line

    args = sys.argv
    if len(args) == 2 and args[1] == 'runserver':
        args.append('0.0.0.0:8000')

    execute_from_command_line(sys.argv)
