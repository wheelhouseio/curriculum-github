Show a simple verbose list of all the commits on the current branch.
* `git log`
* `Up` and `down` arrows navigate, `enter` cycles through log entries, and `q enter` quits log viewing screen.

Show a smaller version of the log.
* `git log --oneline`

Show a graph of the changes next to the log enteries. (Best used along with `--oneline`.)
* `git log --graph`

Include information about the branches and the current head. (Best used along with `--graph`.)
* `git log --decorate`

Include unmerged branches in the log. (Useful along with `--graph --decorate`.)
* `git log --all`

List the exact files included in each commit.
* `git log --stat` 

Show the actual changes that were made in each commit as diffs.
* `git log --patch`

All of the `git log` options are modular, and can be mix and matched with each other as needed. For instance, the following is a useful command that shows changes in one line, with a decorated graph off to the side.
* `git log --oneline --graph --decorate`