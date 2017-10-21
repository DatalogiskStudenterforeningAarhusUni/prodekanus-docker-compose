#!/bin/bash
echo "# Se: https://github.com/tomav/docker-mailserver/wiki/Configure-Accounts"
while read username password; do
echo "$username|`doveadm pw -s SHA512-CRYPT -u $username -p $password`"
done < postfix-accounts/postfix-accounts.txt
