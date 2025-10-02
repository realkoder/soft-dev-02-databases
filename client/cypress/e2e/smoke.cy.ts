describe("Smoke test", () => {

    it("loads the home page", () => {
        cy.visit("/");
        cy.wait(1000);
        cy.contains("Sign In").should("exist");

        cy.contains("Sign In").click();
    });
});