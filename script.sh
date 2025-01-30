#!/bin/bash

# Navigate to your Cypress project
cd my-cypress-project || exit

# Initialize a new npm project (if not already initialized)
if [ ! -f package.json ]; then
    npm init -y
fi

# Install Cypress as a dev dependency
npm install cypress --save-dev

#permission
sudo chmod -R 755 /home/harness/.cache/Cypress/
echo "executed permissions"

#listing the directory
ls -l

#verify is its installed
npx cypress verify
echo "its installed"

# Run Cypress tests
#DEBUG=cypress:* npx cypress run --spec "cypress/e2e/basic_test.cy.js"
mkdir -p cypress/results
npx cypress run --spec "cypress/e2e/basic_test.cy.js" --reporter junit
#npx cypress run
#--disable-gpu --spec "cypress/e2e/basic_test.cy.js"
#echo "executed cypress tests"
#npx cypress run --browser chrome --headless
