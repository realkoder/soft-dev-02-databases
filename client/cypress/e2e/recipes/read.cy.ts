describe("Signup flow", () => {
    before(() => {
        cy.login("cypress-user@example.com", "SuperSecret123!");
    });

    it("should allow login afterwards", () => {
        cy.contains("button", "Generate Recipe").click();
        cy.get('[data-cy="recipe-card-link"]').first().click();
    });
});
