#!/usr/bin/env bash

for ACC in $@
do
  case $ACC in 

    dev)
      echo "---cylancedev---";
      echo "iyep" | okta-aws-cli -u iyep@cylance.com -r us-east-1 -o json -p cylancedev --role devops-admins -a 363141427109;
      wait;
      ;;

    data)
      echo "---cylancedata---";
      echo "iyep" | okta-aws-cli -u iyep@cylance.com -r us-east-1 -o json -p cylancedata --role devops-admins -a 254516979945;
      wait;
      ;;

    legacy)
      echo "---cylance(legacy)---";
      echo "iyep" | okta-aws-cli -u iyep@cylance.com -r us-east-1 -o json -p cylancelegacy --role devops-admins -a 494215538268;
      wait;
      ;;

    staging)
      echo "---cylancestaging---";
      echo "iyep" | okta-aws-cli -u iyep@cylance.com -r us-east-1 -o json -p cylancestaging --role devops-admins -a 245828668921
      wait;
      ;;

    prod)
      echo "---cylanceprod---";
      echo "iyep" | okta-aws-cli -u iyep@cylance.com -r us-east-1 -o json -p cylanceprod --role devops-admins -a 162750755750
      wait;
      ;;

    qa)
      echo "---cylanceqa---";
      echo "iyep" | okta-aws-cli -u iyep@cylance.com -r us-east-1 -o json -p cylanceqa --role devops-admins -a 923444253777
      wait;
      ;;

    default)
      echo "---default(dev)---";
      echo "iyep" | okta-aws-cli -u iyep@cylance.com -r us-east-1 -o json -p default --role devops-admins -a 363141427109
      wait;
      ;;

    *)
      echo "${ACC} not found."
      ;;

  esac
done