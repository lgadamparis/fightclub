puts "destroy_all_records"
User.destroy_all

puts "create_users"
user1 = User.create!(first_name: "Jean", last_name: "Dumas", pseudo: "SouthMurderer", skills: "boxing", bio: "I've been in Paris for 3 years. I'm from Toulon so I hate Paris and I exaggerate. ", email: "parents@sbcglobal.net", password: "123456")
user2 = User.create!(first_name: "Sébastien", last_name: "Bruno", pseudo: "KanadianKiller", skills: "karate", bio: "Just got back to France after being deported from Canada", email: "kludge@outlook.com", password: "123456")
user3 = User.create!(first_name: "Cheran", last_name: "Nathan", pseudo: "LondonWarrior", skills: "ju-jitsu", bio: "London born and bred.I like fighting and making love", email: "nweaver@aol.com", password: "123456")
user4 = User.create!(first_name: "Louis-Gonzague", last_name: "Adam", pseudo: "Armyman", skills: "la bagarre", bio: "I left the army and miss hitting people legally", email: "duncand@sbcglobal.net", password: "123456")
user5 = User.create!(first_name: "Emmanuel", last_name: "Macron", pseudo: "Manuelpresidente", skills: "fart", bio: "I'm the Mozart of Martial Arts. Especially like fighting Gilet Jaunes ", email: "sokol@yahoo.ca", password: "123456")
user6 = User.create!(first_name: "Vladimir", last_name: "Poutine", pseudo: "Vladimircutein", skills: "mma", bio: "Always up for a street fight (or a poisoning)", email: "frostman@live.com", password: "123456")
user7 = User.create!(first_name: "Kanye", last_name: "West", pseudo: "CrazyKanye", skills: "muay thai", bio: "Harder, better, faster, stronger ", email: "jaifaim@live.com", password: "123456")
user8 = User.create!(first_name: "Courgette", last_name: "Courgette", pseudo: "Courgette", skills: "courgette", bio: "I'm a courgette ", email: "pakaste@icloud.com", password: "123456")

puts "seeds_finished"
