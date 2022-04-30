#!/bin/bash
# Deploy script

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cat <<-HELP
Deploying process will:
1. Remove all vendor data from directory:
    ${SCRIPT_DIR}/vendor
2. Setup PHP vendor dependencies

HELP

while true; do
    read -p "Are you sure you want to deploy(y/n)? " ANSWER
    case $ANSWER in
        [Yy]* )
            printf "Start deploying...\n"
            cd ${SCRIPT_DIR}

            # Install PHP vendor dependencies
            rm -rf vendor
            composer install

        exit;;
        [Nn]* )
            printf "\nExit with no changes\n"
        exit;;
        * ) printf "Please answer yes or no.\n\n";;
    esac
done
