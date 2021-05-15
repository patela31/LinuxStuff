fgrep -f fgrep-patternfiles /etc/passwd

[grep]
[:alnum:]	Matches any alphanumeric characters (any case), and is equal to using the [0-9A-Za-z] bracket expression
[:alpha:]	Matches any alphabetic characters (any case), and is equal to using the [A-Za-z] bracket expression
[:blank:]	Matches any blank characters, such as tab and space
[:digit:]	Matches any numeric characters, and is equal to using the [0-9] bracket expression
[:lower:]	Matches any lowercase alphabetic characters, and is equal to using the [a-z] bracket expression
[:punct:]	Matches punctuation characters, such as !, #, $, and @
[:space:]	Matches space characters, such as tab, form feed, and space
[:upper:]	Matches any uppercase alphabetic characters, and is equal to using the [A-Z] bracket expression

grep [[:digit:]] /etc/passwd


grep -E "^root|^dbus" /etc/passwd
root:x:0:0:root:/root:/bin/bash
dbus:x:81:81:System message bus:/:/sbin/nologin$

egrep "(daemon|nobody).*nologin" /etc/passwd
egrep "(daemon|s).*nologin" /etc/passwd  (or bin in the string)
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin

## skip directories and just look in files for 'hosts' ##
 grep -d skip hosts: /etc/* 2> /dev/null



#### BASH Script ####

printenv
set   - shows both global + local variables



#### Login Shell ####

/etc/profile
$HOME/.bash_profile
$HOME/.bash_login
$HOME/.profile        shell logins set up variables/environments
$HOME/.bashrc         no login shell variables/environments
`
To know whether your current shell is login or non-login, you can type below command.

prompt> echo $0

-bash # "-" is the first character. Therefore, this is a login shell.

prompt> echo $0

bash # "-" is NOT the first character. This is NOT a login shell.



systemctl list-unit-files -t service | grep enabled
 systemctl list-sockets --all --no-pager --full
systemctl cat rpcbind.socket

lsof -iTCP -sTCP:LISTEN
lsof -iTCP -sTCP:ESTABLSHIED
lsof -i tcp:22
fuser -vn tcp 22




