pokedexWindow = nil
thestats = nil
thetypes = nil
evoboost = nil
eoq = nil
pokedexIcon = modules.mod_topMenu.getPokedexIcon()

lowerpoke = {"bulbasaur","ivysaur","venusaur","charmander","charmeleon","charizard","squirtle","wartortle","blastoise","caterpie","metapod","butterfree","weedle","kakuna","beedrill","pidgey","pidgeotto","pidgeot",
"rattata","raticate","spearow","fearow","ekans","arbok","pikachu","raichu","sandshrew","sandslash","nidoran female","nidorina","nidoqueen","nidoran male","nidorino","nidoking","clefairy","clefable","vulpix",
"ninetales","jigglypuff","wigglytuff","zubat","golbat","oddish","gloom","vileplume","paras","parasect","venonat","venomoth","diglett","dugtrio","meowth","persian","psyduck","golduck","mankey","primeape",
"growlithe","arcanine","poliwag","poliwhirl","poliwrath","abra","kadabra","alakazam","machop","machoke","machamp","bellsprout","weepinbell","victreebel","tentacool","tentacruel","geodude","graveler","golem",
"ponyta","rapidash","slowpoke","slowbro","magnemite","magneton","farfetch'd","doduo","dodrio","seel","dewgong","grimer","muk","shellder","cloyster","gastly","haunter","gengar","onix","drowzee","hypno",
"krabby","kingler","voltorb","electrode","exeggcute","exeggutor","cubone","marowak","hitmonlee","hitmonchan","lickitung","koffing","weezing","rhyhorn","rhydon","chansey","tangela","kangaskhan","horsea","seadra",
"goldeen","seaking","staryu","starmie","mr. mime","scyther","jynx","electabuzz","magmar","pinsir","tauros","magikarp","gyarados","lapras","ditto","eevee","vaporeon","jolteon","flareon","porygon","omanyte","omastar",
"kabuto","kabutops","aerodactyl","snorlax","articuno","zapdos","moltres","dratini","dragonair","dragonite","mewtwo","mew"}

