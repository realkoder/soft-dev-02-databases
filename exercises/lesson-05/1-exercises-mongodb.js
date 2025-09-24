// EXERCISES 1.

// use databases - exercises;

// ====================================================================================================
// 1. Find all books written in danish
// ====================================================================================================
// db.books.find({language: "Danish"});
// db.books.find().toArray().filter(book => book.language === "Danish")


// ====================================================================================================
// 2. Show the author and title of all the books written in Spanish.
// ====================================================================================================
// db.books.find({language: "Spanish"}, {author: 1, title: 1});
// db.books.find({language: "Spanish"}).map(book => ({author: book.author, title: book.title}));

// ====================================================================================================
//3. Find the number of books written by Virginia Woolf.
// ====================================================================================================
// db.books.find({author: "Virginia Woolf"});

// ====================================================================================================
//4. Show the name of those authors whose name contains the text “de”. Sort them by author descending.
// ====================================================================================================
// db.books.find({ author: /de/ }).sort({ author: -1 })

// ====================================================================================================
//5. Find those books written in a language other than English.
// ====================================================================================================
// db.books.find({language: {$ne: "English"}})

// ====================================================================================================
// 6. Find those books written in English by an author from the United Kingdom with more than 500 pages.
// ====================================================================================================
// db.books.find({language: "English", country: "United Kingdom", pages: {$gt: 500}})

// ====================================================================================================
// 7. Find those books that were either written by Charles Dickens, or by an author from
//    India, or that were written before the year 1500. Show only the title, author, country,
//    and year.
// ====================================================================================================
// db.books.find({$or: [{author: "Charles Dickens"}, {country: "India"}, {year: {$lt: 1500}}]}, {_id: 0, title: 1, author:1, country: 1, year: 1})

// ====================================================================================================
// 8. Show the different languages in which the books are written, without duplicates
// ====================================================================================================
// [...new Set(db.books.find({}, { language: 1, _id: 0 }).toArray().map(book => book.language))]
// db.books.distinct("language")


// ====================================================================================================
// 9. For each author, whose language is English, show the total and the average number of
//   pages of all his/her books. Sort by author descending.
// ====================================================================================================
db.books.aggregate([
    {$match: {language: "English"}},
    {
        $group: {
            _id: "$author",
            totalPages: {$sum: "$pages"},
            avgPages: {$avg: "$pages"}
        }
    },
    {$sort: {_id: -1}}
])

// ====================================================================================================
//                                                 IT_BOOKS
// ====================================================================================================

// ====================================================================================================
//10. Show the number of books in epub format written in English.
// ====================================================================================================
// db.it_books.countDocuments({ language: "en", "convertTo.epub": { $exists: true } });

// ====================================================================================================
// 11. Show all keys for all books except description, filesize, md5, series, periodicals,
//     file_extension and url.
// db.it_books.find({}, { description: 0, filesize: 0, md5: 0, series: 0, periodical: 0, file_extension: 0, url: 0 });

// ====================================================================================================
// 12. Show those books whose author does not have a first name. Omit the description.
// ====================================================================================================
// db.it_books.find({author_firstname: null}, {description: 0});

// ====================================================================================================
// 13. Show those books belonging to the category “Computer science” whose key
//     “convertTo” has a child key called “mobi”. Omit the description
// ====================================================================================================
db.it_books.find({categories: /Computer Science/, "convertTo.mobi": {$exists: true}}, {description: 0});