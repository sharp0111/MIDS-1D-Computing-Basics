# My Solution

## Serve index.html using darkhttp

1. **cd** into the directory with the sample index.html
2. **pwd** to output the absolute path name of the current directory
3. **darkhttpd ./ --port 12345**
4. Open <http://0.0.0.0:12345/> in a browser of your choice

## Exchange images

1. Exchanged an image on line 22 and added a new image on line 23 of the sample index.html
2. Did you need to restart the server to do that? Why or why not?
    - No, due to the change being a static image replacement, no server restart was necessary, only browser refresh was necesary to perform

## Process Id of running server

- **ps** command will output the current running processes and their corresponding ids

```shell
~ ps
  PID TTY           TIME CMD
 7023 ttys000    0:00.88 -zsh
10369 ttys000    0:00.01 darkhttpd ./ --port 12345
```

## Shell script

1. Run the bash script **./bash_script.sh** which will create a new index.html file
2. Run the server **darkhttpd ./ --port 12345**
3. Open <http://0.0.0.0:12345/> in a browser of your choice

