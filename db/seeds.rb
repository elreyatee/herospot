user = User.create!(full_name: "Bob Example", email: "bob@examples.com", password: "12345678")

hero = Category.create!(name: "Hero")
villain = Category.create!(name: "Villain")

supe = Hero.create!(name: "Cyborg Superman",
  small_url: "/tmp/cyborg-superman-small.jpg",
  large_url: "/tmp/cyborg-superman.jpg",
  publisher: "DC",
  biography: "Cyborg aka Hank Henshaw is genetically identical to Superman. With a robotic body designed using Kryptonian technology and genetics, he has Superman's abilities and can possess any machine. Hank Henshaw, a brilliant scientist at the time, and three of his friends were returning from space when they encountered a freak radiation storm. The radiation affected the machinery of the vessel and the shuttle crash landed somewhere far away from its intended target. When the four explorers had freed themselves from the wreckage, Hank discovered that his friends Steve and Jim had been horribly transformed. Steve had become living radiation and Jim's body had been destroyed and reformed out of debris from the ship and the surrounding area. Hank's wife Terri seemed to be fine, but Hank himself could feel radiation sickness beginning to eat away at him. The group went to Metropolis in search of a LexCorp facility that they could use to fix their mutations but ran into Superman and were subsequently involved in a time consuming fight. Things were worked out but by then the radiation's affects on Hank had begun to show. His flesh was falling off his bones and he was obviously close to death. Terri also started exhibiting symptoms, beginning to fade from existence. Hank tried his hardest to work on a cure for her but he was going fast. While he worked, Steve flew into the sun and Jim killed himself. Hank came up with a plan to fix Terri, but died before he could use it. Thankfully, Superman was still there and he was able to save Terri before she completely disappeared.
Some time later, Hank returned in a new form. When his physical body had died, his consciousness had been turned to energy and sent into the machine on which he had been working. Somehow he had gained control over the machinery and was able to form it into a robotic body he could use as transport. His first thoughts once reconstituted were of his wife Terri who had been institutionalized after the traumatic events which she had witnessed. Henshaw found Terri but after appearing as a robot and leaving suddenly when security came, Terri was left even more disturbed than before. When Henshaw heard how his visit had made Terri feel, he decided it would be best for him to leave Earth and continue his hunt for knowledge on his own. Henshaw found his way to Superman's birthing matrix and made it his new body so he could travel space again, absorbing the knowledge of the universe in the process. Superman found him and tried to stop him, but Hank flew away.
Cyborg Superman's origin has been retold a number of times with slight changes each time (often showing Superman doing things he hadn't originally done), but usually with the Cyborg himself narrating. Since Cyborg Superman is obviously insane and hates Superman, some things are clearly false, but with other changes, like the cause of the radiation storm and what happened with Terri, it's hard to tell if these re-tellings are just the result of a crazy man telling his story or official retcons. For that reason, any changes in the origin are in the following paragraph.
When the Cyborg met Mongul, it is revealed that for some reason Henshaw believes that Superman was responsible for his loss of humanity and that he had banished Hank from Earth.  When the Cyborg battled Blue Superman at the Source Wall he explained that Superman had caused the deaths of his friends because he was jealous and afraid of their abilities. While attacking Earth as a part of the Sinestro Corps, the Cyborg said that Superman had indirectly caused the radiation storm when he threw Eradicator into the sun.
He also said that Terri had been near death when he went to see her as a machine and that he was trying to save her life but she jumped out of a window when she saw him and, as a result, Superman tried to kill him.",
  category: villain)

