Learning Objective: At the end of this module, students should be able to use markdown to format their comments and better communicate with others on GitHub.

* What is Markdown?
  - Describe Markdown
  - Describe uses of markdown
  - Where can you use markdown?
    + Issues
    + RPs
    + Comments
    + Pages
* Basic Markdown
  - Paragraphs
    + Extra newline between paragraphs.
    + Show example
  - Newlines
    + Single newline between lines.
    + show example
  - **bold**
    + double-asterixes arround words or phrases
    + Show example
  - _italitic_
    + single asterixes or underscores around words or phrases
    + does not work inside of a word
    + show examples
  - ~~strikethrough~~
    + double tildes around word or phrases
    + examples
  - #Headers
    + pound sign in front of the text to become a header. 1 - 6 = different types of headers.
    + Must be at the front of a line.
    + examples
* Advanced Formatting in Markdown
  - Lists
    + Differences between lists
      * ordered lists
        - asterix or dash in front of each line
        - example
      * unordered lists
        - number + period before each line
        - it doesn't matter what the number is, markdown will render the correct number instead
        - examples
      * task lists
        - dash + [ ] at the beginning of a line = unchecked task
        - dash + [x] at beginning of line = checked task
        - Task lists in the first paragraph of an issue or PR will get turned into a % complete graph on the front of that Issue/PR
        - examples
    + Lists may come right after a previous paragraph
    + Lists may have multiple sub-lists, just indent the list by 2 spaces.
  - Block quotes
    + Use a left-facing carrot. >
    + Can do multiple paragraphs
    + Examples
  - Inline code
    + Use tic marks surrounding code. `
    + Examples 
  - Block code
    + Use three tic marks before and after the code. 
    + Can name the type of code it is after the first batch of tic marks to get syntax highlighting.
    + Examples
* Using markdown to link
  - auto-linking
    + a URL will automatically become a link
    + example
  - HTML-style Links
    + [text](link)
    + examples
  - @-mentions
    + Put @ in front of a user name to link to that person's account and ping them depending on their notification settings.
    + examples
  - team @-mentions
    + You can @-mention an entire team. 
    + @organization/team-name
  - Issue and PR links
    + Are used to link issues and/or PRs together for easy future reference and so you know what is related to what.
      * Also used to close Issues when you close PRs.
    + Put a # sign in front of the Issue or PR number that you want to link to. 
    + Can also put GH- in front instead
    + Can also put user and/or proejct in front: USER(/PROJECT)#NUMBER
    + examples
  - SHA links
    + Link to a specific commit by including its full SHA hash. The hash will be minified.
    + Can also put the user and/or project in front of it: USER(/PROJECT)@HASH
  - 