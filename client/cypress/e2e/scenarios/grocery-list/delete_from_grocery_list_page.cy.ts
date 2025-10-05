describe('Grocery List - Delete', () => {
  beforeEach(() => {
    cy.loginOrSignUpByApi();
    cy.loadPage('groceryLists');
    cy.contains('button', 'Create Your First List').click(); // Ensure a list exists
  });

  it('deletes grocery list successfully', () => {
    cy.get('button[cy-data="delete-list-btn"]').click({ force: true });
    cy.contains('button', 'Delete').click();
    cy.contains('h3', 'No grocery lists yet').should('be.visible');
  });
});
