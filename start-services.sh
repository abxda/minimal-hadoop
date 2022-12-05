echo Iniciando Jupyter Lab ...
cd /vagrant

jupyter lab --ip='*' --NotebookApp.token='' --NotebookApp.password='' --app_dir=/vagrant/ --preferred_dir /vagrant/ --no-browser  > /dev/null 2>&1 &
