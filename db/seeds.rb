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


  p Gig.count
