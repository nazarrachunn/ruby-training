# frozen_string_literal: true

# Pre-requisite setup required for each test
require_relative 'setup'
require_relative 'pages/inputs'
Setup.new

# Create and load the page
page = Inputs.new
page.load

# EXERCISE 2
# Grab the title of the page, type it into the field and then get the value of it

# 1) Find the number box on the page

# 2) Find the text property of the title

# 3) Type it into the field

# 4) Find out the value inside the field

# Wait and close
sleep 2
