# Byte-compiled / optimized / DLL files
__pycache__/
*.py[cod]
*$py.class

# C extensions
*.so

# Distribution / packaging
.Python
build/
develop-eggs/
dist/
downloads/
eggs/
.eggs/
lib/
lib64/
parts/
sdist/
var/
wheels/
share/python-wheels/
*.egg-info/
.installed.cfg
*.egg
MANIFEST

# PyInstaller
#  Usually these files are written by a python script from a template
#  before PyInstaller builds the exe, so as to inject date/other infos into it.
*.manifest
*.spec

# Installer logs
pip-log.txt
pip-delete-this-directory.txt

# Unit test / coverage reports
htmlcov/
.tox/
.nox/
.coverage
.coverage.*
.cache
nosetests.xml
coverage.xml
*.cover
*.py,cover
.hypothesis/
.pytest_cache/
cover/

# Translations
*.mo
*.pot

# Django stuff:
*.log
local_settings.py
db.sqlite3
db.sqlite3-journal

# Flask stuff:
instance/
.webassets-cache

# Scrapy stuff:
.scrapy

# Sphinx documentation
docs/_build/

# PyBuilder
.pybuilder/
target/

# Jupyter Notebook
.ipynb_checkpoints

# IPython
profile_default/
ipython_config.py

# pyenv
#   For a library or package, you might want to ignore these files since the code is
#   intended to run in multiple environments; otherwise, check them in:
# .python-version

# pipenv
#   According to pypa/pipenv#598, it is recommended to include Pipfile.lock in version control.
#   However, in case of collaboration, if having platform-specific dependencies or dependencies
#   having no cross-platform support, pipenv may install dependencies that don't work, or not
#   install all needed dependencies.
#Pipfile.lock

# poetry
#   Similar to Pipfile.lock, it is generally recommended to include poetry.lock in version control.
#   This is especially recommended for binary packages to ensure reproducibility, and is more
#   commonly ignored for libraries.
#   https://python-poetry.org/docs/basic-usage/#commit-your-poetrylock-file-to-version-control
#poetry.lock

# pdm
#   Similar to Pipfile.lock, it is generally recommended to include pdm.lock in version control.
#pdm.lock
#   pdm stores project-wide configurations in .pdm.toml, but it is recommended to not include it
#   in version control.
#   https://pdm.fming.dev/#use-with-ide
.pdm.toml

# PEP 582; used by e.g. github.com/David-OConnor/pyflow and github.com/pdm-project/pdm
__pypackages__/

# Celery stuff
celerybeat-schedule
celerybeat.pid

# SageMath parsed files
*.sage.py

# Environments
.env
.venv
env/
venv/
ENV/
env.bak/
venv.bak/

# Spyder project settings
.spyderproject
.spyproject

# Rope project settings
.ropeproject

# mkdocs documentation
/site

# mypy
.mypy_cache/
.dmypy.json
dmypy.json

# Pyre type checker
.pyre/

# pytype static type analyzer
.pytype/

# Cython debug symbols
cython_debug/

# PyCharm
#  JetBrains specific template is maintained in a separate JetBrains.gitignore that can
#  be found at https://github.com/github/gitignore/blob/main/Global/JetBrains.gitignore
#  and can be added to the global gitignore or merged into this file.  For a more nuclear
#  option (not recommended) you can uncomment the following to ignore the entire idea folder.
#.idea/

# VS Code
.vscode/*
!.vscode/settings.json
!.vscode/tasks.json
!.vscode/launch.json
!.vscode/extensions.json
!.vscode/*.code-snippets

# Local History for Visual Studio Code
.history/

# Built Visual Studio Code Extensions
*.vsix

#DataCamp stuff
.DS_Store

############### Airflow Stuff (some repeats)

# Airflow configuration
airflow.cfg
airflow_login.py
dbinit.py
initdb.py
secrets.py

# Airflow sqlite databases
airflow.db

# Airflow temporary artifacts
airflow/git_version
airflow/www/static/coverage/
airflow/www/*.log
/logs/
airflow-webserver.pid
standalone_admin_password.txt
warnings.txt

# Byte-compiled / optimized / DLL files
__pycache__/
*.py[cod]
*$py.class
.pytest_cache/

# C extensions
*.so

# Distribution / packaging
.Python
env/
build/
develop-eggs/
dist/
downloads/
eggs/
.eggs/
lib/
lib64/
parts/
sdist/
var/
wheels/
*.egg-info/
.installed.cfg
*.egg

# PyInstaller
#  Usually these files are written by a python script from a template
#  before PyInstaller builds the exe, so as to inject date/other infos into it.
*.manifest
*.spec

# Installer logs
pip-log.txt
pip-delete-this-directory.txt

# Unit test / coverage reports
htmlcov/
.coverage
.coverage.*
.cache
nosetests.xml
coverage*.xml
*,cover
.hypothesis/
.pytest_cache

# Translations
*.mo
*.pot

# Django stuff:
# *.log
local_settings.py

# Flask stuff:
instance/
.webassets-cache
/webserver_config.py

# Scrapy stuff:
.scrapy

# Sphinx documentation
docs/_build/
docs/rtd-deprecation/_build/
docs/_doctrees/
docs/_inventory_cache/
docs/*/_api/

# PyBuilder
target/

# Jupyter Notebook
.ipynb_checkpoints

# pyenv
.python-version

# celery beat schedule file
celerybeat-schedule

# SageMath parsed files
*.sage.py

# dotenv
.env
.autoenv*.zsh

# virtualenv
.venv*
venv*
ENV/

# Spyder project settings
.spyderproject

# Rope project settings
.ropeproject

# PyCharm
.idea/
*.iml

# Visual Studio Code
.vscode/

# vim
*.swp

# Emacs
*~
\#*\#
/.emacs.desktop
/.emacs.desktop.lock
*.elc
auto-save-list
tramp
.\#*

# OSX
.DS_Store

# SQL Server backups
*.bkp

# Spark
rat-results.txt

# Git stuff
# Kubernetes generated templated files
*.generated
*.tar.gz
scripts/ci/kubernetes/kube/.generated/airflow.yaml
scripts/ci/kubernetes/docker/requirements.txt

# Node & Webpack Stuff
*.entry.js
node_modules
npm-debug.log*
derby.log
metastore_db

# Airflow log files when airflow is run locally
airflow-*.err
airflow-*.out
airflow-*.log
airflow-*.pid
.airflow_db_initialised

# mypy
.mypy_cache/
.dmypy.json
dmypy.json

# Needed for CI Dockerfile.ci build system
.build
/tmp
/files

/hive_scratch_dir/
/.bash_aliases
/.bash_history
/.kube
/.inputrc
log.txt*

# Provider-related ignores
/provider_packages/CHANGELOG.txt
/provider_packages/MANIFEST.in
/airflow/providers/__init__.py

# Docker context files
/docker-context-files/*
!/docker-context-files/.README.md
# Local .terraform directories
**/.terraform/*

# .tfstate files
*.tfstate
*.tfstate.*

# Terraform variables
*.tfvars

# Might be generated when you build wheels
pip-wheel-metadata

.pypirc

/.docs-venv

# Dev files
/dev/packages.txt
/dev/Dockerfile.pmc

# Generated UI licenses
licenses/LICENSES-ui.txt

# Packaged breeze on Windows
/breeze.exe

# Generated out dir

/out

# files generated by memray
*.py.*.html
*.py.*.bin

# used to checkout target-branch in CI
/target-airflow

# Dask Executor tests generate this directory
/tests/executors/dask-worker-space/