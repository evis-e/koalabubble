# koalabubble
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
