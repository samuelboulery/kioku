Photographer.destroy_all
School.destroy_all

albert = Photographer.new(
  fullname: "Albert Pouf",
  email: "ap@raw.com",
  password: "123456",
)
albert.save!

michel = Photographer.new(
  fullname: "Michel Paf",
  email: "mp@raw.com",
  password: "123456",
)
michel.save!

maternelle = School.new(
  name: "Maternelle",
  email: "mat@school.com",
  password: "123456",
  address: "12 rue des petits, Lyon",
  photographer: albert,
)
maternelle.save!

primaire = School.new(
  name: "Primaire",
  email: "prim@school.com",
  password: "123456",
  address: "12 rue des moyens, Lyon",
  photographer: albert,
)
primaire.save!

college = School.new(
  name: "College",
  email: "col@school.com",
  password: "123456",
  address: "12 rue des grands, Lyon",
  photographer: michel,
)
college.save!

ps = Classroom.new(
  name: "Petite Section",
  school: maternelle,
)
ps.save!

ms = Classroom.new(
  name: "Moyenne Section",
  school: maternelle,
)
ms.save!

cp = Classroom.new(
  name: "CP",
  school: primaire,
)
cp.save!

sixieme = Classroom.new(
  name: "6 ème",
  school: college,
)
sixieme.save!
