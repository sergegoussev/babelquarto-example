# Install the package
install.packages('babelquarto', repos = c('https://ropensci.r-universe.dev', 'https://cloud.r-project.org'))


# Create a quarto project and then register the relevant languages to turn it
# into a babelquarto site
# NOTE: This script assumes you run it out of the directory where the project is
library(quarto)
library(babelquarto)
library(fs)

# for local running
website_dir <- path(".")

# In case you want to see the path
dir_tree(website_dir)

# Register english
register_main_language(
  main_language = "en",
  project_path = "."
)
# Register french
register_further_languages(c("fr"), website_dir)

## NOTE: Now you need to manually create copies of each *.qmd file
## and translate it

# Render to view (run this as many times as you need)
render_website(project_path = website_dir)
