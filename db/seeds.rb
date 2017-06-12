User.destroy_all

u1 = User.create({
  first_name: "Clementine",
  last_name: "O'Quirk",
  email: "coquirk0@webmd.com",
  building_number: "84",
  street: "Anderson Pkwy",
  city: "Cedar Grove",
  state: "New Jersey",
  country: "United States",
  password: "chicken",
  password_confirmation: "chicken"
})
u2 = User.create({
  first_name: "Waldemar",
  last_name: "Beharrell",
  email: "wbeharrell1@angelfire.com",
  building_number: "1604",
  street: "Hammond Ave",
  city: "Waterloo",
  state: "Iowa",
  country: "United States",
  password: "chicken",
  password_confirmation: "chicken"
})
u3 = User.create({
  first_name: "Nichole",
  last_name: "Jullian",
  email: "njullian2@berkeley.edu",
  building_number: "400",
  street: "S Broadway",
  city: "Lindenhurst",
  state: "New York",
  country: "United States",
  password: "chicken",
  password_confirmation: "chicken"
})
u4 = User.create({
  first_name: "Garner",
  last_name: "Dake",
  email: "gdake3@myspace.com",
  building_number: "322",
  street: "West Main Street ",
  city: "Kenedy",
  state: "Texas",
  country: "United States",
  password: "chicken",
  password_confirmation: "chicken"
})
u5 = User.create({
  first_name: "Raina",
  last_name: "Borel",
  email: "rborel5@state.gov",
  building_number: "420",
  street: "Shoal Lake Dr",
  city: "Crestview",
  state: "FL",
  country: "United States",
  password: "chicken",
  password_confirmation: "chicken"
})
u6 = User.create({
  first_name: "Cindy",
  last_name: "Greenard",
  email: "cgreenard4@alibaba.com",
  building_number: "3211",
  street: "Lemone Ind Blvd",
  city: "Columbia",
  state: "MO",
  country: "United States",
  password: "chicken",
  password_confirmation: "chicken"
})
u7 = User.create({
  first_name: "Tanner",
  last_name: "Petz",
  email: "tpetz6@4shared.com",
  building_number: "35",
  street: "Treasury St",
  city: "St Augustine",
  state: "FL",
  country: "United States",
  password: "chicken",
  password_confirmation: "chicken"
})
u8 = User.create({
  first_name: "Hayward",
  last_name: "Demangeon",
  email: "hdemangeon7@chicagotribune.com",
  building_number: "100",
  street: "Stanhope Rd",
  city: "Sparta",
  state: "NJ",
  country: "United States",
  password: "chicken",
  password_confirmation: "chicken"
})
u9 = User.create({
  first_name: "Collin",
  last_name: "Braun",
  email: "cbraun8@wikispaces.com",
  building_number: "3930",
  street: "Old Road 37",
  city: "Lakeland",
  state: "FL",
  country: "United States",
  password: "chicken",
  password_confirmation: "chicken"
})
u10 = User.create({
  first_name: "Vyky",
  last_name: "Pilsbury",
  email: "vpilsbury9@wsj.com",
  building_number: "6629",
  street: "Kraft Ave",
  city: "N Hollywood",
  state: "CA",
  country: "United States",
  password: "chicken",
  password_confirmation: "chicken"
})
u11 = User.create({
  first_name: "Ashleigh",
  last_name: "Tethcote",
  email: "atethcotea@last.fm",
  building_number: "12444",
  street: "Cookacre Ave",
  city: "Lynwood",
  state: "CA",
  country: "United States",
  password: "chicken",
  password_confirmation: "chicken"
})
u12 = User.create({
  first_name: "Glenn",
  last_name: "Skiggs",
  email: "gskiggsb@gov.uk",
  building_number: "125",
  street: "Nw Broadway Ave",
  city: "Des Moines",
  state: "IA",
  country: "United States",
  password: "chicken",
  password_confirmation: "chicken"
})
u13 = User.create({
  first_name: "Reina",
  last_name: "Itter",
  email: "ritterc@baidu.com",
  building_number: "6969",
  street: "Worth Galena Rd",
  city: "Worthington",
  state: "OH",
  country: "United States",
  password: "chicken",
  password_confirmation: "chicken"
})

