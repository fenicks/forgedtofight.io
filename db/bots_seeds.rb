# frozen_string_literal: true

Bot.unscoped.delete_all
[
  {
    name: 'Arcee',
    description: 'She may be slight of frame, but she\'s stout on loyalty and devotion to protecting her fellow Autobots and their human allies...',
    icon_url: '/assets/bots/arcee.jpeg',
    image_url: '/assets/bots/arcee_600x860.jpeg',
    type: :warrior,
    faction: :autobots,
    health: { stars_1: nil, stars_2: 1557, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 173, stars_3: nil, stars_4: nil },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    max_rating_sig100: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Barricade',
    description: 'This Decepticons puts his own spin on good cop, bad cop...',
    icon_url: '/assets/bots/barricade.jpeg',
    image_url: '/assets/bots/barricade_600x860.jpeg',
    type: :scout,
    faction: :decepticons,
    health: { stars_1: nil, stars_2: 1505, stars_3: 3804, stars_4: nil },
    attack: { stars_1: nil, stars_2: 176, stars_3: 384, stars_4: nil },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    max_rating_sig100: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Bludgeon',
    description: 'A master of the Cybertronian martial art Metallikato...',
    icon_url: '/assets/bots/bludgeon.jpeg',
    image_url: '/assets/bots/bludgeon_600x860.jpeg',
    type: :warrior,
    faction: :decepticons,
    health: { stars_1: nil, stars_2: nil, stars_3: 4339, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: 341, stars_4: nil },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    max_rating_sig100: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Bonecrusher',
    description: 'A noted speed skater and general purveyor of hate, Bonecrusher oozes with disdain for everything and everyone, including himself...',
    icon_url: '/assets/bots/bonecrusher.jpeg',
    image_url: '/assets/bots/bonecrusher_600x860.jpeg',
    type: :warrior,
    faction: :decepticons,
    health: { stars_1: 970, stars_2: 1767, stars_3: 4496, stars_4: nil },
    attack: { stars_1: 93, stars_2: 155, stars_3: 343, stars_4: nil },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    max_rating_sig100: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Bumblebee',
    description: 'Long known as Optimus Prime\'s faithful scout...',
    icon_url: '/assets/bots/bumblebee.jpeg',
    image_url: '/assets/bots/bumblebee_600x860.jpeg',
    type: :tactician,
    faction: :autobots,
    health: { stars_1: nil, stars_2: 1819, stars_3: 4601, stars_4: nil },
    attack: { stars_1: nil, stars_2: 150, stars_3: 328, stars_4: nil },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    max_rating_sig100: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Dinobot',
    description: 'Honor and Glory are the only two things worth dying for, a belief truly befitting this fierce Predacon turned Maximal warrior....',
    icon_url: '/assets/bots/dinobot.jpeg',
    image_url: '/assets/bots/dinobot_600x860.jpeg',
    type: :tactician,
    faction: :autobots,
    health: { stars_1: nil, stars_2: 1732, stars_3: 4253, stars_4: 11_053 },
    attack: { stars_1: nil, stars_2: 158, stars_3: 334, stars_4: 868 },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    max_rating_sig100: { stars_1: nil, stars_2: 579, stars_3: 1344, stars_4: 3528 }
  },
  {
    name: 'Drift',
    description: 'Though some may question Drift\'s loyalty to the Autobots, there\'s no denying his dedication to his "sensei" Optimus Prime...',
    icon_url: '/assets/bots/drift.jpeg',
    image_url: '/assets/bots/drift_600x860.jpeg',
    type: :warrior,
    faction: :autobots,
    health: { stars_1: nil, stars_2: 1732, stars_3: 4253, stars_4: 11_053 },
    attack: { stars_1: nil, stars_2: 152, stars_3: 325, stars_4: 843 },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: 2845 },
    max_rating_sig100: { stars_1: nil, stars_2: 546, stars_3: 1307, stars_4: 3476 }
  },
  {
    name: 'Galvatron',
    description: 'Mortally wounded in the attack on Autobot City, Megatron was discovered by Unicron adrift in the vacuum of space. The Decepticon leader accepted the Chaos Bringer’s bargain and was reborn as Galvatron.',
    icon_url: '/assets/bots/galvatron.jpeg',
    image_url: '/assets/bots/galvatron_600x860.jpeg',
    type: :demolitions,
    faction: :decepticons,
    health: { stars_1: nil, stars_2: 1748, stars_3: 4291, stars_4: 11_153 },
    attack: { stars_1: nil, stars_2: 165, stars_3: 347, stars_4: 901 },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    max_rating_sig100: { stars_1: nil, stars_2: 590, stars_3: 1352, stars_4: 3549 }
  },
  {
    name: 'Grimlock',
    description: 'Widely regarded as one of the most skilled military tacticians, perhaps with an ego the size of Cybertron, Grimlock is the self-proclaimed "King" of the Dinobots.',
    icon_url: '/assets/bots/grimlock.jpeg',
    image_url: '/assets/bots/grimlock_600x860.jpeg',
    type: :brawler,
    faction: :autobots,
    health: { stars_1: nil, stars_2: 2204, stars_3: 5412, stars_4: 14_067 },
    attack: { stars_1: nil, stars_2: 162, stars_3: 344, stars_4: 893 },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: 2979 },
    max_rating_sig100: { stars_1: nil, stars_2: 536, stars_3: 1308, stars_4: 3612 }
  },
  {
    name: 'Grindor',
    description: 'Although he\'s a brawling, close-combat specialist, Grindor lets his missiles do the talking in his helicopter alt mode...',
    icon_url: '/assets/bots/grindor.jpeg',
    image_url: '/assets/bots/grindor_600x860.jpeg',
    type: :brawler,
    faction: :decepticons,
    health: { stars_1: nil, stars_2: 1959, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 171, stars_3: nil, stars_4: nil },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    max_rating_sig100: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Hot Rod',
    description: 'Long undercover on Earth with his brother in arms, Bumblebee, Hot Rod is a powerful and agile warrior with a unique Time Bubble Cannon that definitely packs a punch....',
    icon_url: '/assets/bots/hot-rod.jpeg',
    image_url: '/assets/bots/hot-rod_600x860.jpeg',
    type: :warrior,
    faction: :autobots,
    health: { stars_1: nil, stars_2: 1697, stars_3: 4167, stars_4: 10_829 },
    attack: { stars_1: nil, stars_2: 158, stars_3: 337, stars_4: 876 },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: 2857 },
    max_rating_sig100: { stars_1: nil, stars_2: 552, stars_3: 1313, stars_4: 3476 }
  },
  {
    name: 'Ironhide',
    description: 'He may not like Earth rodents leaking lubricant on him, but he does have a fondness for blasters, more blasters, and heavy weaponry...',
    icon_url: '/assets/bots/ironhide.jpeg',
    image_url: '/assets/bots/ironhide_600x860.jpeg',
    type: :demolitions,
    faction: :autobots,
    health: { stars_1: 1009, stars_2: 1837, stars_3: 4581, stars_4: nil },
    attack: { stars_1: 89, stars_2: 147, stars_3: 314, stars_4: nil },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    max_rating_sig100: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Megatron',
    description: 'All Hail Megatron! That pretty much sums up the Decepticon leader\'s ambition, and his minions\'fear-induced feelings...',
    icon_url: '/assets/bots/megatron-demolitions.jpeg',
    image_url: '/assets/bots/megatron-demolitions_600x860.jpeg',
    type: :demolitions,
    faction: :decepticons,
    health: { stars_1: nil, stars_2: 1924, stars_3: 4725, stars_4: 12_281 },
    attack: { stars_1: nil, stars_2: 146, stars_3: 306, stars_4: 794 },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: 2935 },
    max_rating_sig100: { stars_1: nil, stars_2: 555, stars_3: 1312, stars_4: 3543 }
  },
  {
    name: 'Megatron',
    description: 'Once a renowned gladiator in pre-Civil-War Cybertron, Megatron used his charisma and brutality to fuel the Decepticon uprising...',
    icon_url: '/assets/bots/megatron-tactician.jpeg',
    image_url: '/assets/bots/megatron-tactician_600x860.jpeg',
    type: :tactician,
    faction: :decepticons,
    health: { stars_1: nil, stars_2: 1732, stars_3: 4253, stars_4: 11_053 },
    attack: { stars_1: nil, stars_2: 158, stars_3: 334, stars_4: 868 },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    max_rating_sig100: { stars_1: nil, stars_2: 537, stars_3: 1270, stars_4: 3485 }
  },
  {
    name: 'Mirage',
    description: 'Now you see him, now you don\'t. Mirage is one high-class Autobot with some slick espionage skills...',
    icon_url: '/assets/bots/mirage.jpeg',
    image_url: '/assets/bots/mirage_600x860.jpeg',
    type: :tech,
    faction: :autobots,
    health: { stars_1: nil, stars_2: 1592, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 141, stars_3: nil, stars_4: nil },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    max_rating_sig100: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Mixmaster',
    description: 'Aptly named for both his cement mixer alt form and his advanced skills in concocting chemical weapons for the Decepticons, Mixmaster has been linked to being a part of the mighty Devastator...',
    icon_url: '/assets/bots/mixmaster.jpeg',
    image_url: '/assets/bots/mixmaster_600x860.jpeg',
    type: :demolitions,
    faction: :decepticons,
    health: { stars_1: nil, stars_2: 1837, stars_3: 4510, stars_4: 8966 },
    attack: { stars_1: nil, stars_2: 114, stars_3: 245, stars_4: 487 },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    max_rating_sig100: { stars_1: nil, stars_2: 522, stars_3: 1273, stars_4: 2606 }
  },
  {
    name: 'Motormaster',
    description: 'The self-proclaimed "True King of the Road" and leader of the Stunticons is huge, savage, and merciless...',
    icon_url: '/assets/bots/motormaster.jpeg',
    image_url: '/assets/bots/motormaster_600x860.jpeg',
    type: :brawler,
    faction: :decepticons,
    health: { stars_1: 1076, stars_2: 1959, stars_3: 4811, stars_4: nil },
    attack: { stars_1: 103, stars_2: 171, stars_3: 363, stars_4: nil },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    max_rating_sig100: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Optiminus Prime',
    description: 'From his humble beginnings as Orion Pax to his indusputable role as the greatest Autobot leader ever, Optimus Prime is the embodiment of heroic valor and rightousness...',
    icon_url: '/assets/bots/optimus-prime.jpeg',
    image_url: '/assets/bots/optimus-prime_600x860.jpeg',
    type: :tactician,
    faction: :autobots,
    health: { stars_1: 1066, stars_2: 1819, stars_3: 4742, stars_4: nil },
    attack: { stars_1: 97, stars_2: 150, stars_3: 338, stars_4: nil },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    max_rating_sig100: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Optiminus Prime MV1',
    description: 'He is the Cybertronian definition of altuism, sacrifice and leadership...',
    icon_url: '/assets/bots/optimus-prime-mv1.jpeg',
    image_url: '/assets/bots/optimus-prime-mv1_600x860.jpeg',
    type: :brawler,
    faction: :autobots,
    health: { stars_1: nil, stars_2: 1714, stars_3: 5002, stars_4: nil },
    attack: { stars_1: nil, stars_2: 152, stars_3: 378, stars_4: nil },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    max_rating_sig100: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Prowl',
    description: 'He may look like your friendly neighborhood cop on patrol, but check under the hood and he’s 100% military-trained police on a mission to serve and protect...',
    icon_url: '/assets/bots/prowl.jpeg',
    image_url: '/assets/bots/prowl_600x860.jpeg',
    type: :scout,
    faction: :autobots,
    health: { stars_1: nil, stars_2: 1714, stars_3: 4210, stars_4: 10_941 },
    attack: { stars_1: nil, stars_2: 152, stars_3: 322, stars_4: 835 },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    max_rating_sig100: { stars_1: nil, stars_2: 557, stars_3: 1308, stars_4: 3488 }
  },
  {
    name: 'Ramjet',
    description: 'One of Starscream’s most unpredictable Seekers, Ramjet takes hardheadedness to new extremes by smashing into any foes, and sometimes friends, that cross his flight path.',
    icon_url: '/assets/bots/ramjet.jpeg',
    image_url: '/assets/bots/ramjet_600x860.jpeg',
    type: :demolitions,
    faction: :autobots,
    health: { stars_1: nil, stars_2: 1854, stars_3: 4553, stars_4: 11_834 },
    attack: { stars_1: nil, stars_2: 147, stars_3: 309, stars_4: 802 },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    max_rating_sig100: { stars_1: nil, stars_2: 554, stars_3: 1300, stars_4: 3436 }
  },
  {
    name: 'Ratchet',
    description: 'The Autobots veteran Chief Medical Officer has patched up his fair share of Bots over the years...',
    icon_url: '/assets/bots/ratchet.jpeg',
    image_url: '/assets/bots/ratchet_600x860.jpeg',
    type: :tech,
    faction: :autobots,
    health: { stars_1: nil, stars_2: 1592, stars_3: 3971, stars_4: nil },
    attack: { stars_1: nil, stars_2: 137, stars_3: 269, stars_4: nil },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    max_rating_sig100: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Rhinox',
    description: 'Hard-nosed and big brained, Rhinox is a Bot with a resounding passion for life...',
    icon_url: '/assets/bots/rhinox.jpeg',
    image_url: '/assets/bots/rhinox_600x860.jpeg',
    type: :tech,
    faction: :maximals,
    health: { stars_1: 951, stars_2: 1732, stars_3: nil, stars_4: nil },
    attack: { stars_1: 81, stars_2: 135, stars_3: nil, stars_4: nil },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    max_rating_sig100: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Shockwave',
    description: 'Truly one of the most feared and powerful of all Decepticons, Shockwave\'s existence is driven solely by one thing: logic...',
    icon_url: '/assets/bots/shockwave.jpeg',
    image_url: '/assets/bots/shockwave_600x860.jpeg',
    type: :tech,
    faction: :decepticons,
    health: { stars_1: nil, stars_2: 1767, stars_3: 4339, stars_4: 11_276 },
    attack: { stars_1: nil, stars_2: 129, stars_3: 271, stars_4: 703 },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: 2930 },
    max_rating_sig100: { stars_1: nil, stars_2: 557, stars_3: 1317, stars_4: 3547 }
  },
  {
    name: 'Sideswipe',
    description: 'Forged with the spark of a fighter and a cerebral circuits of a jock, Sideswipe is always down for a fight...',
    icon_url: '/assets/bots/sideswipe.jpeg',
    image_url: '/assets/bots/sideswipe_600x860.jpeg',
    type: :scout,
    faction: :autobots,
    health: { stars_1: 826, stars_2: 1505, stars_3: 3870, stars_4: nil },
    attack: { stars_1: 106, stars_2: 176, stars_3: 390, stars_4: nil },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    max_rating_sig100: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Soundwave',
    description: 'Who is superior? Soundwave and his trusty minions Laserbeak and Ravage, that\'s who!...',
    icon_url: '/assets/bots/soundwave.jpeg',
    image_url: '/assets/bots/soundwave_600x860.jpeg',
    type: :tech,
    faction: :decepticons,
    health: { stars_1: nil, stars_2: 1802, stars_3: 4425, stars_4: 11_499 },
    attack: { stars_1: nil, stars_2: 141, stars_3: 296, stars_4: 769 },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: 2928 },
    max_rating_sig100: { stars_1: nil, stars_2: 548, stars_3: 1299, stars_4: 3502 }
  },
  {
    name: 'Starscream',
    description: 'Starscream is the treacherous Decepticon Air Commander and the deadliest of the Seekers...',
    icon_url: '/assets/bots/starscream.jpeg',
    image_url: '/assets/bots/starscream_600x860.jpeg',
    type: :tactician,
    faction: :decepticons,
    health: { stars_1: nil, stars_2: 1575, stars_3: 3866, stars_4: 10_048 },
    attack: { stars_1: nil, stars_2: 132, stars_3: 280, stars_4: 727 },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    max_rating_sig100: { stars_1: nil, stars_2: 550, stars_3: 1312, stars_4: 3524 }
  },
  {
    name: 'Ultra Magnus',
    description: 'Galvatron\'s avowed enemy, Ultra Magnus epitomizes what it means to be a loyal soldier...',
    icon_url: '/assets/bots/ultra-magnus.jpeg',
    image_url: '/assets/bots/ultra-magnus_600x860.jpeg',
    type: :tactician,
    faction: :autobots,
    health: { stars_1: nil, stars_2: 1819, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 150, stars_3: nil, stars_4: nil },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    max_rating_sig100: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Waspinator',
    description: 'Despite his loyalty to the Predacon cause, the stalwart Waspinator never gets the respect he deserves from both his team mates or the universe...',
    icon_url: '/assets/bots/waspinator.jpeg',
    image_url: '/assets/bots/waspinator_600x860.jpeg',
    type: :demolitions,
    faction: :predacons,
    health: { stars_1: nil, stars_2: 1662, stars_3: 4081, stars_4: 10_606 },
    attack: { stars_1: nil, stars_2: 144, stars_3: 302, stars_4: 785 },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: 2846 },
    max_rating_sig100: { stars_1: nil, stars_2: 571, stars_3: 1326, stars_4: 3524 }
  },
  {
    name: 'Windblade',
    description: 'Hailing from the planet Caminus, this agile Scout is as adept with her swords as she is at "Cityspeaking" with gigantic Titans...',
    icon_url: '/assets/bots/windblade.jpeg',
    image_url: '/assets/bots/windblade_600x860.jpeg',
    type: :scout,
    faction: :autobots,
    health: { stars_1: nil, stars_2: 1505, stars_3: 3694, stars_4: nil },
    attack: { stars_1: nil, stars_2: 169, stars_3: 356, stars_4: nil },
    max_rating_sig0: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    max_rating_sig100: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  }
].each do |bot|
  Bot.upsert! bot
end
