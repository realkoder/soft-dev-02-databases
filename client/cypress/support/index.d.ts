declare type PageName = "index" | "recipe" | "recipes" | "groceryLists" | "profile" | "signIn";

declare namespace Cypress {
  interface Chainable {
    login(email: string, password: string): Chainable<void>;

    loadPage(pageName: PageName): Chainable<void>;

    checkPageLoadedCorrectly(pageName: PageName): Chainable<void>;
  }
}