p User.count

Gig.destroy_all

g1 = Gig.create({
  artist: "Sleater‐Kinney",
  city: "Portland",
  state: "Oregon",
  venue: "Crystal Ballroom",
  date: "26-02-2017",
  user_id: u1.id
  })
g2 = Gig.create({
  artist: "Sleater‐Kinney",
  city: "Portland",
  state: "Oregon",
  venue: "Crystal Ballroom",
  date: "26-02-2017",
  user_id: u2.id
  })
g3 = Gig.create({
  artist: "Sleater‐Kinney",
  city: "Portland",
  state: "Oregon",
  venue: "Crystal Ballroom",
  date: "26-02-2017",
  user_id: u3.id
  })
g4 = Gig.create({
  artist: "Sonic Youth",
  city: "Brooklyn",
  state: "New York",
  venue: "Williamsburg Waterfront",
  date: "12-08-2011",
  user_id: u4.id
  })
g5 = Gig.create({
  artist: "Sonic Youth",
  city: "Brooklyn",
  state: "New York",
  venue: "Williamsburg Waterfront",
  date: "12-08-2011",
  user_id: u5.id
  })
g6 = Gig.create({
  artist: "Sonic Youth",
  city: "Brooklyn",
  state: "New York",
  venue: "Williamsburg Waterfront",
  date: "12-08-2011",
  user_id: u6.id
  })
g7 = Gig.create({
  artist: "Sonic Youth",
  city: "Brooklyn",
  state: "New York",
  venue: "Williamsburg Waterfront",
  date: "12-08-2011",
  user_id: u1.id
  })
g8 = Gig.create({
  artist: "The Strokes",
  city: "Los Angeles",
  state: "California",
  venue: "Wiltern Theatre",
  date: "25-07-2016",
  user_id: u1.id
  })
g9 = Gig.create({
  artist: "The Strokes",
  city: "Los Angeles",
  state: "California",
  venue: "Wiltern Theatre",
  date: "25-07-2016",
  user_id: u7.id
  })
g10 = Gig.create({
  artist: "The Strokes",
  city: "Los Angeles",
  state: "California",
  venue: "Wiltern Theatre",
  date: "25-07-2016",
  user_id: u9.id
  })
g11 = Gig.create({
  artist: "The Strokes",
  city: "Los Angeles",
  state: "California",
  venue: "Wiltern Theatre",
  date: "25-07-2016",
  user_id: u12.id
  })
g12 = Gig.create({
  artist: "The Strokes",
  city: "Los Angeles",
  state: "California",
  venue: "Wiltern Theatre",
  date: "25-07-2016",
  user_id: u13.id
  })
g13 = Gig.create({
  artist: "Phoenix",
  city: "Mountain View",
  state: "California",
  venue: "Shoreline Amphitheatre",
  date: "10-06-2017",
  user_id: u1.id
  })
g14 = Gig.create({
  artist: "Phoenix",
  city: "Mountain View",
  state: "California",
  venue: "Shoreline Amphitheatre",
  date: "10-06-2017",
  user_id: u7.id
  })
g15 = Gig.create({
  artist: "Phoenix",
  city: "Mountain View",
  state: "California",
  venue: "Shoreline Amphitheatre",
  date: "10-06-2017",
  user_id: u9.id
  })
g16 = Gig.create({
  artist: "Phoenix",
  city: "Mountain View",
  state: "California",
  venue: "Shoreline Amphitheatre",
  date: "10-06-2017",
  user_id: u6.id
  })



  p Gig.count
