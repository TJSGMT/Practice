# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



FrontEndSkill.find_or_create_by(name: 'Html')
FrontEndSkill.find_or_create_by(name: 'Css3')
FrontEndSkill.find_or_create_by(name: 'JavaScript')
FrontEndSkill.find_or_create_by(name: 'Jquery')
FrontEndSkill.find_or_create_by(name: 'Bootstrap')
FrontEndSkill.find_or_create_by(name: 'ReactJS')
FrontEndSkill.find_or_create_by(name: 'AngularJS')
FrontEndSkill.find_or_create_by(name: 'VueJS')

BackEndSkill.find_or_create_by(name: 'Ruby')
BackEndSkill.find_or_create_by(name: 'Rails')
BackEndSkill.find_or_create_by(name: 'Java')
BackEndSkill.find_or_create_by(name: 'Node JS')
BackEndSkill.find_or_create_by(name: 'Python')
BackEndSkill.find_or_create_by(name: 'PHP/Laravel')
BackEndSkill.find_or_create_by(name: 'Postgresql')
BackEndSkill.find_or_create_by(name: 'MySQL')
BackEndSkill.find_or_create_by(name: 'MongoDB')
BackEndSkill.find_or_create_by(name: 'Curl')
BackEndSkill.find_or_create_by(name: 'Rest Api')