pokesDescription = {
["bulbasaur"] = {"A strange seed was planted on its back at birth. The plant sprouts and grows with this Pokemon.", 1},
["ivysaur"] = {"When the bud on its back starts swelling, a sweet aroma wafts to indicate the flower's coming bloom.", 2},
["venusaur"] = {"There is a large flower on Venosaur's back. The flower is said to take on vivid colors if it gets plenty of nutrition and sunlight. The flower's aroma soothes the emotions of people.", 3},
["charmander"] = {"The fire on the tip of its tail is a measure of its life. If healthy, its tail burns intensely.", 4},
["charmeleon"] = {"If it becomes agitated during battle, it spouts intense flames, incinerating its surroundings.", 5},
["charizard"] = {"It spits fire that is hot enough to melt boulders. It may cause forest fires by blowing flames.", 6},
["squirtle"] = {"It shelters itself in its shell, then strikes back with spouts of water at every opportunity.", 7},
["wartortle"] = {"It often hides in water to stalk unwary prey. For fast swimming, it moves its ears to maintain balance.", 8},
["blastoise"] = {"The jets of water it spouts from the rocket cannons on its shell can punch through thick steel.", 9},
["caterpie"] = {"It is covered with a green skin. When it grows, it sheds the skin, covers itself with silk, and becomes a cocoon.", 10},
["metapod"] = {"A steel-hard shell protects its tender body. It quietly endures hardships while awaiting evolution.", 11},
["butterfree"] = {"It loves the honey of flowers and can locate flower patches that have even tiny amounts of pollen.", 12},
["weedle"] = {"Often found in forests and grasslands. It has a sharp, toxic barb of around two inches on top of its head.", 13},
["kakuna"] = {"While awaiting evolution, it hides from predators under leaves and in nooks of branches.", 14},
["beedrill"] = {"Its best attack involves flying around at high speed, striking with poison needles, then flying off.", 15},
["pidgey"] = {"It is docile and prefers to avoid conflict. If disturbed, however, it can ferociously strike back.", 16},
["pidgeotto"] = {"It flies over its wide territory in search of prey, downing it with its highly developed claws.", 17},
["pidgeot"] = {"By flapping its wings with all its might, Pidgeot can make a gust of wind capable of bending tall trees.", 18},
["rattata"] = {"Cautious in the extreme, its hardy vitality lets it live in any kind of environment.", 19},
["raticate"] = {"It whittles its constantly growing fangs by gnawing on hard things. It can chew apart cinder walls.", 20},
["spearow"] = {"It flaps its small wings busily to fly. Using its beak, it searches in grass for prey.", 21},
["fearow"] = {"It has the stamina to keep flying all day on its broad wings. It fights by using its sharp beak.", 22},
["ekans"] = {"It sneaks through grass without making a sound and strikes unsuspecting prey from behind.", 23},
["arbok"] = {"The pattern on its belly appears to be a frightening face. Weak foes will flee just at the sight of the pattern.", 24},
["pikachu"] = {"It stores electricity in the electric sacs on its cheeks. When it releases pent-up energy in a burst, the electric power is equal to a lightning bolt.", 25},
["raichu"] = {"If it stores too much electricity, its behavior turns aggressive. To avoid this, it occasionally discharges excess energy and calms itself down.", 26},
["sandshrew"] = {"To protect itself from attackers, it curls up into a ball. It lives in arid regions with minimal rainfall.", 27},
["sandslash"] = {"It curls up in a ball to protect itself from enemy attacks. It also curls up to prevent heatstroke during the daytime when temperatures rise sharply.", 28},
["nidoran female"] = {"While it does not prefer to fight, even one drop of the poison it secretes from barbs can be fatal.", 29},
["nidorina"] = {"The female's horns develop slowly. Prefers physical attacks such as clawing and biting.", 30},
["nidoqueen"] = {"Its entire body is armored with hard scales. It will protect the young in its burrow with its life.", 31},
["nidoran male"] = {"It scans its surroundings by raising its ears out of the grass. Its toxic horn is for protection.", 32},
["nidorino"] = {"It is easily angered. By swinging its well-developed horn wildly, it can even punch through diamond.", 33},
["nidoking"] = {"It is recognized by its rock-hard hide and its extended horn. Be careful with the horn as it contains venom.", 34},
["clefairy"] = {"Its adorable appearance makes it popular as a pet. However, it is rare and difficult to find.", 35},
["clefable"] = {"Rarely seen by people, it is said to be drawn by the full moon to play at deserted lakes.", 36},
["vulpix"] = {"It controls balls of fire. As it grows, its six tails split from their tips to make more tails.", 37},
["ninetales"] = {"It has long been said that each of the nine tails embody an enchanted power. A long-lived Ninetales will have fur that shines like gold.", 38},
["jigglypuff"] = {"It captivates foes with its huge, round eyes, then lulls them to sleep by singing a soothing melody.", 39},
["wigglytuff"] = {"Its fur is the ultimate in luxuriousness. Sleeping alongside a Wigglytuff is simply divine. Its body expands seemingly without end when it inhales.", 40},
["zubat"] = {"Disliking sunlight, it sleeps deep in forests and caves until sundown.", 41},
["golbat"] = {"Once it starts sucking blood, it does not stop until it is full. It flies at night in search of prey.", 42},
["oddish"] = {"It often plants its root feet in the ground during the day and sows seeds as it walks about at night.", 43},
["gloom"] = {"The honey it drools from its mouth smells so atrocious, it can curl noses more than a mile away.", 44},
["vileplume"] = {"Its petals are the largest in the world. As it walks, it scatters extremely allergenic pollen.", 45},
["paras"] = {"Growing out of the bug's back are mushrooms called tochukaso. The mushrooms grow with the bug host.", 46},
["parasect"] = {"Parasect are known to infest the roots of large trees en masse and drain nutrients. When an infested tree dies, they move onto another tree all at once.", 47},
["venonat"] = {"Its eyes act as radar, enabling it to be active in darkness. The eyes can also shoot powerful beams.", 48},
["venomoth"] = {"The wings are covered with dustlike scales. Every time it flaps its wings, it looses highly toxic dust.", 49},
["diglett"] = {"It burrows through the ground at a shallow depth. It leaves raised earth in its wake, making it easy to spot.", 50},
["dugtrio"] = {"Its three heads move alternately, driving it through tough soil to depths of over 60 miles.", 51},
["meowth"] = {"All it does is sleep during the daytime. At night, it patrols its territory with its eyes aglow.", 52},
["persian"] = {"Although its fur has many admirers, it is tough to raise as a pet because of its fickle meanness.", 53},
["psyduck"] = {"It is constantly wracked by a headache. When the headache turns intense, it begins using mysterious powers.", 54},
["golduck"] = {"A Pokemon that lives in lakes. It swims faster than any human swimming champion.", 55},
["mankey"] = {"It lives in treetop colonies. If one becomes enraged, the whole colony rampages for no reason.", 56},
["primeape"] = {"It grows angry if you see its eyes and gets angrier if you run. If you beat it, it gets even madder.", 57},
["growlithe"] = {"Its superb sense of smell ensures that this Pokemon won't forget any scent, no matter what. It uses its sense of smell to detect the emotions of others.", 58},
["arcanine"] = {"A Pokemon that is described in Chinese legends. It is said to race at an unbelievable speed.", 59},
["poliwag"] = {"Its slick black skin is thin and damp. A part of its internal organs can be seen through the skin as a spiral pattern.", 60},
["poliwhirl"] = {"Its body surface is always wet and slick with an oily fluid. Because of this greasy covering, it can easily slip and slide out of the clutches of any enemy in battle.", 61},
["poliwrath"] = {"Its highly developed muscles never grow fatigued, however much it exercises. This Pokemon can swim back and forth across the Pacific Ocean without effort.", 62},
["abra"] = {"A Pokemon that sleeps 18 hours a day. Observation revealed that it uses teleport to change its location.", 63},
["kadabra"] = {"It is rumored that a boy with psychic abilities suddenly transformed into KADABRA while he was assisting research into extrasensory powers.", 64},
["alakazam"] = {"While it has strong psychic abilities and high intelligence, an Alakazam muscles are very weak. It uses psychic power to move its body.", 65},
["machop"] = {"It continually undertakes strenuous training to master all forms of martial arts. Its strength lets it easily hoist a sumo wrestler onto its shoulders.", 66},
["machoke"] = {"Its muscular body is so powerful, it must wear a power-save belt to be able to regulate its motions.", 67},
["machamp"] = {"It is impossible to defend against punches and chops doled out by its four arms. Its fighting spirit flares up when it faces a tough opponent.", 68},
["bellsprout"] = {"Its bud looks like a human face. Because of the bud, it is rumored to be a type of legendary mandrake plant.", 69},
["weepinbell"] = {"A Pokemon that appears to be a plant. It captures unwary prey by dousing them with a toxic powder.", 70},
["victreebel"] = {"It pools in its mouth a fluid with a honeylike scent, which is really an acid that dissolves anything.", 71},
["tentacool"] = {"Its body is almost entirely composed of water. It ensnares its foe with its two long tentacles, then stabs with the poison stingers at their tips.", 72},
["tentacruel"] = {"It lives in complex rock formations on the ocean floor and traps prey using its 80 tentacles. Its red orbs glow when it grows excited or agitated.", 73},
["geodude"] = {"It climbs mountain paths using only the power of its arms. Because they look just like boulders lining paths, hikers may step on them without noticing.", 74},
["graveler"] = {"They descend from mountains by tumbling down steep slopes. They are so brutal, they smash aside obstructing trees and massive boulders with thunderous tackles.", 75},
["golem"] = {"It is said to live in volcanic craters on mountain peaks. Once a year, it sheds its hide and grows larger. The shed hide crumbles and returns to the soil.", 76},
["ponyta"] = {"About an hour after birth, its fiery mane and tail grow out, giving it an impressive appearance.", 77},
["rapidash"] = {"It usually canters casually in the fields and plains. But once a Rapidash turns serious, its fiery manes flare and blaze as it gallops its way up to 150 mph.", 78},
["slowpoke"] = {"It is always vacantly lost in thought, but no one knows what it is thinking about. It is good at fishing with its tail.", 79},
["slowbro"] = {"Lives lazily by the sea.", 80},
["magnemite"] = {"The units at its sides generate electromagnetic waves that keep it airborne. It feeds on electricity.", 81},
["magneton"] = {"Magneton emits a powerful magnetic force that is fatal to electronics and precision instruments. Because of this, it is said that some towns warn people to keep this Pokemon inside a pokeball.", 82},
["farfetch'd"] = {"It is always seen with a stick from a plant. Apparently, there are good sticks and bad sticks. This Pokemon occasionally fights with others over choice sticks.", 83},
["doduo"] = {"Even while eating or sleeping, one of the heads remains always vigilant for any sign of danger. When threatened, it flees at over 60 miles per hour.", 84},
["dodrio"] = {"Apparently, the heads aren't the only parts of the body that Dodrio has three of. It has three sets of hearts and lungs as well, so it is capable of running long distances without rest.", 85},
["seel"] = {"A Pokemon that lives on icebergs. It swims in the sea using the point on its head to break up ice.", 86},
["dewgong"] = {"In snow, the pure white coat covering its body obscures it from predators.", 87},
["grimer"] = {"It was born when sludge in a dirty stream was exposed to the moon's X-rays. It appears among filth.", 88},
["muk"] = {"It is usually undetectable because it blends in with the ground. Touching it can cause terrible poisoning.", 89},
["shellder"] = {"It swims backward by opening and closing its two shells. Its large tongue is always kept hanging out.", 90},
["cloyster"] = {"It fights by keeping its shell tightly shut for protection and by shooting spikes to repel foes.", 91},
["gastly"] = {"When exposed to a strong wind, a Gastly's gaseous body quickly dwindles away. They cluster under the eaves of houses to escape the ravages of wind.", 92},
["haunter"] = {"Because of its ability to slip through block walls, it is said to be from another dimension.", 93},
["gengar"] = {"Deep in the night, your shadow cast by a streetlight may suddenly overtake you. It is actually a Gengar running past you, pretending to be your shadow.", 94},
["onix"] = {"There is a magnet in its brain that prevents an Onix from losing direction while tunneling. As it grows older, its body becomes steadily rounder and smoother.", 95},
["drowzee"] = {"A descendent of the legendary animal baku, which is said to eat dreams. It is skilled at hypnotism.", 96},
["hypno"] = {"Seeing its swinging pendulum can induce sleep in three seconds, even in someone who just woke up.", 97},
["krabby"] = {"It lives in burrows dug on sandy beaches. Its pincers fully grow back if they are broken in battle.", 98},
["kingler"] = {"It waves its huge, oversized claw in the air to communicate with others. But since the claw is so heavy, this Pokemon quickly tires.", 99},
["voltorb"] = {"It looks just like a Poke Ball. It is dangerous because it may electrocute or explode on touch.", 100},
["electrode"] = {"It is known to drift on winds if it is bloated to bursting with stored electricity.", 101},
["exeggcute"] = {"Its six eggs converse using telepathy. They can quickly gather if they become separated.", 102},
["exeggutor"] = {"It is called The Walking Tropical Rainforest. Each of the nuts has a face and a will of its own.", 103},
["cubone"] = {"It pines for the mother it will never see again. Seeing a likeness of its mother in the full moon, it cries. The stains on the skull it wears are from its tears.", 104},
["marowak"] = {"MarowaK is the evolved form of a Cubone that has overcome its sadness at the loss of its mother and grown tough. This Pokemon's tempered and hardened spirit is not easily broken.", 105},
["hitmonlee"] = {"Its legs freely stretch and contract. Using these springlike limbs, it bowls over foes with devastating kicks. After battle, it rubs down its tired legs. Hitmonlee have a special passive skill.", 106},
["hitmonchan"] = {"A Hitmonchan is said to possess the spirit of a boxer who aimed to become the world champion. Having an indomitable spirit means that it will never give up.", 107},
["lickitung"] = {"Whenever it sees something unfamiliar, it always licks the object because it memorizes things by texture and taste. It is somewhat put off by sour things.", 108},
["koffing"] = {"Because it stores several kinds of toxic gases in its body, it is prone to exploding without warning.", 109},
["weezing"] = {"It grows by feeding on gases released by garbage. Though very rare, triplets have been found.", 110},
["rhyhorn"] = {"Once it starts running, it doesn't stop. Its tiny brain makes it so stupid that it can't remember why it started running in the first place.", 111},
["rhydon"] = {"Its horn, which rotates like a drill, destroys tall buildings with one strike. It stands on its hind legs, and its brain is well developed.", 112},
["chansey"] = {"Chansey lay nutritionally excellent eggs every day. The eggs are so delicious, they are eagerly devoured by even those people who have lost their appetite.", 113},
["tangela"] = {"Its vines snap off easily and painlessly if they are grabbed, allowing it to make a quick getaway. The lost vines are replaced by new growth the very next day.", 114},
["kangaskhan"] = {"It raises its offspring in its belly pouch. It lets the baby out to play only when it feels safe.", 115},
["horsea"] = {"By cleverly flicking the fins on its back side to side, it moves in any direction while facing forward. It spits ink to escape if it senses danger.", 116},
["seadra"] = {"The poisonous barbs all over its body are highly valued as ingredients for making traditional herbal medicine. It shows no mercy to anything approaching its nest.", 117},
["goldeen"] = {"Its dorsal and pectoral fins are strongly developed like muscles. It can swim at a speed of five knots.", 118},
["seaking"] = {"Punches holes in boulders on stream-beds. This is a clever innovation that prevents its eggs from being attacked or washed away by the current.", 119},
["staryu"] = {"It gathers with others in the night and makes its red core glow on and off with the twinkling stars. It can regenerate limbs if they are severed from its body.", 120},
["starmie"] = {"At the center of its body is a red core, which sends mysterious radio signals into the night sky.", 121},
["mr. mime"] = {"It is a pantomime expert that can create invisible but solid walls using miming gestures.", 122},
["scyther"] = {"Its blindingly fast speed adds to the sharpness of its twin forearm scythes. The scythes can slice through thick logs in one wicked stroke.", 123},
["jynx"] = {"Its cries sound like human speech. However, it is impossible to tell what it is trying to say.", 124},
["electabuzz"] = {"Half of all blackouts occur when this Pokemon appears at power plants and eats electricity.", 125},
["magmar"] = {"Born in the spout of a volcano, its body is covered by flames that shimmer like the sun.", 126},
["pinsir"] = {"It grips prey with its pincers until the prey is torn in half. What it can't tear, it tosses far.", 127},
["tauros"] = {"Once it takes aim at its foe, it makes a headlong charge. It is famous for its violent nature.", 128},
["magikarp"] = {"It is said to be the world's weakest Pokemon. No one knows why it has managed to survive.", 129},
["gyarados"] = {"Rarely seen in the wild. Huge and vicious, it is capable of destroying entire cities in a rage.", 130},
["lapras"] = {"It loves crossing the sea with people and Pokemon on its back. It understands human speech.", 131},
["ditto"] = {"It has the ability to reconstitute its entire cellular structure to transform into whatever it sees.", 132},
["eevee"] = {"A rare Pokemon that adapts to harsh environments by taking on different evolutionary forms.", 133},
["vaporeon"] = {"It has evolved to be suitable for an aquatic life. It can invisibly melt away into water.", 134},
["jolteon"] = {"It controls 10,000-volt power and can raise all the fur on its body as if it were sharp needles.", 135},
["flareon"] = {"It has a flame sac in its body. Its body temperature tops 1,650 degrees Fahrenheit before battle.", 136},
["porygon"] = {"The world's first artificially created Pokemon. It can travel through electronic space.", 137},
["omanyte"] = {"A Pokemon that was resurrected from a fossil using modern science. It swam in ancient seas.", 138},
["omastar"] = {"It is thought that this Pokemon became extinct because its spiral shell grew too large.", 139},
["kabuto"] = {"It is thought to have inhabited beaches 300 million years ago. It is protected by a stiff shell.", 140},
["kabutops"] = {"It is thought that this Pokemon came onto land because its prey adapted to life on land.", 141},
["aerodactyl"] = {"A Pokemon that roamed the skies in the dinosaur era. Its teeth are like saw blades.", 142},
["snorlax"] = {"Snorlax's typical day consists of nothing more than eating and sleeping. It is such a docile Pokemon that there are children who use its big belly as a place to play.", 143},
["articuno"] = {"Articuno is a legendary bird Pokemon that can control ice. The flapping of its wings chills the air. As a result, it is said that when this Pokemon flies, snow will fall.", 144},
["zapdos"] = {"Zapdos is a legendary bird Pokemon that has the ability to control electricity. It usually lives in thunderclouds. The Pokemon gains power if it is stricken by lightning bolts.", 145},
["moltres"] = {"Moltres is a legendary bird Pokemon that has the ability to control fire. If this Pokemon is injured, it is said to dip its body in the molten magma of a volcano to burn and heal itself.", 146},
["dratini"] = {"It is called the Mirage Pokemon because so few have seen it. Its shed skin has been found.", 147},
["dragonair"] = {"If its body takes on an aura, the weather changes instantly. It is said to live in seas and lakes.", 148},
["dragonite"] = {"It is said to make its home somewhere in the sea. It guides crews of shipwrecks to shore.", 149},
["mewtwo"] = {"No informations.", 150},
["mew"] = {"No informations.", 151},
}

