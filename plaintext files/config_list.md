Set your name.
* `git config --global user.name "FIRSTNAME LASTNAME"`

Set your email address.
* `git config --global user.email "EMAIL_ADDRESS"`

Set up your editor. Change "EDITOR_ALIAS" to the editor you'd like to use: `vim`, `atom`, `sblm`, etc.
* `git config --global core.editor "EDITOR_ALIAS --wait"`

Set up how git will recognize your whitespace if on Mac/Linux.
* `git config --global core.autocrlf input`

Set up how git will recognize your whitespace if on Windows.
* `git config --global core.autocrlf true`

Set your default push behavior to only push to the currently checked out branch.
* `git config --global push.default simple`