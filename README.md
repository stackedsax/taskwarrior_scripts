TaskWarrior Integrations
========

This is my collection of scripts and workflows and shortcuts which I set up to help me manage my task lists with TaskWarrior.

# Installation

## TaskWarrior

To install task warrior itself, I had to run with `--with-gnutls` to get `task sync` to work

	brew install task --with-gnutls

## TaskWarrior Config

### Contexts

I have a couple contexts, one for my personal stuff and one for work:

	$ task show context                                                                      

	Config Variable Value                
	context.me      project:me or +me    
	context.work    project:Work or +work

To create, run:

	task context define me project:me or +me



## TaskWarrior Aliases

You'll find mine in .task_aliases.  Add them to yours and adjust as you see fit.

## Outlook

### Copy files into place:

##### Outlook 2016:

	cp -avp "Create New TaskWarrior Task.scptd" "/Users/`whoami`/Library/Scripts/Applications/Outlook/"

##### Outlook 2011:

	cp -avp "Create New TaskWarrior Task.scptd" "/Users/`whoami`/Library/Application Support/Microsoft/Office/Outlook Script Menu Items/"

### Create key binding

1. Open Keyboard System Preferences
2. Go to 'Shortcuts'
3. Go to 'App Shortcuts'
4. Add a new shortcut with the + sign
5. Choose Outlook as the application
6. Enter 'Create New TaskWarrior Task' as the Menu Title (but without the single quotes)
7. Add the key binding ^\` (which is ctrl + `)

## Alfred

As best as I can figure, you'd do this:

1. Install Alfred
2. Buy the Powerpack (can't remember if this is necesarry to run custom workflows or not)
3. Double click the `TaskWarrior.alfredworkflow` file.

## inthe.am

1. Sign up
2. Follow the sync instructions
3. Add the sync settings to your `.taskrc` file


## Twilio

1. Sign up
2. Get a number
3. Folw the inthe.am instuctions