# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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

# TODO : should be removed when photo is optional
Photo.create(photo_type: true, classroom: sixieme)

csv_file_sixieme = "#{Rails.root}/lib/students_lists/students_sixieme.csv"
AddStudentsToClassroom.new(sixieme, csv_file_sixieme).call
