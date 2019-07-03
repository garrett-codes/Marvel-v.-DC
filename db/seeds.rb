# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Character.destroy_all
Trivium.destroy_all

def character_id_maker (character_name)
  Character.find_by(name: character_name).id
end

heros = [
  {
    name: "Spider-Man",
    attack: 80,
    speed: 80,
    intellect: 90,
    team: "Marvel"
  },
  {
    name: "Iron-Man",
    attack: 80,
    speed: 70,
    intellect: 100,
    team: "Marvel"
  },
  {
    name: "Thor",
    attack: 100,
    speed: 90,
    intellect: 80,
    team: "Marvel"
  },
  {
    name: "Captain Marvel",
    attack: 85,
    speed: 80,
    intellect: 75,
    team: "Marvel"
  },
  {
    name: "Hulk",
    attack: 100,
    speed: 80,
    intellect: 60,
    team: "Marvel"
  },
  {
    name: "Batman",
    attack: 75,
    speed: 75,
    intellect: 100,
    team: "DC"
  },
  {
    name: "Superman",
    attack: 100,
    speed: 90,
    intellect: 80,
    team: "DC"
  },
  {
    name: "Flash",
    attack: 70,
    speed: 100,
    intellect: 95,
    team: "DC" 
  },
  {
    name: "Wonder Woman",
    attack: 85,
    speed: 90,
    intellect: 85,
    team: "DC"
  },
  {
    name: "Harley-Quinn",
    attack: 70,
    speed: 75,
    intellect: 85,
    team: "DC" 
  }
]

heros.each do |heros_hash|
  Character.create(heros_hash)
end

def health_calc (character)
  list_of_chars = Character.overall_sort
  min = list_of_chars.first.overall
  max = list_of_chars.last.overall
  diff = max - min
  character_overall = character.overall
  return health_1 = (character_overall - min) / 10 + 1
end

Character.all.each {|character| Character.update(character.id, health: health_calc(character))}

