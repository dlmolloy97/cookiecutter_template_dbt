export PATH="$HOME/anaconda3/bin/cookiecutter/bin:$PATH"
export PATH="$HOME/anaconda3/bin/dbt:$PATH"
source ~/.bash_profile
cookiecutter $1

# Navigate to the docs folder
cd $2/docs
pip install sphinx-autoapi
# Generate HTML documentation using Sphinx
make html

# Navigate back to the root of the created repository
cd ..

# Create a dbt project
dbt init dbt_$2