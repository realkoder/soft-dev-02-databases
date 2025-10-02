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
    url: "/",
    check: () => cy.contains("What would you like to cook today?").should("be.visible"),
  },
  indexNoAuth: {
    url: "/",
    check: () => cy.contains("h1", "Discover Your Next").should("be.visible"),
  },
  groceryLists: {
    url: "/grocery-lists",
    check: () => cy.contains("Grocery List").should("be.visible"),
  },
  profile: {
    url: "/profile",
    check: () => {
      cy.get("h1").contains("Profile").should("be.visible");
    },
  },
  recipe: {
    url: "/recipe",
    check: () => cy.get('[data-cy="recipe-title"]').should("be.visible"),
  },
  recipes: {
    url: "/recipes",
    check: () => cy.get("h1").contains("Recipe Studio").should("be.visible"),
  },
  signIn: {
    url: "/sign-in",
    check: () => cy.get("h1").contains("Profile Settings").should("be.visible"),
  },
};

Cypress.Commands.add("loadPage", (pageName: PageName) => {
  cy.visit(pages[pageName].url);
});

Cypress.Commands.add("checkPageLoadedCorrectly", (pageName: PageName) => {
  pages[pageName].check();
});


Cypress.Commands.add("signUp", (firstName: string, lastName: string, email: string, password: string) => {
    cy.loadPage("signIn");
    cy.wait(500);

    cy.contains("Create account").click();

    cy.get('input[name="first_name"]').type(firstName);
    cy.get('input[name="last_name"]').type(lastName);
    cy.get('input[name="email"]').type(email);
    cy.get('input[name="password"]').type(password);
    cy.get('input[name="confirmPassword"]').type(password);

    cy.contains("button", "Create Account").click();

    cy.checkPageLoadedCorrectly("indexAuth");
  }
);

Cypress.Commands.add("login", () => {
  const firstName = "Test";
  const lastName = "User";
  const email = "cypress-user@example.com";
  const password = "SuperSecret123!";

  // cy.session([], () => {
  cy.getCookie("jwt_auth").then((cookie) => {
    if (cookie) {
      cy.loadPage("indexAuth");
    } else {
      cy.loadPage("signIn");

      cy.intercept("POST", "/api/v1/auth/login").as("loginRequest");

      cy.wait(100); // If now waiting input it disabled
      cy.get('input[name="email"]').type(email);
      cy.get('input[name="password"]').type(password);
      cy.get('button[name="signinbtn"]').click();

      cy.wait("@loginRequest").then((interception) => {
        const status = interception.response?.statusCode;

        if (status === 401) {
          console.log("Login denied - will sign-up");
          cy.signUp(firstName, lastName, email, password);
        } else {
          cy.getCookie("jwt_auth").should("exist");
          cy.checkPageLoadedCorrectly("indexAuth");
        }
      });
    }
  })
  // })
});