typetostone = {
["Grass"] = "Leaf Stone",
["Poison"] = "Venom Stone",
["Ice"] = "Ice Stone",
["Water"] = "Water Stone",
["Ghost"] = "Darkness Stone",
["Dark"] = "Darkness Stone",
["Dragon"] = "Crystal Stone",
["Flying"] = "Feather Stone",
["Fire"] = "Fire Stone",
["Normal"] = "Heart Stone",
["Ground"] = "Earth Stone",
["Electric"] = "Thunder Stone",
["Psychic"] = "Enigma Stone",
["Rock"] = "Rock Stone",
["Bug"] = "Cocoon Stone",
["Fighting"] = "Punch Stone",
}

function init()
  connect(g_game, { onGameEnd = hide })

  ProtocolGame.registerExtendedOpcode(100, function(protocol, opcode, buffer) onUsePokedex(protocol, opcode, buffer) end)
  ProtocolGame.registerExtendedOpcode(102, function(protocol, opcode, buffer) doStats(protocol, opcode, buffer) end)
  ProtocolGame.registerExtendedOpcode(103, function(protocol, opcode, buffer) doTypes(protocol, opcode, buffer) end)
  ProtocolGame.registerExtendedOpcode(99, function(protocol, opcode, buffer) doEvolveBoost(protocol, opcode, buffer) end)
  ProtocolGame.registerExtendedOpcode(101, function(protocol, opcode, buffer) doCreatePokedex(protocol, opcode, buffer) end)
end

