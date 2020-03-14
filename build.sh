#!/bin/bash
nosetests --with-coverage --cover-html --cover-package=ddt2
flake8 ddt2.py test || echo "Flake8 errors"
(cd docs; make html)
