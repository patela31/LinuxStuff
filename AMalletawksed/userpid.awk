BEGIN { FS=":" ; print "Username" }
$3 > 499  { print $1 }
END { print "Total users = " NR }