function terminate()
  disconnect(g_game, { onGameEnd = hide })

  ProtocolGame.unregisterExtendedOpcode(100)
  ProtocolGame.unregisterExtendedOpcode(102)
  ProtocolGame.unregisterExtendedOpcode(103)
  ProtocolGame.unregisterExtendedOpcode(99)
  ProtocolGame.unregisterExtendedOpcode(101)

  hide()
end

function show()
  pokedexWindow = g_ui.displayUI('pokedex')
  if not eoq or not tonumber(eoq) or eoq < 2 then
  pokedexWindow:setImageSource('/images/ui/window_pokedex')
  elseif eoq == 2 then
  pokedexWindow:setImageSource('/images/ui/window_pokedex2')
  elseif eoq == 3 then
  pokedexWindow:setImageSource('/images/ui/window_pokedex3')
  elseif eoq == 4 then
  pokedexWindow:setImageSource('/images/ui/window_pokedex4')
  elseif eoq == 5 then
  pokedexWindow:setImageSource('/images/ui/window_pokedex5')
  elseif eoq == 6 then
  pokedexWindow:setImageSource('/images/ui/window_pokedex6')
  elseif eoq == 7 then
  pokedexWindow:setImageSource('/images/ui/window_pokedex7')
  elseif eoq == 8 then
  pokedexWindow:setImageSource('/images/ui/window_pokedex8')
  elseif eoq == 9 then
  pokedexWindow:setImageSource('/images/ui/window_pokedex9')
  elseif eoq == 10 then
  pokedexWindow:setImageSource('/images/ui/window_pokedex10')
  else
  pokedexWindow:setImageSource('/images/ui/window_pokedex')
  end
  pokemonImage = pokedexWindow:getChildById('pokemonImage')
  pokemonType1 = pokedexWindow:getChildById('pokemonType1')
  pokemonType2 = pokedexWindow:getChildById('pokemonType2')
  pokemonSearch = pokedexWindow:getChildById('searchText')
  pokedexTabBar = pokedexWindow:getChildById('pokedexTabBar')
  pokedexListPanel = pokedexWindow:getChildById('pokedexList')

  pokemonSearch:focus()
  pokedexTabBar:setContentWidget(pokedexWindow:getChildById('pokedexTabContent'))

  infoPanel = g_ui.loadUI('info')
  pokemonInfo = infoPanel:getChildById('pokemonInfo')
  pokedexTabBar:addTab('  Infos  ', infoPanel)

  statsPanel = g_ui.loadUI('stats')
  pokemonStatsAttack = statsPanel:getChildById('pokemonStatsAttackPercent')
  pokemonStatsDefense = statsPanel:getChildById('pokemonStatsDefensePercent')
  pokemonStatsSpAttack = statsPanel:getChildById('pokemonStatsSpAttackPercent')
  pokemonStatsVitality = statsPanel:getChildById('pokemonStatsVitalityPercent')
  pokedexTabBar:addTab('  Stats  ', statsPanel)

  --movesPanel = function() g_game.talk("/dex Venusaur") end
 -- pokemonMoves = movesPanel:getChildById('pokemonMoves')
  --pokedexTabBar:addTab('    !    ', movesPanel)
  effectivenessPanel = g_ui.loadUI('effectiveness')
  pokemonEffectiveness = effectivenessPanel:getChildById('pokemonEffectiveness')
  pokedexTabBar:addTab('Effectiveness', effectivenessPanel)
  
  pokedexIcon:setOpacity(1.0)
end



function hide()
  if pokedexWindow then
    g_keyboard.unbindKeyPress('Down')
    g_keyboard.unbindKeyPress('Up')
    pokedexWindow:destroy()
    pokedexWindow = nil
  pokedexIcon:setOpacity(0.5)
  end
end


function changedex()
hide()
g_game.talk('!dexchange')
end

function searchPokemon()
  local searchFilter = pokemonSearch:getText():lower()

  for i = 1, pokedexListPanel:getChildCount() do
    local pokemon = pokedexListPanel:getChildByIndex(i)

    local searchCondition = (searchFilter == '') or (searchFilter ~= '' and string.find(pokemon:getText():lower(), searchFilter) ~= nil)
    pokemon:setVisible(searchCondition)
  end
end

function doStats(protocol, opcode, buffer)
    thestats = buffer
	eoq = tonumber(string.explode(thestats, '!')[2])
end

function doTypes(protocol, opcode, buffer)
    thetypes = buffer
end

function doEvolveBoost(protocol, opcode, buffer)
    evoboost = buffer
end



function getEvos(id)
local str = {}

if id <= 3 then
      table.insert(str, "Bulbasaur,20;Ivysaur,40;Venusaur,80")
elseif id >= 4 and id <= 6 then
      table.insert(str, "Charmander,20;Charmeleon,40;Charizard,80")
elseif id >= 7 and id <= 9 then
      table.insert(str, "Squirtle,20;Wartortle,40;Blastoise,80")
elseif id >= 10 and id <= 12 then
      table.insert(str, "Caterpie,1;Metapod,15;Butterfree,30")
elseif id >= 13 and id <= 15 then
      table.insert(str, "Weedle,1;Kakuna,15;Beedrill,30")
elseif id >= 16 and id <= 18 then
      table.insert(str, "Pidgey,5;Pidgeotto,30;Pidgeot,80")
elseif id >= 19 and id <= 20 then
      table.insert(str, "Rattata,1;Raticate,30")
elseif id >= 21 and id <= 22 then
      table.insert(str, "Spearow,10;Fearow,50")
elseif id >= 23 and id <= 24 then
      table.insert(str, "Ekans,10;Arbok,40")
elseif id >= 25 and id <= 26 then
      table.insert(str, "Pikachu,40;Raichu,80")
elseif id >= 27 and id <= 28 then
      table.insert(str, "Sandshrew,20;Sandslash,70")
elseif id >= 29 and id <= 31 then
      table.insert(str, "Nidoran Female,10;Nidorina,30;Nidoqueen,80")
elseif id >= 32 and id <= 34 then
      table.insert(str, "Nidoran Male,10;Nidorino,30;Nidoking,80")
elseif id >= 35 and id <= 36 then
      table.insert(str, "Clefairy,40;Clefable,80")
elseif id >= 37 and id <= 38 then
      table.insert(str, "Vulpix,10;Ninetales,60")
elseif id >= 39 and id <= 40 then
      table.insert(str, "Jigglypuff,40;Wigglytuff,80")
elseif id >= 41 and id <= 42 then
      table.insert(str, "Zubat,10;Golbat,30")
elseif id >= 43 and id <= 45 then
      table.insert(str, "Oddish,10;Gloom,30;Vileplume,50")
elseif id >= 46 and id <= 47 then
      table.insert(str, "Paras,5;Parasect,50")
elseif id >= 48 and id <= 49 then
      table.insert(str, "Venonat,20;Venomoth,50")
elseif id >= 50 and id <= 51 then
      table.insert(str, "Diglett,10;Dugtrio,40")
elseif id >= 52 and id <= 53 then
      table.insert(str, "Meowth,20;Persian,50")
elseif id >= 54 and id <= 55 then
      table.insert(str, "Psyduck,20;Golduck,50")
elseif id >= 56 and id <= 57 then
      table.insert(str, "Mankey,10;Primeape,50")
elseif id >= 58 and id <= 59 then
      table.insert(str, "Growlithe,30;Arcanine,90")
elseif id >= 60 and id <= 62 then
      table.insert(str, "Poliwag,5;Poliwhirl,20;Poliwrath,70")
elseif id >= 63 and id <= 65 then
      table.insert(str, "Abra,10;Kadabra,40;Alakazam,80")
elseif id >= 66 and id <= 68 then
      table.insert(str, "Machop,20;Machoke,40;Machamp,80")