apoc = Hero.create!(name: "Apocalypse",
  small_url: "/tmp/apocalypse-small.jpg",
  large_url: "/tmp/apocalypse.jpg",
  publisher: "Marvel", 
  biography: "Apocalypse aka En Sabah Nur is thousands of years old and enemy of the X-Men. Believed to be the first mutant, Apocalypse is cybernetically enhanced by celestial technology.  The story of Apocalypse began in 3000 BC Egypt during the First Dynasty. Born gray-skinned (although Apocalypse's skin color is sometimes depicted as flesh colored or dark skinned) and blue-lipped with natural facial markings, in the settlement of Akkaba, he was abandoned as an infant, but found by a band of desert nomads, the Sandstormers, whose leader, Baal, saw the child's potential power, and raised him as his own, naming him En Sabah Nur. He was taught in the philosophy that the tribe lives and dies by: survival of the fittest. Nur and Baal were the only Sandstormers to survive on the day that General Ozymandias with his army, destroys the Sandstormers' tribe, as they found refuge in a sacred cave before it collapsed. Baal eventually died from lack of nourishment after weeks of deprivation, but before he did, he admitted to Nur that he had believed him to be a savior foretold in ancient prophecies who was destined to overthrow the pharaoh Rama-Tut. The young Nur vowed to take revenge on the pharaoh and claim his destiny. He hid himself as a slave in Tut's city, where he has visions of Egyptian gods who revealed his great destiny. The pharaoh Rama-Tut, in actuality an earlier incarnation of Kang the Conqueror who had come back in time to locate the young Apocalypse and take him under his wing, tried to convince Nur to join him, but the young mutant savagely attacked the pharaoh 
only to be taken down by the conqueror's futuristic weapon. Nur survived, and tried to rescue Nephri, Ozymandias' sister, who had become attracted to the mysterious slave, but Nur was ultimately rejected by Nephri for his inhuman appearance, and she turned to her brother for protection in her panic. Heartbroken by this final rejection, En Sabah Nur's prodigious mutant abilities fully emerged in his enraged state, and he renames himself Apocalypse. Rama-Tut flees the former slave's rampage, while Nur uses his advanced technology to enslave and transform his former tormentor, Ozymandias, into a blind seer made of living stone, who would forever chronicle Apocalypse's future destinies. Fifty years later, Nur revisits Nephri, now an elderly Egyptian Queen on her deathbed, and mocks the loss of her beauty and vitality, in contrast to his own unchanged appearance, despite the passage of time.",
  category: villain)

dredd = Hero.create!(name: "Judge Dredd", 
  small_url: "/tmp/judge-dredd-small.jpg",
  large_url: "/tmp/judge-dredd.jpg",
  publisher: "DC",
  biography: "Street Judge of Mega-City One charged to instantly convict, sentence and execute criminals. Rides 'Lawmaster' motorcycle equipped with AI controlled laser cannons.  Mega-City One in the 22nd century, a vast urban nightmare situated along the east coast of post-apocalyptic North America. The irradiated wasteland known as The Cursed Earth to the west covering most of America, and the polluted Black Atlantic to the east. Home to 400 million citizens, crammed into gigantic city-blocks, overcrowding is rife, unemployment endemic and boredom universal. Tensions run a constant knife-edge, and crime is rampant. Only the Judges can prevent total anarchy. Empowered to dispense instant justice, these lawmen are judge, jury and executioner. The toughest of them all is Judge Joe Dredd and he is the law!
Judge Dredd, one of a number of clones of Chief Judge Fargo, is the most famous of the elite corps of Judges that run Mega-City One with the power not only to enforce the law, but also to instantly sentence offenders; to death if necessary. Dredd and his twin brother Rico emerged from the cloning facility as five year olds in 2066, which took only a matter of months. At this young age they are enrolled into the Academy of Law, and graduate 13 years later in 2079. While these details are featured throughout the years of comics, recently the Judge Dredd Origins story arc delves into the atomic wars and Dredd's time as a cadet.",
  category: hero)

death = Hero.create!(name: "Judge Death", 
  small_url: "/tmp/judge-death-small.jpg",
  large_url: "/tmp/judge-death.jpg",
  publisher: "DC",
  biography: "Leader of the Dark Judges, a sinister group of undead law enforcers from the dimension of Deadworld, where all life is declared a crime since only the living commit crimes.  A twisted creature from another dimension, Judge Death reasoned that since all crime was committed by the living, life itself was unlawful, and he set out to destroy all existence. Once a young boy called Sidney De'Ath, the warped son of a dentist, who torture his patients and would sometimes kill them, Sidney grew up admiring his father's work saying it had a prolonged affect on him.
As he grew up, torture was not enough and he wanted to bring justice to his world and the only way possible was by becoming a Judge. On the day of his graduation his mother and sister left, hoping to run away, but Sidney found them and tortured and killed them. The turning point for Sydney was discovering the Sisters of Death (two witches called Phobia and Nausia). With their help he became the undead monster Judge Death, before repeating the procedure on three other Judges. They became Judge Fear, Fire and Mortis - The Dark Judges.
Together they exterminated all life on their planet and renamed it Deadworld. When an dimensional traveler accidentally stumbled on Deadworld, Death killed him and took the technology for the Dark Judges. With it, he reasoned, they could eradicate life across other worlds and dimensions.
They started with Mega-City One.",
  category: villain)

["Hank Henshaw", "The Cyborg", "Cyborg Superman"].each do |n|
  Alias.create!(name: n, hero: supe)
end

["Apocalypse", "En Sabah Nur"].each do |n|
  Alias.create!(name: n, hero: apoc)
end

["Judge Dredd", "Dredd", "Joseph Dredd"].each do |n|
  Alias.create!(name: n, hero: dredd)
end

["Judge Death", "Sidney De'Ath", "Jay Death"].each do |n|
  Alias.create!(name: n, hero: death)
end

