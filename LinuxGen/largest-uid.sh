#! /bin/bash

sort -n -t: -k3 /etc/passwd | tail -1 | cut -d: -f3
