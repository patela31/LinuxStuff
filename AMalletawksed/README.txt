sed ' s/^/ls -l /e ' file.list
-rw-r--r-- 1 root root 565 May  1 17:05 /etc/hosts
-rw-r--r-- 1 root root 19183 Dec 26  2016 /etc/services
total 0
-rwxrwxrwx 1 attila10 attila10 26 May  3 14:26 file.list



## commands
axp10:x:1001:1001::/home/axp10:/bin/bash
axp101:x:1002:1002::/home/axp101:/bin/sh
axp102:x:1003:1003::/home/axp102:/bin/sh
attila10@DESKTOP-GS67A40:/mnt/c/Library/Linux/AMalletawksed$ sed ' s/^/sudo useradd -m /e ' user.list


sed ' s/^/sudo userdel -r /e ' user.list


#  SED can be used in vi 

:%s/text/with/g

: 2,10s/^/atul/g


# INDENT

:/^three/s/^/	/

:1,3s/^/   /


#  Copy and paste in another file

:1,10 w atul         (write to temp archive)

# new file

: r atul





## AWK ###

awk -f users.awk ./testpasswd

awk -f userpid.awk ./testpasswd

awk -F ':' '/^axp/ {print $1}' filename




