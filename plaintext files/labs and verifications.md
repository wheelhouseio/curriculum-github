1. Create an Issue to add your bio to the repo. The issue should contain each of the following: your name, the information about your from Issue #3, a request to add your bio, and some markdown formatting to make it all look pretty. This way the information is there for whoever ends up fixing the issue (spoiler alert, in this case that's going to be you).  
  verification-type: issue-created
2. Assign the issue you just created to yourself  
  verification-type: issue-assigned-to-self
3. Apply the label of "bio" to the issue.
  verification-type: issue-labeled

4. Create a branch in your repo (linked above) and name it firstname-lastname using your first and last name.
  verification-type: branch-created

5. Add a new bio file to the docs folder. Name the file firstname-lastname.md using your first and last name. Add the information from the Issue you created earlier to the file.
  verification-type: file-created

6. Create a Pull Request, @mentioning Hubyeti. Assign the Pull Request to yourself.
  verification-type: pull-request
7. Go to the "Files changed" tab and add a line comment to the Pull Request mentioning that you should add your favorite color.
  verification-type: pull-request-review-comment

8. Go back to your pull request and add your favorite color to the bio file. Commit the changes directly to your branch.
  verification-type: file-modified

9. Merge the pull request you created, closing your original issue with the merge commit. Don't forget, GitHub looks for the keywords: 'Fixes', 'Closes', or 'Resolves'.
  verification-type: pull-request-merged

10. Create a new branch on GitHub. Name the branch `githubID-more-bio`, using your GitHub ID.
  verification-type: branch-created
11. Clone the repository to your desktop using the Command Line.
12. Checkout a local copy of the branch you created on GitHub.

13. Open your bio file in a text editor.
14. Add more information to your bio.
15. Save the file.

16. Add your file to staging.
17. Commit your changes.

18. Use the command line to push your changes to the remote.
19. Go to the GitHub repo and create a new pull request.
  verification-type: pull-request

20. Create a new repository on GitHub.
21. Add a README.md file to the repo.
22. Clone the new repo to your desktop.

23. Create a local branch using your username as follows: `githubusername-branch`.

24. Create a new file on your branch.
25. Add the file to staging and commit it locally.
26. Push your file to the remote.
27. Create a pull request on GitHub.
28. Merge your changes into Master.

29. Retrieve the changes from the remote.

30. Open your file and make a few changes.
31. Save the changes and add them to the staging area. **Do not commit the changes yet.**
32. Open the same file and make a few more changes.
33. Save the changes.
34. Run git status.

35. Use the `git diff` commands to see how the file changes you made in the last lab appear.
36. When you are finished, `commit` your file changes.

37. Merge your local branch into master.
38. Push your changes to the remote.
39. Delete the local copy of your branch.

40. View `git log` on your copy of the repository.
41. View `git log --oneline` on your copy of the repository.
42. View `git log --oneline --graph --decorate --all` on your copy of the repository.

43. Initialize a new git repository.
44. Create a README.md file and commit it to the repository.
45. Create and commit a file called badname.md. You will use this later.
46. Create a branch in your new repository.

47. Create and checkout a branch called `merge-me`.
48. Create a file on your branch called `conflict.md`. Add several lines of text to your file, then stage it and commit it.
49. Checkout your `master` branch.
50. Create a file on your master branch that is also called `conflict.md`. Add several lines of text to your file, then stage it and commit it.
51. Merge your merge-me branch into master. This should create a merge conflict.
52. Clear your merge conflict.

53. Rename the badname.md file you created earlier to goodname.md.
54. When you are finished, commit your file changes.

55. Open your `goodname.md` file and add some text.
56. When you are finished, commit your file changes.
57. Re-open your `goodname.md` file and make changes to the original text.
58. When you are finished, commit your file changes.
59. Revert the last commit you made on goodname.md.

60. Create a file called `onefile.md`. Stage the file.
61. Create a file called `twofile.md`. Stage the file.
62. Commit the two files.
63. Create a new file called threefile.md.
64. Add `threefile.md` to your previous commit.

65. Make changes to the file called threefile.md.
66. Add the file to the staging area.
67. Unstage the file.

68. Edit the file `threefile.md`.
69. Use `git checkout` to discard your changes.

70. Remove the tracked file `onefile.md`

71. Create an alias for pushing a new branch upstream.
72. Create an alias for the status command.
