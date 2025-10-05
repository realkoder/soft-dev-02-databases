export function deleteListIfExist() {
  cy.get('body').then(($body) => {
    const deleteBtn = $body.find('button[cy-data="delete-list-btn"]');
    if (deleteBtn.length) {
      cy.wrap(deleteBtn).each(($btn) => {
        cy.wrap($btn).click({ force: true });
        cy.contains('button', 'Delete').click();
      });
    }
  });
}
