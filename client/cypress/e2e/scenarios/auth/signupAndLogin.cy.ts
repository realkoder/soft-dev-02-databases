describe('Signup and login', () => {
  before(() => cy.loginOrSignUpByApi());

  it('should load page', () => {
    cy.loadPage('profile');
  });

  // it('should signup new user', () => {
  //   cy.loadPage('signIn');
  //
  //   cy.contains('Create account').click();
  //
  //   cy.wait(250); // If now waiting input it disabled
  //   cy.get('input[name="first_name"]').type('Test');
  //   cy.get('input[name="last_name"]').type('User');
  //   cy.get('input[name="email"]').type('cypress-user@example.com');
  //   cy.get('input[name="password"]').type('SuperSecret123!');
  //   cy.get('input[name="confirmPassword"]').type('SuperSecret123!');
  //
  //   cy.contains('button', 'Create Account').click();
  //
  //   cy.checkPageLoadedCorrectly('indexAuth');
  // });
  //
  // it('should login user when signed up', () => {
  //   cy.loadPage('signIn');
  //
  //   cy.intercept('POST', '/api/v1/auth/login').as('loginRequest');
  //
  //   cy.wait(250); // If now waiting input it disabled
  //   cy.get('input[name="email"]').type(email);
  //   cy.get('input[name="password"]').type(password);
  //   cy.get('button[name="signinbtn"]').click();
  //
  //   cy.checkPageLoadedCorrectly('indexAuth');
  // });
});
