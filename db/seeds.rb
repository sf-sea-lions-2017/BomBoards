# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'



max_users = 10
users_needed = max_users - User.count

users_needed.times do
  User.create(username: Faker::Internet.user_name, email: Faker::Internet.safe_email, state: Faker::Address.state, city: Faker::Address.city, password: 'password')
end



Game.find_or_create_by(name: "Settlers of Catan", buy_link: "https://www.amazon.com/Catan-Studios-MFG-3071-Edition/dp/B00U26V4VQ/ref=sr_1_1?s=toys-and-games&ie=UTF8&qid=1498244356&sr=1-1&keywords=settlers+of+catan", image_link: "https://cf.geekdo-images.com/aozRplCSOpRucLxSuClX2odEUBQ=/fit-in/246x300/pic2419375.jpg", number_of_players: "3 - 6" , playtime: "60 - 75", description: "Picture yourself in the era of discoveries: after a long voyage of great deprivation, your ships have finally reached the coast of an uncharted island. Its name shall be Catan! But you are not the only discoverer. Other fearless seafarers have also landed on the shores of Catan: the race to settle the island has begun!")
Game.find_or_create_by(name: "Risk", buy_link: "https://www.amazon.com/Hasbro-B7404-Risk-Game/dp/B01ALHAIWG/ref=sr_1_1?s=toys-and-games&ie=UTF8&qid=1498242852&sr=1-1&keywords=risk", image_link: "https://cf.geekdo-images.com/DLrZy3Jf2rCMH2ZP720VTUoos0U=/fit-in/246x300/pic2920766.jpg", number_of_players: "2 - 6" , playtime: "120", description: "Risk is a strategy board game of diplomacy, conflict and conquest for two to six players. The standard version is played on a board depicting a political map of the earth, divided into forty-two territories, which are grouped into six continents. ... Players may form and dissolve alliances during the course of the game.")
Game.find_or_create_by(name: "Clue", buy_link: "https://www.amazon.com/Clue-w-free-storage-bag/dp/B00JVZLU3Q/ref=sr_1_1?s=toys-and-games&ie=UTF8&qid=1498244407&sr=1-1-spons&keywords=clue&psc=1", image_link: "https://cf.geekdo-images.com/HOSarzQEiNJY-moi5JvmM-2nuSI=/fit-in/246x300/pic884234.jpg", number_of_players: "3 - 6" , playtime: "45", description: "It was devised by Anthony E. Pratt, a so. ly move around the game board (a mansion), as of one of the game's six suspects (or, collecting clues from which to deduce which suspect murdered the game's perpetual victim: Mr. Boddy (Dr. Black, outside of U.S.), and with which weapon and in what room.")
Game.find_or_create_by(name: "Stratego", buy_link: "https://www.amazon.com/Stratego-Original-Battlefield-Strategy-Variations/dp/B00LEOJAKM/ref=sr_1_1?s=toys-and-games&ie=UTF8&qid=1498244454&sr=1-1&keywords=stratego", image_link: "https://cf.geekdo-images.com/3Y4N5DV0fF6H9g_Rqw_eiQfKJps=/fit-in/246x300/pic25644.jpg", number_of_players: "2" , playtime: "30 - 120", description: "Stratego - the classic game of Battlefield strategy. On a distant planet, two armies clash. Who will be victorious? You command an army of soldiers, generals and spies. Devise a plan and deploy your troops. Use strategic attack and clever deception to break through your opponent’s line, but beware, of bombs and enemy spies. Capture the flag, and victory is yours!")
Game.find_or_create_by(name: "Steampunk Rally", buy_link: "https://www.amazon.com/Roxley-Games-200ROX-Steampunk-Rally/dp/0992126819/ref=sr_1_1?s=toys-and-games&ie=UTF8&qid=1498244567&sr=1-1&keywords=steampunk+rally", image_link: "https://cf.geekdo-images.com/Qyz7V7OW4YhgWT5kcgQhmNdlfRU=/fit-in/246x300/pic2073821.jpg", number_of_players: "2 - 8" , playtime: "45-60", description: "Steampunk Rally is the ultimate mash-up of racing, card drafting, and dice rolling. In this steam punk reimagining of history, you and up to seven other friends play as history's greatest inventors, competing in madman's race across the Swiss alps.")
Game.find_or_create_by(name: "Adrenaline", buy_link: "https://www.amazon.com/Adrenaline-Game-Board-Player/dp/B01M15BDZU/ref=sr_1_1?s=toys-and-games&ie=UTF8&qid=1498244613&sr=1-1&keywords=adrenaline", image_link: "https://cf.geekdo-images.com/k_HYyUUFiE8vtTwXuVw6Lq46-fg=/fit-in/246x300/pic3476604.jpg", number_of_players: "3 - 5" , playtime: "30 - 60", description: "Adrenaline is straightforward. You and four friends take control of killbot mechs, load up on ridiculous weapons, and sweep from room to room trading hailstorms of white-hot munition. What's unique about this game is that, unlike most other first-person-shooter (FPS) style board games, it's actually worth playing more than once.")
Game.find_or_create_by(name: "Terraforming Mars", buy_link: "https://www.amazon.com/Stronghold-Games-6005SG-Terraforming-Board/dp/B01GSYA4K2/ref=sr_1_1?s=toys-and-games&ie=UTF8&qid=1498244648&sr=1-1&keywords=terraforming+mars", image_link: "https://cf.geekdo-images.com/bhemoxL7PG1a_79L0D9syPTADSY=/fit-in/246x300/pic3536616.jpg", number_of_players: "1 - 5" , playtime: "90 - 120", description: "You and up to four friends take turns buying and playing cards that construct cities or enact terraforming projects on a hexagonal map of Mars. Each terraforming project has a planetary effect, and will give you a special bonus—for example, allowing you to produce resources like titanium faster, or lowering the cost of future projects. It's by chaining those bonuses together to form clever bonus-earning engines that you'll earn the most victory points and win the game.")
Game.find_or_create_by(name: "Captain Sonar", buy_link: "https://www.amazon.com/Asmodee-CPT01ASM-Captain-Sonar-Board/dp/B01EZUCHOC/ref=sr_1_1?s=toys-and-games&ie=UTF8&qid=1498244682&sr=1-1&keywords=captain+sonar", image_link: "https://cf.geekdo-images.com/jPI3dEW7-ya6ApeFLpRr8FuuTrg=/fit-in/246x300/pic3013621.png", number_of_players: "2 - 8" , playtime: "45 - 60", description: "Frenzied doesnt even begin to explain this game. In Captain Sonar, you and 7 friends helm two submarines in a real-time, elusive battle to the death. (Ignore the box, only play with 8 players.) Imagine a full table of two teams of four, separated by a long cardboard shield. Both teams Captains are frenetically shouting directions as quickly as possible to evade drones and mines across a 15-by-15 grid studded with islands. The Engineers are pleading to let their ships surface to heal the damaged weapons or sonar systems; the Radio Operators are hungrily searching for areas of the map that match the enemy Captains orders, which theyre tracking with a felt marker, a clear plastic sheet, and a map.")
Game.find_or_create_by(name: "Mastermind", buy_link: "https://www.amazon.com/Mastermind-Game-Strategy-Codemaker-Codebreaker/dp/B00000DMBF/ref=sr_1_1?s=toys-and-games&ie=UTF8&qid=1498244740&sr=1-1&keywords=mastermind", image_link: "https://cf.geekdo-images.com/8xMMI-limx_MQpMnlJ6ZOfizpBg=/fit-in/246x300/pic706032.jpg", number_of_players: "2" , playtime: "20", description: "Guess the color of hidden pegs. A deduction game where each player takes turn making a limited number of guesses, using logic to deduce what pegs the opponent has hidden.")
Game.find_or_create_by(name: "Uno", buy_link: "https://www.amazon.com/Mattel-MAT52277-UNO/dp/B00005BOFG/ref=sr_1_10?s=toys-and-games&ie=UTF8&qid=1498244767&sr=1-10&keywords=uno", image_link: "https://cf.geekdo-images.com/NvECHeCH0GfmLdh5onMpMPH03Hc=/fit-in/246x300/pic981505.jpg", number_of_players: "2 - 10" , playtime: "30", description: "Players race to empty their hands and catch opposing players with cards left in theirs, which score points. In turns, players attempt to play a card by matching its color, number, or word to the topmost card on the discard pile. If unable to play, players draw a card from the draw pile, and if still unable to play, they pass their turn. Wild and special cards spice things up a bit.")
Game.find_or_create_by(name: "Apples to Apples", buy_link: "https://www.amazon.com/Apples-PARTY-BOX-CARDS-Mattel/dp/B018OE6UYI/ref=sr_1_4?s=toys-and-games&ie=UTF8&qid=1498244826&sr=1-4&keywords=apples+to+apples", image_link: "https://cf.geekdo-images.com/8E9rq2tOVpFKOY6LeIMw1OSizBo=/fit-in/246x300/pic213515.jpg", number_of_players: "4 - 10" , playtime: "30", description: "The party game Apples to Apples consists of two decks of cards: Things and Descriptions. Each round, the active player draws a Description card (which features an adjective like Hairy or Smarmy) from the deck, then the other players each secretly choose the Thing card in hand that best matches that description and plays it face-down on the table. The active player then reveals these cards and chooses the Thing card that, in his opinion, best matches the Description card, which he awards to whoever played that Thing card. This player becomes the new active player for the next round. Once a player has won a pre-determined number of Description cards, that player wins.")