elseif id >= 69 and id <= 71 then
      table.insert(str, "Bellsprout,10;Weepinbell,25;Victreebel,50")
elseif id >= 72 and id <= 73 then
      table.insert(str, "Tentacool,20;Tentacruel,80")
elseif id >= 74 and id <= 76 then
      table.insert(str, "Geodude,10;Graveler,40;Golem,80")
elseif id >= 77 and id <= 78 then
      table.insert(str, "Ponyta,20;Rapidash,80")
elseif id >= 79 and id <= 80 then
      table.insert(str, "Slowpoke,20;Slowbro,50")
elseif id >= 81 and id <= 82 then
      table.insert(str, "Magnemite,20;Magneton,80")
elseif id == 83 then
      table.insert(str, "NOTHING")
elseif id >= 84 and id <= 85 then
      table.insert(str, "Doduo,10;Dodrio,50")
elseif id >= 86 and id <= 87 then
      table.insert(str, "Seel,20;Dewgong,60")
elseif id >= 88 and id <= 89 then
      table.insert(str, "Grimer,10;Muk,80")
elseif id >= 90 and id <= 91 then
      table.insert(str, "Shellder,10;Cloyster,70")
elseif id >= 92 and id <= 94 then
      table.insert(str, "Gastly,20;Haunter,40;Gengar,80")
elseif id == 95 then
      table.insert(str, "NOTHING")
elseif id >= 96 and id <= 97 then
      table.insert(str, "Drowzee,20;Hypno,50")
elseif id >= 98 and id <= 99 then
      table.insert(str, "Krabby,10;Kingler,40")
elseif id >= 100 and id <= 101 then
      table.insert(str, "Voltorb,10;Eletrode,30")
elseif id >= 102 and id <= 103 then
      table.insert(str, "Exeggcute,10;Exeggutor,80")
elseif id >= 104 and id <= 105 then
      table.insert(str, "Cubone,20;Marowak,50")
elseif id == 106 then
      table.insert(str, "NOTHING")
elseif id == 107 then
      table.insert(str, "NOTHING")
elseif id == 108 then
      table.insert(str, "NOTHING")
elseif id >= 109 and id <= 110 then
      table.insert(str, "Koffing,10;Weezing,50")
elseif id >= 111 and id <= 112 then
      table.insert(str, "Rhyhorn,30;Rhydon,80")
elseif id == 113 then
      table.insert(str, "NOTHING")
elseif id == 114 then
      table.insert(str, "NOTHING")
elseif id == 115 then
      table.insert(str, "NOTHING")
elseif id >= 116 and id <= 117 then
      table.insert(str, "Horsea,10;Seadra,50")
elseif id >= 118 and id <= 119 then
      table.insert(str, "Goldeen,10;Seaking,30")
elseif id >= 120 and id <= 121 then
      table.insert(str, "Staryu,20;Starmie,70")
elseif id == 122 then
      table.insert(str, "NOTHING")
elseif id == 123 then
      table.insert(str, "NOTHING")
elseif id == 124 then
      table.insert(str, "NOTHING")
elseif id == 125 then
      table.insert(str, "NOTHING")
elseif id == 126 then
      table.insert(str, "NOTHING")
elseif id == 127 then
      table.insert(str, "NOTHING")
elseif id == 128 then
      table.insert(str, "NOTHING")
elseif id >= 129 and id <= 130 then
      table.insert(str, "Magikarp,1;Gyarados,90")
elseif id == 131 then
      table.insert(str, "NOTHING")
elseif id == 132 then
      table.insert(str, "NOTHING")
elseif id >= 133 and id <= 136 then
      table.insert(str, "Eevee,1;Vaporeon,50;Jolteon,50;Flareon,50")
elseif id == 137 then
      table.insert(str, "NOTHING")
elseif id >= 138 and id <= 139 then
      table.insert(str, "Omanyte,20;Omastar,80")
elseif id >= 140 and id <= 141 then
      table.insert(str, "Kabuto,20;Kabutops,80")
elseif id == 142 then
      table.insert(str, "NOTHING")
elseif id == 143 then
      table.insert(str, "NOTHING")
elseif id == 144 then
      table.insert(str, "NOTHING")
elseif id == 145 then
      table.insert(str, "NOTHING")
elseif id == 146 then
      table.insert(str, "NOTHING")
elseif id >= 147 and id <= 149 then
      table.insert(str, "Dratini,20;Dragonair,60;Dragonite,100")
elseif id == 150 then
      table.insert(str, "NOTHING")
elseif id == 151 then
      table.insert(str, "NOTHING")
end
return table.concat(str)
end

