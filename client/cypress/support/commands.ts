/// <reference types="cypress" />
// ***********************************************
// This example commands.ts shows you how to
// create various custom commands and overwrite
// existing commands.
//
// For more comprehensive examples of custom
// commands please read more here:
// https://on.cypress.io/custom-commands
// ***********************************************
//
//
// -- This is a parent command --
// Cypress.Commands.add('login', (email, password) => { ... })
//
//
// -- This is a child command --
// Cypress.Commands.add('drag', { prevSubject: 'element'}, (subject, options) => { ... })
//
//
// -- This is a dual command --
// Cypress.Commands.add('dismiss', { prevSubject: 'optional'}, (subject, options) => { ... })
//
//
// -- This will overwrite an existing command --
// Cypress.Commands.overwrite('visit', (originalFn, url, options) => { ... })
//
// declare global {
//   namespace Cypress {
//     interface Chainable {
//       login(email: string, password: string): Chainable<void>
//       drag(subject: string, options?: Partial<TypeOptions>): Chainable<Element>
//       dismiss(subject: string, options?: Partial<TypeOptions>): Chainable<Element>
//       visit(originalFn: CommandOriginalFn, url: string, options: Partial<VisitOptions>): Chainable<Element>
//     }
//   }
// }
// cypress/support/commands.ts

const pages = {
  indexAuth: {
    url: '/',
    check: () => cy.contains('What would you like to cook today?').should('be.visible'),
  },
  indexNoAuth: {
    url: '/',
    check: () => cy.contains('h1', 'Discover Your Next').should('be.visible'),
  },
  groceryLists: {
    url: '/grocery-lists',
    check: () => cy.contains('Grocery List').should('be.visible'),
  },
  profile: {
    url: '/profile',
    check: () => {
      cy.get('h1').contains('Profile').should('be.visible');
    },
  },
  recipe: {
    url: '/recipe',
    check: () => cy.get('[data-cy="recipe-title"]').should('be.visible'),
  },
  recipes: {
    url: '/recipes',
    check: () => cy.get('h1').contains('Recipe Studio').should('be.visible'),
  },
  signIn: {
    url: '/sign-in',
    check: () => cy.get('h1').contains('Profile Settings').should('be.visible'),
  },
};

Cypress.Commands.add('loadPage', (pageName: PageName) => {
  cy.visit(pages[pageName].url);
});

Cypress.Commands.add('checkPageLoadedCorrectly', (pageName: PageName) => {
  pages[pageName].check();
});

Cypress.Commands.add("loginOrSignUpByApi", () => {
  const email = "cypress-user@example.com";
  const password = "SuperSecret123!";

  cy.request({
    method: "POST",
    url: "http://localhost:3000/api/v1/auth/login",
    body: { email, password },
    failOnStatusCode: false,
  }).then((resp) => {
    if (resp.status === 200 && resp.body.token) {
      setAuthFromResponse(resp);
    } else if (resp.status === 401) {
      cy.request("POST", "http://localhost:3000/api/v1/users", {
        user: {
          first_name: "Test",
          last_name: "User",
          email,
          password,
          password_confirmation: password,
        },
      }).then(() => {
        return cy.request("POST", "http://localhost:3000/api/v1/auth/login", {
          email,
          password,
        });
      }).then((loginResp) => {
        expect(loginResp.status).to.eq(200);
        setAuthFromResponse(loginResp);
      });
    } else {
      throw new Error(`Unexpected login status: ${resp.status}`);
    }
  });
});

const setAuthFromResponse = (resp: any) => {
  const token = resp.body.token;
  if (!token) throw new Error("No token returned from Rails login");

  cy.setCookie("jwt_auth", token, {
    domain: "localhost",
    httpOnly: false,
    secure: false,
  });
};
