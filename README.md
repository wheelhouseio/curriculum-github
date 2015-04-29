# Git and GitHub Curriculum

Welcome to the Certify curriculum for Git and GitHub content. This repository contains the machine readable content used by Certify for delivering training courses.

## Structure

* A Certify curriculum is comprised of one or more courses. A course is something a student might take to learn about a topic - something like "Git and GitHub Foundations" or "GitHub for Product Managers". Most curriculi will have anything from 3-20 courses, but with industry and customer specific courses, it might be possible to have a couple of hundred courses within a particular curriculum repository.
* Every course is made up of one or more sections. Each section has a clear learning objective such as ensuring students could answer "What are Git and GitHub and why would you use them?" or "How can you quickly check out the state of a project?". Most courses will have 3-10 sections.
* Each section is in turn comprised of a number of modules covering a specific discrete learning outcome such as understanding "What is Git" or "How do I create a new pull request".
* The reusable unit of content is the module. Almost all of the work is in creating modules. Courses that don't have custom modules should only take a few minutes to create.

## Creating a New Course

To create a new course, just add a new YAML file to the /courses directory. The name of the file should ideally be the lower case, hyphen delimited name of the course, but when displaying courses, Certify will use the title from each course, not the file names. A course is comprised of a title, a description and a collection of 1..n sections. Each section is comprised of 1..n modules. Most courses will have 3-10 sections and most sections will have 3-10 modules.

## Modules

The contents of each module is contained within a single yml file. Each module has a file name that starts with a number so that the modules display in the approximate order they'd often be encountered in, followed by a hyphen delimited name that should give a sense of the content of the module but that is not used for display purposes.

The YAML file contains the title and description of the module. It then contains a description of the n-screens that comprise the module. Each screen is specified fully within the module YAML file and includes screen type (slide, video, poll, quiz, etc.), the contents to display to students and the presenter notes. The module also contains a resources section for links and resources to show as part of the course (but not on the individual module screens) and "additional-labs" and "additional-questions" sections to be used for demonstrating mastery in end of section quizzes, end of class quizzes and final certifications.