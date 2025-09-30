describe("Smoke test", () => {
    beforeEach(() => {
        cy.viewport(1280, 720);
        Object.defineProperty(window.navigator, 'language', { value: 'en-US' });
    });

    it("loads the home page", () => {
        cy.visit("/");
        cy.wait(1000);
        cy.contains("Sign In").should("exist");
    });
});