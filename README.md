# Lightsaber

Welcome to the lightsaber challenge. 

It's well known throught the Starwars Universe that each Jedi in training must build their own lightsaber in order to become a Jedi Master. In the DevBootCamp world, we just want you to understand the parts of sinatra web app. 

Over the next three weeks, you will be personally responsible for adding a small bit of configuration to your lightsaber. Then complete a bit of code to reinforce the concepts that you've learned durning the day. 

## Release 0: Setting Up Your Lightsaber 

- Fork this repository into your github account.
  - The master branch will be a finalized skeleton that you can use as a base for your own projects. 
- Clone your lightsaber repository to your local machine.
- Create a new branch #{your-full-name}. 
  - This branch will be where you merge your nightly code too. This process will be explained at the beginning of each daily challenge.
- Use the following commands to delete everything out of this branch EXCEPT the README.md, .gitignore, and the LICENSE file. Don't worry, we will be adding them back as we go. 

```
$ git rm Gemfile
$ git rm Gemfile.lock
$ git rm Rakefile
$ git rm -rf app/
$ git rm config.ru
$ git rm database.rb
$ git rm -rf db/
$ git rm environment.rb
$ git rm -rf public/
$ git rm -rf spec/  
```



- Commit the Clean branch to your-full-name branch
- Go to github.com/#{your-github-id}/lightsaber then click on settings on the right hand side. Under setting, set the default branch to be the branch you just created and cleaned. 
- Add a new remote called base to your lightsaber that points back to the nyc-sea-lions-2015 master repository. 

```
$ git remote -v
origin  git@github.com:linkblaine/lightsaber.git (fetch)
origin  git@github.com:linkblaine/lightsaber.git (push)
$ git remote add base git@github.com:nyc-sea-lions-2015/lightsaber.git
$ git remote -v
base  git@github.com:nyc-sea-lions-2015/lightsaber.git (fetch)
base  git@github.com:nyc-sea-lions-2015/lightsaber.git (push)
origin  git@github.com:linkblaine/lightsaber.git (fetch)
origin  git@github.com:linkblaine/lightsaber.git (push)
```
You should be all set up at this point. You should have a master branch which is the full built out skeleton, and a branch that is your name that only has the three files listed above.

## Daily Release:

Each Day you will want to fetch from base to get the days challenge. 

```
$ git fetch base
$ git co day-1
$ git push origin day-1
```

Now follow the directions in the README.md

