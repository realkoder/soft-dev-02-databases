describe('Signup and login', () => {
  before(() => cy.loginOrSignUpByApi());
  const email = 'cypress-user2@example.com';
  const password = 'SuperSecret123!';

  it('should signup new user', () => {
    cy.loadPage('signIn');

    cy.wait(250);
    cy.contains('Create account').click();

    cy.wait(250); // If now waiting input it disabled
    cy.get('input[name="first_name"]').type('Random');
    cy.get('input[name="last_name"]').type('User');
    cy.get('input[name="email"]').type(email);
    cy.get('input[name="password"]').type(password);
    cy.get('input[name="confirmPassword"]').type(password);

    cy.contains('button', 'Create Account').click();

    cy.checkPageLoadedCorrectly('indexAuth');
  });

  it('should login user when signed up', () => {
    cy.loadPage('signIn');

    cy.intercept('POST', '/api/v1/auth/login').as('loginRequest');

    cy.wait(250); // If now waiting input it disabled
    cy.get('input[name="email"]').type(email);
    cy.get('input[name="password"]').type(password);
    cy.get('button[name="signinbtn"]').click();

    cy.checkPageLoadedCorrectly('indexAuth');
  });
});
