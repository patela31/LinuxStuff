BEGIN { FS=":" ; print "Username" }
/^axp/{ print $1; count ++ }
END { print "Total users = " count }