function getEffectiveness(type1, type2)
local str = {}
local efetividades = "NOTHING"
if type1 == "Grass" and type2 and type2 == "Poison" then
efetividades = {weak = {"flying", "fire", "psychic", "ice"}, normal = {"normal", "poison", "ground", "rock", "bug", "ghost", "steel", "dragon", "dark"}, resist = {"fighting", "water", "electric", "fairy"}, vresist = {"grass"}}
elseif type1 == "Fire" and not type2 then
efetividades = {weak = {"ground", "rock", "water"}, normal = {"normal", "fighting", "flying", "poison", "electric", "ghost", "psychic", "dragon", "dark"}, resist = {"bug", "steel", "fire", "greas", "ice", "fairy"}}
elseif type1 == "Fire" and type2 and type2 == "Flying" then
efetividades = {vweak = {"rock"}, weak = {"water", "electric"}, normal = {"normal", "poison", "flying", "psychic", "ice", "ghost", "dragon", "dark"}, resist = {"fighting", "steel", "fire", "fairy"}, vresist = {"bug", "grass"}, imun = {"ground"}}
elseif type1 == "Water" and not type2 then
efetividades = {weak = {"grass", "electric"}, normal = {"normal", "poison", "flying", "psychic", "fighting", "ground", "rock", "bug", "ghost", "dragon", "dark", "fairy"}, resist = {"water", "steel", "fire", "ice"}}
elseif type1 == "Bug" and not type2 then
efetividades = {weak = {"flying", "rock", "fire"}, normal = {"normal", "poison", "bug", "ghost", "steel", "water", "electric", "psychic", "ice", "dragon", "dark", "fairy"}, resist = {"fighting", "ground", "grass"}}
elseif type1 == "Bug" and type2 and type2 == "Flying" then
efetividades = {vweak = {"rock"}, weak = {"flying", "electric", "fire", "ice"}, normal = {"normal", "poison", "ghost", "steel", "water", "psychic", "dragon", "dark", "fairy"}, resist = {"bug"}, vresist = {"fighting",  "grass"}, imun = {"ground"}}
elseif type1 == "Bug" and type2 and type2 == "Flying" then
efetividades = {vweak = {"rock"}, weak = {"flying", "electric", "fire", "ice"}, normal = {"normal", "poison", "ghost", "steel", "water", "psychic", "dragon", "dark", "fairy"}, resist = {"bug"}, vresist = {"fighting",  "grass"}, imun = {"ground"}}
elseif type1 == "Bug" and type2 and type2 == "Poison" then
efetividades = {weak = {"flying", "rock", "fire", "psychic"}, normal = {"normal", "ground", "ghost", "steel", "water", "electric", "ice", "dragon", "dark"}, resist = {"poison", "bug", "fairy"}, vresist = {"fighting",  "grass"}}
elseif type1 == "Normal" and type2 and type2 == "Flying" or type1 == "Flying" and type2 and typ2 == "Normal" then
efetividades = {weak = {"electric", "rock", "ice"}, normal = {"normal", "fighting", "flying", "poison", "fire", "water", "psychic", "dragon", "dark", "fairy"}, resist = {"grass", "bug"}, imun = {"ground",  "ghost"}}
elseif type1 == "Normal" and not type2 then
efetividades = {weak = {"fighting"}, normal = {"normal", "flying", "poison", "ground", "rock", "bug", "steel", "fire", "water", "grass", "electric", "psychic", "ice", "dragon", "dark", "fairy"}, imun = {"ghost"}}
elseif type1 == "Poison" and not type2 then
efetividades = {weak = {"ground", "psychic"}, normal = {"normal", "flying", "rock", "ghost", "steel", "fire", "water", "electric", "ice", "dragon", "dark"}, resist = {"fighting", "poison", "bug", "grass", "fairy"}}
elseif type1 == "Electric" and not type2 then
efetividades = {weak = {"ground"}, normal = {"normal", "fighting", "poison", "rock", "bug", "ghost", "fire", "water", "grass", "psychic", "ice", "dragon", "dark", "fairy"}, resist = {"flying", "steel", "electric"}}
elseif type1 == "Ground" and not type2 then
efetividades = {weak = {"water", "grass", "ice"}, normal = {"normal", "fighting", "flying", "ground", "bug", "ghost", "steel", "fire", "psychic", "dragon", "dark", "fairy"}, resist = {"poison", "rock"}, imun = {"electric"}}
elseif type1 == "Poison" and type2 and type2 == "Ground" then
efetividades = {weak = {"ground", "water", "psychic", "ice"}, normal = {"normal", "flying", "ghost", "steel", "fire", "grass", "dragon", "dark"}, resist = {"fighting", "rock", "bug", "fairy"}, vresist = {"poison"}, imun = {"electric"}}
elseif type1 == "Poison" and type2 and type2 == "Flying" then
efetividades = {weak = {"rock", "electric", "psychic", "ice"}, normal = {"normal", "flying", "ghost", "steel", "fire", "water", "dragon", "dark"}, resist = {"poison", "fairy"}, vresist = {"fighting", "bug", "grass"}, imun = {"ground"}}
elseif type1 == "Bug" and type2 and type2 == "Grass" then
efetividades = {vweak = {"flying", "fire"}, weak = {"poison", "rock", "bug", "ice"}, normal = {"normal", "ghost", "steel", "psychic", "dragon", "dark", "fairy"}, resist = {"fighting", "water", "electric"}, vresist = {"ground", "grass"}}
elseif type1 == "Fighting" and not type2 then
efetividades = {weak = {"flying", "psychic", "fairy"}, normal = {"normal", "fighting", "poison", "ground", "ghost", "steel", "fire", "water", "grass", "electric", "ice", "dragon"}, resist = {"rock", "bug", "dark"}}
elseif type1 == "Water" and type2 and type2 == "Fighting" then
efetividades = {weak = {"flying", "grass", "electric", "psychic", "fairy"}, normal = {"normal", "fighting", "poison", "ground", "ghost", "dragon"}, resist = {"rock", "bug", "steel", "fire", "water", "ice", "dark"}}
elseif type1 == "Psychic" and not type2 then
efetividades = {weak = {"bug", "ghost", "dark"}, normal = {"normal", "flying", "poison", "ground", "rock", "steel", "fire", "water", "grass", "electric", "ice", "dragon", "fairy"}, resist = {"fighting", "psychic"}}
elseif type1 == "Water" and type2 and type2 == "Poison" then
efetividades = {weak = {"ground", "electric", "psychic"}, normal = {"normal", "flying", "rock", "ghost", "grass", "dragon", "dark"}, resist = {"fighting", "poison", "bug", "steel", "fire", "water", "ice", "fairy"}}
elseif type1 == "Rock" and type2 and type2 == "Ground" then
efetividades = {vweak = {"water", "grass"}, weak = {"fighting", "ground", "steel", "ice"}, normal = {"bug", "ghost", "psychic", "dragon", "dark", "fairy"}, resist = {"normal", "flying", "rock", "fire"}, vresist = {"poison"}, imun = {"electric"}}
elseif type1 == "Water" and type2 and type2 == "Psychic" then
efetividades = {weak = {"bug", "ghost", "grass", "electric", "dark"}, normal = {"normal", "flying", "poison", "ground", "rock", "dragon", "fairy"}, resist = {"fighting", "steel", "fire", "water", "psychic", "ice"}}
elseif type1 == "Electric" and type2 and type2 == "Steel" then
efetividades = {vweak = {"ground"}, weak = {"fighting", "fire"}, normal = {"ghost", "water", "dark"}, resist = {"normal", "rock", "bug", "grass", "electric", "psychic", "ice", "dragon", "fairy"}, vresist = {"flying", "steel"}}
elseif type1 == "Water" and type2 and type2 == "Ice" then
efetividades = {weak = {"fighting", "rock", "grass", "electric"}, normal = {"normal", "flying", "poison", "ground", "bug", "ghost", "steel", "fire", "psychic", "dragon", "dark", "fairy"}, resist = {"water"}, vresist = {"ice"}}
elseif type1 == "Ghost" and type2 and type2 == "Poison" then
efetividades = {weak = {"ghost", "psychic", "dark"}, normal = {"flying", "rock", "steel", "fire", "water", "electric", "ice", "dragon"}, resist = {"grass", "fairy"}, vresist = {"poison", "bug"}}
elseif type1 == "Grass" and type2 and type2 == "Psychic" then
efetividades = {vweak = {"bug",}, weak = {"flying", "poison", "ghost", "fire", "ice", "dark"}, normal = {"normal", "rock", "steel", "dragon", "fairy"}, resist = {"fighting", "ground", "water", "grass", "electric", "psychic"}}
elseif type1 == "Grass" and not type2 then
efetividades = {weak = {"flying", "poison", "bug", "fire", "ice"}, normal = {"normal", "fighting", "rock", "ghost", "steel", "psychic", "dragon", "dark", "fairy"}, resist = {"ground", "water", "grass", "electric"}}
elseif type1 == "Ice" and type2 and type2 == "Psychic" then
efetividades = {weak = {"rock", "bug", "ghost", "steel", "fire", "dark"}, normal = {"normal", "fighting", "flying", "poison", "water", "grass", "electric", "dragon", "dark"}, resist = {"psychic", "ice"}}
elseif type1 == "Water" and type2 and type2 == "Flying" then
efetividades = {vweak = {"electric"}, weak = {"rock"}, normal = {"normal", "flying", "poison", "ghost", "grass", "psychic", "ice", "dragon", "dark", "fairy"}, resist = {"fighting", "bug", "steel", "fire", "water"}, imun = {"ground"}}
elseif type1 == "Rock" and type2 and type2 == "Water" or type1 == "Water" and type2 and type2 == "Rock" then
efetividades = {vweak = {"grass"}, weak = {"fighting", "ground", "electric"}, normal = {"rock", "bug", "ghost", "steel", "water", "psychic", "dragon", "dark", "fairy"}, resist = {"normal", "flying", "poison", "ice"}, vresist = {"fire"}}
elseif type1 == "Rock" and type2 and type2 == "Flying" or type1 == "Flying" and type2 and type2 == "Rock" then
efetividades = {weak = {"rock", "steel", "water", "electric", "ice"}, normal = {"fighting", "ghost", "grass", "psychic", "dragon", "dark", "fairy"}, resist = {"normal", "flying", "poison", "bug", "fire"}, imun = {"ground"}}
elseif type1 == "Ice" and type2 and type2 == "Flying" or type1 == "Flying" and type2 and type2 == "Ice" then
efetividades = {vweak = {"rock"}, weak = {"steel", "fire", "electric"}, normal = {"normal", "fighting", "flying", "poison", "ghost", "water", "psychic", "ice", "dragon", "dark", "fairy"}, resist = {"bug", "grass"}, imun = {"ground"}}
elseif type1 == "Electric" and type2 and type2 == "Flying" or type1 == "Flying" and type2 and type2 == "Electric" then
efetividades = {weak = {"rock", "ice"}, normal = {"normal", "poison", "ghost", "fire", "water", "electric", "psychic", "dragon", "dark", "fairy"}, resist = {"fighting", "flying", "bug", "steel", "grass"}, imun = {"ground"}}
elseif type1 == "Dragon" and not type2 then
efetividades = {weak = {"ice", "dragon", "fairy"}, normal = {"normal", "fighting", "flying", "poison", "ground", "rock", "bug", "ghost", "steel", "psychic", "dark"}, resist = {"fire", "water", "grass", "electric"}}
elseif type1 == "Dragon" and type2 and type2 == "Flying" or type1 == "Flying" and type2 and type2 == "Dragon" then
efetividades = {vweak = {"ice"}, weak = {"rock", "dragon", "fairy"}, normal = {"normal", "flying", "poison", "ghost", "steel", "electric", "psychic", "dark"}, resist = {"fighting", "bug", "fire", "water"}, vresist = {"grass"}, imun = {"ground"}}
end
if efetividades.vweak then
      table.insert(str, "Super Effective:\n")
