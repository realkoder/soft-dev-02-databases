# Cheatsheet - Mongosh commands

Basic but very relevant commands when using MongoDB through Mongosh

```bash
# ==============================================================
# BASIC DATABASE COMMANDS
# ==============================================================
show dbs           // list all databases
use munchora       // switch to the 'munchora' database
db                 // show current database

# ==============================================================
# Working with Collections
# ==============================================================
show collections   // list all collections in the current DB
db.createCollection("recipes")  // create a new collection
db.recipes.drop()  // delete a collection

# ==============================================================
# Inserting Data
# ==============================================================
db.recipes.insertOne({ name: "Spaghetti", servings: 2 })
db.recipes.insertMany([
  { name: "Pancakes", servings: 4 },
  { name: "Salad", servings: 1 }
])

# ==============================================================
# Querying data
# ==============================================================
db.recipes.find()                  // show all documents
db.recipes.find().pretty()         // formatted output
db.recipes.findOne({ name: "Salad" })  // find a single document
db.recipes.find({ servings: { $gt: 2 } }) // filter by condition

# ==============================================================
# Updating Data
# ==============================================================
db.recipes.updateOne(
  { name: "Salad" },
  { $set: { servings: 3 } }
)

db.recipes.updateMany(
  { servings: { $lt: 3 } },
  { $inc: { servings: 1 } }
)

# ==============================================================
# Deleting Data
# ==============================================================
db.recipes.deleteOne({ name: "Salad" })
db.recipes.deleteMany({ servings: { $gt: 4 } })


# ==============================================================
# Admin & Utility Commands
# ==============================================================
db.stats()          // get stats about current DB
db.serverStatus()   // see server info
db.getUsers()       // list DB users
db.dropDatabase()   // delete the current database

# ==============================================================
# Export / Import
# ==============================================================
mongoexport --uri="mongodb://root:root@localhost:27017/munchora" --collection=recipes --out=recipes.json
mongoimport --uri="mongodb://root:root@localhost:27017/munchora" --collection=recipes --file=recipes.json
```