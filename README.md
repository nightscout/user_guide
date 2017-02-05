1. ```git clone -b wip-sphinx2 https://github.com/nightscout/user_guide wip-sphinx2```
2. ```cd wip-sphinx2```
3. ```sudo pip install -r requirements.txt```
4. ```pip install -r requirements.txt```

Adding a new translation or update existing:

**```bin/update.sh de en```**

Then go to ```locale/de/LC_MESSAGES/docs.po``` and edit the ```*.po``` file

Insert translation into ```msgstr ""```

Build the whole project with translations:

**```bin/build.sh en de```**

You will find the html files in ```_build/html/de```

**Attention start both scripts from wip-shinx2 dir -> ```user@debian:~/wip-sphinx2$ bin/update.sh de en```**

