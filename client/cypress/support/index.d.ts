declare namespace Cypress {
    interface Chainable {
        login(email: string, password: string): Chainable<void>;
        loginByApi(email: string, password: string): Chainable<void>;
    }
}