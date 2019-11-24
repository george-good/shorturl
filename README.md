
# README
# Introduction

Sample project to shorten URLs

# Installation

```
> git clone git@github.com:george-good/shorturl.git
> bundle
> rake db:migrate
> rails s
```

# Usage instructions
To create a short url visit the root path `/` or `/urls/new`
Enter the URL to shorten and hit `Shorten URL`
This will then generate a new Short URL.

To visit the original just paste the short url into your browser and hit enter.

# Notes on the code
I tried to make this production "like", so I've included some Gems I've used.

## Rectify

An Gem with strong opinions about separation  of code, where code might live in a rails project.

### Form objects

Form objects allow us to separate view logic from our model. It also allows us to validate the form we are building rather than the mdoels. An example might be that you want to have a registration form with the Firstname, lastname and company name. In standard rails you would have to jump through some hoops, e.g. nested_attributes_for etc. With a Form object we can keep keep the attributes for the form away from our models.

Form objects can also be tested in isolation and re-used as required.

### Commands

In conjunction with Form objects, commands allow us to keep business logic out of our controllers, and keep them doing what they should be, such as rendering views, redirecting etc.

In the form object example above we could have a command that creates the Company and then creates a new user an assigns them, this can be tested in isolation.

## Simple form

Easier forms in rails

## Slim

Easier formmating of HTML