max_ownerships = 30
ownerships_needed = max_ownerships - Ownership.count

ownerships_needed.times do
	Ownership.find_or_create_by(owner: User.all.sample, game: Game.all.sample)
end


Tag.find_or_create_by(name: 'strategy')
Tag.find_or_create_by(name: 'card game')
Tag.find_or_create_by(name: 'first-person shooter')
Tag.find_or_create_by(name: 'family')
Tag.find_or_create_by(name: 'abstract')
Tag.find_or_create_by(name: 'collective')
Tag.find_or_create_by(name: 'adversarial')
Tag.find_or_create_by(name: 'fantasy')
Tag.find_or_create_by(name: 'educational')
Tag.find_or_create_by(name: 'territorial')
Tag.find_or_create_by(name: 'trivia')
Tag.find_or_create_by(name: 'train')

g=Game.find_by(id: 1); t=Tag.find_by(id: 1); g.tags << t
g=Game.find_by(id: 2); t=Tag.find_by(id: 10); g.tags << t
g=Game.find_by(id: 2); t=Tag.find_by(id: 1); g.tags << t
g=Game.find_by(id: 3); t=Tag.find_by(id: 4); g.tags << t
g=Game.find_by(id: 4); t=Tag.find_by(id: 1); g.tags << t
g=Game.find_by(id: 5); t=Tag.find_by(id: 4); g.tags << t
g=Game.find_by(id: 6); t=Tag.find_by(id: 3); g.tags << t
g=Game.find_by(id: 7); t=Tag.find_by(id: 10); g.tags << t
g=Game.find_by(id: 8); t=Tag.find_by(id: 7); g.tags << t
g=Game.find_by(id: 9); t=Tag.find_by(id: 5); g.tags << t
g=Game.find_by(id: 10); t=Tag.find_by(id: 2); g.tags << t
g=Game.find_by(id: 11); t=Tag.find_by(id: 4); g.tags << t





