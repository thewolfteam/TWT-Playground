# TWT Playground

Fun/Crazy/Derpi stuff comes here.

Based on Reloaded, which is based on etpub, which is based on etmain, which is based on rtcw, which is based on John Carmack's brain, which is based on the atomic laws of the universe ...

Organized like this: every feature will go into its own branch. Example: you work on a fancy grenade thing, gooood. But make a branch with a real good name, like "SuperGrenadeWithFartsound" and push all commits into that branch.

Have fun!

# Git Download for Windows and short command list

- A windows download with a cool terminal and gitk program: https://git-for-windows.github.io/

Useful terminal commands:

- git clone https://github.com/thewolfteam/TWT-Playground.git #clones a repo (https)
- git branch #lists all local branches
- git branch -r #lists all remote branches
- git branch NAME #create a new branch locally
- git checkout BRANCHNAME #switch over to another branch
- git add FILENAME #adds a file to staging area (if i remember this name correct)
- git commit -m "message" #everything in the staging area will be commited locally
- git push origin BRANCHNAME #this pushes everything to a branch
- git status #view changes and logs

# Example workflow with Git:

0) Open a command terminal with support for git

1) git clone https://github.com/thewolfteam/TWT-Playground.git
Clone the master branch

2) git branch -r
List all remote branches

3) Pick a name, for example if it says "origin/kirbyfaust", then pick just "kirbyfaust"

4) git checkout kribyfaust
Type the name from step 3) along with the command:

5) Type "git branch" to see your local branches now. The asterics sign shows which one is active.

6) Make changes to the active branch

7) git -add FILENAME
Add only relevant files to the staging area. Important: only the relevant. If you know a better way, just do it, but never mess up the repo with unnecessary project files or builds you did. I know there is also a .gitignore, maybe it will come, dunno. Repeat above command for all files you changed or want to add, or do your own stuff if you know what you are doing. This is really only to not mess up the repo. Check changed files via git status or gitk (see the tip below).

8) git commit -m SOME MESSAGE
This commits all your previosly added files locally. In all cases add a fairly good info message about the commit. If it is nothing special, type "nothing special".

9) git push origin BRANCHNAME
Everything will be pushed to the remote branch on github.

Tip: type gitk in commandline if you have this program (should be in the download link for git for windows link from above). Gitk lets you view changes graphically. I use it mostly to view my local changes. Else: git status command is also very useful, especially for the git -add command

# Install script

- there is a file called install.bat in the trunk folder. Useful for copying everything you need to the place with your ET.exe, if you work on windows.