describe('User Delete From Profile', () => {
  before(() => {
    cy.loginOrSignUpByApi();
  });

  it('should allow user to delete', () => {
    cy.loadPage('profile');

    cy.wait(250);
    cy.contains('button', 'Delete').click();

    cy.contains('button', 'Delete Account').click();

    cy.checkPageLoadedCorrectly('indexNoAuth');
  });
});
