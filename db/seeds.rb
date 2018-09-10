Expense.create!([
  {entry_date: "2018-01-01", description: "Rent", outflow: "550.0", user_id: 2},
  {entry_date: "2018-01-02", description: "Phone Bills", outflow: "50.41", user_id: 2},
  {entry_date: "2018-01-03", description: "Dinner", outflow: "89.26", user_id: 2},
  {entry_date: "2018-01-04", description: "Uber", outflow: "17.53", user_id: 2},
  {entry_date: "2018-09-12", description: "Gym Subscription", outflow: "23.0", user_id: 2},
  {entry_date: "2018-09-19", description: "Online Magazines", outflow: "38.0", user_id: 2},
  {entry_date: "2018-09-18", description: "Flight to Abuja", outflow: "1094.0", user_id: 2},
  {entry_date: "2018-09-25", description: "Cake", outflow: "87.0", user_id: 2},
  {entry_date: "2018-06-13", description: "Suya", outflow: "13.78", user_id: 2},
  {entry_date: "2018-03-09", description: "Tuition", outflow: "381.63", user_id: 2},
  {entry_date: "2018-02-28", description: "Paid Mortgage", outflow: "1748.13", user_id: 3},
  {entry_date: "2018-03-13", description: "Gym Subscription", outflow: "487.0", user_id: 3},
  {entry_date: "2018-06-08", description: "Tuition", outflow: "4820.0", user_id: 1},
  {entry_date: "2018-06-20", description: "Books", outflow: "1380.34", user_id: 1},
  {entry_date: "2018-07-12", description: "Online Magazines", outflow: "75.43", user_id: 1},
  {entry_date: "2018-05-17", description: "Vacation", outflow: "4109.48", user_id: 3}
])
Income.create!([
  {entry_date: "2018-01-01", description: "Salary", inflow: "5800.0", user_id: 2},
  {entry_date: "2018-01-02", description: "Sold my old phone", inflow: "316.0", user_id: 2},
  {entry_date: "2018-09-14", description: "Bonus Received", inflow: "130.0", user_id: 2},
  {entry_date: "2018-02-28", description: "Sold an Idea", inflow: "32.68", user_id: 2},
  {entry_date: "2018-06-04", description: "Salary Arrears", inflow: "9843.88", user_id: 1},
  {entry_date: "2018-06-28", description: "Monthly Salary", inflow: "7213.44", user_id: 1},
  {entry_date: "2018-04-27", description: "Monthly Salary", inflow: "4890.12", user_id: 3}
])
