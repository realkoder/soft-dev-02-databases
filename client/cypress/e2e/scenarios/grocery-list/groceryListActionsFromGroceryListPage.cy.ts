describe('Grocery list', () => {
  beforeEach(() => {
    cy.loginOrSignUpByApi();
  });

  it('first load should show no grocery lists', () => {
    cy.loadPage('groceryLists');

    cy.contains('h3', 'No grocery lists yet').should('be.visible');

    cy.checkPageLoadedCorrectly('groceryLists');
  });

  it('should create default grocery list from create btn', () => {
    cy.loadPage('groceryLists');

    cy.contains('button', 'Create Your First List').click();

    cy.get('input[placeholder="Name Of Shopping List"]').should('have.value', 'Shopping 🛒');

    cy.checkPageLoadedCorrectly('groceryLists');
  });

  it('should delete default grocery list when delete btn clicked', () => {
    cy.loadPage('groceryLists');

    cy.get('button[cy-data="delete-list-btn"]').click({ force: true });

    cy.contains('button', 'Delete').click();

    cy.checkPageLoadedCorrectly('groceryLists');
  });

  it('should create default grocery list from create btn and add item', () => {
    const listName = 'Test List 🍹';

    cy.loadPage('groceryLists');

    cy.get('input[placeholder="New list name"]').type(listName);

    cy.contains('button', 'Create List').click();

    cy.get('input[placeholder="Name Of Shopping List"]').should('have.value', listName);

    addItem('Chicken', 'Meat');

    cy.get('button[cy-data="delete-item-btn"]').click();

    cy.get('button[cy-data="confirm-delete-item-btn"]').click();

    cy.get('div[cy-data="list-item"]').should('not.exist');

    cy.checkPageLoadedCorrectly('groceryLists');
  });

  it('should add items to list', () => {
    cy.loadPage('groceryLists');

    const itemsToAdd = [
      { name: 'Banana', category: 'Fruit' },
      { name: 'Carrot', category: 'Vegetable' },
      { name: 'Milk', category: 'Dairy' },
      { name: 'Egg', category: 'Dairy' },
      { name: 'Skyr', category: 'Dairy' },
      { name: 'Broccoli', category: 'Vegetable' },
    ];

    itemsToAdd.forEach((item) => {
      addItem(item.name, item.category);
    });

    cy.checkPageLoadedCorrectly('groceryLists');
  });

  it('should delete created grocery list when delete btn clicked', () => {
    cy.loadPage('groceryLists');

    cy.get('button[cy-data="delete-list-btn"]').click({ force: true });

    cy.contains('button', 'Delete').click();

    cy.checkPageLoadedCorrectly('groceryLists');
  });
});

function addItem(name: string, category: string) {
  cy.get('input[placeholder="Add item..."]').clear().type(name);

  cy.get('button[role="combobox"]').click();
  cy.contains('[role="option"]', category).click();

  cy.get('button[cy-data="add-item"]').click();

  // cy.get('div[cy-data="list-item"]').should('exist');
}
