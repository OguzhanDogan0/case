db.yourCollectionName.find({
  "gsm": { $exists: true, $ne: null },  
  "password": { $exists: true }, 
  "insert_date": { $gt: ISODate("2023-04-01T00:00:00.000Z") }  // Greater than April 1, 2023
})