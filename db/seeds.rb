# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'destroying old data'
User.destroy_all 
Party.destroy_all
Policy.destroy_all
Scandal.destroy_all
Debate.destroy_all

puts 'seeding data'
#politicians 1 - 11
User.create(name: 'Bill Clinton', age: 70, race: 'White', gender: 'M', location: 'Iowa', title: 'President', politician: true, running_mate: 'Al Gore', level: 10)
User.create(name: 'George Bush', age: 80, race: 'White', gender: 'M', location: 'Texas', title: 'President', politician: true, running_mate: 'Al Gore', level: 10)
User.create(name: 'Donald Trump', age: 90, race: 'White', gender: 'M', location: 'New York', title: 'President', politician: true, running_mate: 'Al Gore', level: 10)
User.create(name: 'Barack Obama', age: 60, race: 'Mixed', gender: 'M', location: 'Illinois', title: 'President', politician: true, running_mate: 'Al Gore', level: 10)
User.create(name: 'Ron Paul', age: 80, race: 'White', gender: 'M', location: 'Texas', title: 'President', politician: true, running_mate: 'Al Gore', level: 10)
User.create(name: 'Bernie Sanders', age: 90, race: 'White', gender: 'M', location: 'Vermont', title: 'President', politician: true, running_mate: 'Al Gore', level: 10)
User.create(name: 'Elizabeth Warren', age: 70, race: 'White', gender: 'F', location: 'Massachusetts', title: 'President', politician: true, running_mate: 'Al Gore', level: 10)
User.create(name: 'Chuck Tingle', age: 110, race: 'Buckaroo', gender: 'M', location: 'The Void', title: 'President', politician: true, running_mate: 'Al Gore', level: 10)
User.create(name: 'Pete Buttigieg', age: 40, race: 'White', gender: 'M', location: 'Indiana', title: 'President', politician: true, running_mate: 'Al Gore', level: 10)
User.create(name: 'Bill Weld', age: 70, race: 'White', gender: 'M', location: 'Massachusetts', title: 'President', politician: true, running_mate: 'Al Gore', level: 10)
User.create(name: 'John McCain', age: 90, race: 'White', gender: 'M', location: 'Arizona', title: 'President', politician: true, running_mate: 'Al Gore', level: 10)

#voters 12 - 29 
User.create(name: 'Ted', age: 90, race: 'White', gender: 'M', location: 'Arizona')
User.create(name: 'Marge', age: 90, race: 'White', gender: 'M', location: 'Arizona')
User.create(name: 'Bart', age: 90, race: 'White', gender: 'M', location: 'Arizona')
User.create(name: 'Clive', age: 90, race: 'White', gender: 'M', location: 'Arizona')
User.create(name: 'Brenda', age: 90, race: 'White', gender: 'M', location: 'Arizona')
User.create(name: 'Kate', age: 90, race: 'White', gender: 'M', location: 'Arizona')
User.create(name: 'Lisa', age: 90, race: 'White', gender: 'M', location: 'Arizona')
User.create(name: 'Homer', age: 90, race: 'White', gender: 'M', location: 'Arizona')
User.create(name: 'Peter', age: 90, race: 'White', gender: 'M', location: 'Arizona')
User.create(name: 'Lois', age: 90, race: 'White', gender: 'M', location: 'Arizona')
User.create(name: 'Eric', age: 90, race: 'White', gender: 'M', location: 'Arizona')
User.create(name: 'Rita', age: 90, race: 'White', gender: 'M', location: 'Arizona')
User.create(name: 'Harry', age: 90, race: 'White', gender: 'M', location: 'Arizona')
User.create(name: 'Ron', age: 90, race: 'White', gender: 'M', location: 'Arizona')
User.create(name: 'Hermione', age: 90, race: 'White', gender: 'M', location: 'Arizona')
User.create(name: 'Paul', age: 90, race: 'White', gender: 'M', location: 'Arizona')
User.create(name: 'Red', age: 90, race: 'White', gender: 'M', location: 'Arizona')
User.create(name: 'Timmy', age: 90, race: 'White', gender: 'M', location: 'Arizona')

Party.create(name: 'Republican', party_type: 'Conservative')
Party.create(name: 'Democrat', party_type: 'Liberal')
Party.create(name: 'Libertarian', party_type: 'Conservative')
Party.create(name: 'Green', party_type: 'Liberal')
Party.create(name: 'Socialist', party_type: 'Authoritarian')
Party.create(name: 'Communist', party_type: 'Authoritarian')

Policy.create(title: 'Pro-Climate', content: "It's all fucked!", user_id: 1)
Policy.create(title: 'Anti-Climate', content: "It's all fine, close your eyes!", user_id: 3)
Policy.create(title: 'Pro-Gun', content: "You'll never take me alive!", user_id: 5)
Policy.create(title: 'Anti-Gun', content: "Give me that piece!", user_id: 7)
Policy.create(title: "Pro-Abortion", content: "I mean, c'mon.", user_id: 9)
Policy.create(title: "Anti-Abortion", content: "Don't you dare!", user_id: 11)
Policy.create(title: 'Pro-Cannabis', content: "It's like, you know, man?", user_id: 13)
Policy.create(title: 'Anti-Cannabis', content: "That's the Devil's Lettuce!", user_id: 22)
Policy.create(title: 'Pro-Immigrant', content: "Chill, they're just people", user_id: 25)
Policy.create(title: 'Anti-Immigrant', content: "I'm scared of everything!", user_id: 27)
Policy.create(title: 'Pro-War', content: "I'm stronger than you!", user_id: 26)
Policy.create(title: 'Anti-War', content: "Peace and Love!", user_id: 2)

Scandal.create(title: 'Mistress Exposed', content: 'He definitely had sexual relations with that woman!', user_id: 4)
Scandal.create(title: 'Drug Dealer', content: 'Does more cocaine than anyone ever!', user_id: 15)
Scandal.create(title: 'Bribery', content: "That's some real dirty money!", user_id: 7)
Scandal.create(title: 'Murder', content: 'How did we miss this?', user_id: 19)
Scandal.create(title: 'Dropped a  Baby', content: 'An innocent photo-op turned horrible!', user_id: 23)

Debate.create(network: 'CNN', user_1_id: 1, user_2_id: 2)
Debate.create(network: 'ABC', user_1_id: 3, user_2_id: 4)
Debate.create(network: 'NBC', user_1_id: 5, user_2_id: 6)
Debate.create(network: 'FOX', user_1_id: 7, user_2_id: 8)
Debate.create(network: 'NPR', user_1_id: 9, user_2_id: 1)

puts 'fin'