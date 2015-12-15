# Branches

In Git, a branch is a working copy of your project. Everything in your project lives on a branch.

By convention, the default branch is called `master`. You should never do work directly on the `master` branch, but instead create another branch and then merge that branch back into `master` once your work is done and reviewed by other people. This way the code in `master` is always working, production-ready code. 

When you create a branch from another, you make a perfect copy of that first branch with a new name. From that point on edits made to one branch _will not_ show up on the other until you merge the branches back together.


## Using Branches Effectively

When you're working on a project, you're going to have a bunch of different features or ideas in progress at any given time—some of which are ready to go, and others which are not. Branching exists to help you manage this workflow.

Any time you want to start a new chunk of work, you should create a new branch for that work. Most commonly, we talk about "feature branches" and "bugfix branches". Technically, there is nothing different about these kinds of branches, it's just a social convention for why you're using them. 

All the work done on one branch should be towards a singular goal. You don't want each person to have a branch with whatever they're working on, or branches that try to both fix bugs and build new features. You want clean, single-purpose branches that can easily and cleanly be merged later.


## Try it Out

In this and the next two articles, we're going to be walking you through the GitHub Workflow. You're going to start by creating a branch to do the rest of the work on.

On the right side of the nav bar above, there is a link called `Repository`. If you click on it, you'll be brought to a GitHub repo that we created for you. From there, you can follow the instructions below. We'll validate certain steps as you go so you know you're doing it right.

* Click on the `Repository` link.
* Look around. This is the Code Veiw, where all your code in the repo is stored. 
* In the upper right, click on the button that says `branch: master`. This is where you can create new branches, or switch from the branch you're on to another branch.
* Create a branch called `create-bio`.
* You'll do the work in the next two lessons on this branch.