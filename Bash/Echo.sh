#!/bin/bash
echo "hello wolrd"
name="moatasem"
printf "hello world %s" $name


#!/bin/bash
cat > t1 <<EOF
echo "=== Example: read from User ==="
read -p "Enter your name: " first_Name
read -sp "Enter your password: " password
printf "\nHi \${first_Name}, your password is \${password}\n"
printf "=============================================================\n\n\n"
EOF
