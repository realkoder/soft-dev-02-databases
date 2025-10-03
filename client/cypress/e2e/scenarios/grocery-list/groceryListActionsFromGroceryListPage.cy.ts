describe('Grocery list', () => {
  beforeEach(() => {
    cy.loginOrSignUpByApi();
  });

  it('first load should show no grocery lists', () => {
    cy.loadPage('groceryLists');

    cy.contains('h3', 'No grocery lists yet').should('be.visible');

    cy.checkPageLoadedCorrectly('groceryLists');
  });

  it('should create grocery list from create btn', () => {
    cy.loadPage('groceryLists');

    cy.contains('button', 'Create Your First List').click();

    cy.get('input[placeholder="Name Of Shopping List"]').should('have.value', 'Shopping 🛒');

    cy.checkPageLoadedCorrectly('groceryLists');
  });

  it('should delete grocery list when delete btn clicked', () => {
    cy.loadPage('groceryLists');

    cy.get('button').find('svg.lucide-trash2').should('exist').click({force: true});

    cy.contains('button', 'Delete').click();

    cy.checkPageLoadedCorrectly('groceryLists');
  });
});
