const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    baseUrl: "https://example.cypress.io",
    supportFile: false, // Disable support file if not needed
    reporter: "junit", // Enable JUnit reporting
    reporterOptions: {
      mochaFile: "cypress/results/test-results.xml", // Output location
      toConsole: true, // Print results in logs
    },
    setupNodeEvents(on, config) {
      // Add event listeners if needed
    },
  },
});
