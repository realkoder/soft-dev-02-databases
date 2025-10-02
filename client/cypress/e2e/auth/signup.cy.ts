describe("Signup flow", () => {
    before(() => {
        cy.visit("/");
        cy.contains("Sign In").click();
        cy.contains("Create account").click();
        cy.get('input[name="first_name"]').type("Test");
        cy.get('input[name="last_name"]').type("User");
        cy.get('input[name="email"]').type("cypress-user@example.com");
        cy.get('input[name="password"]').type("SuperSecret123!");
        cy.get('input[name="confirmPassword"]').type("SuperSecret123!");
        cy.contains("button", "Create Account").click();

        cy.contains("What would you like to cook today?").should("exist");
    });

    it("should allow login after signup", () => {
        cy.login("cypress-user@example.com", "SuperSecret123!");
    });
});
