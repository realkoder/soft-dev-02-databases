// Scenario: User can open a recipe from recipesPage

// Given the user is on GenerateRecipePage
// And the user is logged in
// When the user click on first recipe card
// Then the recipe page should display

// describe("Load recipe from recipes", () => {
//   before(() => {
//     cy.login();
//   })
//
//   it("should display recipe when first recipeCard is clicked", () => {
//     cy.loadPage("recipes");
//
//     cy.get('[data-cy="recipe-card-link"]').first().click();
//
//     cy.checkPageLoadedCorrectly("recipe");
//   });
// });