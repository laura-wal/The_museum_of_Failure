# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

FinalArt.delete_all
FinalArtTag.delete_all
Tag.delete_all


#add a final art
f1 = FinalArt.create(name: 'Laura', comment:'got chilli in my eye', img_url: 'http://uploads6.wikiart.org/images/leonardo-da-vinci/mona-lisa.jpg' )
f2 = FinalArt.create(name: 'Anne', comment:'tripped over a dog', img_url: 'https://allthingsmundane.files.wordpress.com/2010/03/the-son-of-man.jpg' )
f3 = FinalArt.create(name: 'Rick', comment:'fell in a pond', img_url: 'http://images.tate.org.uk/sites/default/files/styles/enlarged/public/images/chris_ofili_confession_2007.jpg?itok=dNeLVIrk' )

#Add a rating 
r1 = Tag.create(name: 'silver')
r2 = Tag.create(name: 'fun')
r3 = Tag.create(name: 'silly')
r4 = Tag.create(name: 'cool')
r5 = Tag.create(name: 'frothy')

#Add a rating to a fine_art

f1.tags << r1
f1.tags << r2
f1.tags << r3
f2.tags << r4
f3.tags << r4
f3.tags << r5



