###-------------
###Unix command line rockstar
###-------------
#### 1. Write a command that will output the number of times the cat command was used previously

Two command solution

`history > ~/catCount`
`grep cat ~/catCount.txt | wc -l`

Is there a one line solution?

`history | grep cat | wc -l`

#### 2. Write a command to output a count of all words in the unix dictionary file that begin with the letter
"a"

`grep "^a" /usr/share/dict/words | wc -l`

Solution: 4667

#### 3. What operating system (OS) vendor and version is your vagrant box running?

OS: GNU/Linux 
Version: 3.2.0-23-generic-pae 

#### 4. What UNIX command did you run to get the answer to the previous question?

'uname -o -r'

#### 5. Return all the words in the dictionary that start with “a” and end with “s”

Best answer: `grep "^a" /usr/share/dict/words | grep "s$"`

`cat /usr/share/dict/words | grep "^a" | grep "s$"`

`cat /usr/share/dict/words | grep "^a" | grep "s$" | wc -l`

`grep "^a" /usr/share/dict/words | grep "s$" | wc -l`

#### 6. Using one unix command, download & save the following page:
www.lighthouselabs.ca/index.html

`wget www.lighthouselabs.ca/index.html`

Why won't ' wget -P /work www.lighthouselabs.ca/index.html' I keep getting permission not granted.

###-------------
###Git conflicts
###-------------

#### Question 1: During this linear process, where Dev B changed the document after Dev A had already committed and pushed their change to the remote (github), what extra step(s) could Developer B have taken to completely avoid this merge conflict?

Dev B should have pulled before making changes to the file.


#### Question 2: Given your answer in Q1, does this mean that merge conflicts can be completely avoided in the real world? Why or why not?

Probably not. Lack of communication, lack of planning, situational circumstances and human error are going to create instances where a series of unfortunate events will present conflicts needing some resolving.

###-------------
###Homework
###-------------

#### 1. What does CLI stand for?

Command Line Interface

#### 2. What is the difference between the following commands? Explain each one basically.
*  a. 'cd ~' _Move into home directory_
*  b. 'cd ~/' _Same as "a". Can move user to the home directory and into a specified directory_
*  c. 'cd .' _Transfer over to the very same directory you're currently situated_
*  d. 'cd ..' _Move up to parent directory_
*  e. 'cd /' _Takes user to root directory_ *

#### 3. In the following command, the first word is called the command, what is the remaining part called? mkdir -­p

Flag, and ultimately an argument

#### 4. What are the following commands doing? What is the difference between them? You may recall them from earlier today.
	*a. cat /usr/share/dict/words | grep "ous$" _Lists the dictionary words that only end in 'ous'_
	*b. cat /usr/share/dict/words | grep "ous$" | wc ­-l _Outputs the numbers of words in the dictionary that only end in 'ous'_

#### 5. Given the grep command from the previous question: grep "ous$"
	*a. What is the dollar sign being used for in the grep commands above? What happens if we don’t use it? _The $ grabs words that ONLY end in 'ous'; if we don't use it it will grab all wouds that include 'ous' regardless of position_
	*b. This argument for grep ("ous$"), contained within the double quotes, is more than just a string. What is this type of expression called? _It's a regular expression_

#### 6. What does the | symbol, used in some of the Part 2 commands, do in Unix?

It's called a "pipe" and grabs the left side's output and feeds it into the left side's command.

#### 7. What does the > symbol do in the Unix CLI?

It's called redirection and will place a command's output into a file specified on the right side of the '>'. If the file doesn't exist the file will be created; if the file exists the file will be overwritten and the new output will be added to the end of the file.

Avoind this by using the '>>' which appeds the output to the end of the file.

#### 8. What is the sudo command for?

Overrides permissions. Doing something as root user. "Superuser."

#### 9. What is the difference between the commands vagrant halt and vagrant suspend?

#### 10. While SSH’d into your Vagrant VM, you close your laptop lid, causing it to go to sleep, what happens to the VM? How do you continue working on your vagrant machine after resuming your laptop?

Nothing happens to the VM. You'll need to ssh back into the Vagrant VM to continue working.

#### 11. Why do conflicts occur when using source control?

Conflicts occur when multiple changes have been made on the same part of a file by multiple devs and is being pushed to the repo without previous changes having been pulled from the branch.

Conflicts protect ode from being overwritten when multiple people make changes to the same content/files. Git will try to automerge the conflicts but will require user intervention to resovle conflicts when the same LoC have been changed by different users.

#### 12. What is the difference between a git commit and a git push?

'git commit' transfers files to the stage while 'git push' transfers files to the repo.

#### 13. In git, what is the purpose of the .gitignore and .gitkeep (or .keep) files?

'.gitignore' are files that git will ignore when updating/adding.

'.gitkeep' keeps empty directories in the repo since git removes empty directories.