for c = 1, #efetividades.vweak do
      table.insert(str, ""..(c == 1 and ""..doCorrectString(efetividades.vweak[c]).."" or c < #efetividades.vweak and ", "..doCorrectString(efetividades.vweak[c]).."" or " and "..doCorrectString(efetividades.vweak[c]).."").."")
end
      table.insert(str, ".")
end
if efetividades.weak then
if table.concat(str) == "" then
      table.insert(str, "Effective:\n")
else
      table.insert(str, "\n\nEffective:\n")
end
for d = 1, #efetividades.weak do
      table.insert(str, ""..(d == 1 and ""..doCorrectString(efetividades.weak[d]).."" or d < #efetividades.weak and ", "..doCorrectString(efetividades.weak[d]).."" or " and "..doCorrectString(efetividades.weak[d]).."").."")
end
      table.insert(str, ".")
end
if efetividades.normal then
      table.insert(str, "\n\nNormal:\n")
for e = 1, #efetividades.normal do
      table.insert(str, ""..(e == 1 and ""..doCorrectString(efetividades.normal[e]).."" or e < #efetividades.normal and ", "..doCorrectString(efetividades.normal[e]).."" or " and "..doCorrectString(efetividades.normal[e]).."").."")
end
      table.insert(str, ".")
end
if efetividades.resist then
      table.insert(str, "\n\nIneffective:\n")
for f = 1, #efetividades.resist do
      table.insert(str, ""..(f == 1 and ""..doCorrectString(efetividades.resist[f]).."" or f < #efetividades.resist and ", "..doCorrectString(efetividades.resist[f]).."" or " and "..doCorrectString(efetividades.resist[f]).."").."")
end
      table.insert(str, ".")
end
if efetividades.vresist then
      table.insert(str, "\n\nVery Ineffective:\n")
for g = 1, #efetividades.vresist do
      table.insert(str, ""..(g == 1 and ""..doCorrectString(efetividades.vresist[g]).."" or g < #efetividades.vresist and ", "..doCorrectString(efetividades.vresist[g]).."" or " and "..doCorrectString(efetividades.vresist[g]).."").."")
end
      table.insert(str, ".")
end
if efetividades.imun then
      table.insert(str, "\n\nImmune:\n")
for h = 1, #efetividades.imun do
      table.insert(str, ""..(h == 1 and ""..doCorrectString(efetividades.imun[h]).."" or h < #efetividades.imun and ", "..doCorrectString(efetividades.imun[h]).."" or " and "..doCorrectString(efetividades.imun[h]).."").."")
end
      table.insert(str, ".")
end
return table.concat(str)
end


function doCreatePokedex(protocol, opcode, buffer)
  if pokedexWindow then return end
  show()
  g_keyboard.bindKeyPress('Down', function() pokedexListPanel:focusNextChild(KeyboardFocusReason) end, pokedexWindow)
  g_keyboard.bindKeyPress('Up', function() pokedexListPanel:focusPreviousChild(KeyboardFocusReason) end, pokedexWindow)
  for pokeId = 1, 151 do
    pokemon = g_ui.createWidget('PokedexListLabel', pokedexListPanel)
    pokemon.pokeId = pokeId
    pokemon.pokeName = string.explode(string.explode(string.explode(buffer, ';')[pokeId], ' - ')[3], '|')[1]
    pokemon.pokeCatch = toboolean(string.explode(string.explode(buffer, ';')[pokeId], '|')[2])
    pokemon.pokeLevel = string.explode(string.explode(buffer, ';')[pokeId], '|')[3]
    pokemon.pokeDesc = pokesDescription[lowerpoke[pokeId]][1]
    pokemon.pokeAttack = (string.explode(string.explode(thestats, ';')[pokeId], '|')[1]*10)
    pokemon.pokeDefense = (string.explode(string.explode(thestats, ';')[pokeId], '|')[2]*10)
    pokemon.pokeSpAttack = (string.explode(string.explode(thestats, ';')[pokeId], '|')[3]*10)
    pokemon.pokeVitality = (string.explode(string.explode(thestats, ';')[pokeId], '|')[4]*10)
    pokemon.pokeType1 = string.find(string.explode(string.explode(thetypes, ';')[pokeId], '|')[1], '/') and string.explode(string.explode(string.explode(thetypes, ';')[pokeId], '|')[1], '/')[1] or string.explode(string.explode(thetypes, ';')[pokeId], '|')[1]
    pokemon.pokeType2 = string.find(string.explode(string.explode(thetypes, ';')[pokeId], '|')[1], '/') and string.explode(string.explode(string.explode(thetypes, ';')[pokeId], '|')[1], '/')[2] or nil
	pokemon.evolvest = (string.explode(string.explode(evoboost, ';')[pokeId], '|')[1])
	pokemon.boostst = (string.explode(string.explode(evoboost, ';')[pokeId], '|')[2])
    pokemon:setText(string.explode(string.explode(buffer, ';')[pokeId], '|')[1])
    pokemon.onFocusChange = function()
      local focused = pokedexListPanel:getFocusedChild()
      if focused.pokeName == '??????' then
        removeEvent(event)
        doChangePokedexInfo()
      else
        removeEvent(event)
        event = scheduleEvent(function() doChangePokedexInfo(focused.pokeName, focused.pokeId, focused.pokeLevel, focused.pokeDesc, focused.pokeAttack, focused.pokeDefense, focused.pokeSpAttack, focused.pokeVitality, focused.pokeType1, focused.pokeType2, focused.evolvest, focused.boostst) end, 100)
      end
    end
    if pokemon.pokeCatch and pokemon.pokeName ~= '??????' then
      pokemon:setIconColor('white')
    end
  end
end

function onUsePokedex(protocol, opcode, buffer)
  if g_game.getLocalPlayer():getName() == buffer then
    if pokedexListPanel:getChildByIndex(1).pokeName == '??????' then
      doChangePokedexInfo()
    else
      doChangePokedexInfo('Bulbasaur', 1, 20, 'A strange seed was planted on its back at birth. The plant sprouts and grows with this pokemon.', 30, 30, 65, 50, 'grass', 'poison', "Leaf Stone", "10")
    end
  else
    local pokeId = tonumber(string.explode(buffer, '|')[1])
    local pokeName = string.explode(buffer, '|')[2]
    local pokeLevel = string.explode(buffer, '|')[3]
    local pokeCatch = toboolean(string.explode(buffer, '|')[4])
    local pokeDesc = pokesDescription[lowerpoke[pokeId]][1]
    local pokeAttack = (string.explode(string.explode(thestats, ';')[pokeId], '|')[1]*10)
    local pokeDefense = (string.explode(string.explode(thestats, ';')[pokeId], '|')[2]*10)
    local pokeSpAttack = (string.explode(string.explode(thestats, ';')[pokeId], '|')[3]*10)
    local pokeVitality = (string.explode(string.explode(thestats, ';')[pokeId], '|')[4]*10)
    local pokeType1 = string.find(string.explode(string.explode(thetypes, ';')[pokeId], '|')[1], '/') and string.explode(string.explode(string.explode(thetypes, ';')[pokeId], '|')[1], '/')[1] or string.explode(string.explode(thetypes, ';')[pokeId], '|')[1]
    local pokeType2 = string.find(string.explode(string.explode(thetypes, ';')[pokeId], '|')[1], '/') and string.explode(string.explode(string.explode(thetypes, ';')[pokeId], '|')[1], '/')[2] or nil
	local evolvest = (string.explode(string.explode(evoboost, ';')[pokeId], '|')[1])
	local boostst = (string.explode(string.explode(evoboost, ';')[pokeId], '|')[2])
    if string.find(pokedexListPanel:getChildByIndex(pokeId).pokeName, '??????') then
      pokedexListPanel:getChildByIndex(pokeId):setText(((pokeId > 9 and pokeId < 100) and "#0" or (pokeId < 10) and "#00" or "#")..pokeId.." - "..pokeName)
      pokedexListPanel:getChildByIndex(pokeId).pokeId = pokeId
      pokedexListPanel:getChildByIndex(pokeId).pokeName = pokeName
      pokedexListPanel:getChildByIndex(pokeId).pokeLevel = pokeLevel
      pokedexListPanel:getChildByIndex(pokeId).pokeCatch = pokeCatch
      pokedexListPanel:getChildByIndex(pokeId).pokeDesc = pokeDesc
      pokedexListPanel:getChildByIndex(pokeId).pokeAttack = pokeAttack
      pokedexListPanel:getChildByIndex(pokeId).pokeDefense = pokeDefense
      pokedexListPanel:getChildByIndex(pokeId).pokeSpAttack = pokeSpAttack
      pokedexListPanel:getChildByIndex(pokeId).pokeVitality = pokeVitality
      pokedexListPanel:getChildByIndex(pokeId).pokeType1 = pokeType1
      pokedexListPanel:getChildByIndex(pokeId).pokeType2 = pokeType2
      pokedexListPanel:getChildByIndex(pokeId).evolvest = evolvest
      pokedexListPanel:getChildByIndex(pokeId).boostst = boostst
      if pokedexListPanel:getChildByIndex(pokeId).pokeCatch then
        pokedexListPanel:getChildByIndex(pokeId):setIconColor('white')
      end
    end
    doChangePokedexInfo(pokeName, pokeId, pokeLevel, pokeDesc, pokeAttack, pokeDefense, pokeSpAttack, pokeVitality, pokeType1, pokeType2, evolvest, boostst)
  end
end

function doChangePokedexInfo(name, id, level, description, attack, defense, spattack, vitality, type1, type2, evolvest, boostst)
  local name = name or 'none'
  if id == 29 then
  name = "Nidoran Female"
  elseif id == 32 then
  name = "Nidoran Male"
  elseif id == 122 then
  name = "Mr. Mime"
  end
  local id = id or pokedexListPanel:getFocusedChild() and pokedexListPanel:getFocusedChild().pokeId or 1
  if name == 'none' then
    infoPanel:setVisible(false)
    statsPanel:setVisible(false)
    pokemonType1:setImageColor('alpha')
    pokemonType1:removeTooltip()
    pokemonType2:setImageColor('alpha')
    pokemonType2:removeTooltip()
    pokedexListPanel:getChildByIndex(id):focus()
  else
    infoPanel:setVisible(true)
    statsPanel:setVisible(true)
    pokemonType1:setImageColor('white')
    pokemonType1:setImageSource('/images/game/pokedex/elements/' .. type1)
    pokemonType1:setTooltip(doCorrectString(type1))
    if type2 and type2 ~= nil and type2 ~= "No Type" and type2 ~= "no type" then
      pokemonType2:setImageColor('white')
      pokemonType2:setImageSource('/images/game/pokedex/elements/' .. type2)
      pokemonType2:setTooltip(doCorrectString(type2))
	  haveType2 = true
    else
      pokemonType2:setImageColor('alpha')
      pokemonType2:removeTooltip()
	  haveType2 = false
    end
	--evolvest = "It doesn't evolve."
    local str = {}
    table.insert(str, 'Name: ' .. name)
    table.insert(str, '\nLevel: ' .. level)
	if haveType2 and tonumber(boostst) > 0 and typetostone[doCorrectString(type1)] and typetostone[doCorrectString(type2)] then
    table.insert(str, '\n\nBoost: ' .. typetostone[doCorrectString(type1)] .. '(' .. tonumber(boostst) .. ') or ' .. typetostone[doCorrectString(type2)] .. '(' .. tonumber(boostst) .. ')')
	elseif tonumber(boostst) > 0 and typetostone[doCorrectString(type1)] then
    table.insert(str, '\n\nBoost: ' .. typetostone[doCorrectString(type1)] .. '(' .. tonumber(boostst) .. ')')
	end
	if evolvest and evolvest ~= "x" then
    table.insert(str, '\nEvolve Stone: ' .. evolvest)
	end
	if getEvos(id) ~= "NOTHING" then
    table.insert(str, '\n\nEvolutions:')
	evos = string.explode(getEvos(id), ';')
	evoname1 = string.explode(evos[1], ',')[1]
	evolevel1 = string.explode(evos[1], ',')[2]
    table.insert(str, '\n' .. evoname1 .. ', requires Level ' .. evolevel1 .. '.')
	
	evoname2 = string.explode(evos[2], ',')[1]
	evolevel2 = string.explode(evos[2], ',')[2]
    table.insert(str, '\n' .. evoname2 .. ', requires Level ' .. evolevel2 .. '.')
	if #evos >= 3 then
	evoname3 = string.explode(evos[3], ',')[1]
	evolevel3 = string.explode(evos[3], ',')[2]
    table.insert(str, '\n' .. evoname3 .. ', requires Level ' .. evolevel3 .. '.')
	
	if #evos == 4 then
	evoname4 = string.explode(evos[4], ',')[1]
	evolevel4 = string.explode(evos[4], ',')[2]
    table.insert(str, '\n' .. evoname4 .. ', requires Level ' .. evolevel4 .. '.')
	
	end
	end
	
	end
    table.insert(str, '\n\nDescription: ' .. description)
    table.insert(str, '\n\n\nFor more informations type:\n/dex ' .. lowerpoke[id])
    pokemonInfo:setText(table.concat(str))
	if haveType2 then
	pokemonEffectiveness:setText(getEffectiveness(doCorrectString(type1), doCorrectString(type2)))
	else
	pokemonEffectiveness:setText(getEffectiveness(doCorrectString(type1)))
	end
    pokemonStatsAttack:setValue(attack, 0, 255)
   -- pokemonStatsAttack:setTooltip(attack)
    pokemonStatsAttack:setText(attack)
    pokemonStatsDefense:setValue(defense, 0, 255)
   -- pokemonStatsDefense:setTooltip(defense)
    pokemonStatsDefense:setText(defense)
    pokemonStatsSpAttack:setValue(spattack, 0, 255)
   -- pokemonStatsSpAttack:setTooltip(spattack)
    pokemonStatsSpAttack:setText(spattack)
    pokemonStatsVitality:setValue(vitality, 0, 255)
   -- pokemonStatsVitality:setTooltip(vitality)
    pokemonStatsVitality:setText(vitality)
    pokedexListPanel:getChildByIndex(id):focus()
  end
  pokemonImage:setImageSource('/images/game/pokedex/' .. name)
end
