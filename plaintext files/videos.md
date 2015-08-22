1.6: The Repository

* Repo holds everything in your project—code, documentation, other important files.
* Everything in the repo is tracked by git version control.
* The `README.md` file is shown at the bottom of the main page of the code view.
* Issues are used to track bugs and feature requests, and can be assigned to team members.
* A pull request represents a change that the author would like to make to the repo. PRs are used to resolve issues.

1.13: Using Issues

* You can use [markdown](https://help.github.com/articles/github-flavored-markdown/) to format issues.
* You can @mention somebody in order to alert them of the issue.
* `Preview` to see how your comment will be rendered.
* Drag and drop pictures into the issue to display them.
* You can assign an issue to anyone with access to the repo.
* Labels can be used to organize issues.
* Filters allow you to easily search for labels.

---

2.1: Understanding the GitHub Flow

* Everything on GitHub lives on a branch.
* The "canonical" version of the code lives on the master branch by convention.
* Use new branches to experiment with the code without affecting `master`.
* When you're done experimenting and want to add the feature into `master`, you create a pull request (PR).
* PRs don't have to be perfect, but should be ready for other people to look at, comment on, and work on.
* Once the changes in the PR are approved, the branch is "merged" into `master` and can then be removed.

2.3: Creating a Branch

* A branch is an identical copy of the master branch that can be edited separately.
* Branching keeps the code on `master` safe while allowing you to experiment.
* Create a branch by clicking on the `branch` drop-down and entering your branch name in the text field.
* Any files you create, edit, or delete will then be applied to that branch.
* Be careful, GitHub automatically puts you on `master`, so always make sure you're on the right branch before you start working.

2.5: Creating Files on GitHub

* Click on the `+` button to add a new file.
* Adding text followed by a `/` will create a new directory with that name.
* Add an extension to tell GitHub how to render the text.
* Once you're done editing the file, "commit" the changes below. Make sure to include a commit message.

2.8: Creating a Pull Request on GitHub

* Pull Requests (or PRs) are used to add code another branch, in this case `master`.
* A pull request asks that the team merge one branch into another.
* The "base" is the branch you want to merge into (often `master`), the "compare" is the branch you're merging, in this case the feature branch.
* Make sure to leave a comment to tell people what changes you made and why.
* In the comment, you should put number sign (`#`) in front of the number of the issue that you're fixing. This will automatically link your PR to that issue.
* Once you've made the PR, the `Files changed` view allows you to see what this PR will change on the base branch. Red means "deleted", green means "added". This view is often called the "diff".
* You can add comments directly to the diff, or in the `Conversations` view.

2.12: Editing Pull Request Files

* You will be notified of all comments on your own PRs.
* You can make changes to files directly in the `Files changed` view.
* These changes, once committed, will be included in the PR.

2.15: Merging Pull Requests

* To merge your branch into the master branch, click the `Merge pull request` button in the `Conversation` view.
* Use the keyword `Fixes` followed by `#` and the issue number to close the issue at the same time as you merge the PR.
* Once the PR is successfully merged, you can delete your feature branch as it is no longer needed.

---

3.10: Cloning a Repository

* Start a new branch on GitHub to work on.
* Using the command line, `cd` to the directory that you want to put your local repo in.
* Copy the clone URL on GitHub.
* Type `git clone CLONE_URL`. 
* `cd` into the new cloned repo and type `git status`. 
* `git branch` will show you the available branches. Only `master` appears.
* `git branch -a` will show all the remote branches.
* `git checkout BRANCH_NAME` will clone the branch you want onto your local machine, and all edits you make locally with be applied to that branch until you checkout another one.

3.15: Editing Local Files

* `git branch` to make sure you're on the right branch.
* `cd` to the proper directory, then open the file with your text editor.
* Make changes in that text editor, then save them.

3.21: The Two Stage Commit

* `git status` lets you see which files have been changed since the last commit.
* `git add FILE_NAME` adds that file to the staging area. `git add .` adds all the changed files to staging.
* `git commit` will submit all those file changes under one unit of work. 
* This also opens your default text editor (as set earlier in this lesson) for you to add a commit message.
* This commit will happen locally, and only on the checked out branch. If you check out another branch, the changes will no longer show in that file.

3.23: Pushing Changes

* `git status`: the working directory needs to be clean.
* `git push`: assuming you set the default push behavior to simple, this will push your changes to the same branch on the remote system.
* Back in GitHub, you can easily start a new pull request from that branch using the same process you learned earlier.

---

4.2: Creating a Repository on GitHub

* `Create new repository` button on your GitHub profile page.
* The name of your repository must be unique to your account.
* The repo must be public or private.
* Public repositories can be viewed, cloned, or fork your project.
* Only collaborators who you add can push changes to your repo.
* Private repositories can only be viewed, cloned, etc. by collaborators you have added.
* You are allowed an unlimited number of public repos on your account, but must have a paid account to have any private repositories.
* A `.gitignore` file tells git which types of files it shouldn't bother tracking. GitHub allows you to auto-generate your `.gitignore` file.
* You may add an open source liscence to your repository if you'd like to make it open source.
* Once you've created your repo, you can add collaborators by searching for their GitHub user name in the `Collaborators` section of the repo.

4.4: Creating Branches Locally

* `git branch` shows which branch you're on locally, and which other local branches exist.
* `git branch NEW_BRANCH_NAME` creates a new local branch. 
* You still must check out this new branch to edit it. `git checkout NEW_BRANCH_NAME`

4.6: Workflow Review

* This is a review of the workflow video from earlier.
* `git add .` adds _all_ modiffied or new files to be commited, so you don't have to write out each file.
* You can write your commit message along with your commit command using the syntax: `git commit -m "COMMIT_MESSAGE"`.
* Once this is finished, you must create a pull request on GitHub, and merge it on GitHub once it's completed.

4.8: Pulling Changes from the Remote

* When the remote repository has been changed (such as after a pull request), you need to update your local repository manually.
* The command `git pull` will make your local working branch up to date with the remote version of that same branch. 
* This will not delete local branches that have been deleted on the remote repo. 
* To delete local branches that do not have a remote counterpart, use the `git branch --merged` command to list all such local branches, and then `git branch -d BRANCH_NAME` to delete specific local branches.

---

5.1: Modiffying Local Files

* There is only one staging area, so you can change a branch after you've changed a file, and still commit that file to the new branch.
* `git checkout -b "NEW_BRANCH_NAME"` is a quick way to both create a new branch and check it out.
* If you edit a file after `git add`ing it, then on a commit only the changes made before the `git add` will actually be commited. You must `git add` again in order to commit all the changes.

5.4: Viewing Local Diffs

* `git diff` allows you to compare different versions of a file against each other.
* `git diff` alone compares the working directory to the staged version of the file.
* `git diff --staged` compares the staged version to the most recent commited version.
* `git diff HEAD` _combines_ the changes in your working and staged versions of the file, and compares them to the version of the file designated as HEAD (most often, the most recent commit).
* `git diff --color-words` displays a word-by-word comparision rather than a line-by-line comparison, helpful for small changes. 

5.7: Merging Local Changes

* When performing a merge, you need to have checked out the branch you are merging _into_.
* `git merge BRANCH_TO_MERGE` will merge the branch locally.
* To send the merge to the remote, simply `git push`. If you already have a PR for that branch open on GitHub, this will automatically close that PR.
* You must still delete the branch separately on GitHub (in the PR window) and locally (using `git branch -d BRANCH_NAME`).

5.9: Viewing Project History

* `git pull` updates the local directory to include all the changes made to the remote directory, even those done by other people.
* `git log` provides a list of all of the commits on the current branch, with the most recent commit first.
* `Up` and `down` arrows navigate, `enter` cycles through log entries, and `q enter` quits log viewing screen.
* `git log --oneline` shows a smaller version of the log.
* `git log --oneline --graph` shows a graph of the changes along with the one-line log.
* `git log --oneline --graph --decorate` includes information about the branches and the head.
* `git log --oneline --graph --decorate --all` also includes unmerged branches.
* `git log --stat` tells you which files were included in each commit.
* `git log --patch` shows the actual changes that were made in each commit as diffs.
* All of these options are modular, and can be mix and matched with each other as needed.

---

6.1: Creating a Repository on the Command Line

* To create a project from scratch, type `git init DIRECTORY_NAME`. This creates the directory as a subdirectory of the current location, and initializes a repo there.

6.4: Handling Merge Conflicts

* When you have a merge conflict, type `git status` and look for "unmerged paths" to see which files are creating the merge conflict.
* Open the file in your text editor. You will see some lines that look like the following:
      <<<<<<<< HEAD
      Some text here.
      ========
      Different text here.
      >>>>>>>> merge-me
* The text above and below the equal signs are what is causing the merge conflict. They appear on the same line but are different text.
* Decide how you want to resolve the conflict, and once that's completed delete the merge markers. Save and close your text editor.
* `git status` will show that the files are no longer in conflict, but that you are in the middle of a merge. `git add` the file and then `git commit` it, and the merge will then automatically complete.

6.6: Renaming and Moving Files

* When moving files, use the command `git mv FILENAME NEW_FILE_DIRECTORY/FILENAME` rather than just the `mv` command. This way git automatically `add`s the file to the staging area after it is moved, so it can be commited right away.
* Just as with `mv`, you can use `git mv` to rename a file by leaving out the `NEW_FILE_DIRECTORY` from the command.

6.9: Reverting Commits

* When reverting, you revert a specific commit.
* Find that commit, and copy the first several characters of the sha-1 hash.
* `git revert COMMIT_HASH` will create a new commit that is the exact opposite of the commit you're reverting.


6.12: Fixing Bad Commits

* The command `git commit --amend` will add whatever is in your staging area to your last commit, and allow you to edit that commit message.

6.15: Unstaging Files

* `git reset HEAD <file_name>` will remove a file from the staging area, putting it back in your working directory.

6.19: Using the Soft Reset
6.20: Using the Mixed Reset
6.21: Using the Hard Reset

* `git revert` reverts a specific commit. `git reset` resets git _to_ a specific commit.
* `git reset --soft <commit_to>` resets git to a specific commit, and puts the commits you're resetting into the staging area.
* `git reset --mixed <commit_to>` resets git to a specific commit, and puts the commits you're resetting into the working directory.
* `git reset --hard <commit_to>` resets git to a specific commit, and deletes the commits you're resetting. 
* Just like with `git revert` you can use the commit ID, or you can use the syntax `HEAD~<mumber>`. The number you put will be the number of sets backwards from the current HEAD that git will move the new HEAD to.
* You can always used `git log` to see all your previous history to know where to reset to.

6.22: Discarding Changes in Modified Files

* You can remove changes in the working directory using `git checkout`.
* This is destructive! You will throw away the changes and not be able to get them back.
* `git checkout --<file_name>` is the syntax. The `--` lets git know you're talking about a file. This will revert the file to the version found in the last commit.
* This only works for files in the working directory. Files in the staging area or already commited won't be reverted. 

6.24: Removing Tracked Files

* Just as `git mv` exists to move or rename a file and instantly add the change to the staging area, `git rm` exists to remove a file.
* `git rm <file_name>` will remove the file and `add` the change to the staging area.

---

7.1: Creating Command Shortcuts

* You can create alieses in git that let you call on the short alias instead of writing out a full long command.
* You do this by setting a global alias using `git config`.
* `git config --global alias.lol "log --oneline --graph --decorate --all"` would let you type `git lol` instead of the entire log command with all its options.
* `git config --global alias.co "commit -m"` would let you write `git co "Commit Message"` to quickly commit with a message attached. 