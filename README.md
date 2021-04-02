# gitBootcamp
Repo for training

## GIT OVERVIEW

#### What is Git?
Git is an open source version control system designed to handle everything from small to very large projects. Git is basically a content tracker. It allows for:
* Developers working in parallel
* Revert and go back to an older version of the code
* Branching and merging

#### Git vs. GitHub
* Git is a version control system, installed locally. **Git is the tool**.
* GitHub is a web-based hosting service for git repositories. **GitHub is a service that uses Git**.



## LEARNING RESOURCES

#### Markdown Cheat Sheet
[Link](https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf)

#### Git Commands Cheat Sheet
[Link](https://education.github.com/git-cheat-sheet-education.pdf)

#### Git Branches Tips & Commands
[Link](https://www.nobledesktop.com/learn/git/git-branches)

#### Branching Workflows
[Link](https://backlog.com/git-tutorial/branching-workflows/)


## INSTALLATION RESOURCES

#### Install on Windows
[Link](https://git-scm.com/download/win)

#### Install on Linux (Ubuntu)
``` sudo apt install git-all ```

#### Install on MacOS
Macs normally come with git pre-installed. To check run:
``` git --version ```
If you don't have it, there are two ways:
1. Install Xcode Command Line Tools by typing ``` git ``` on Terminal
2. [Link](https://git-scm.com/download/mac)

# Git Commands

## SETUP
#### INIT
Initialize an existing directory as a Git repo

``` git init ```

#### CLONE REPO
Clone a repository given an URL

``` git clone [url] ```

## STAGING & UPDATING
#### ADD
Add a file to your next commit (staging)

``` git add [filename] ```

#### COMMIT
Commit your stagged files to a new commit

``` git commit -m "SHORT DESCRIPTION" ```

#### PUSH
Push all changes to your remote repository

``` git push ```



## BRANCHING
#### CHECKOUT
Create a new branch, -b switch allows to create a new branch.

``` git checkout -b branchname ```

Switch to a different branch

Local: ``` git checkout branchname ``` 

Remote: ``` git checkout --track origin/branchname ```

#### STATUS
To see which branch you are working on

``` git status ```

#### BRANCH
Let's you see all branches

Local: ``` git branch ```

Remote: ``` git branch -r ```

All: ``` git branch -a ```


#### PUSH (Branch)
If branch doesn't exist in remote:

``` git push -u origin branchname (or HEAD) ```

If already exists

``` git push ```

#### MERGE
To merge:
1. Change to the desired branch you wan to merge another into ``` git checkout branchname ```
2. Merge the other branch ``` git merge branchanme ```


#### DELETE
To delete a branch:

Local: ``` git branch -d branchname (-D force deletion) ```

Remote: ``` git push origin --delete branchname ```
