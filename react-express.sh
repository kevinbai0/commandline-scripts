#!/bin/bash

function react-express() {
    if [ -z $1 ]
    then
        echo "No name entered"
    else
        git clone https://www.github.com/kevinbai0/react-express-boilerplate.git
        mv react-express-boilerplate $1
        cd $1
        git remote rm origin
        npm install
        cd client 
        npm install
        cd ..

        echo "Created project: $1"
        echo "To start your project:"
        echo "npm run dev"
    fi
}

