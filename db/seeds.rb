Photographer.destroy_all
School.destroy_all

paul = Photographer.new(
  fullname: "Paul Aroïd",
  email: "aroidpaul364@gmail.com",
  password: "Photo364",
  phone_number: "06.21.43.65.98"
)
paul.save!


maternellea = School.new(
  name: "Ecole Jean Rostand",
  email: "mat@school.com",
  password: "123456",
  address: "41 rue Tête d'Or, Lyon",
  photographer: paul,
  category: 'maternelle',
  phone_number: "04.78.64.25.05",
  referrer_name: "M. Seeds"
)
maternellea.save!

elementaire = School.new(
  name: "Ecole Louis Pradel",
  email: "prim@school.com",
  password: "123456",
  address: "83 rue Bossuet, Lyon",
  photographer: paul,
  category: 'elementaire',
  phone_number: "04.78.64.25.07",
  referrer_name: "M. Trops"
)
elementaire.save!

college = School.new(
  name: "Collège Jules Verne",
  email: "col@school.com",
  password: "123456",
  address: "57 rue de la charité, Lyon",
  photographer: paul,
  category: 'college',
  phone_number: "04.78.64.25.06",
  referrer_name: "M. Philip"
)
college.save!


maternelle = School.new(
  name: "Ecole Jean Racine",
  email: "mat1@school.com",
  password: "123456",
  address: "12 rue Crillon, Lyon",
  photographer: paul,
  category: 'maternelle',
  phone_number: "04.78.64.25.10",
  referrer_name: "M. Dupond"
)
maternelle.save!

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

gs = Classroom.new(
  name: "Grande Section",
  school: maternelle,
  )
gs.save!

ps = Classroom.new(
  name: "Petite Section",
  school: maternellea,
)
ps.save!

ms = Classroom.new(
  name: "Moyenne Section",
  school: maternellea,
)
ms.save!

gs = Classroom.new(
  name: "Grande Section",
  school: maternellea,
  )
gs.save!

cp = Classroom.new(
  name: "CP",
  school: elementaire,
)
cp.save!

ceun = Classroom.new(
  name: "CE 1",
  school: elementaire,
)
ceun.save!

cedeux = Classroom.new(
  name: "CE 2",
  school: elementaire,
)
cedeux.save!

cmun = Classroom.new(
  name: "CM 1",
  school: elementaire,
)
cmun.save!

cmdeux = Classroom.new(
  name: "CM 2",
  school: elementaire,
)
cmdeux.save!

sixieme = Classroom.new(
  name: "6 ème",
  school: college,
)
sixieme.save!

cinquieme = Classroom.new(
  name: "5 ème",
  school: college,
)
cinquieme.save!

quatrieme = Classroom.new(
  name: "4 ème",
  school: college,
)
quatrieme.save!

troisieme = Classroom.new(
  name: "3 ème",
  school: college,
)
troisieme.save!
