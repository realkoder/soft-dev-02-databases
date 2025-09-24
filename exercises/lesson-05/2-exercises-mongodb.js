// EXERCISES 2.

// use databases - exercises;

// ===================================================================================
// 1. Query states with total population greater than 10 million. The result should have
//    this structure - We want to show the state code and population:
// ===================================================================================
db.zips.aggregate([
        {
            $group: {
                _id: "$state",
                total_population: {$sum: "$pop"}
            }
        },
        {
            $match: {total_population: {$gt: 10_000_000}}
        },
        {
            $project: {
                _id: 1,
                total_population: 1
            }
        }
    ]
)

// ===================================================================================
// 2. What would be the sql equivalent to the query from exercise 1?
// ===================================================================================
// SELECT state AS id,
//      SUM(pop) AS total_population
// FROM zips
// GROUP BY state
// HAVING SUM(pop) > 10000000;

// ===================================================================================
// 3. Query average city population in each state. Keep the same structure like in task 1.
// ===================================================================================
db.zips.aggregate([
    {
        $group: {
            _id: {state: "$state", city: "$city"},
            city_population: {$sum: "$pop"}
        }
    },
    {
        $group: {
            _id: "$_id.state",
            avg_city_population: {$avg: "$city_population"}
        }
    },
    {
        $project: {
            _id: 1,
            avg_city_population: 1
        }
    }
])

// ===================================================================================
//4. Query largest and smallest cities in each state
// ===================================================================================
db.zips.aggregate([
    {
        $group: {
            _id: {state: "$state", city: "$city"},
            city_population: {$sum: "$pop"}
        }
    },
    {
        $group: {
            _id: "$_id.state",
            largest_city: {$max: {name: "$_id.city", pop: "$city_population"}},
            smallest_city: {$min: {name: "$_id.city", pop: "$city_population"}}
        }
    },
    {
        $project: {
            _id: 1,
            largest_city: 1,
            smallest_city: 1
        }
    }
])
