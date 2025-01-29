describe('Basic Cypress Test', () => {
    it('Loads the example page', () => {
      cy.visit('https://example.cypress.io');
      cy.title().should('include', 'Kitchen Sink');
    });
  });