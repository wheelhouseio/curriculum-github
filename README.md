# Git and GitHub Curriculum

Welcome to the Certify curriculum for Git and GitHub content. This repository contains the machine readable content used by Certify for delivering training courses.

# Validating a curriculum

The application assumes that the incoming curriculum is in the correct YAML format and uses the "right" schema for each element. The upside is that any failure rollsback the entire import so its an all-or-nothing process. The downside is there is very little feedback other than "it failed".

This repo includes a Gemfile with the required tools to validate the curriculum locally to help ensure imports are as smooth as possible. So before you get started, make sure to:

* Install Ruby (the Gemfile enforces the correct version)
* Install bundler `$ gem install bundler`
* Bundle the gems for the project `$ bundle` from the root directory of this curriculum

Feel free to reach out to the developement team in #support if you need help.

## TL;DR

Run `rake` to run both the linter and schema-validator. 

```bash
$ rake
Checking the content of ["courses"]
File : courses/github-for-developers.yml, Syntax OK
File : courses/github-for-everyone.yml, Syntax OK
Done.
courses/github-for-developers.yml#0: valid.
courses/github-for-everyone.yml#0: valid.
Checking the content of ["modules"]
File : modules/001-introducing-github.yml, Syntax OK
File : modules/002-exploring-a-repository.yml, Syntax OK
File : modules/COLL-00_Introducing-github.yml, Syntax OK
...
File : modules/PROJ-03_Using-pulse-graphs.yml, Syntax OK
Done.
modules/001-introducing-github.yml#0: valid.
modules/002-exploring-a-repository.yml#0: INVALID
  - (line 2) [/pre-requisites] '1': not a string.
  - (line 40) [/screens/2/lab/steps/0/verifications/0/repo-name] key 'repo-name:' is undefined.
  - (line 48) [/screens/2/lab/steps/1/verifications/0/repo-name] key 'repo-name:' is undefined.
modules/COLL-00_Introducing-github.yml#0: valid.
...
modules/PROJ-01_Managing-issues-pull-requests.yml#0: valid.
modules/PROJ-02_Using-milestones.yml#0: valid.
modules/PROJ-03_Using-pulse-graphs.yml#0: valid.
```
## Ensuring YAML is correct

The `yaml-lint` tool verifies that files or entire directories are full of YAML files. The following example checks the `courses` folder.

```bash
$ bundle exec yaml-lint courses modules
Checking the content of ["courses", "modules"]
File : courses//github-for-developers.yml, Syntax OK
File : courses//github-for-everyone.yml, Syntax OK
File : modules/001-introducing-github.yml, Syntax OK
...
Done.
```

Errors will be displayed in the console so you can track down what files and lines are an issue.

## Checking content against a schema

The `kwalify` tool validates that a YAML file follows a given schema. We currently have schema for a *module* and a *course*. The tool can be run against individual files or entire directories.

```bash
$ bundle exec kwalify -lf schema_course.yml courses/*
courses/github-for-developers.yml#0: valid.
courses/github-for-everyone.yml#0: valid.

$ bundle exec kwalify -lf schema_module.yml modules/COLL-01_Exploring-a-repository.yml
modules/COLL-01_Exploring-a-repository.yml#0: valid.
```

Errors will be displayed in the console so you can track down what files and lines are an issue.

# Importing a curriculum

Go to /repositories/new to import a new repo and put the slug in

## Structure

* A Certify curriculum is comprised of one or more courses. A course is something a student might take to learn about a topic - something like "Git and GitHub Foundations" or "GitHub for Product Managers". Most curriculi will have anything from 3-20 courses, but with industry and customer specific courses, it might be possible to have a couple of hundred courses within a particular curriculum repository.
* Every course is made up of one or more sections. Each section has a clear learning objective such as ensuring students could answer "What are Git and GitHub and why would you use them?" or "How can you quickly check out the state of a project?". Most courses will have 3-10 sections.
* Each section is in turn comprised of a number of modules covering a specific discrete learning outcome such as understanding "What is Git" or "How do I create a new pull request".
* The reusable unit of content is the module. Almost all of the work is in creating modules. Courses that don't have custom modules should only take a few minutes to create.

## Creating a New Course

To create a new course, just add a new YAML file to the /courses directory. The name of the file should ideally be the lower case, hyphen delimited name of the course, but when displaying courses, Certify will use the title from each course, not the file names. A course is comprised of a title, a description and a collection of 1..n sections. Each section is comprised of 1..n modules. Most courses will have 3-10 sections and most sections will have 3-10 modules.

## Modules

The contents of each module is contained within a single yml file. Each module has a file name that starts with a number so that the modules display in the approximate order they'd often be encountered in, followed by a hyphen delimited name that should give a sense of the content of the module but that is not used for display purposes.

The YAML file contains the title and description of the module. It then contains a description of the n-screens that comprise the module. Each screen is specified fully within the module YAML file and includes screen type (slide, video, poll, quiz, etc.), the contents to display to students and the presenter script. The module also contains a resources section for links and resources to show as part of the course (but not on the individual module screens) and "additional-labs" and "additional-questions" sections to be used for demonstrating mastery in end of section quizzes, end of class quizzes and final certifications.

## Setting up CI for a fork

This repo has Circle CI running the linter and schema-validation for any branch and PR. If you would like this for your fork, during setup have the `rake test` task run during the testing phase.

## Contributing

We recommend using a fork based GitHub Flow process to contribute content to the curriculum repo.

- `Fork` this repo
- Set up CI for the fork
- Create a branch
- Make changes
- When working locally, run `rake` to verify it passes linter and schema-validator
- Commit changes to branch
- Import branch on the `wheelhouse-curriculumn` instance to verify changes were valid
- Create a PR with the working changes