trivia_objects = [
  {
    question: "Who is the actor behind \"Iron Man\"?",
    correct_answer: "Robert Downey Jr.",
    wrong_answer1: "Roobert Downsey",
    wrong_answer2: "Iron Man",
    character_id: character_id_maker("Iron-Man")
  },
  {
    question: "What keeps the shrapnel from entering Tony's heart and powers Iron Man?",
    correct_answer: "Arc Reactor",
    wrong_answer1: "Magic Arc Forces",
    wrong_answer2: "Arc Cylinder",
    character_id: Character.find_by(name: "Iron-Man").id
  },
  {
    question: "What is the name of Tony's computerised help system?",
    correct_answer: "Jarvis",
    wrong_answer1: "Harvest",
    wrong_answer2: "Ultron",
    character_id: Character.find_by(name: "Iron-Man").id
  },
  {
    question: "Which college did Tony Stark attend?",
    correct_answer: "MIT",
    wrong_answer1: "Harvard",
    wrong_answer2: "Yale",
    character_id: Character.find_by(name: "Iron-Man").id
  },
  {
    question: "When did Iron Man first appear in comics?",
    correct_answer: "1963",
    wrong_answer1: "2010",
    wrong_answer2: "1970",
    character_id: Character.find_by(name: "Iron-Man").id 
  },
  {
    question: "What year did the first Iron Man movie come out?",
    correct_answer: "2008",
    wrong_answer1: "2004",
    wrong_answer2: "2010",
    character_id: Character.find_by(name: "Iron-Man").id
  },
  {
    question: "What is the name of Tony Stark's love interest?",
    correct_answer: "Pepper Potts",
    wrong_answer1: "Ivy Pepper",
    wrong_answer2: "Jane Foster",
    character_id: Character.find_by(name: "Iron-Man").id
  },
  {
    question: "What is the name of Tony Stark's company?",
    correct_answer: "Stark Industries",
    wrong_answer1: "Tony Corp",
    wrong_answer2: "Stark Corp",
    character_id: Character.find_by(name: "Iron-Man").id
  },
  {
    question: "What's the name of Tony Stark's father?",
    correct_answer: "Howard",
    wrong_answer1: "Paul",
    wrong_answer2: "James",
    character_id: Character.find_by(name: "Iron-Man").id
  },
  {
    question: "What does JARVIS stand for",
    correct_answer: "Just A Rather Very Intelligent System",
    wrong_answer1: "Just A Really Very Ideal System",
    wrong_answer2: "Junk And Really Idiotic System",
    character_id: Character.find_by(name: "Iron-Man").id
  },
  {
    question: "What was the name of the missile Tony Stark was selling at the beginning of the first Iron Man movie?",
    correct_answer: "Jericho Missle",
    wrong_answer1: "Nucleotech",
    wrong_answer2: "Nano Missle",
    character_id: Character.find_by(name: "Iron-Man").id
  },
  {
    question: "Who is Iron Man's MCU protegé?",
    correct_answer: "Spider-Man",
    wrong_answer1: "Black Widow",
    wrong_answer2: "Ant-Man",
    character_id: Character.find_by(name: "Iron-Man").id
  },
  {
    question: "Who did Iron Man face off against in Civil War?",
    correct_answer: "Captain America",
    wrong_answer1: "The Hulk",
    wrong_answer2: "Black Panther",
    character_id: Character.find_by(name: "Iron-Man").id
  },
  {
    question: "Who is Tony Stark based on?",
    correct_answer: "Howard Hughes",
    wrong_answer1: "Warren Buffet",
    wrong_answer2: "Bill Gates",
    character_id: Character.find_by(name: "Iron-Man").id
  },
  {
    question: "What was the name of the peacekeeping AI Stark built?",
    correct_answer: "Ultron",
    wrong_answer1: "Iron Peace Keeper",
    wrong_answer2: "Peace Machine",
    character_id: Character.find_by(name: "Iron-Man").id
  },
  {
    question: "What's Tony Stark's address?",
    correct_answer: "10880 Malibu Point",
    wrong_answer1: "1785 Beverley Hills Drive",
    wrong_answer2: "111 Stark Road",
    character_id: Character.find_by(name: "Iron-Man").id
  },
  {
    question: "Who created the character of Iron Man?",
    correct_answer: "Stan Lee",
    wrong_answer1: "Dan Slott",
    wrong_answer2: "Kevin Smith",
    character_id: Character.find_by(name: "Iron-Man").id
  },
  {
    question: "Why did Tony Stark decide to put another piece of technology in his chest in Avengers: Infinity War?",
    correct_answer: "He wanted to be prepared for alien invasion",
    wrong_answer1: "The Iron Man suit only worked when he had the tech in his chest",
    wrong_answer2: "It turned out he still needed it to keep his heart working",
    character_id: Character.find_by(name: "Iron-Man").id
  },
  {
    question: "Why is Loki unable to brainwash Tony Stark at Stark Tower in The Avengers?",
    correct_answer: "Tony's Arc Reactor",
    wrong_answer1: "Tony saw it coming and took an antidote",
    wrong_answer2: "Loki's Scepter stopped working('performance issues!')",
    character_id: Character.find_by(name: "Iron-Man").id
  },
  {
    question: "What color was the original Iron Man armored suit in the first story?",
    correct_answer: "Grey",
    wrong_answer1: "Gold",
    wrong_answer2: "Red",
    character_id: Character.find_by(name: "Iron-Man").id
  },
  {
    question: "What is Pepper Potts' superhero name?",
    correct_answer: "Rescue",
    wrong_answer1: "Help",
    wrong_answer2: "SOS",
    character_id: Character.find_by(name: "Iron-Man").id
  },
  {
    question: "What memory was Tony Stark trying to alter at the beginning of Captain America: Civil War?",
    correct_answer: "His last goodbye to his parents",
    wrong_answer1: "How he told his father he didn't want to pursue engineering",
    wrong_answer2: "When he went to his parents' funeral",
    character_id: Character.find_by(name: "Iron-Man").id
  },
  {
    question: "For what reason did Obadiah Stane originally order Tony Stark to be taken?",
    correct_answer: "He wanted Tony's kidnappers to end his life",
    wrong_answer1: "He wanted Tony to build the kidnapper's a missile",
    wrong_answer2: "He wanted Tony to build the Iron Man suit",
    character_id: Character.find_by(name: "Iron-Man").id
  },
  {
    question: "Which character bullied Peter Parker in high school?",
    correct_answer: "Flash Thompson",
    wrong_answer1: "David Peterson",
    wrong_answer2: "Biff Tannen",
    character_id: Character.find_by(name: "Spider-Man").id
  },
  {
    question: "The super-villain known as Mysterio started his career as a what?",
    correct_answer: "Stuntman",
    wrong_answer1: "Magician",
    wrong_answer2: "Libarian",
    character_id: Character.find_by(name: "Spider-Man").id
  },
  {
    question: "Who first played Spider-Man on the big screen?",
    correct_answer: "Tobery Maguire",
    wrong_answer1: "Andrew Garfield",
    wrong_answer2: "Tom Holland",
    character_id: Character.find_by(name: "Spider-Man").id
  },
  {
    question: "What is Peter Parker's middle name?",
    correct_answer: "Benjamin",
    wrong_answer1: "Joe",
    wrong_answer2: "David",
    character_id: Character.find_by(name: "Spider-Man").id
  },
  {
    question: "Other than Peter, who else has been Spider-Man?",
    correct_answer: "Miles Morales",
    wrong_answer1: "Bruce Banner",
    wrong_answer2: "Reed Richards",
    character_id: Character.find_by(name: "Spider-Man").id
  },
  {
    question: "What area in New York is Peter Parker from?",
    correct_answer: "Queens",
    wrong_answer1: "Manhattan",
    wrong_answer2: "Bronx",
    character_id: Character.find_by(name: "Spider-Man").id
  },
  {
    question: "Which newspaper does Peter Parker usually work for as a photgrapher?",
    correct_answer: "Daily Bugle",
    wrong_answer1: "New York Times",
    wrong_answer2: "Daily Planet",
    character_id: Character.find_by(name: "Spider-Man").id
  },
  {
    question: "What does Peter's 'spider sense' do for him?",
    correct_answer: "Warns him of danger",
    wrong_answer1: "Enhances his strength",
    wrong_answer2: "Allows him to think like a spider",
    character_id: Character.find_by(name: "Spider-Man").id
  },
  {
    question: "Finish Uncle Ben's famous line. 'With great power there must also come --'",
    correct_answer: "Great Responsibility",
    wrong_answer1: "Great Honour",
    wrong_answer2: "Great Dedication",
    character_id: Character.find_by(name: "Spider-Man").id
  },
  {
    question: "Name Peter Parker's girlfriend who was thrown off a bridge by the Green Goblin",
    correct_answer: "Gewn Stacy",
    wrong_answer1: "Sue Storm",
    wrong_answer2: "Mary Jane Watson",
    character_id: Character.find_by(name: "Spider-Man").id
  },
  {
    question: "Which evil man did the symbiote bond with to become Carnage?",
    correct_answer: "Cletus Kasady",
    wrong_answer1: "Hannibal Lector",
    wrong_answer2: "Patrick Mulligan",
    character_id: Character.find_by(name: "Spider-Man").id
  },
  {
    question: "In which film did Tom Holland's Spider-Man enter the Marvel Cinematic Universe?",
    correct_answer: "Captain America: Civil War",
    wrong_answer1: "Avengers: Infinity War",
    wrong_answer2: "Captain America: The Winter Soilder",
    character_id: Character.find_by(name: "Spider-Man").id
  },
  {
    question: "Name this on-again off-again love interest/antagonist for Spider-Man",
    correct_answer: "Black Cat",
    wrong_answer1: "The Cat",
    wrong_answer2: "Silver Sable",
    character_id: Character.find_by(name: "Spider-Man").id
  },
  {
    question: "In his human form, The Lizard is...?",
    correct_answer: "Dr. Curt Connors",
    wrong_answer1: "Dr. Otto Octavius",
    wrong_answer2: "Dr Abraham Erskine",
    character_id: Character.find_by(name: "Spider-Man").id
  },
  {
    question: "Peter Parker's clone Ben Reilly took on which spider-themed superhero identity?",
    correct_answer: "Scarlet Spider",
    wrong_answer1: "Spider Boy",
    wrong_answer2: "Spider Lad",
    character_id: Character.find_by(name: "Spider-Man").id
  },
  {
    question: "Harry Osborn took on which supervillain identity, after the death of his father Norman?",
    correct_answer: "Green Goblin",
    wrong_answer1: "Hobgoblin",
    wrong_answer2: "Goblin King",
    character_id: Character.find_by(name: "Spider-Man").id
  },
  {
    question: "What position did Spider-Man take at the Jean Grey School For Higher Learning after Wolverine passed away?",
    correct_answer: "Headmaster",
    wrong_answer1: "Professor",
    wrong_answer2: "Janitor",
    character_id: Character.find_by(name: "Spider-Man").id
  },
  {
    question: "Who officiated at Shea Stadium for Peter Parker and Mary Jane Watson's 'wedding' in 1987?",
    correct_answer: "Stan Lee",
    wrong_answer1: "Steve Ditko",
    wrong_answer2: "Bob Kane",
    character_id: Character.find_by(name: "Spider-Man").id
  },
  {
    question: "Which demon did Spider-Man strike a bargain with in the storyline 'One More Day'?",
    correct_answer: "Mephisto",
    wrong_answer1: "Blackheart",
    wrong_answer2: "Roarke",
    character_id: Character.find_by(name: "Spider-Man").id
  },
  {
    question: "Who is this villain who started in Spider-Man but became more of a Daredevil villain?",
    correct_answer: "Kingpin",
    wrong_answer1: "Chameleon",
    wrong_answer2: "Blackcat",
    character_id: Character.find_by(name: "Spider-Man").id
  },
  {
    question: "Who is the living vampire that fights Spider-Man?",
    correct_answer: "Morbius",
    wrong_answer1: "Hobgoblin",
    wrong_answer2: "Dracula",
    character_id: Character.find_by(name: "Spider-Man").id
  },
  {
    question: "Spider-Man was once able to defeat the Hulk by doing what?",
    correct_answer: "Telling a joke",
    wrong_answer1: "Singing to him",
    wrong_answer2: "Making him a bed out of webs",
    character_id: Character.find_by(name: "Spider-Man").id
  },
  {
    question: "Who was Spider-Man's first super villain?",
    correct_answer: "Chameleon",
    wrong_answer1: "Bettle",
    wrong_answer2: "Vulture",
    character_id: Character.find_by(name: "Spider-Man").id
  },
  {
    question: "Who is this anti-hero who first appeared in Spider-Man?",
    correct_answer: "Punisher",
    wrong_answer1: "Venom",
    wrong_answer2: "Blackcat",
    character_id: Character.find_by(name: "Spider-Man").id
  },
  {
    question: "What is the name of Thor's enchanted hammer?",
    correct_answer: "Mjolnir",
    wrong_answer1: "Fenris",
    wrong_answer2: "Asgard",
    character_id: Character.find_by(name: "Thor").id
  },
  {
    question: "Who is Thor's father?",
    correct_answer: "Odin",
    wrong_answer1: "Loki",
    wrong_answer2: "Balder",
    character_id: Character.find_by(name: "Thor").id
  },
  {
    question: "In Norse mythology, what event was foretold to result in the death of Thor?",
    correct_answer: "Ragnarok",
    wrong_answer1: "Vahlla",
    wrong_answer2: "Sleipnir",
    character_id: Character.find_by(name: "Thor").id
  },
  {
    question: "What is responsible for Thor's immortality?",
    correct_answer: "He eats apples",
    wrong_answer1: "He bathes in the black sea",
    wrong_answer2: "He drank the blood of the berserker",
    character_id: Character.find_by(name: "Thor").id
  },
  {
    question: "Who was the first Marvel character outside of the Norse pantheon to be deemed worthy to wield Thor's hammer?",
    correct_answer: "Beta Ray Bill",
    wrong_answer1: "Iron Man",
    wrong_answer2: "Vision",
    character_id: Character.find_by(name: "Thor").id
  },
  {
    question: "Which Actor Plays Thor?",
    correct_answer: "Chris Hemsworth",
    wrong_answer1: "Liam Hemsworth",
    wrong_answer2: "Luke Hemsworth",
    character_id: Character.find_by(name: "Thor").id
  },
  {
    question: "Where Is Thor From?",
    correct_answer: "Asgard",
    wrong_answer1: "Xander",
    wrong_answer2: "Midgard",
    character_id: Character.find_by(name: "Thor").id
  },
  {
    question: "Who is Thor's Sister",
    correct_answer: "Hela",
    wrong_answer1: "Viper",
    wrong_answer2: "Mystique",
    character_id: Character.find_by(name: "Thor").id
  },
  {
    question: "In Which Movie Did Thor Battle Surtur?
    ",
    correct_answer: "Thor: Ragnarok",
    wrong_answer1: "Thor: The Dark World",
    wrong_answer2: "Avengers: Age of Ultron",
    character_id: Character.find_by(name: "Thor").id
  },
  {
    question: "Who Controls The Bifrost?",
    correct_answer: "Heimdall",
    wrong_answer1: "Balder",
    wrong_answer2: "Beta Ray Bill",
    character_id: Character.find_by(name: "Thor").id
  },
  {
    question: "What Is Thor's Axe Called?",
    correct_answer: "Stormbreaker",
    wrong_answer1: "Bloodaxe",
    wrong_answer2: "Thunderstrike",
    character_id: Character.find_by(name: "Thor").id
  },
  {
    question: "What Does Thor Call Rocket?",
    correct_answer: "Rabbit",
    wrong_answer1: "Squirrel",
    wrong_answer2: "Fox",
    character_id: Character.find_by(name: "Thor").id
  },
  {
    question: "Who Is The Leader Of The Frost Giants?",
    correct_answer: "Laufey",
    wrong_answer1: "Hailstrum",
    wrong_answer2: "Raze",
    character_id: Character.find_by(name: "Thor").id
  },
  {
    question: "Whose Side Was Thor On In Civil War?",
    correct_answer: "He stayed completely out of this fight",
    wrong_answer1: "Iron Man's side",
    wrong_answer2: "Captain America's side",
    character_id: Character.find_by(name: "Thor").id
  },
  {
    question: "Which Character Has Thor Not Shared Screen Time With Yet?",
    correct_answer: "Spider-Man",
    wrong_answer1: "Doctor Strange",
    wrong_answer2: "Scarlet Witch",
    character_id: Character.find_by(name: "Thor").id
  },
  {
    question: "In “Thor”, how is Loki able to take the throne?",
    correct_answer: "Odin puts himself in \"Odinsleep\" to preserve his strength",
    wrong_answer1: "He killed Odin himself",
    wrong_answer2: "His adoptive mother named him king",
    character_id: Character.find_by(name: "Thor").id
  },
  {
    question: "What act does Thor do that deems him worthy of Mjolnir?",
    correct_answer: "Sacrifices himself",
    wrong_answer1: "Saving Jane from a burning building",
    wrong_answer2: "Sparing Loki's Life",
    character_id: Character.find_by(name: "Thor").id
  },
  {
    question: "Who protrayed Captain Marvel on the big screen?",
    correct_answer: "Brie Larson",
    wrong_answer1: "Jude Law",
    wrong_answer2: "Scarlet Johanson",
    character_id: Character.find_by(name: "Captain Marvel").id
  },
  {
    question: "Who helped Captain Marvel throughout the Movie?",
    correct_answer: "Samuel Jackson",
    wrong_answer1: "Jude Law",
    wrong_answer2: "Kangaroo Jackson",
    character_id: Character.find_by(name: "Captain Marvel").id
  },
  {
    question: "Which breed does her cat, Chewie belong to?",
    correct_answer: "Flerken",
    wrong_answer1: "Maine Coon",
    wrong_answer2: "American Bobtail",
    character_id: Character.find_by(name: "Captain Marvel").id
  },
  {
    question: "Which is of the following is not an alias of Captain Marvel?",
    correct_answer: "The Captain",
    wrong_answer1: "Binary",
    wrong_answer2: "Ms.Marvel",
    character_id: Character.find_by(name: "Captain Marvel").id
  },
  {
    question: "Which superhero helped her design the costume?",
    correct_answer: "The Wasp",
    wrong_answer1: "Black Widow",
    wrong_answer2: "Iron Man",
    character_id: Character.find_by(name: "Captain Marvel").id
  },
  {
    question: "Brie Larson and Samuel L. Jackson also appeared together in which 2017 film?",
    correct_answer: "Kong: Skull Island",
    wrong_answer1: "Avengers: End Game",
    wrong_answer2: "Room",
    character_id: Character.find_by(name: "Captain Marvel").id
  },
  {
    question: "Carol Danvers was a part of which branch of the US military before becoming Captain Marvel?",
    correct_answer: "The Air Force",
    wrong_answer1: "U.S. Marines",
    wrong_answer2: "U.S. Navy",
    character_id: Character.find_by(name: "Captain Marvel").id
  },
  {
    question: "Which D.C. Comics superhero shared the name Captain Marvel before changing it?",
    correct_answer: "Shazam",
    wrong_answer1: "Flash",
    wrong_answer2: "Captain Hook",
    character_id: Character.find_by(name: "Captain Marvel").id
  },
  {
    question: "Which alien race did Carol act as a warrior for?",
    correct_answer: "Kree",
    wrong_answer1: "Celestials",
    wrong_answer2: "Brood",
    character_id: Character.find_by(name: "Captain Marvel").id
  },
  {
    question: "Which villain-turned-hero temporarily stole Carol's powers and memories?",
    correct_answer: "Rouge",
    wrong_answer1: "Odin",
    wrong_answer2: "Mar Vel",
    character_id: Character.find_by(name: "Captain Marvel").id
  },
  {
    question: "Whose side did Carol take during the first Civil War?",
    correct_answer: "Iron Man",
    wrong_answer1: "Captain America",
    wrong_answer2: "She was neutrel",
    character_id: Character.find_by(name: "Captain Marvel").id
  },
  {
    question: "After her Air Force career, Carol became head of security for what organization?",
    correct_answer: "NASA",
    wrong_answer1: "NSA",
    wrong_answer2: "NCST",
    character_id: Character.find_by(name: "Captain Marvel").id
  },
  {
    question: "What is the name of the emblem on Carol's chest?",
    correct_answer: "Star of Hala",
    wrong_answer1: "Symbol of Hope",
    wrong_answer2: "Galaxy Infinite",
    character_id: Character.find_by(name: "Captain Marvel").id
  },
  {
    question: "What would make Bruce Banner turn into the HULK?",
    correct_answer: "showering",
    wrong_answer1: "papercut",
    wrong_answer2: "sneezing",
    character_id: Character.find_by(name: "Hulk").id
  },
  {
    question: "What is the name of the planet Hulk is sent to in Planet Hulk?",
    correct_answer: "Sakaar",
    wrong_answer1: "Spartax",
    wrong_answer2: "Asgard",
    character_id: Character.find_by(name: "Hulk").id
  },
  {
    question: "Which Avenger cameoed at the end of The Incredible Hulk (2008)?",
    correct_answer: "Iron Man",
    wrong_answer1: "Thor",
    wrong_answer2: "Black Widow",
    character_id: Character.find_by(name: "Hulk").id
  },
  {
    question: "In his early appearances, what color was the Hulk?",
    correct_answer: "grey",
    wrong_answer1: "light blue",
    wrong_answer2: "green",
    character_id: Character.find_by(name: "Hulk").id
  },
  {
    question: "Which of these is not one of Hulk's powers?",
    correct_answer: "Super Hearing",
    wrong_answer1: "Super Healing",
    wrong_answer2: "Super Strength",
    character_id: Character.find_by(name: "Hulk").id
  },
  {
    question: "Over the years, The Incredible Hulk has acquired many nicknames, which of the following is NOT one of them?",
    correct_answer: "Purple Pants",
    wrong_answer1: "Green-skinned Goliath",
    wrong_answer2: "Ol' Greenskin",
    character_id: Character.find_by(name: "Hulk").id
  },
  {
    question: "In what year did The Incredible Hulk debut?",
    correct_answer: "1962",
    wrong_answer1: "1971",
    wrong_answer2: "1954",
    character_id: Character.find_by(name: "Hulk").id
  },
  {
    question: "What kind of radiation was Dr. Banner exposed to that causes him to turn into the Hulk?",
    correct_answer: "Gamma",
    wrong_answer1: "Delta",
    wrong_answer2: "Alpha",
    character_id: Character.find_by(name: "Hulk").id
  },
  {
    question: "Who is Bruce Banner/Hulk's longtime love interest?",
    correct_answer: "Betty Ross",
    wrong_answer1: "Scarlet Johansson",
    wrong_answer2: "Ronda Rousey",
    character_id: Character.find_by(name: "Hulk").id
  },
  {
    question: "Who sent Hulk into space?",
    correct_answer: "The Illuminati",
    wrong_answer1: "The Avengers",
    wrong_answer2: "The Skrulls",
    character_id: Character.find_by(name: "Hulk").id
  },
  {
    question: "What is Bruce Banner's FULL name?",
    correct_answer: "Robert Bruce Banner",
    wrong_answer1: "David Bruce Banner",
    wrong_answer2: "Bruce Lee Banner",
    character_id: Character.find_by(name: "Hulk").id
  },
  {
    question: "Which of these powers does the Hulk possess?",
    correct_answer: "Can breathe underwater",
    wrong_answer1: "Super speed",
    wrong_answer2: "Can See through walls",
    character_id: Character.find_by(name: "Hulk").id
  },
  {
    question: "Which of these iconic characters debuted in an issue of The Incredible Hulk?",
    correct_answer: "Wolverine",
    wrong_answer1: "Iron-Man",
    wrong_answer2: "Spider-Man",
    character_id: Character.find_by(name: "Hulk").id
  },
  {
    question: "What is the true identity of the Red Hulk?",
    correct_answer: "Thunderbolt Ross",
    wrong_answer1: "Tony Stark",
    wrong_answer2: "Rick Jones",
    character_id: Character.find_by(name: "Hulk").id
  },
  {
    question: "Although he was a founding member, Hulk soon left the Avengers after their formation and wouldn't rejoin for...",
    correct_answer: "Over 50 years",
    wrong_answer1: "5 years",
    wrong_answer2: "22 years",
    character_id: Character.find_by(name: "Hulk").id
  },
  {
    question: "Who was the civilian Hulk tried to save when he was exposed to the radiation that caused him to become the Hulk?",
    correct_answer: "Rick Jones",
    wrong_answer1: "Betty Ross",
    wrong_answer2: "Thunderbolt Ross",
    character_id: Character.find_by(name: "Hulk").id
  },
  {
    question: " In Old Man Logan, who did the Hulk start a family with?",
    correct_answer: "She-Hulk",
    wrong_answer1: "Black Widow",
    wrong_answer2: "Betty Ross",
    character_id: Character.find_by(name: "Hulk").id
  },
  {
    question: "Aside from the Avengers, the Hulk is a founding member of which team?",
    correct_answer: "The Defenders",
    wrong_answer1: "The New Avengers",
    wrong_answer2: "The West Coast Avengers",
    character_id: Character.find_by(name: "Hulk").id
  },
  {
    question: "What are the names of Bruce Banner's parents?",
    correct_answer: "Brian and Rebecca",
    wrong_answer1: "Brain and Roberta",
    wrong_answer2: "Roberta and Brad",
    character_id: Character.find_by(name: "Hulk").id
  },
  {
    question: "In the Ultimate Universe, which of these characters did Hulk rip in half?",
    correct_answer: "Wolverine",
    wrong_answer1: "The Thing",
    wrong_answer2: "Iron-Man",
    character_id: Character.find_by(name: "Hulk").id
  },
  {
    question: "The original Incredible Hulk series was cancelled after how many issues?",
    correct_answer: "6",
    wrong_answer1: "2",
    wrong_answer2: "23",
    character_id: Character.find_by(name: "Hulk").id
  },
  {
    question: "In a rare Marvel/DC crossover, the Hulk and what character merged to become Skulk?",
    correct_answer: "Solomon Grundy",
    wrong_answer1: "Sinestro",
    wrong_answer2: "Sovar",
    character_id: Character.find_by(name: "Hulk").id
  },
  {
    question: "What is the name of Hulk's son?",
    correct_answer: "Skaar",
    wrong_answer1: "Hulking",
    wrong_answer2: "Korg",
    character_id: Character.find_by(name: "Hulk").id
  },
  {
    question: "Who played Wonder Woman?",
    correct_answer: "Gal Gadot",
    wrong_answer1: "Gal Peens",
    wrong_answer2: "Gal Gadot",
    character_id: Character.find_by(name: "Wonder Woman").id
  },
  {
    question: "This lie detector is called what?",
    correct_answer: "Lasso of Truth",
    wrong_answer1: "Mjolnir",
    wrong_answer2: "Spear of Destiny",
    character_id: Character.find_by(name: "Wonder Woman").id
  },
    {
    question: "Wonder Woman hails from this hidden Mediterranean island.",
    correct_answer: "Themyscira",
    wrong_answer1: "Atlantis",
    wrong_answer2: "Genosha",
    character_id: Character.find_by(name: "Wonder Woman").id
  },
    {
    question: "In the comics, this feline villain is one of Wonder Woman’s major foes.",
    correct_answer: "Cheetah",
    wrong_answer1: "Hellcat",
    wrong_answer2: "Blackcat",
    character_id: Character.find_by(name: "Wonder Woman").id
  },
    {
    question: "To which legendary warrior people does Diana belong?",
    correct_answer: "Amazons",
    wrong_answer1: "Sarmatians",
    wrong_answer2: "Spartans",
    character_id: Character.find_by(name: "Wonder Woman").id
  },
  {
    question: "Wonder Woman(2018) the movie was set during which war?",
    correct_answer: "World War 1",
    wrong_answer1: "World War 2",
    wrong_answer2: "Boer War",
    character_id: Character.find_by(name: "Wonder Woman").id
  },
  {
    question: "In the movie, she trained young Diana in the art of war. Who is she?",
    correct_answer: "Antiope",
    wrong_answer1: "Artemis",
    wrong_answer2: "Donna Troy",
    character_id: Character.find_by(name: "Wonder Woman").id
  },
  {
    question: "She is the leader of the Amazons. Who is she?",
    correct_answer: "Queen Hippolyta",
    wrong_answer1: "Queen Titana",
    wrong_answer2: "Queen Mab",
    character_id: Character.find_by(name: "Wonder Woman").id
  },
  {
    question: "Wonder Woman first appeared on the big screen in which DCEU movie?",
    correct_answer: "Batman v. Superman: Dawn of Justice",
    wrong_answer1: "Sucide Squad",
    wrong_answer2: "Man of Steel",
    character_id: Character.find_by(name: "Wonder Woman").id
  },
  {
    question: "Diana believes this weapon was created by the Greek God Zeus to kill his traitorous son Ares.",
    correct_answer: "Godkiller",
    wrong_answer1: "Lasso of Truth",
    wrong_answer2: "Aegis",
    character_id: Character.find_by(name: "Wonder Woman").id
  },
  {
    question: "Wonder Woman creator William Moulton Marston also contributed to the invention of which device?",
    correct_answer: "Polygraph",
    wrong_answer1: "Telegraph",
    wrong_answer2: "Electron microscope",
    character_id: Character.find_by(name: "Wonder Woman").id
  },
  {
    question: "Wonder Woman made her first appearance in what comic book?",
    correct_answer: "All Star Comics #8",
    wrong_answer1: "Sensation Comics #1",
    wrong_answer2: "Wonder Woman #1",
    character_id: Character.find_by(name: "Wonder Woman").id
  },
  {
    question: "Which of Wonder Woman's accessories was forged from the magic girdle of Aphrodite?",
    correct_answer: "Her lasso",
    wrong_answer1: "Her braclets",
    wrong_answer2: "Her tiara",
    character_id: Character.find_by(name: "Wonder Woman").id
  },
  {
    question: "Who was the first costumed villain Wonder Woman ever faced?",
    correct_answer: "Dr. Poison",
    wrong_answer1: "Cheetah",
    wrong_answer2: "Giganta",
    character_id: Character.find_by(name: "Wonder Woman").id
  },
  {
    question: "What was the first superhero team Wonder Woman joined?",
    correct_answer: "Justice Society of America",
    wrong_answer1: "Justice League",
    wrong_answer2: "All Star Squadron",
    character_id: Character.find_by(name: "Wonder Woman").id
  },
  {
    question: "Who created Wonder Woman?",
    correct_answer: "William Moulton Marston",
    wrong_answer1: "Bob Kane",
    wrong_answer2: "Stan Lee",
    character_id: Character.find_by(name: "Wonder Woman").id
  },
  {
    question: "What American pilot did Wonder Woman fall in love with when he crash-landed on Paradise Island?",
    correct_answer: "Steve Trevor",
    wrong_answer1: "Terry Wagner",
    wrong_answer2: "Trevor Barnes",
    character_id: Character.find_by(name: "Wonder Woman").id
  },
  {
    question: " The first issue of what women's magazine featured Wonder Woman on the cover?",
    correct_answer: "Ms. Magazine",
    wrong_answer1: "Vogue",
    wrong_answer2: "Redbook",
    character_id: Character.find_by(name: "Wonder Woman").id
  },
  {
    question: "Which of Wonder Woman's accessories allows her to breathe in outer space?",
    correct_answer: "Her earrings",
    wrong_answer1: "Her tiara",
    wrong_answer2: "Her bracelets",
    character_id: Character.find_by(name: "Wonder Woman").id
  },
  {
    question: "How did The Flash gain his super powers?",
    correct_answer: "He was struck with lightning",
    wrong_answer1: "He was born with them",
    wrong_answer2: "He was bitten by a spider",
    character_id: Character.find_by(name: "Flash").id
  },
  {
    question: "During the Silver Age era, Flash was said to be faster than what?",
    correct_answer: "The speed of thought",
    wrong_answer1: "The speed of sound",
    wrong_answer2: "The speed of light",
    character_id: Character.find_by(name: "Flash").id
  },
  {
    question: "Which version of Flash is considered to be the fastest?",
    correct_answer: "Barry Allen",
    wrong_answer1: "Wally West",
    wrong_answer2: "Jay Garrick",
    character_id: Character.find_by(name: "Flash").id
  },
  {
    question: "The wings on the side of Flash's head are a tribute to which Roman god?",
    correct_answer: "Mercury",
    wrong_answer1: "Apollo",
    wrong_answer2: "Mars",
    character_id: Character.find_by(name: "Flash").id
  },
  {
    question: " Who does Flash famously race in a 1967 comic?",
    correct_answer: "Superman",
    wrong_answer1: "Captain America",
    wrong_answer2: "Batman",
    character_id: Character.find_by(name: "Flash").id
  },
  {
    question: "What villian did Barry Allen and Wally West both fight and lose a loved one to.",
    correct_answer: "Zoom",
    wrong_answer1: "Gorilla Grodd",
    wrong_answer2: "Captain Boomerang",
    character_id: Character.find_by(name: "Flash").id
  },
  {
    question: "What was The Flash originally known as?",
    correct_answer: "Red Streak",
    wrong_answer1: "The Dart",
    wrong_answer2: "Flash Gordon",
    character_id: Character.find_by(name: "Flash").id
  },
  {
    question: "Where does Barry Allen work?",
    correct_answer: "A forensic science lab",
    wrong_answer1: "A newsagent",
    wrong_answer2: "An athletics club",
    character_id: Character.find_by(name: "Flash").id
  },
  {
    question: "What is the name of the company?",
    correct_answer: "Star Labs",
    wrong_answer1: "Lightning Labs",
    wrong_answer2: "Flash labs",
    character_id: Character.find_by(name: "Flash").id
  },
  {
    question: "Who discovered the Reverse Flash’s identity?",
    correct_answer: "Cisco Ramone",
    wrong_answer1: "Barry Allen",
    wrong_answer2: "Bruce Wayne",
    character_id: Character.find_by(name: "Flash").id
  },
  {
    question: "Which of The Flash's enemies uses a freeze gun?",
    correct_answer: "Captain Cold",
    wrong_answer1: "Mr. Freeze",
    wrong_answer2: "Frozone",
    character_id: Character.find_by(name: "Flash").id
  },
  {
    question: "Who Is Dr Caitlin Snow also known as?",
    correct_answer: "Killerfrost",
    wrong_answer1: "The Ice Maiden",
    wrong_answer2: "Supergirl",
    character_id: Character.find_by(name: "Flash").id
  },
  {
    question: "Who was the first villain The Flash fought?",
    correct_answer: "Clyde Mardon",
    wrong_answer1: "Thinker",
    wrong_answer2: "Aquaman",
    character_id: Character.find_by(name: "Flash").id
  },
  {
    question: "Who was the first person to take The Flash's super powers away from him?",
    correct_answer: "Blackout",
    wrong_answer1: "Reverb",
    wrong_answer2: "Abra Kadabra",
    character_id: Character.find_by(name: "Flash").id
  },
  {
    question: "What is the name of Barry Allen's wife?",
    correct_answer: "Iris Anne West-Allen",
    wrong_answer1: "Joan Jett-Allen",
    wrong_answer2: "Elanor Rigby",
    character_id: Character.find_by(name: "Flash").id
  },
  {
    question: "Where Does Barry Allen Work Throughout The TV Series?",
    correct_answer: "CCPD offices",
    wrong_answer1: "NYPD offices",
    wrong_answer2: "GCPD offices",
    character_id: Character.find_by(name: "Flash").id
  },
  {
    question: "What Animal Villain Gained Psychic Powers Due To The Particle Accelerator?",
    correct_answer: "Gorilla Grodd",
    wrong_answer1: "Mongul",
    wrong_answer2: "Killer Frost",
    character_id: Character.find_by(name: "Flash").id
  },
  {
    question: "In the TV show, who Is The Villain Responsible For Barry’s Mother’s Death?",
    correct_answer: "Reverse Flash",
    wrong_answer1: "Zoom",
    wrong_answer2: "Vibe",
    character_id: Character.find_by(name: "Flash").id
  },
  {
    question: "In the TV show, Who Was Harrison Wells Originally In The Comics?",
    correct_answer: "He wasn't in the comics",
    wrong_answer1: "Reverse Flash",
    wrong_answer2: "The Flash",
    character_id: Character.find_by(name: "Flash").id
  },
  {
    question: "In the TV show, What Word Does The Show Use To Refer To Those With Superpowers?",
    correct_answer: "Metahumans",
    wrong_answer1: "Supers",
    wrong_answer2: "Superheroes",
    character_id: Character.find_by(name: "Flash").id
  },
  {
    question: "In the TV show, What World Does Jay Garrick Hail From?",
    correct_answer: "Earth 3",
    wrong_answer1: "Earth 8",
    wrong_answer2: "Earth 7",
    character_id: Character.find_by(name: "Flash").id
  },
  {
    question: "In the TV show, Who Was Going To Die If Barry Didn’t Stop Savitar?",
    correct_answer: "Iris West",
    wrong_answer1: "Cisco Ramon",
    wrong_answer2: "Wally West",
    character_id: Character.find_by(name: "Flash").id
  },
  {
    question: "What is Harley's real name?",
    correct_answer: "Harleen Quinzel",
    wrong_answer1: "Harley Quinn",
    wrong_answer2: "Harley Harley",
    character_id: Character.find_by(name: "Harley-Quinn").id
  },
  {
    question: "Who is Harley's Best Friend?",
    correct_answer: "Poison Ivy",
    wrong_answer1: "Catwoman",
    wrong_answer2: "Batman",
    character_id: Character.find_by(name: "Harley-Quinn").id
  },
  {
    question: "What song does Harley sing in the Batman Animated Series?",
    correct_answer: "Say We're Sweethearts Again",
    wrong_answer1: "All I want for Christmas is you",
    wrong_answer2: "Baby one more time",
    character_id: Character.find_by(name: "Harley-Quinn").id
  },
  {
    question: "Who plays Harley Quinn in the movie \"Suicide Squad\"?",
    correct_answer: "Margot Robbie",
    wrong_answer1: "Angelina Jolie",
    wrong_answer2: "Anne Hathaway",
    character_id: Character.find_by(name: "Harley-Quinn").id
  },
  {
    question: "Where did Harley first show up as a new character?",
    correct_answer: "Batman The Animated Series",
    wrong_answer1: "The Batman",
    wrong_answer2: "In the comics" ,
    character_id: Character.find_by(name: "Harley-Quinn").id
  },
  {
    question: "What are the names of Harley's hyenas?",
    correct_answer: "Bud and Lou",
    wrong_answer1: "Jok and Harl",
    wrong_answer2: "BLLA and FLLA",
    character_id: Character.find_by(name: "Harley-Quinn").id
  },
  {
    question: "What did Harley worked before she became a little psychopathic",
    correct_answer: "She was an intern at Arkham Asylum",
    wrong_answer1: "She was a housewife",
    wrong_answer2: "She was a scientist",
    character_id: Character.find_by(name: "Harley-Quinn").id
  },
  {
    question: "What was the name of the group that Harley with her friend had created?",
    correct_answer: "Gotham Girls",
    wrong_answer1: "Friends",
    wrong_answer2: "The Bad Girls",
    character_id: Character.find_by(name: "Harley-Quinn").id
  },
  {
    question: "When did she make her first comic appearance?",
    correct_answer: "1993",
    wrong_answer1: "1982",
    wrong_answer2: "1989",
    character_id: Character.find_by(name: "Harley-Quinn").id
  },
  {
    question: "Who created Harley Quinn",
    correct_answer: "Bruce Timm and Paul Dini",
    wrong_answer1: "Bruce Trim",
    wrong_answer2: "Paul Dini",
    character_id: Character.find_by(name: "Harley-Quinn").id
  },
  {
    question: "She's a member of which criminal squad?",
    correct_answer: "Suicide Squad",
    wrong_answer1: "The Gotham Squad",
    wrong_answer2: "The Injustice Squad",
    character_id: Character.find_by(name: "Harley-Quinn").id
  },
  {
    question: "Who originally voiced her character?",
    correct_answer: "Arleen Sorkin",
    wrong_answer1: "Marget Robbie",
    wrong_answer2: "Ashley Austin",
    character_id: Character.find_by(name: "Harley-Quinn").id
  },
  {
    question: "Which other female villain does she sometimes join?",
    correct_answer: "CatWoman",
    wrong_answer1: "BatWoman",
    wrong_answer2: "SuperWoman",
    character_id: Character.find_by(name: "Harley-Quinn").id
  },
  {
    question: "What super villain once broke Batman's back, leaving him crippled and wheelchair-bound?",
    correct_answer: "Bane",
    wrong_answer1: "Killer Croc",
    wrong_answer2: "Joker",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "What were the names of Bruce Wayne's parents?",
    correct_answer: "Thomas & Martha",
    wrong_answer1: "Wayne & Alice",
    wrong_answer2: "James & Elizabeth",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "Which of the following characters did Bruce Wayne have a son with?",
    correct_answer: "Talia Al Ghul",
    wrong_answer1: "Catwoman",
    wrong_answer2: "Poison Ivy",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "Who killed Jason Todd (the second Robin)?",
    correct_answer: "Joker",
    wrong_answer1: "Two-Face",
    wrong_answer2: "Bane",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "What Batman villain lost his beloved wife Nora to a terminal illness?",
    correct_answer: "Mr. Freeze",
    wrong_answer1: "Two-Face",
    wrong_answer2: "ScareCrow",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "Who is credited with creating Batman?",
    correct_answer: "Bob Kane",
    wrong_answer1: "Jack Kirby",
    wrong_answer2: "Joe Shuster",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "What Batman villain formerly worked as a zoologist?",
    correct_answer: "ManBat",
    wrong_answer1: "Poison Ivy",
    wrong_answer2: "Killer Croc",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "What year was the character of Robin first introduced?",
    correct_answer: "1940",
    wrong_answer1: "1970",
    wrong_answer2: "1960",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "In Detective Comics #267, a magical Kobold from another dimension decides to help Batman fight crime--what is his name?",
    correct_answer: "Bat-Mite",
    wrong_answer1: "Bat-Dwarf",
    wrong_answer2: "Martian Manhunter",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "The original Batgirl was related to what familiar Batman character?",
    correct_answer: "Batwoman",
    wrong_answer1: "Commisioner Gordon",
    wrong_answer2: "The Joker",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "Which of these Bat-villains was introduced first?",
    correct_answer: "CatWoman",
    wrong_answer1: "Mr. Freeze",
    wrong_answer2: "The Joker",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "What was Alfred the butler's original family name?",
    correct_answer: "Beagle",
    wrong_answer1: "Windham",
    wrong_answer2: "PennyWorth",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "Who was the (Earth-2) daughter of Batman and Catwoman?",
    correct_answer: "Huntress",
    wrong_answer1: "Oracle",
    wrong_answer2: "Indigo",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "What comic book featured Batman teaming up with a different hero each issue?",
    correct_answer: "The Brave and the Bold",
    wrong_answer1: "DC Showcase",
    wrong_answer2: "Detective Comics",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: " What former District Attorney became the villain known as Two-Face?",
    correct_answer: "Harvey Dent",
    wrong_answer1: "Jason Blood",
    wrong_answer2: "Edward Nygma",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "What writer first referred to Batman as the \"Dark Knight\"?",
    correct_answer: "Bill Finger",
    wrong_answer1: "Christopher Nolan",
    wrong_answer2: "Frank Miller",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "What member of the Batman family became Oracle?",
    correct_answer: "Batgirl",
    wrong_answer1: "Huntress",
    wrong_answer2: "CatWoman",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "What Batman villain was murdered and thrown into Slaughter Swamp?",
    correct_answer: "Solomon Grundy",
    wrong_answer1: "Copperhead",
    wrong_answer2: "Onyx",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "What villain did Arnold Schwarzenegger play in Batman & Robin?",
    correct_answer: "Mr. Freeze",
    wrong_answer1: "Bane",
    wrong_answer2: "Killer Croc",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "Who first replaced Batman when he was paralyzed by Bane?",
    correct_answer: "Azrael",
    wrong_answer1: "Red Hood",
    wrong_answer2: "Night Wing",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "What Batman villain is a jewel thief?",
    correct_answer: "CatWoman",
    wrong_answer1: "Harley Quinn",
    wrong_answer2: "Riddler",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "What superpower does the Joker have?",
    correct_answer: "None",
    wrong_answer1: "Super Inteligence",
    wrong_answer2: "Poisen Breath",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "What is the original Robin's secret identity?",
    correct_answer: "Dick Greyson",
    wrong_answer1: "Tim Drake",
    wrong_answer2: "Jason Todd",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "Which of Batman's enemies is the leader of the League of Assassins?",
    correct_answer: "Ra's al Ghul",
    wrong_answer1: "Deathstroke",
    wrong_answer2: "Joker",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "Who was the first Batman supporting character to be introduced?",
    correct_answer: "Commissioner James Gordon",
    wrong_answer1: "Robin",
    wrong_answer2: "Alfred",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "What is the name of the Penguin's nightclub?",
    correct_answer: "Iceberg Lounge",
    wrong_answer1: "Club Glacier",
    wrong_answer2: "Club Penguin",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "What alias does Batman often use when working undercover?",
    correct_answer: "Matches Malone",
    wrong_answer1: "Carmine Falcone",
    wrong_answer2: "Wilson Fisk",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "Who killed Batman's parents?",
    correct_answer: "Joe Chill",
    wrong_answer1: "Frank Miller",
    wrong_answer2: "Carmine Falcone",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "Who killed Robin's parents?",
    correct_answer: "Tony Zucco",
    wrong_answer1: "Sal Maroni",
    wrong_answer2: "Carmine Falcone",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "What Batman villain formed an army in the sewers of Gotham, composed largely of the homeless?",
    correct_answer: "Deacon Blackfire",
    wrong_answer1: "The Mad Hatter",
    wrong_answer2: "Dr. Zodiac",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "What color was the original Batmobile?",
    correct_answer: "Red",
    wrong_answer1: "Black",
    wrong_answer2: "Blue and Black",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "Who is Bruce Wayne's business manager at Wayne Enterprises?",
    correct_answer: "Lucius Fox",
    wrong_answer1: "Alfred",
    wrong_answer2: "Harvey Bullock",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "What Batman villain carves a tally mark somewhere on himself for each of his victims?",
    correct_answer: "Victor Zsasz",
    wrong_answer1: "Kadaver",
    wrong_answer2: "Hush",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: " Who was the first villain defeated by Batgirl?",
    correct_answer: "Killer Moth",
    wrong_answer1: "Egghead",
    wrong_answer2: "Taila al Ghul",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "Which of the following is one of Alfred's hobbies?",
    correct_answer: "Breeding Roses",
    wrong_answer1: "Butterfly Watching",
    wrong_answer2: "Collecting Stamps",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "Which of the following is NOT a real Batman villain?",
    correct_answer: "Naked Mole Rat",
    wrong_answer1: "Lord Death Man",
    wrong_answer2: "Polka-Dot Man",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "What villain once tried to change Gotham's water supply into chocolate?",
    correct_answer: "Sweet Tooth",
    wrong_answer1: "Candy Man",
    wrong_answer2: "Mad Hatter",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "Bruce Wayne's parents died outside of what theater?",
    correct_answer: "Monarch Theater",
    wrong_answer1: "Ridglea Theater",
    wrong_answer2: "Gotham Theater",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "How much was Jack Nicholson paid to play the Joker in the 1989 Batman movie that also starred Michael Keaton?",
    correct_answer: "$100 Million",
    wrong_answer1: "He worked for scale",
    wrong_answer2: "$10 Million",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "Who was Dick Grayson's aunt?",
    correct_answer: "Aunt Harriet",
    wrong_answer1: "Aunt Hannah",
    wrong_answer2: "Aunt Mildred",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "What alias does Batman often use when working undercover?",
    correct_answer: "Matches Malone",
    wrong_answer1: "Carmine Falcone",
    wrong_answer2: "Wilson Fisk",
    character_id: Character.find_by(name: "Batman").id
  },
  {
    question: "What planet is Superman from?",
    correct_answer: "Krypton",
    wrong_answer1: "Mars",
    wrong_answer2: "Tatooine",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "Who is Superman's Pal?",
    correct_answer: "Jimmy Olsen",
    wrong_answer1: "Perry White",
    wrong_answer2: "Bartman",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "What is Superman's Kryptonian name?",
    correct_answer: "Kal-El ",
    wrong_answer1: "Jor-El",
    wrong_answer2: "Ken-El",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "Can you name Superman's most famous pet?",
    correct_answer: "Krypto",
    wrong_answer1: "Comet",
    wrong_answer2: "Ace",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "Who did Superman fight in Marvel and DC's first crossover?",
    correct_answer: "Spider-Man",
    wrong_answer1: "Iron Man",
    wrong_answer2: "Wolverine",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "What is Clark Kent's middle name?",
    correct_answer: "Joseph",
    wrong_answer1: "Thomas",
    wrong_answer2: "Jacob",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "What is the name of the dimensional plane where Kryptonian criminals were exiled for their crimes?",
    correct_answer: "Phantom Zone",
    wrong_answer1: "No Man's Land",
    wrong_answer2: "Zimbardo's Prison",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "What super-villain killed the Man of Steel in Superman #75?",
    correct_answer: "Doomsday",
    wrong_answer1: "Lex Luther",
    wrong_answer2: "Dark Seid",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "Which of Superman's sweethearts became the super-heroine known as Insect Queen?",
    correct_answer: "Lana Lang",
    wrong_answer1: "Lyla Lerrol",
    wrong_answer2: "Lois Lane",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "Who created Superman?",
    correct_answer: "Jerry Siegel and Joe Shuster",
    wrong_answer1: "Stan Lee & Garrett",
    wrong_answer2: "Jack Kirby & Bob Kane",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "When did Lois and Superman first kiss?",
    correct_answer: "Superman #3",
    wrong_answer1: "Action Comics #124",
    wrong_answer2: "Marvel's Best #1",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "What was the name of Superman's birth mother?",
    correct_answer: "Lara",
    wrong_answer1: "Faora",
    wrong_answer2: "kara",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "Who did Superman entrust with a Kryptonite ring to stop him if he ever turned evil?",
    correct_answer: "Batman",
    wrong_answer1: "Jimmy Olsen",
    wrong_answer2: "Lois Lane",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "Who was Superman's first super villain?",
    correct_answer: "Ultra Humanite",
    wrong_answer1: "Lex Luthor",
    wrong_answer2: "Bizarro",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "What object is Superman holding on the cover of Action Comics #1?",
    correct_answer: "A car",
    wrong_answer1: "A child",
    wrong_answer2: "An eagle",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "What does black Kryptonite do to Kryptonians?",
    correct_answer: "Split Kryptonians into two separate beings",
    wrong_answer1: "Induces Sleep",
    wrong_answer2: "Causes Hallucinations",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "Which of Superman's foes was a colossal ape with kryptonite eye-beams?",
    correct_answer: "Titano",
    wrong_answer1: "Gorilla Grodd",
    wrong_answer2: "Ape-X",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "What is Superman's day job?",
    correct_answer: "Newspaper Reporter",
    wrong_answer1: "Photographer",
    wrong_answer2: "Scientist",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "What was the first newspaper Clark Kent worked for?",
    correct_answer: "Cleveland Evening News",
    wrong_answer1: "Daily Bugle",
    wrong_answer2: "Daily Star",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "What color Kryptonite is fatal to Bizarro creatures?",
    correct_answer: "Blue Kryptonite",
    wrong_answer1: "Red Kryptonite",
    wrong_answer2: "Green Kryptonite",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "How does Superman kill Doomsday in Batman vs. Superman?",
    correct_answer: "With a Kryptonite spear,",
    wrong_answer1: "Breaks his neck",
    wrong_answer2: "Strangles him",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "Which character is a warlord from Superman's home planet of Krypton?",
    correct_answer: "Zod",
    wrong_answer1: "Grodd",
    wrong_answer2: "Zor-El",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "Which Superman villain is responsible for shrinking the bottle city of Kandor?",
    correct_answer: "Brainiac",
    wrong_answer1: "General Zodd",
    wrong_answer2: "Lex Luthor",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "Who played Lana Lang on Smallville?",
    correct_answer: "Kristin Kreuk",
    wrong_answer1: "Allison Mack",
    wrong_answer2: "Bunny Henning",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "What servant of Darkseid uses her powers of persuasion to maintain his control of Apokolips?",
    correct_answer: "Amazing Grace",
    wrong_answer1: "Granny Goodness",
    wrong_answer2: "Mortalla",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "What U.S. town boasts a Superman Museum?",
    correct_answer: "Metropolis, Illinois",
    wrong_answer1: "Smallville, Mississipi",
    wrong_answer2: "Gardner, Kansas",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "Which Superman villain is the tyrannical ruler of the planet Apokolips?",
    correct_answer: "Darkseid",
    wrong_answer1: "Nekkron",
    wrong_answer2: "Paralax",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "What \"mythical\" creature did Clark Kent date in college?",
    correct_answer: "Mermaid",
    wrong_answer1: "Elf",
    wrong_answer2: "Vampire",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "What robot maintains Superman's Fortress of Solitude?",
    correct_answer: "Kelex",
    wrong_answer1: "Amazo",
    wrong_answer2: "Tobor",
    character_id: Character.find_by(name: "Superman").id
  },
  {
    question: "During his teenage years, Superman would sometimes travel to the future to fight crime with what superteam?",
    correct_answer: "Legion of Superheroes",
    wrong_answer1: "Justice Soceity",
    wrong_answer2: "Infinity.INC",
    character_id: Character.find_by(name: "Superman").id
  },
]

trivia_objects.each do |trivia_hash|
  Trivium.create(trivia_hash)
end

