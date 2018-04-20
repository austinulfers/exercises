# Exercise 1: reading and querying a web API

# Load the httr and jsonlite libraries for accessing data
# You can also load `dplyr` if you wish to use it
library(httr)
library(jsonlite)
library(dplyr)

# Create a variable for the API's base URI (https://api.github.com)
base.uri <- "https://api.github.com"

# Under the "Repositories" category, find the endpoint that will list repos in 
# an organization
# Create a variable `resource` that represents the endpoint for the book
# organization (you can use `paste0()` to construct this, or enter it manually)
resource <- "/orgs/info201/repos"

# Send a GET request to this endpoint (the base.uri followed by the resource)
# and extract the response body
response <- GET(paste0(base.uri, resource))

# Convert the body from JSON into a data frame
response_content <- content(response, "text")
body_data <- fromJSON(response_content)
# How many (public) repositories does the organization have?
sum(body_data$private)


# Use a "Search" endpoint to search for repositories about "visualization" whose
# language includes "R"
# Reassign the `resource` variable to refer to the appropriate resource.
resource <- "/v3/search/#search-repositories"

# You will need to specify some query parameters. Create a `query_params` list 
# variable that specifies an appropriate key and value for the search term and
# the language
query_params <- 

# Send a GET request to this endpoint--including your params list as the `query`.
# Extract the response body and convert it from JSON.


# How many search repos did your search find? (Hint: check the list names)


# What are the full names of the top 5 results?



# Use the API to determine the number of people following Hadly Wickham 
# (`hadley`, the author of dplyr, ggplot2, and other libraries we'll be using). 

# Find an appropriate endpoint to query for statistics about a particular repo, 
# and use it to get a list of contributors to the `tidyverse/dplyr` repository.
# Who were the top 10 contributor in terms of number of total commits?
# NOTE: This will be a really big response with lots of data!

