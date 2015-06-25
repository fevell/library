#!/usr/bin/env python
# -*- coding: UTF-8 -*-
import os
from setuptools import setup

setup(
    name = 'my_app',
    version='1.0',
    license='MIT',
    author='Sergey Soroka',
    author_email='me@sergey.so',
    description='One more Flask app',
    packages=['my_app'],
    platforms='any',
    install_requires=[
        'Flask',
        'gunicorn',
        'Flask-SQLAlchemy',
        'Flask-Admin',
        'psycopg2',
        'requests',
    ],
    classifiers=[
        'Development Status :: 1 - Beta',
        'Environment :: Web Environment',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: GNU General Public License v3',
        'Operating System :: OS Independent',
        'Programming Language :: Python',
        'Topic :: Internet :: WWW/HTTP :: Dynamic Content',
        'Topic :: Software Development :: Libraries :: Python Modules'
    ],
)
