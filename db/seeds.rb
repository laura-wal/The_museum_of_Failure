# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#add a final art
f1 = FinalArt.create(name: 'Laura', comment:'got chilli in my eye', img_url: 'http://uploads6.wikiart.org/images/leonardo-da-vinci/mona-lisa.jpg' )
f2 = FinalArt.create(name: 'Anne', comment:'tripped over a dog', img_url: 'https://allthingsmundane.files.wordpress.com/2010/03/the-son-of-man.jpg' )
f3 = FinalArt.create(name: 'Rick', comment:'fell in a pond', img_url: 'http://images.tate.org.uk/sites/default/files/styles/enlarged/public/images/chris_ofili_confession_2007.jpg?itok=dNeLVIrk' )

#Add a rating 
r1 = Tag.create(life: 't', epic: 't')
r2 = Tag.create(funny: 't', epic: 't', love: 't')
r3 = Tag.create(funny: 't', epic: 't', work: 't')

#Add a rating to a fine_art

f1.final_art_tags.create(tag_id: r1.id)
f2.final_art_tags.create(tag_id: r2.id)
f3.final_art_tags.create(tag_id: r3.id)



