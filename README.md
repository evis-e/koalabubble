# koalabubble [![beRadiant()](https://img.shields.io/badge/koala-beRadiant();-blue.svg)](https://github.com/evis-e/koalabubble)

A small script that prints a koala with a speech bubble.

Clone the repo:
```
$ git clone https://github.com/evis-e/koalabubble.git
$ cd koalabubble/
```

Run the script with arguments:
```
$ ./koala.sh Hello there! How are you?
                ___________________________
               /                           \
               | Hello there! How are you? |
               \                           /
                ---------------------------
                 /
     .-._ _..:.._ _.-.  
    (  ,           ,  )
     '-/            \-'
       |  o  /\  o  |
       \     \/     /
       /'._  --  _.'___
     /'    '----'      \
   /'                  /
  ;             '-,---'
  |               '\    
  \                 \_  
  /'.                 '\
  \_/'--.......        /
               '--.__ /
```

You can also do more fun stuff, like:
```
$ sudo apt-get install fortune
$ sudo apt-get install lolcat
$ fortune | ./koala.sh | lolcat
```


## Install Globally

If you would like to run the koalabubble in any directory you can install it globally.

Please run the command below:
```
$ sudo ./install.sh
```

Note: If you get an error says `command not found` for `$ sudo ./install.sh` please run the following:
```
$ sudo chmod +x install.sh
$ sudo ./install.sh
```

Now you are able to run the koalabubble everywhere.
```
$ koala Hello there! How are you?
or
$ fortune | koala | lolcat
or
$ koala "beRadiant();"
```
