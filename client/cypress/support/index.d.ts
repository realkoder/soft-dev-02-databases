declare type PageName = "indexNoAuth" | "indexAuth" | "recipe" | "recipes" | "groceryLists" | "profile" | "signIn";

declare namespace Cypress {
  interface Chainable {
    signUp(first_name: string, last_name: string, email: string, password: string): Chainable<void>;

    login(): Chainable<void>;

    loadPage(pageName: PageName): Chainable<void>;

    checkPageLoadedCorrectly(pageName: PageName): Chainable<void>;
  }
}