#!/bin/bash

# Navigate to your Cypress project
cd my-cypress-project || exit

# Initialize a new npm project (if not already initialized)
if [ ! -f package.json ]; then
    npm init -y
fi

#permission
sudo chmod -R 755 /home/harness/.cache/Cypress/


# Install Cypress as a dev dependency
#npm install cypress --save-dev

# Run Cypress tests
#npx cypress run --spec "cypress/e2e/basic_test.cy.js"
#npx cypress run --browser chrome --headless
