#!/usr/bin/env bash

#=================================================
#   Parameters
#=================================================

#---VSCode Editors------------
EDITORS=( # ~/Desktop/
  LocalDev/Notes
  Repos/notebook
  LocalDev/DocLinks.txt
  Repos/databricks/terraform/
  # Repos/terraform/
)

#---AWS Accounts--------------
ACCOUNTS=( # { dev,data,legacy,staging,prod,qa,default }
  dev
  data
  legacy
)


#=================================================
#   Routine
#=================================================

#---Hello---------------------
echo "おはようございます！"; echo;

#---VPN's---------------------
echo "Sign into 'GlobalProtect' and 'ops_prod'!"; echo;
read -p "Press any key to continue to ~Chrome Tabs~...";

#---Chrome Tabs---------------
echo "Sign into 'Okta' and open tabs!"; echo;
open -a 'Google Chrome' https://cylance.okta.com/app/UserHome#;
# open -a 'Google Chrome' https://10.203.255.6:5555/netaccess/loginuser.html; # Use if not on 'ops_prod'
read -p "Press any key to continue to ~Editors~...";

#---Editors-------------------
for i in ${EDITORS[@]}
do
  code -n ~/Desktop/$i;
done
open -a 'TextEdit' ~/Desktop/TODO.txt; echo;
read -p "Press any key to continue to ~AWS Key Renewals~...";

#---AWS Keys Renewal----------
~/sleepyscripts/awsauth.sh ${ACCOUNTS[@]}; wait;

#---Goodbye-------------------
echo "All done!";
echo "頑張れ！"; echo;