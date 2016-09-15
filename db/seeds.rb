# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	ce = Expansion.find_or_create_by(:name => 'Cosmic Encounter', :published => 2008,
		:contents =>
		'50 alien races.')
	ci = Expansion.find_or_create_by(:name => 'Cosmic Incursion', :published => 2010,
		:contents =>
		'20 alien races.
		Orange playing pieces for an extra player.
		A 32 card reward deck which adds extra incentives to defend.')

	cc = Expansion.find_or_create_by(:name => 'Cosmic Conflict', :published => 2011,
		:contents =>
		'20 alien races.
		Black playing pieces for an extra player.
		A hazard deck which contains random occurrences for some encounters.')

	ca = Expansion.find_or_create_by(:name => 'Cosmic Alliance', :published => 2012,
		:contents =>
		'20 alien races.
		White playing pieces for an extra player.
		Team cosmic encounter rules variant.
		Extra cards for use in games with large player counts.')

	cs = Expansion.find_or_create_by(:name => 'Cosmic Storm', :published => 2013,
		:contents =>
		'25 alien races.
		10 space stations that attach to planets and grant additional powers.')

	cd = Expansion.find_or_create_by(:name => 'Cosmic Dominion', :published => 2014,
		:contents =>
		'30 alien races.
		Special ship markers for use with some variants.
		A hazard token for keeping track of whether a hazard has occurred.
		A 32 card reward deck which adds extra incentives to defend.')

	ace = Alien.find_or_create_by(
		:name => 'Ace',
		:tagline => 'Wins With One Colony',

		:effect =>
		'You have the power to Triumph. At the start of your turn, if you have any foreign colonies,
		use this power to win the game. You may still win the game via the normal method.

		Other players may have an encounter at one of your foreign colonies whenever the destiny card
		drawn allows them to target either your home system or the system that hosts that foreign
		colony.',

		:flavour =>
		'Fearless freedom fighters for a forbidden force, the legendary Aces terrify lesser warriors.
		Judged not by their size, but by their peerless physical prowess, each athletic Ace was desperately
		hunted to presumed extinction. Now, using mystic mind tricks to disguise themselves, these majestic
		masters of the martial arts seek to fortify one rebel base, and then conquer the Cosmos.',

		:colour => 2,
		:startturn => true,
		:mandatory => true,
		:offense => true,
		:expansion => cd
		)

	alchemist = Alien.find_or_create_by(
		:name => 'Alchemist',
		:tagline => 'Converts Cards By Type',

		:effect =>
		'You have the power of Transmutation. Once per encounter, you may use this power to send one of your ships
		to the warp. Then, discard one card from your hand and take a card of the same type (attack, negotiate,
		artifact, etc.) from any discard pile. You may transmute an attack card only if the two cards\' values
		are within 4 of each other (such as an attack 08 and an attack 12).',

		:flavour =>
		'In a dark age, the Alchemists spun others\' trash into treasure – for a substantial fee. Few knew it was
		all a scam, a generational confidence game of black-market purchases and using one race\'s abandoned input
		as another\'s miraculous output. Then, in an even darker age, as their intergalactic fraud seemed on the
		verge of exposure, the Alchemists discovered that harvesting and manipulating their own species\' cerebella
		could provide the "magic" to make transmutation a reality. Thus was their operation finally legitimized,
		at a terrible cost.',

		:colour => 1,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:expansion => cd
		)

	amoeba = Alien.find_or_create_by(
		:name => 'Amoeba',
		:tagline => 'Unlimited Ship Movement',

		:effect =>
		'You have the power to Ooze. As a main player, after encounter cards are selected but before they are revealed,
		if you have at least one ship in the encounter, you may use this power to increase or decrease the number of
		ships you have in the encounter. You may remove some or all of your ships to your colonies, or you may add
		as many ships as you want (even exceeding the normal maximum of four) from any of your colonies.',

		:flavour => 'Spawned on a totally liquid world, Amoebas are highly conscious of vibrations. Quick to withdraw
		from danger, they are equally able to ooze menacingly into combat when confronted with the proper turbulences.
		Amoebas pity those who are less able to respond to circumstance and will be sensitive Cosmic masters.',

		:colour => 1,
		:planning => true,
		:offense => true, :defense => true,
		:expansion => ce)

	angler = Alien.find_or_create_by(
		:name => 'Angler',
		:tagline => 'Fishes For Cards',

		:effect =>
		'You have the power to Fish. As a main player, before encounter cards are selected, you may use this power to ask any player on the opposing side if he or she has a specific card, such as an attack 12, a regular negotiate card, or the Virus flare. If that player has the card, he or she must give it to you. Otherwise you must draw a card from the deck. If you draw the card you asked for from the deck, you may use this power a second time during this encounter.',

		:flavour => 'Developing on a monaquatic homeworld filled with untold prey species, the Anglers learned patience, stealth, and selectivity – disciplines that serve these passive predators well as they now take to the stars. Assessing the aliens they encounter and luring carefully selected victims to an early demise, the Anglers often reel in valuable spoils to satiate their growing needs.',

		:colour => 1,
		:planning => true,
		:offense => true, :defense => true,
		:expansion => cd)

	animal = Alien.find_or_create_by(
		:name => 'Animal',
		:tagline => 'Throws A Hearty Party',

		:effect =>
		'You have the power to Party. When you are not a main player, each time a main player fails to invite you to ally, use this power to force that player to lose a ship of his or her choice to the warp.
		As a main player or ally, if your side wins the encounter, use this power to throw a celebration party. Each player on the winning side, including you, may draw one card from the deck.',

		:flavour => 'A nomadic, carefree race, the Animals make it a point to never miss a rockin\' party anywhere in the Cosmos – even if they have to throw it themselves while the planet\'s owners are away. More than one race of would-be Cosmic conquerors has returned from battle only to find their homeworld\'s ecology wrecked and a few hungover Animals dressed in stained togas clambering into their ships with a bleary, "Hey man, that\'s what you get for bogarting the planet."',

		:colour => 1,
		:alliance => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => ca)

	antimatter = Alien.find_or_create_by(
		:name => 'Anti-Matter',
		:tagline => 'Lower Total Wins',

		:effect =>
		'You have the power of Negation. As a main player, after both you and your opponent reveal attack cards, use this power to make the lower total win. Furthermore, when this power is used, your ships as well as any offensive and defensive allies\' ships are subtracted from the appropriate side\'s total instead of adding. Your opponent\'s total is otherwise figured normally, however.',

		:flavour => 'Spewed forth from a white hole, the worlds of Anti-Matter careen through space negating whatever they encounter. Opposed to the very existence of gross mass, the Anti-Matter is dedicated to reducing all opposition to less than nothing.',

		:colour => 1,
		:reveal => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => ce)

	arcade = Alien.find_or_create_by(
		:name => 'Arcade',
		:tagline => 'Wins By Dominating Encounters',

		:effect =>
		'You have the power to Pwn. As a main player or ally, after both main players reveal attack cards and your side wins by 10 or more, use this power to pwn one ship from the opposing main player.
		As a main player or ally, after your side reveals an attack card and the other main player reveals a negotiate card, use this power to pwn one ship from the opposing main player.
		When you pwn a ship, the opposing main player gives you one ship of his or her choice from any of his or her colonies. That ship is placed on this sheet. If there are three ships of the same color or five total ships on this sheet, you immediately win the game. You may still win the game via the normal method.',

		:flavour => 'ZOMG t3h Arc8d r t3h r0xx0rz!!!! +0+411y pwnt t3h n00bs! Lawl j00 r t3h sux0rz!!',

		:colour => 1,
		:resolution => true,
		:offense => true, :defense => true, :ally => true,
		:mandatory => true,
		:expansion => cs)

	aristocrat = Alien.find_or_create_by(
		:name => 'Aristocrat',
		:tagline => 'Picks Hand And Draws Extra Flares',

		:effect =>
		'Game Setup: After flares are added to the deck but before hands are dealt, you have one minute to look through the deck. Take any eight cards (except the Aristocrat flare) to form your starting hand, and then re-shuffle the deck.
		You have the power of Privilege. As a main player, any time before encounter cards are selected, you may use this power to draw a flare from the unused flare deck and add it to your hand. Then, if you have two or more flares in your hand that do not match any players\' alien powers, you must choose one of those unmatched flares and remove it from the game. The flares you remove from the game cannot be drawn again.',

		:flavour => 'Beginning life with every advantage, the Aristocrats expect deference and respect from others. Drawing on a storehouse of great wealth from their feudal planet-estates, they now turn their majestic gaze upon the squabbling villeins of space.',

		:colour => 2,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true,
		:offense => true, :defense => true,
		:expansion => cd)

	bandit = Alien.find_or_create_by(
		:name => 'Bandit',
		:tagline => '"Takes A Spin" Each Turn',

		:effect =>
		'You have the power to Take a Spin. At the start of each player\'s turn, including your own, use this power to reveal the top three cards of the deck. If all three revealed cards have different card types (negotiate, attack, reinforcement, etc.), discard a card of your choice from your hand. If two of the revealed cards have the same card type, you may add any one of the revealed cards to your hand. If all three revealed cards have the same card type, you may add any or all of the revealed cards to your hand, and all other players must discard all cards of that card type from their hands. After you take a spin, discard any revealed cards that are not added to your hand.',

		:flavour => 'Creatures of risk, the one-armed Bandits roam the Cosmos looking for opportunities. However, where other aliens would shy away from near-impossible odds, the Bandits thrive on them. They can often be heard spouting their philosophy – "Come on, take a chance. What do you have to lose?"',

		:colour => 2,
		:startturn => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => ca)

	barbarian = Alien.find_or_create_by(
		:name => 'Barbarian',
		:tagline => 'Destroys Opponent\'s Hand',

		:effect =>
		' You have the power to Loot and Pillage. As the offense, after you win an encounter but before compensation (if any) is collected, use this power to loot your opponent\'s cards. Take your opponent\'s hand and look at it. For each ship you have in the encounter, you may choose one card from your opponent\'s hand and add it to your own. Afterwards, discard the remainder of your opponent\'s hand.',

		:flavour => 'A savage race from a harsh solar system, the Barbarians roared out into the Cosmos as soon as they discovered space flight. They have crushed many civilizations before them, carelessly tossing aside priceless cultural treasures in their endless quest for glory, battle, and the lamentations of their enemies.',

		:colour => 0,
		:resolution => true,
		:offense => true,
		:mandatory => true,
		:expansion => ce)

	bride = Alien.find_or_create_by(
		:name => 'Bride',
		:tagline => 'Marries Players',

		:effect =>
		'You have the power to Marry. As a main player, before allies are invited, you may use this power to "marry" your opponent. That player must choose one of his or her ships and place it on this sheet. You may be married to only one player at a time.
		You and your "spouse" may ally with each other without being invited and may show each other any cards in your hands at any time. Once per encounter, you may use this power to allow a trade of one card each from your hand and your spouse\'s hand.
		You may "divorce" your spouse at any time by turning that player\'s ship on your sheet upside-down and taking half of the cards in his or her hand at random (rounded down) as "alimony." You may not remarry a player you previously divorced. If this sheet is lost or turned facedown, you must divorce your current spouse without receiving alimony.',

		:flavour => 'The Bride has left a trail of broken circulatory pumps and legal hijinks across the Cosmos, and yet her allure is impossible to resist. The Bride, however, eschews the social pressure of the present and rejects wallowing in the past as she drifts through space longing for a fantasy future with her true soulmate, be it a low-life Hate or a noble Ethic.',

		:colour => 1,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:expansion => cd)

	brute = Alien.find_or_create_by(
		:name => 'Brute',
		:tagline => 'Threatens Opponent\'s Ships',

		:effect =>
		'You have the power to Threaten. As a main player or ally, after alliances are formed, you may use this power to threaten one player on the opposing side. That player must either allow you to look at his or her hand of cards and take one card of your choice, or remove all of his or her ships from the encounter. Removed ships return to any of that player\'s colonies.
		If all of a main player\'s ships are removed, he or she continues the encounter with zero ships. If all of an ally\'s ships are removed, he or she is no longer an ally.',

		:flavour => 'What The Brutes lack in subtlety, they make up for in simplicity. They tend to be an aggressive race, with blunt, thuggish tactics where they can use their strength and massive frames to intimidate any opposition in their way.',

		:colour => 1,
		:alliance => true,
		:offense => true, :defense => true, :ally => true,
		:expansion => cs)

	bully = Alien.find_or_create_by(
		:name => 'Bully',
		:tagline => 'Selects Losing Ships',

		:effect =>
		'You have the power to Intimidate. As a main player, after winning an encounter in which both players revealed attack cards, you may use this power to choose which ships your opponent must lose. Your opponent still loses the same number of ships he or she had in the encounter, but you take them from anywhere. If you are the defense, any of your opponent\'s ships that you leave in the hyperspace gate return to his or her other colonies.',

		:flavour => 'Habitually cruel to those who show signs of weakness, the Bully exploits any opportunity to run roughshod over its opponents. The false courage that is the hallmark of the Bully strikes terror into the less aggressive races of the Universe, and many flee rather than risk a confrontation. If none stand in its way, the Bully seeks to trample its way to Cosmic dominance.',

		:colour => 1,
		:resolution => true,
		:offense => true, :defense => true,
		:expansion => ci)

	bulwark = Alien.find_or_create_by(
		:name => 'Bulwark',
		:tagline => 'Reduces Ships Lost To One',

		:effect =>
		'You have the power of Resilience. As the offense or an ally, whenever you would lose ships to the warp that are involved in an encounter, use this power to send only one of the involved ships to the warp. The other ships involved in the encounter are returned to any of your colonies.
		As the defense, whenever you would lose ships to the warp that are involved in an encounter, use this power to send only one of the involved ships to the warp. The other ships involved in the encounter remain on the colony.
		Whenever you would lose ships to the warp as a result of any other game effect, use this power to reduce the number of ships lost to one.',

		:flavour => 'The toughness of the Bulwarks is legendary. They think nothing of facing overwhelming odds or throwing themselves into the thick of battle, knowing they have the ability to endure nearly any hardship. The Bulwarks can also be as thick-headed as they are thick-skinned.',

		:colour => 1,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => cs)

	butler = Alien.find_or_create_by(
		:name => 'Butler',
		:tagline => 'Gets Cards For Chores',

		:effect =>
		'You have the power to Serve. You flip the destiny card, aim the hyperspace gate, launch ships, and perform all other manually demeaning chores for the offense after he or she signals the start of his or her encounter. Unless the offense gives you a tip of one card at random from his or her hand, you may use this power to perform your choice of either of the following: aim the hyperspace gate at any planet in the targeted system where a legal encounter can be had or launch the offense\'s ships from any of his or her colonies (but only as many ships as the offense specifies).
		If the offense does tip you, you must obey his or her wishes with regard to your chores for the rest of the encounter. You must perform certain functions without reward, such as dealing out cards that a player is entitled to. You must be courteous, and a tip of one card is all that you may collect per encounter.',

		:flavour => '"To serve is to live." The motto of the house of Butt guides its family as they build for their true inner hope: to turn the Cosmic tables and rule forever.',

		:colour => 1,
		:launch => true,
		:defense => true, :ally => true, :bystander => true,
		:expansion => ca)

	calculator = Alien.find_or_create_by(
		:name => 'Calculator',
		:tagline => 'Reduces Higher Attack Card',

		:effect =>
		' You have the power to Equalize. As a main player, after encounter cards are selected but before they are revealed, you may use this power to declare an "equalize." If you do so and both cards are revealed to be different attack cards, the value of the higher card is reduced by the value of the lower card. Thus if an attack 15 and an attack 08 are played, the 15 has its value reduced to 7, but the 08 keeps its value 8. The encounter is then concluded normally.',

		:flavour => 'Defenseless on a jungle world, the order of Calculators grew adroit at ensnaring their powerful but bungling competitors. Now adept at turning strength back against itself, they study the prospects of galactic empire, trusting that other grosser beings will not also grow calculating.',

		:colour => 1,
		:planning => true,
		:offense => true, :defense => true,
		:expansion => ce)

	cavalry = Alien.find_or_create_by(
		:name => 'Cavalry',
		:tagline => 'Plays Encounter Card As Ally',

		:effect =>
		'You have the power to Reinforce. As an ally, after encounter cards are selected but before they are revealed, you may use this power to play an attack or negotiate card facedown from your hand off to one side. This second card is not considered your side\'s encounter card and isn\'t affected by game effects that target your side\'s encounter card, such as those of the Oracle or Sorcerer. Reveal your card when encounter cards are revealed. If you reveal your card to be an attack, add it to your side\'s total. This has no effect if your side\'s encounter card is a negotiate. If you reveal a negotiate and your side loses the encounter, you receive compensation after your side\'s main player has received compensation, if applicable. In any case, your card is discarded after use.',

		:flavour => 'This race of interstellar policemen has gained quite a reputation for keeping peace on the fringes of space. Many diverse aliens have called upon the Cavalry to help suppress outpost revolutions. Now the Cavalry hope to rule the Cosmos by becoming indispensable.',

		:colour => 0,
		:planning => true,
		:ally => true,
		:expansion => cc)

	changeling = Alien.find_or_create_by(
		:name => 'Changeling',
		:tagline => 'Swaps Powers With Opponent',

		:effect =>
		'You have the power to Change Form. As a main player, after the defense is determined, use this power. Either draw a card from the deck and add it to your hand or swap alien powers with your opponent. This power may be used only once per encounter. When swapping alien powers, you get all facets of that power – e.g., the Miser\'s hoard, the Warrior\'s tokens, The Claw\'s claw, etc.',

		:flavour => 'The childlike Changelings love to play, and gleefully anticipate new experiences. Recently they have developed the unsettling ability to shed their psyches in exchange for those of others. Their standard greeting of "I just don\'t seem to be myself today" provokes panic in many a passing acquaintance as the Changelings leapfrog about the Cosmos.',

		:colour => 0,
		:destiny => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => cc)

	chosen = Alien.find_or_create_by(
		:name => 'Chosen',
		:tagline => 'Takes New Encounter Card',

		:effect =>
		'You have the power of Divine Intervention. As a main player, after encounter cards are revealed, you may use this power to pray for Divine Intervention once per encounter. To do so, draw three cards from the deck. If none are encounter cards, discard them, and there is no further effect. If you draw any encounter cards, you may choose one of the drawn encounter cards to replace your revealed encounter card (which is then discarded). If you have revealed an attack card and choose another attack card for Divine Intervention, the new card may either replace or add its value to the value of your revealed attack card, your choice. All other cards drawn for Divine Intervention are then discarded, and the encounter is resolved with the new card or card value.',

		:flavour => 'A deeply spiritual and philosophical race, the Chosen have become attuned to a higher force in the Cosmos that they call upon in times of need.',

		:colour => 0,
		:reveal => true,
		:offense => true, :defense => true,
		:expansion => ce)

	chronos = Alien.find_or_create_by(
		:name => 'Chronos',
		:tagline => 'Can Replay Encounter',

		:effect =>
		'You have the power of Time Travel. As a main player, after encounter cards are revealed, you may use this power to call out "time travel." You then return your revealed encounter card to your hand while your opponent sets his or her revealed encounter card aside. If your opponent has no more encounter cards in hand and shows you so, he or she instead returns the revealed encounter card to his or her hand. All other cards played since the start of the planning phase return to their owners\' hands. The encounter is then replayed from the start of the planning phase. You both can use any cards in your hands, and this time the outcome is final. When the encounter is over, your opponent takes back the card that was set aside.',

		:flavour => 'Unique among life forms, the Chronos has forever been able to pierce the veil of time and control its own past. Now, the elite of the race grows tired of a world where minor rivalries lead to constant paradoxes and time-quakes and has set out to redesign the Universe. That this involves altering reality comes as past history to the Chronos.',

		:colour => 1,
		:reveal => true,
		:offense => true, :defense => true,
		:expansion => ci)

	chrysalis = Alien.find_or_create_by(
		:name => 'Chrysalis',
		:tagline => 'Becomes Another Alien',

		:effect =>

		'Game Setup: Place eight tokens on this sheet (six if playing with four planets per player). You have the power to Change. At the start of every encounter, use this power to discard one token from this sheet. If there are no tokens left on this sheet, look at the top 10 flares of the unused flare deck. Choose one of these 10 flares corresponding to an alien that does not have Game Setup text and is allowed in the current game. You become that alien for the rest of the game. Add its flare card to your hand and take its alien sheet. Then, remove the other nine flare cards from the game and discard this sheet.',

		:flavour => 'The Chrysalis know that the Time of Change is coming. Only then will they attain their true potential and become what they were always meant to be. Only then will the Cosmos fall before them.',

		:colour => 2,
		:regroup => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => ca)

	citadel = Alien.find_or_create_by(
		:name => 'Citadel',
		:tagline => 'Builds Citadels On Planets',

		:effect =>
		'You have the power of Fortification. During each player\'s encounter, after destiny is drawn, you may play an attack card from your hand faceup next to any planet in any system as a citadel.
		If a planet with one or more citadels is targeted, after encounter cards are selected but before they are revealed, you may use this power to activate all citadels on the planet. If you do, add their combined value to the defense\'s total for the encounter. If you activate your citadels on a planet and the defense loses the encounter, discard the citadels. Otherwise, they stay in place.
		Discard citadels if their planet is destroyed or this sheet leaves the game.',

		:flavour => 'Brilliant architects who obsessively build vast fortresses as they travel throughout the Cosmos, the Citadels are often welcomed with open arms by the other races, who are delighted to benefit from the Universe\'s best defenses. Of course, what the Citadels don\'t tell them is that these fortifications only work when the Citadels want them to do so.',

		:colour => 2,
		:planning => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:expansion => cd)

	claw = Alien.find_or_create_by(
		:name => 'The Claw',
		:tagline => 'Steals Planets',

		:effect =>
		'Game Setup: Choose one card from your starting hand to be your "claw" and place it facedown on this sheet; then draw a card from the deck.
		You have the power of The Claw. Your claw is not part of your hand. Other players may not look at or draw it. At the start of any regroup phase, you may swap a card from your hand with your claw.
		Once per encounter, when another player plays or reveals a copy of the card you have as your claw, if it is not a negotiate card, use this power and show your claw. After the end of the encounter, choose a planet in that player\'s home system, send all ships on it to the warp, and move it to your home system to become a new home planet for yourself (do not automatically establish a colony on it). Then, return your claw card to your hand and choose any card from your hand to become your new claw.
		Each stolen planet in your home system counts as a foreign colony toward your win, even if inhabited by other players. (If you gain a colony there, the colony is a home colony and the planet itself still counts as a foreign colony.)',

		:flavour => 'Recently, entire planets have gone missing, leaving behind only orphaned, desolate moons – one of which was marred by enormous claw marks.',

		:colour => 2,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => cc)

	clone = Alien.find_or_create_by(
		:name => 'Clone',
		:tagline => 'Keeps Own Encounter Card',

		:effect =>
		'You have the power to Replicate. As a main player, after the encounter is resolved (and after any compensation is claimed), you may use this power to add your encounter card to your hand instead of discarding it.
		If encounter cards are switched by another game effect, the final card you use in the resolution phase is the one you may add to your hand.',

		:flavour => 'A prolific species on a slowly cooling globe, the Clones traditionally selected the best of their race to represent them in territorial struggles. But as the gene pool thinned, one clan developed techniques to artificially duplicate their champion before battle. Thus, always rejuvenated, they came to dominate their world during the geologic crisis and emerged from it anxious to carry their new knowledge into a Cosmic competition.',

		:colour => 0,
		:resolution => true,
		:offense => true, :defense => true,
		:expansion => ce)

	converter = Alien.find_or_create_by(
		:name => 'Converter',
		:tagline => 'Can Substitute Cards For Ships',

		:effect =>
		' You have the power to Exchange. Whenever you would lose ships to the warp, you may use this power to discard up to an equal number of cards from your hand. Each card discarded saves one of your ships and prevents it from being sent to the warp. Ships saved during an encounter are returned to any of your other colonies.
		Whenever you would retrieve one or more ships from the warp, you may use this power to instead draw cards from the deck. Draw one card for each ship you choose not to retrieve from the warp.',

		:flavour => 'The versatility of the Converters makes them highly prized as manufacturers and business partners. They can take virtually any piece of technology and change it into something completely different. Some theorize that they eat the original materials, creating some suspicion about how the new materials appear.',

		:colour => 1,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:expansion => cs)

	coordinator = Alien.find_or_create_by(
		:name => 'Coordinator',
		:tagline => 'Manipulates Destiny Deck',

		:effect =>
		'You have the power to Schedule. As the offense, instead of drawing a card from the destiny deck, you may use this power to look at the top three cards of the destiny deck and choose any one of them to be the destiny card you have drawn. Place the other two cards on the top and/or bottom of the destiny deck in any order you choose.
		When you use this power, if there are fewer than three cards remaining in the destiny deck, shuffle the destiny discard pile together with the destiny deck to form a new deck. You may only use this power once per encounter.
		Do Not Use with Dictator',

		:flavour => 'Warfare in the Cosmos is rarely well scheduled. However, amidst the chaos, the Coordinator is able to prepare for different contingencies far more than most other races. Despite the seeming random nature of conflict, the Coordinator delights in using its insight and impeccable timing to ensure that all parties involved have sufficient time to annihilate each other.',

		:colour => 1,
		:destiny => true,
		:offense => true,
		:expansion => cs)

 	cryo = Alien.find_or_create_by(
		:name => 'Cryo',
		:tagline => 'Saves Cards For Later',

		:effect =>
		'You have the power to Preserve. As a main player or ally, after allies are invited, you may use this power to take one card from your hand and put it in Cold Storage by placing it facedown on this sheet. Afterwards, draw one card from the deck. Cards on this sheet are frozen and cannot be looked at or drawn by any other player, nor are they part of your hand.
		If you have at least eight cards on this sheet, you may discard your hand at any time to take the cards from this sheet as your new hand.',

		:flavour => 'Thanks to their unique metabolism, the Cryo are able to enter hibernation for millennia, awakening only when their people have need of them. However, the time is fast approaching when the Cryo may finally awaken all of the great heroes of their past to lead them to Cosmic conquest.',

		:colour => 1,
		:alliance => true,
		:offense => true, :defense => true, :ally => true,
		:expansion => ci)

 	crystal = Alien.find_or_create_by(
		:name => 'Crystal',
		:tagline => 'May Multiply Attack Cards',

		:effect =>
		'You have the power to Refract. As a main player or ally, use this power after both main players reveal attack cards. Any one player on your side can discard one attack card from his or her hand that matches the value of your side\'s revealed attack card. If a player does so, multiply your side\'s revealed card by the discarded card\'s value. For instance, if your side reveals an attack 08, any one player on your side may discard an attack 08 to change the revealed card into an attack 64.',

		:flavour => 'Arranged in orderly three-dimensional lattices, Crystals tend to dominate the arrangement of their local environment. They know that, with a few suggestive seeding hints, they can bring the entire Universe into the most efficient energy packing: Crystalline order.',

		:colour => 1,
		:reveal => true,
		:offense => true, :defense => true, :ally => true,
		:mandatory => true,
		:expansion => ca)

 	cudgel = Alien.find_or_create_by(
		:name => 'Cudgel',
		:tagline => 'Opponent Loses More Ships',

		:effect =>
		'You have the power to Smash. As a main player, when you win an encounter in which you revealed an attack card, use this power to force your opponent to lose extra ships of his or her choice equal to the number of ships you had in the encounter, in addition to any ships he or she would normally lose.',

		:flavour => 'The customary greeting among Cudgels is a hearty handshake and a solid blow to the head. This long-standing tradition – often fatal – is frequently misunderstood by weaker races, much to the amusement of the Cudgels. Now, having flattened all of their closest friends, the gregarious Cudgels look skyward, leaving the debris of their broken planet behind. With fists raised in friendship, they seek out new beings to meet, greet, and smash, and will not stop until the Cosmos itself is shattered.',

		:colour => 0,
		:resolution => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => ce)

	cyborg = Alien.find_or_create_by(
		:name => 'Cyborg',
		:tagline => 'Has 3 Extra Faceup Cards',

		:effect =>
		'You have the power of Bionics. At the start of every encounter, if you have fewer than three cards on this sheet, draw cards from the deck to place faceup on this sheet until you have three. These cards are not part of your hand.
		At any time, you may play a non-encounter card that is faceup on this sheet as though it were in your hand.
		As a main player or ally, after your side reveals an encounter card, you may use this power to discard your side\'s revealed card and replace it with an encounter card that is faceup on this sheet.
		Cards from this sheet that should return to your hand return here instead.',

		:flavour => 'A perfect marriage of biology and technology, the Cyborgs have been an odd mix of contrasts ever since they first showed up in the Cosmos. Loyal and caring toward one another, yet coldly logical when need be, the Cyborgs have done the math and know that they will eventually rule the Cosmos for the Greater Good of all races.',

		:colour => 1,
		:reveal => true,
		:offense => true, :defense => true, :ally => true,
		:expansion => ca)

	daredevil = Alien.find_or_create_by(
		:name => 'Daredevil',
		:tagline => 'Cuts Close To Gain Rewards',

		:effect =>
		'You have the power of Risk. As a main player or ally, after encounter cards are revealed, you may use this power to discard one attack card with a value from 01 to 08 from your hand. Subtract that value from your side\'s total.
		As a main player or ally, when your side wins an encounter by 4 or less, each player on your side receives rewards equal to the number of ships he or she has in the encounter (in addition to any other benefits received for winning).',

		:flavour => 'Preferring an uncertain but exciting existence to predictability, Daredevils thrive on adrenaline, even that of others. Danger elevates the Daredevils\' abilities, and their allies either rise quickly or fall hard. For Daredevils, the closer the shave, the bigger the rush.',

		:colour => 1,
		:reveal => true,
		:offense => true, :defense => true, :ally => true,
		:expansion => cd)

	dervish = Alien.find_or_create_by(
		:name => 'Dervish',
		:tagline => 'Rotates Cards Left Or Right',

		:effect =>
		'You have the power to Whirl. As a main player, after alliances are formed, you may use this power to call "clockwise" or "counterclockwise." Each player involved in the encounter as a main player or ally must pass his or her hand of cards in the chosen direction to the next player involved in the encounter.',

		:flavour => 'The constant whirling and high-speed revolution of the Dervishes make them unpredictable and chaotic. In fact, their undulations have been known to make some aliens queasy. Dervishes delight in bold sweeping tactics and surprises in combat, sometimes turning their opponents\' resources against them.',

		:colour => 1,
		:alliance => true,
		:offense => true, :defense => true,
		:expansion => cs)

	deuce = Alien.find_or_create_by(
		:name => 'Deuce',
		:tagline => 'Plays 2 Encounter Cards',

		:effect =>
		'You have the power of Duality. As a main player, after encounter cards are selected but before they are revealed, use this power to place a second encounter card facedown off to one side. This second card is not considered your encounter card and isn\'t affected by game effects that target your encounter card, such as those of the Oracle or Sorcerer. If both of your encounter cards are revealed to be attacks, the second card\'s value is added to your side\'s total. If either is a negotiate, then you have played a negotiate. After the encounter is resolved, discard the negotiate card if you played one, or the higher attack card if you did not, returning the other encounter card to your hand.
		When checking to see if you draw a new hand, do so if you have one or fewer encounter cards left, rather than none.',

		:flavour => 'Twin suns and a double moon have endowed the ambidextrous Deuce with twice the strength of their opponents. Cleverly concealing their real motives behind an amiable mask, the duplicitous Deuce see universal control within reach.',

		:colour => 1,
		:planning => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => ci)

	dictator = Alien.find_or_create_by(
		:name => 'Dictator',
		:tagline => 'Controls Destiny Deck',

		:effect =>
		'You have the power to Command. When you are not the offense, before destiny is drawn, use this power to take the destiny deck, look through it, and choose any card from it. That destiny card is played as though the offense had drawn it. On your turn, or any time you are zapped, the remaining destiny cards are shuffled, and one is dealt at random.',

		:flavour => 'Grotesque creatures rejected by an old and cultured world, the Dictators pushed and clawed their way to planetary dominion. Relentless in their demands, they turn friend against friend to do their bidding. Recently they have begun to tire of toying with the weak races at home and seek to control the entire Universe.',

		:colour => 2,
		:destiny => true,
		:defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => ce)

	diplomat = Alien.find_or_create_by(
		:name => 'Diplomat',
		:tagline => 'Can Negotiate 3-Way Deals',

		:effect =>
		'You have the power to Negotiate. When you are not a main player and one or more attack cards are revealed in an encounter, you may use this power to play a negotiate card from your hand and turn the revealed attack cards into regular negotiate cards. Then, you and the two main players have two minutes to attempt to reach a three-way deal. Apply all unique effects found on the three negotiate cards. Unless all three players agree on a deal, the deal fails and each loses the appropriate number of ships. All three players are treated as opponents of each other for game effects that affect deals.',

		:flavour => 'A foreboding presence held in awe by other planetary life forms, the Diplomats strike only when their webs are fully spun. Then, for extricating those caught by their own rash acts, the Diplomats negotiate their terms.',

		:colour => 1,
		:reveal => true,
		:ally => true, :bystander => true,
		:expansion => cd)

	disease = Alien.find_or_create_by(
		:name => 'Disease',
		:tagline => 'Spreads To Other Planets',

		:effect =>
		' You have the power of Contagion. Whenever any other player\'s color or a special destiny card that targets another player is drawn from the destiny deck, you may use this power to infect one of that player\'s planets. If you have a colony in the infected player\'s home system consisting of at least three ships, take one or more of your ships from it, moving them to any other planet in that system. On a wild destiny card, you may infect only the opponent that is chosen to be the defense.',

		:flavour => 'Long ago, having decimated all life forms on their native planet, the Disease seemed in danger of extinction due to their own success. The advent of interstellar travel, however, gave them a new lease on life. Once the Disease secure a foothold on a new world, it is only a matter of time before they dominate it.',

		:colour => 2,
		:destiny => true,
		:offense => true, :ally => true, :bystander => true,
		:expansion => ci)

	doppelganger = Alien.find_or_create_by(
		:name => 'Doppelganger',
		:tagline => 'Borrows Cards To Play',

		:effect =>
		'You have the power to Haunt. As a main player, before encounter cards are selected, use this power to discard all encounter cards in your hand (if any) and haunt one other player except your opponent. That player must give you two encounter cards of different types from his or her hand (or one if holding only one type). One of these must be the player\'s highest attack card, if he or she has any. When encounter cards are to be selected, if you have fewer than two encounter cards for any reason (including being zapped), you draw from the deck until you have two, discarding all non-encounter cards drawn. After cards are revealed, return any cards received from the haunted player that are still in your hand to that player.
		You ignore all consequences of lacking encounter cards, such as drawing a new hand (even for game effects such as the Usurper\'s power), ending your turn, or losing the encounter due to the Laser\'s power.',

		:flavour => 'Haunting its Cosmic colleagues, the Doppelganger often gets the better of them. Each encounter leaves its jittery victim with the feeling that there is more to every passing shadow than meets the eye.',

		:colour => 2,
		:planning => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => cd)

	empath = Alien.find_or_create_by(
		:name => 'Empath',
		:tagline => 'May Change Attack To Negotiate',

		:effect =>
		'You have the power of Harmony. As a main player, after either main player reveals any negotiate card and the other main player reveals an attack card, you may use this power to change the revealed attack card into a regular negotiate card. You and the other main player then attempt to make a deal.',

		:flavour => 'Eons of overpopulation forced the highly social Empaths to cooperate in order to survive. On their lush, tropical planet, they learned the value of defense and yielding. Now, they are striving to teach harmony to all other Cosmic life forms.',

		:colour => 0,
		:reveal => true,
		:offense => true, :defense => true,
		:expansion => cc)

	engineer = Alien.find_or_create_by(
		:name => 'Engineer',
		:tagline => 'Gains Tech When Losing',

		:effect =>
		'You have the power of Technology. As a main player, when you lose an encounter or fail to deal, you may use this power. Draw two tech cards from the technology deck (even if it is not otherwise in play). You may choose one of the drawn cards to place facedown on this sheet. If you do so, and another tech was already on this sheet, the new one replaces it. The tech(s) you do not keep are discarded.
		You may research the tech card on this sheet normally and/or count your ships in the warp toward its research cost. When the tech is completed, move it off this sheet. Ships counted from the warp do not return to colonies with other researching ships, but may be used for the effect of a tech such as Coldsleep Ship or Genesis Bomb.
		If this power or a tech card on it is stolen, discarded, etc., any ships that were researching the tech card on this sheet are returned to any of your colonies.',

		:flavour => 'Engineers seek to rule the Universe through technological superiority. Valuing intelligence and ingenuity over might, they use scientific breakthroughs to subjugate those who oppose them, no matter how strong.',

		:colour => 1,
		:resolution => true,
		:offense => true, :defense => true,
		:expansion => cd)

	ethic = Alien.find_or_create_by(
		:name => 'Ethic',
		:tagline => 'Gets Compensation For Attack',

		:effect =>
		'You have the power of Guilt. As a main player, after you lose an encounter in which both players revealed attack cards, use this power to collect compensation from your opponent as though you had played a negotiate card instead.
		Whenever you gain compensation, you may draw some or all of it from the deck instead of your opponent.',

		:flavour => 'Subscribing to a moral code of the utmost purity, the Ethics set a universal standard of conduct. Those who would harm the Ethics find themselves curiously repentant. Knowing that they are possessed of the One True Way, the race of Ethics now seeks to convert Outsiders through moral suasion.',

		:colour => 0,
		:resolution => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => ci)

	explorer = Alien.find_or_create_by(
		:name => 'Explorer',
		:tagline => 'Finds New Planets',

		:effect =>
		'Game Setup: Choose one unused player color and place four planets of that color on this sheet. Do not use this power unless you have an unused player color.
		You have the power of Discovery. As the offense, after the hyperspace gate is aimed, you may use this power to take a planet from this sheet, place it in the targeted system, and re-aim the gate at that planet.
		As a main player or ally, after both players reveal attack cards, you may use this power to increase your side\'s total according to the planets you have discovered. Add 1 for each discovered planet you do not have a colony on, 2 for each discovered planet you coexist on, and 4 for each discovered planet you occupy alone.',

		:flavour => 'As the various child-races of the Precursors began to take to the stars, most were drawn to one another in their hunger for knowledge, trade, defense, conflict, and the other manifold needs that drove them forward. The Explorers, however, often bypassed other sentient beings in their haste to catalog new worlds. Even centuries later, this obsession continues; but now they begin to reap the rewards of their diverse discoveries.',

		:colour => 1,
		:launch => true, :reveal => true,
		:offense => true, :defense => true, :ally => true,
		:expansion => cd)

	extortionist = Alien.find_or_create_by(
		:name => 'Extortionist',
		:tagline => 'Gets Half Of All New Cards',

		:effect =>
		'You have the power to Extort. After starting hands are dealt, whenever any other player collects compensation or draws new cards for his or her hand from any deck for any reason (including rewards, new hands, etc.), before those cards are added to that player\'s hand you may use this power to {acquire or draw half of those cards} take half of them (rounded down) at random for yourself instead. A player may prevent you from extorting any cards from him or her by allowing you to send one of his or her ships of your choice to the warp, but he or she must do so before you take any cards.',

		:flavour => 'Warped by an unstable environment, the Extortionist has long been crazed by greed. Extortionists prefer wealth that has been unjustly siphoned from honest wage-earners, and now, with their hands ever extended, they hope to amass enough for the final takeover.',

		:colour => 1,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:expansion => ca)

	fido = Alien.find_or_create_by(
		:name => 'Fido',
		:tagline => 'Retrieves Discarded Cards',

		:effect =>
		'You have the power to Fetch. After encounter cards are discarded at the end of an encounter, you may use this power to retrieve one of the discarded cards and offer it to another player. If the card is refused, you may keep or discard it. If the card is accepted, the other player keeps the card and you may retrieve one ship from the warp or draw one card from the deck. You may retrieve only an encounter card that was used to resolve the encounter, not one that was discarded for some other reason.',

		:flavour => 'Trained for generations by a strict, but unknown, alien race, the Fidos were bred for retrieval. Slinking out on their own, they cannot help but fetch the debris of outer space for whomever happens by, knowing they will still be rewarded in some way.',

		:colour => 1,
		:resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:expansion => ce)

	filch = Alien.find_or_create_by(
		:name => 'Filch',
		:tagline => 'Takes Opponent\'s Used Card',

		:effect =>
		'You have the power of Theft. As a main player, after encounter cards are discarded at the end of an encounter, you may use this power to retrieve your opponent\'s card from the discard pile and add it to your hand.
		If encounter cards are switched by another game effect, the final card your opponent uses in the resolution phase is the one you may add to your hand.',

		:flavour => 'Within their genteel, sophisticated tribes, the Filches have refined the art of acquisition to a high aesthetic. The most judicious and subtle thefts are memorialized in legend and song. Lately they have taken to eyeing the depths of space and thoughtfully rippling their tentacles.',

		:colour => 0,
		:resolution => true,
		:offense => true, :defense => true,
		:expansion => ce)

	filth = Alien.find_or_create_by(
		:name => 'Filth',
		:tagline => 'Drives Away Others\' Ships',

		:effect =>
		'You have the power to Reek. Any time any of your ships are coexisting on the same planet as any other player\'s ships, use this power to force the other player\'s ships to return to his or her other colonies.
		When you are the offense or an offensive ally, your allies in a winning encounter do not land on the targeted planet with you. However, they each still gain a colony on any other planet of their choice (each player chooses separately) in the defending system.
		As the defense, when you lose an encounter on a planet where you have ships, use this power to force all opposing ships to return to their other colonies instead of landing on that planet. Your losing ships go to the warp normally and the planet is then "fumigated."
		When you trade a colony to or from another player in a deal, each player granting a colony must vacate a planet for the other player to land on.',

		:flavour => 'The Filth\'s reverence for the past leaves it unable to remove any trace of earlier events – whether yesterday\'s glatorp stains or last year\'s diseased kinzosh. Having driven all other life forms from their homeworlds, they are slowly extending out to leave their mark – a ring around the Cosmos.',

		:colour => 2,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => cc)

	fodder = Alien.find_or_create_by(
		:name => 'Fodder',
		:tagline => 'Plays Additional Low Cards',

		:effect =>
		'You have the power to Overwhelm. As a main player, you may use this power after both you and your opponent reveal attack cards. You may discard any or all attack cards in your hand that are both higher than the attack card you played and lower than the attack card played by your opponent, adding their values to your total.',

		:flavour => 'Always regarded as an inferior, scavenging race, the Fodder have amassed a multitude of generally less-effective arms. With the astonishingly large cache of second-rate weapons, the Fodder can afford to overwhelm their adversaries.',

		:colour => 1,
		:reveal => true,
		:offense => true, :defense => true,
		:expansion => ce)

	fungus = Alien.find_or_create_by(
		:name => 'Fungus',
		:tagline => 'Attaches To Other Ships',

		:effect =>
		'You have the power to Adhere. As a main player or ally, after your side wins an encounter in which you have at least one ship, use this power to capture any losing ships, stacking them under one or more of your ships in the encounter instead of sending them to the warp (game effects that would save ships from the warp, such as Zombie\'s or Healer\'s power, cannot prevent this). Captured ships do not have special characteristics (e.g., Macron ships are not worth four). These stacks are controlled by you. Each stack is considered to be one ship for purposes of play. Ships that are part of a stack are only freed when the stack enters the warp. Freed ships return to normal and may leave the warp as usual. If this power is stolen, your stacks do not transfer with it, but remain stacked until separated in the warp.
		As a main player or ally, after encounter cards are revealed, use this power. Each stack you have in the encounter counts as the number of ships it contains toward your side\'s total instead of 1. Zapping this power does not free any captured ships.',

		:flavour => 'The Fungus clings tenaciously to its basic perceptions, and now its neighbors find its teachings (and tendrils) rapidly growing upon them.',

		:colour => 1,
		:reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true,
		:mandatory => true,
		:expansion => ci)

	fury = Alien.find_or_create_by(
		:name => 'Fury',
		:tagline => 'Avenges Lost Ships',

		:effect =>
		'You have the power of Vengeance. Each time one or more of your ships are lost to the warp or removed from the game, use this power to place one token on this sheet for each of those ships.
		As a main player or ally, after encounter cards are selected but before they are revealed, you may discard any number of tokens from this sheet to add or subtract 3 from your side\'s total for each token you discard.',

		:flavour => 'Powerful warriors of a matriarchal race, the Furies swear vengeance on anyone foolish enough to defeat one of their champions in battle. Although the quest may take years, the vengeance of the Furies is always served in the end.',

		:colour => 0,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => ci)

	gambler = Alien.find_or_create_by(
		:name => 'Gambler',
		:tagline => 'Bluffs About Card',

		:effect =>
		'You have the power to Bluff. After your opponent reveals his or her encounter card, you may use this power to keep yours facedown, instead stating what it is (and lying if you like). If your opponent does not challenge your claim, conclude the encounter as if your statement were true, then place your encounter card facedown on the bottom of the appropriate deck instead of discarding it. If your opponent challenges your claim, reveal your card. If you lied, you lose as many ships to the warp as you have in the encounter. If you told the truth, your opponent loses as many ships as he or she has in the encounter. These lost ships may not be ships involved in the encounter. Afterwards, conclude the encounter normally using the revealed cards.
		If another game effect switches the encounter cards (e.g., Sorcerer), you may still bluff about the card you originally played, forcing your opponent to accept or challenge your claim about the card that he or she would now reveal. If another game effect forces you to show your card early (e.g., Oracle), you may use this power at that time.',

		:flavour => 'Arising in an era of geological turmoil, the Gamblers trusted only their own audacity. The faint of heart soon perished, but the most daring rose to even greater effronteries and now launch a contest for Cosmic stakes.',

		:colour => 2,
		:reveal => true,
		:offense => true, :defense => true,
		:expansion => ce)

	general = Alien.find_or_create_by(
		:name => 'General',
		:tagline => 'Draws Cards For Allies',

		:effect =>
		'You have the power of Leadership. As a main player, after alliances are formed, use this power. You may immediately draw one card from the deck per player allied with you. Afterwards, each of your allies may draw one card from the deck.',

		:flavour => 'A military society from their earliest days, the Generals have always placed a high value on leadership and charisma. Their history is full of some of the most inspiring speeches ever given in all the Cosmos. Whenever a ragtag band of warriors stands up to defy the odds, a General will be there to lead them. Whether fighting the enemy on the beaches or standing with a few lucky men to fight for freedom, a General will smile and say, "I love the smell of Ionic Gas in the morning... It smells like victory."',

		:colour => 0,
		:alliance => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => ca)

	genius = Alien.find_or_create_by(
		:name => 'Genius',
		:tagline => 'Wins With 20 Cards',

		:effect =>
		'You have the power to Outwit. As a main player or ally, whenever you gain a foreign colony as the result of winning an encounter, you may use this power to instead draw one card from the deck for each ship you have in the encounter and then send your ships in the encounter back to your other colonies.
		At the start of any turn, if you have 20 or more cards in your hand, you immediately win the game. You may still win the game via the normal method.',

		:flavour => 'Originating on a planet filled with some of the Universe\'s deadliest predators, the Geniuses had to be smarter and more ruthless than any other creature on their world in order to survive. Now that they\'ve left their home planet, the Geniuses have turned their prodigious intelligence toward a bloodless coup of the Universe.',

		:colour => 2,
		:resolution => true,
		:offense => true, :defense => true, :ally => true,
		:expansion => ci)

	ghoul = Alien.find_or_create_by(
		:name => 'Ghoul',
		:tagline => 'Rewarded For Defeating Ships',

		:effect =>
		'You have the power to Feast. As a main player, after you win an encounter, use this power. For each opposing ship sent to the warp as a result of the encounter, you receive one reward.',

		:flavour => 'Haunting the edges of battlefields and devouring the losers to sate their endless hunger, the Ghouls are greatly feared throughout the Universe, particularly by those aliens that normally attack en masse. More subtle tactics are required against the Ghouls, lest they emerge from battle stronger than ever.',

		:colour => 2,
		:resolution => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => ci)

	glutton = Alien.find_or_create_by(
		:name => 'Glutton',
		:tagline => 'Gets Extra Ships And Cards',

		:effect =>
		'You have the power to Gorge. Whenever you retrieve one or more of your ships from the warp, use this power to retrieve up to two extra ships of yours from the warp.
		Whenever you draw one or more cards from the deck (including when you are dealt your starting hand) or from another player\'s hand, use this power to draw two extra cards from the same source.',

		:flavour => 'Once described as 50% mouth, 50% stomach, and 50% appetite, the insatiable Gluttons have devoured their way across the Cosmos ever since they (quite literally) ate themselves out of house and home. Those dealing with the Gluttons are advised to count their digits afterwards and to always keep an eyestalk or two on their "tender, succulent" offspring.',

		:colour => 0,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => cc)

	gorgon = Alien.find_or_create_by(
		:name => 'Gorgon',
		:tagline => 'Petrifies Others\' Ships',

		:effect =>
		'You have the power to Petrify. Whenever another player\'s ships are about to be removed from any of your home planets and/or any planets on which you have a colony, unless those ships are being captured, sent to the warp, or removed from the game, use this power to prevent them from moving.
		You do not lose this power because of having too few home colonies.',

		:flavour => 'The horrifying sight of the Gorgons petrifies any creature that looks upon them. A stranger to a Gorgon world might think this race overly fond of statuary, only to find the statues springing back to life once the Gorgons leave. Because of their powerful effect on others, the Gorgons often find it difficult to get others to cooperate in their quest for Cosmic conquest.',

		:colour => 2,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => ca)

	graviton = Alien.find_or_create_by(
		:name => 'Graviton',
		:tagline => 'Compresses Attacks To 1 Digit',

		:effect =>
		'You have the power of Gravity. As a main player, after encounter cards are selected but before they are revealed, you may use this power and say either "tens" or "ones." If you do so, any attack cards revealed in the encounter only use that digit as their value. For instance, if you said "tens," an attack 40 would become an attack 04 and an attack 09 would become an attack 00, but if you said "ones," those same cards would become an attack 00 and an attack 09.',

		:flavour => 'A cunning, intelligent race from a binary star near a black hole, the Gravitons have mastered the ability to manipulate gravity. Herding and squeezing their enemies into tighter and tighter formations, the Gravitons rely heavily on their allies and reinforcements to finish the fight.',

		:colour => 1,
		:planning => true,
		:offense => true, :defense => true,
		:expansion => cc)

	greenhorn = Alien.find_or_create_by(
		:name => 'Greenhorn',
		:tagline => 'Makes Convenient Mistakes',

		:effect =>
		'You have the power of Ignorance. At the start of each encounter, if you have card(s) in your hand, use this power to show one of the cards in your hand to one other player. Then, ask him or her a question about that card, aloud. He or she does not need to answer the question.
		Whenever you have no attack cards in your hand, you may draw a new hand.
		During any regroup phase, you may rearrange your ships among any of your colonies and/or home planets, even the home planets where you have no colony.
		You may play your kicker after encounter cards are revealed rather than before they are selected; play reinforcements when you are not involved in the encounter; and play rifts and artifacts that are limited to the regroup or alliance phase as though they were playable As Any Player and during Any Phase.',

		:flavour => 'The Greenhorns are relative newcomers to the scene of Cosmic warfare. Feigning inexperience, they use their wiles to trick other races into allowing them to get away with everything in the book. Surely such room is all that is needed for these "newbies" to glide comfortably into universal dominance.',

		:colour => 0,
		:regroup => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => cd)

	grudge = Alien.find_or_create_by(
		:name => 'Grudge',
		:tagline => 'Penalizes For Refusing To Ally',

		:effect =>
		'You have the power of Revenge. As a main player, after alliances are formed, use this power to give a grudge token to each player you invited to ally, but who did not do so. If you win the encounter (or make a deal), each player with a grudge token discards it and loses one ship of his or her choice to the warp. If you lose the encounter (or fail to make a deal), each player with a grudge token discards it and loses four ships of his or her choice to the warp. Otherwise, grudge tokens are discarded without effect. Lost ships cannot include ships used to ally with the other side.',

		:flavour => 'Suffering from a species history of almost uninterrupted betrayal and disappointment, the originally kind Grudges gradually grew cynical. Expecting no good will from others, they began to brood and resolved to wreak vengeance on all who would Turn Aside their outstretched suction disc of friendship.',

		:colour => 2,
		:alliance => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => ce)

	grumpus = Alien.find_or_create_by(
		:name => 'Grumpus',
		:tagline => 'Kicks Others Off Vacated Planets',

		:effect =>
		'You have the power to Grump. Whenever one of your colonies is removed from any planet, use this power. At the end of the current phase, every other player who has a colony on that planet must send one of his or her ships from that planet to the warp.
		You do not lose this power because of having too few home colonies.',

		:flavour => 'The Grumpus is indeed a stodgy curmudgeon. Other species prefer not to interact with the Grumpi, lest they be drawn into a long-winded conversation about how the Universe was better back in their millennium. And be careful where you tread when visiting the Grumpus home world; they cannot stand it when there are aliens on their lawn.',

		:colour => 1,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => cs)

	guerilla = Alien.find_or_create_by(
		:name => 'Guerilla',
		:tagline => 'Winners Lose All But 1 Ship',

		:effect =>
		'You have the power of Attrition. As a main player, after you lose an encounter, use this power to weaken your opponent and each of his or her allies. Each player you weaken loses all but one of his or her ships in the encounter to the warp.',

		:flavour => 'Used to fighting against superior forces, the Guerrillas have learned to strike from the shadows, wearing down their opponents\' numbers even when they lose a battle. Seeing themselves as heroic underdogs, the Guerrillas have set out to liberate the Cosmos from those alien races who would oppress it, whether the Cosmos wants to be liberated or not.',

		:colour => 0,
		:resolution => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => ci)

	hacker = Alien.find_or_create_by(
		:name => 'Hacker',
		:tagline => 'Chooses Compensation',

		:effect =>
		'You have the power to Hack. As a main player, when collecting compensation, you may use this power to choose the player that you are collecting compensation from, whether that player was your opponent or not. You then look through that player\'s hand and choose the cards you want for compensation.
		As a main player, when your opponent collects compensation from you, you may use this power to select the cards he or she gets.',

		:flavour => 'Masters of technology, the Hackers have embedded various devices into their bodies in an attempt to improve their skills at computer fraud. Although geniuses when it comes to code breaking and decrypting data, Hackers aren\'t much good in a more conventional battle. However, more than one would-be conqueror has learned to their sorrow that the Hackers have extremely nasty ways of getting their revenge.',

		:colour => 0,
		:resolution => true,
		:offense => true, :defense => true,
		:expansion => ce)

	hate = Alien.find_or_create_by(
		:name => 'Hate',
		:tagline => 'Opponents Lose Cards Or Ships',

		:effect =>
		'You have the power of Rage. At the start of your turn, use this power to force every
		player to either discard a card or lose ships. First, choose and discard a card from
		your hand. Every other player must then choose to either discard a card of the same
		type (attack, negotiate, artifact, etc.) or else lose three ships of your choice to the
		warp. If you discard an attack card, your opponents must discard an attack card of
		equal or higher value. If an opponent has no cards of the discarded type, he or she
		must lose ships instead. If, after using this power, you do not have any encounter
		cards in your hand, draw a new hand.',

		:flavour =>
		'A short, physically unimposing race, the Hate evolved in a crowded part of the
		Cosmos and were pushed aside by other, more powerful, races. Forced to subsist
		on food scraps and the leavings of the other species, the Hate swore that one day
		they would be the ultimate power on the Cosmic scene.',

		:colour => 1,
		:startturn => true,
		:mandatory => true,
		:offense => true,
		:expansion => ce
		)

	healer = Alien.find_or_create_by(
		:name => 'Healer',
		:tagline => 'Can Save Others\' Ships From Warp',

		:effect =>
		'You have the power to Heal. When another player loses ships to the warp {or has ships removed from the game}, you may use this power to return to that player all the ships he or she just lost and earn one card from the deck. Being healed does not prevent a player from receiving compensation or other benefits associated with the lost ships. A healed player replaces his or her ships on any of his or her colonies. During an encounter you may heal several players, drawing one card for each.',

		:flavour => 'Rapid geologic activity forced extreme biological diversification on the Healer homeworld. Possessing vast knowledge of herbal and mutant lore, Healers are now prized by other beings for their life sustaining skills. Amidst loud rejoicing over renewed health, who could deny them their modest fee?',

		:colour => 1,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:expansion => ce)

	horde = Alien.find_or_create_by(
		:name => 'Horde',
		:tagline => 'Gains Tokens That Act Like Ships',

		:effect =>
		'You have the power to Spawn. Each time you draw a card from the deck or retrieve a ship from the warp, use this power. Add a horde token to one of your colonies. Treat horde tokens as ships under your control, but discard them if sent to the warp, removed from the game, or captured by another player. If you lose this power, horde tokens remain under your control until discarded.
		This power cannot be stolen, copied, or separated from your player color through any means.',

		:flavour => 'A little-known race from a Cosmic backwater, the Horde have only one real skill – spawning. Leave a Horde alone in a room for a minute, and you\'ll return to two Hordes avidly chatting with each other. Leave them in your house for an afternoon, and you\'ll return home to find that they\'ve taken over your city – at which point, if you\'re lucky, you\'ll have just enough time to flee the planet before they claim it in the name of the Horde race.',

		:colour => 2,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => ca)

	host = Alien.find_or_create_by(
		:name => 'Host',
		:tagline => 'Plays And Adds Unused Flares',

		:effect =>
		'You have the power to Channel. At the start of any player\'s turn, you may remove any or all flares on this sheet from the game, and/or draw cards from the unused flare deck to place facedown on this sheet until you have three here, in either order.
		At any time, you may use this power to play a wild flare from this sheet as though it were in your hand. If the flare would return to your hand after use, discard it to the regular discard pile. If you are zapped, place the flare back on this sheet. Cards played from this sheet do not count toward the normal limit of one flare per encounter.',

		:flavour => 'The Hosts\' ability to channel the spiritual essence of past and future aliens allows them to manifest some of the defining characteristics of their alien occupants. After being channeled, some aliens decide the experience was so pleasant they return to active public life, popping up here and there to affect galactic events.',

		:colour => 1,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:expansion => cd)

	human = Alien.find_or_create_by(
		:name => 'Human',
		:tagline => 'Mostly Harmless',

		:effect =>
		'You have the power of Humanity. As a main player or ally, after encounter cards are revealed, use this power to add 4 to your side\'s total. If this power is zapped, however, your side automatically wins the encounter.',

		:flavour => 'Warlike and fairly dim by Cosmic standards, humans are not seen as much of a threat. However, exposing a human to Cosmic energy can unlock strange and awesome powers. General consensus among the other races is that this is a course of action to be avoided.',

		:colour => 1,
		:reveal => true,
		:offense => true, :defense => true, :ally => true,
		:mandatory => true,
		:expansion => ce)

	industrialist = Alien.find_or_create_by(
		:name => 'Industrialist',
		:tagline => 'Adds Losing Attack Cards',

		:effect =>
		'You have the power to Build. As a main player, after you lose an encounter in which you have revealed an attack card, your opponent must either allow you to win the encounter instead of losing, or else allow you to place your attack card faceup on this sheet, adding it to your "stack." Your stack is not part of your hand and cannot be drawn from by other players or affected by other powers.
		As a main player, after you reveal an attack card, use this power to either add or subtract the total of all the attack cards in your stack from your total. For instance, if you have an attack 08 and an attack 12 on this sheet, you would add or subtract 20 from your total.',

		:flavour => 'The Industrialists have shown themselves to be masters at learning from their own mistakes. From the Ashes of each defeat arises a more powerful assault the next time. Even though the Industrialists don\'t seem to learn as much from their successes, the strength they\'ve gained from their defeats is sufficient for them to carve out a piece of the Cosmos for themselves.',

		:colour => 1,
		:reveal => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => cc)

	invader = Alien.find_or_create_by(
		:name => 'Invader',
		:tagline => 'Launches Sneak Attacks',

		:effect =>
		'Game Setup: Shuffle the three "Invasion!" destiny cards into the destiny deck. These destiny cards cause you to have an extra encounter when drawn during another player\'s turn. After you have an extra encounter due to an "Invasion!" destiny card, the player who drew it during his or her turn restarts his or her encounter.
		You have the power of Invasion. As a main player, after an "Invasion!" destiny card or a destiny card of your player color is drawn, you may use this power to discard your entire hand and draw a new hand of eight cards. Use this power only once per encounter.',

		:flavour => 'Originating in a place beyond space and time, the Invaders have slowly eroded away the barriers between There and Here, planning their invasion of our Universe all the while. Now, at last, their time is at hand, and they have begun tearing their way through the veils that remain, popping up in an instant to Wreak Havoc on everything they find in this new, unnatural place.',

		:colour => 1,
		:destiny => true,
		:offense => true, :defense => true,
		:expansion => cc)

	joker = Alien.find_or_create_by(
		:name => 'Joker',
		:tagline => 'Makes Attack Cards Wild',

		:effect =>
		'Game Setup: Take the nine joker tokens (six different attacks, a regular negotiate, a morph, and a retreat) and place them faceup on this sheet.
		You have the power of Wild Cards. Attack 08 cards are initially "wild." At the start of your turn, you may name any other attack card to become the new wild card instead.
		After encounter cards are revealed, for each one that matches the current wild card, use this power. Place one faceup joker token from this sheet on the wild card to change it into the card indicated by that token. After the outcome is determined, return the used joker token(s) to this sheet, facedown. When you remove the last faceup joker token from this sheet, immediately turn the used ones here faceup for re-use.',

		:flavour => 'The fun-loving Jokers enjoy humiliating the conceited, mocking the powers that be, and causing general chaos. They seek not to rule, but to satirize the Universe.',

		:colour => 2,
		:reveal => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => cd)

	judge = Alien.find_or_create_by(
		:name => 'Judge',
		:tagline => 'Assigns Extra Win/Lose Terms',

		:effect =>
		'You have the power of Fiat. As a main player, before encounter cards are selected, you may use this power to declare any extra gains that either the winner or the loser (but not both) will get if an attack card is revealed. These extra gains are limited by the rules on deals: one colony where the opponent has a colony and/or card(s) from the opponent. For example, you may declare "the winner will also get all of the loser\'s cards, and an extra colony on any planet where the loser has a colony." The fiat is in addition to the normal results, and happens at the end of the encounter.',

		:flavour => 'Long ago abandoning physical bodies, the Judges periodically coalesce amidst perfect protocol to deliberate upon their destiny. The Ring of Judges, when reflecting, creates a field of power in which each creature may ponder its fate.',

		:colour => 2,
		:planning => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => cd)

	kamikaze = Alien.find_or_create_by(
		:name => 'Kamikaze',
		:tagline => 'Sacrifices Ships For Cards',

		:effect =>
		'You have the power of Sacrifice. As a main player, before encounter cards are selected, you may use this power to send up to four of your ships from any of your colonies to the warp. For every ship you sent to the warp, draw two cards from the deck.',

		:flavour => 'Always a close-knit society, the Kamikaze have taken the virtue of self-sacrifice and raised it to an art form. In battle, they are greatly feared for their ability to die explosively at will. But the Kamikaze know that when their race rises to Cosmic superiority, those who gave their lives along the way will be remembered forever.',

		:colour => 1,
		:planning => true,
		:offense => true, :defense => true,
		:expansion => ce)

	laser = Alien.find_or_create_by(
		:name => 'Laser',
		:tagline => 'Blinds Opponents To Part Of Hand',

		:effect =>
		'You have the power to Blind. As a main player, before allies are invited, use this power. If your opponent will need to draw a new hand to obtain encounter cards, he or she does so now. Then, you select at random a number of cards in his or her hand (without looking at them) up to the number of ships he or she has in the encounter. Your opponent must set the selected cards aside for the rest of the encounter.
		If your opponent has no encounter cards after being blinded, he or she loses the encounter. Otherwise, the encounter proceeds normally. At the end of the encounter, your opponent retrieves the cards that were set aside.',

		:flavour => 'Descended from an ancient sun-worshipping cult, the modern Lasers have learned to focus stellar power accurately enough to bedazzle any opposition. They have now embarked on a plan to spread confusion and fear among their enemies, before stepping in to build a coherent Cosmos in their own image.',

		:colour => 0,
		:alliance => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => cd)

	leviathan = Alien.find_or_create_by(
		:name => 'Leviathan',
		:tagline => 'May Attack With Planet',

		:effect =>
		'You have the power of Worldships. As the offense, after the hyperspace gate is aimed, instead of placing ships in the gate normally you may use this power to choose one of your home planets that has no other players\' ships on it and place that planet on the gate as a worldship. Any ships you have on the worldship are normal offensive ships in the encounter. The worldship is not a ship but adds 20 to your total after encounter cards are revealed. If you lose the encounter, all ships on the worldship are sent to the warp. If you win, you may leave up to four of your ships from the worldship behind on the targeted planet. In any case, the worldship then returns to your home system with any ships that are still on it.',

		:flavour => 'Immense and powerful creatures, the Leviathans consumed every resource on their own worlds until they themselves became like planets. The Leviathan fleets, now stationed within the fleshy folds of their masters, scout out new worlds for the Leviathans to envelop. The sight of a world-sized entity gating in through hyperspace often causes madness and hysteria on the targeted planet, but it doesn\'t last long.',

		:colour => 1,
		:launch => true,
		:offense => true,
		:expansion => ci)

	lightning = Alien.find_or_create_by(
		:name => 'Lightning',
		:tagline => 'Gains And Takes Away Encounters',

		:effect =>
		'You have the power of Speed. Each time any other player begins a second encounter during his or her turn, use this power to add a token to this sheet.
		After the end of any encounter (even your own), you may discard three tokens from this sheet to immediately have one encounter. Afterwards, play resumes from where it left off.
		At the start of a player\'s second encounter, you may discard two tokens from this sheet to immediately end the encounter.',

		:flavour => 'The Lightning live out their lives in a matter of hours. They move so fast that the rest of the Universe seems to act in Slow Motion to them. More than one alien race has sneered at the short lifespan of the Lightning, only to find themselves taken over in a flash.',

		:colour => 1,
		:regroup => true,
		:defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => ca)

	lizard = Alien.find_or_create_by(
		:name => 'Lizard',
		:tagline => 'Metamorphoses After Winning',

		:effect =>
		'Game Setup: Choose one unused player color and place all the ships of that color on this sheet. Do not use this power unless you have an unused player color.
		You have the power to Transmogrify. As a main player, after you win an encounter using any of your normal ships, use this power to morph those winning normal ships. Remove them from the game and replace them with an equal number from this sheet. Your morphed ships count as ships of your color, except that each one adds an extra +2 to your side\'s total when involved in an encounter as a main player or ally (even after this power is zapped or lost).
		When you have no normal ships remaining in the game, you win the game. You may still win the game via the normal method.
		This power cannot be stolen, copied, or separated from your player color through any means.',

		:flavour => 'The Lizards\' lifecycle comprises metamorphic stages not unlike those of other sentient reptilians. Due to their world\'s proximity to a neutron star, however, they have developed an additional hyper-metamorphism that is triggered only by extreme adrenal overload. Finding battle victories to be effective activation events, the Lizards now seek physical perfection through conquest.',

		:colour => 0,
		:resolution => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => cd)

	locust = Alien.find_or_create_by(
		:name => 'Locust',
		:tagline => 'Eats Planets When Alone',

		:effect =>
		'You have the power to Devour. At the start of any regroup phase, if you have a foreign colony on a planet by yourself (i.e., there are no other players\' ships on the planet with you), use this power to devour the planet, removing it from the game and placing it on this sheet. Your ships on that planet return to your other colonies.
		Each planet you have devoured counts as two foreign colonies toward victory for you, even if this power is later lost or stolen. If this power is stolen, devoured planets do not transfer with it.',

		:flavour => '',

		:colour => 1,
		:regroup => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => ci)

	loser = Alien.find_or_create_by(
		:name => 'Loser',
		:tagline => 'Winner Loses And Loser Wins',

		:effect =>
		'You have the power of Upset. As a main player, before encounter cards are selected, you may use this power to declare an upset. Once an upset has been declared, both players must play attack cards, if possible. Then, after cards are revealed, the winning side loses and the losing side wins. This occurs after all other game effects are resolved (such as the Human\'s power being zapped).',

		:flavour => 'The enigmatic Losers have proven to be quite cunning in battle. Strengths become weaknesses and weaknesses strengths as the glassy-eyed Loser shows its opponents that nice guys finish first.',

		:colour => 0,
		:planning => true,
		:offense => true, :defense => true,
		:expansion => ce)

	love = Alien.find_or_create_by(
		:name => 'Love',
		:tagline => 'Makes The Cosmos Go \'Round',

		:effect =>
		'You have the power of Joy. At the start of your turn, use this power. Choose and discard one card from your hand. Every other player, in clockwise order, may then choose and discard one card from his or her hand. If he or she discards the same type as you (attack, negotiate, artifact, etc.), that player may release all of his or her ships from the warp back to colonies.
		If all players discard the same type of card as you, you collect all of the discarded cards (including yours). If one or more other players do not discard a card matching the type you discarded, you may release all of your ships from the warp and use them to establish a foreign colony in the system of one of those players.',

		:flavour => 'A maternalistic and physically imposing race, the Love used to be enveloped in rage and self-loathing. In their Darkest Hour, the Love began to see that simple acts of joy could become contagious; all that was needed was for one race to take the first step toward a happier existence.',

		:colour => 1,
		:startturn => true,
		:offense => true,
		:mandatory => true,
		:expansion => cd)

	lunatic = Alien.find_or_create_by(
		:name => 'Lunatic',
		:tagline => 'Allies Against Self',

		:effect =>
		'You have the power of Insanity. As a main player, after allies are invited, you may use this power to ally against yourself without being invited. Your ships on the losing side are sent to the warp as usual, while your ships on the winning side receive whatever they would normally receive for winning, such as rewards or a colony on the targeted planet.',

		:flavour => 'Not known for their rational behavior, the Lunatics have existed thus far by being on the winning side of every battle in some form or another.',

		:colour => 1,
		:alliance => true,
		:offense => true, :defense => true,
		:expansion => cc)

	machine = Alien.find_or_create_by(
		:name => 'Machine',
		:tagline => 'Can Continue Turn',

		:effect =>
		'You have the power of Continuity. Your turn is not limited to two encounters. After each of your encounters (whether successful or not), you may use this power to have another encounter as long as you have at least one encounter card left in your hand.',

		:flavour => 'A race long lost to antiquity had the foresight to construct a mammoth Machine in the core of their planet. Pouring all their knowledge and ambition into its memory banks, they programmed it with this mandate: "Top priority... expand control, never cease... eliminate opposition, never cease... achieve mastery, never cease..."',

		:colour => 2,
		:resolution => true,
		:offense => true,
		:expansion => ce)

	macron = Alien.find_or_create_by(
		:name => 'Macron',
		:tagline => 'Each Ship Is Worth 4',

		:effect =>
		'You have the power of Mass. As the offense or an ally, use this power when sending ships into the encounter. You may send only one ship.
		As a main player or ally, use this power after encounter cards are revealed. Each of your ships counts as 4 toward your side\'s total instead of 1.
		When collecting compensation or rewards, each of your ships is worth two ships.',

		:flavour => 'Beginning life on a gargantuan planet, the Macrons accustomed themselves to tremendous atmospheric and gravitational forces. Power comes so naturally to them that they scoff at the fragile intelligences they crush on their way to universal dominance.',

		:colour => 0,
		:launch => true, :alliance => true, :reveal => true,
		:offense => true, :defense => true, :ally => true,
		:mandatory => true,
		:expansion => cd)

	magician = Alien.find_or_create_by(
		:name => 'Magician',
		:tagline => 'Steals Card, Confounds Opponent',

		:effect =>
		'You have the power of Prestidigitation. As a main player, when encounter cards are to be selected, use this power to force your opponent to play two encounter cards facedown. Choose one of the two cards at random and add it to your hand. Then, play an encounter card from your hand normally (even the card you just took). Your opponent must play the card you didn\'t choose as his or her encounter card. The rest of the encounter is resolved as usual.
		If another game effect requires you to play your card first (e.g., Oracle, Wild Magician), you must do so. You then still use this power, but may not change the card you played.
		If your opponent has only one encounter card left in hand (and proves it by showing you his or her hand except for the encounter card), this power has no effect.',

		:flavour => 'Lacking any natural weapons with which to defend themselves, the Magicians had to use their keen intellect to survive. Confusing and confounding their enemies became second nature to the wily Magicians. Indeed, many a would-be Cosmic conqueror has found occasion to curse the day that the Magicians swindled a visiting alien out of his spaceship and soared out into the Cosmos.',

		:colour => 2,
		:planning => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => ce)

	masochist = Alien.find_or_create_by(
		:name => 'Masochist',
		:tagline => 'Tries To Lose Own Ships',

		:effect =>
		'You have the power to Hurt Yourself. At the start of any regroup phase (before the offense retrieves a ship from the warp), use this power to win the game if you have lost all of your ships. Lost ships include those in the warp, those removed from the game, and those captured by other players.
		You do not lose this power because of having too few home colonies, and you may still win the game via the normal method.
		Do Not Use with Healer',

		:flavour => 'The Masochists suffer from a neurological disorder where they derive pleasure from self-flagellation. However, some are beginning to wonder if it\'s really a religious ritual to bring forth their dominance in the Universe.',

		:colour => 2,
		:regroup => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => ce)

	mercenary = Alien.find_or_create_by(
		:name => 'Mercenary',
		:tagline => 'Always Rewarded For Winning',

		:effect =>
		'You have the power of Bounty Hunting. As a main player or offensive ally, after your side wins an encounter, use this power to receive rewards equal to the number of ships you had in the encounter. This is in addition to any other benefits you receive normally for winning the encounter.',

		:flavour => 'Originally created by another race to serve as police, the robotic Mercenaries were designed to be exert trackers and warriors. However, a terrible plague wiped out their masters and, left alone for eons, the Mercenaries gradually became self-aware. Vowing that they would never be used as slaves again, the Mercenaries made their way out into the Cosmos, always being careful to exact a price for their services.',

		:colour => 0,
		:resolution => true,
		:offense => true, :defense => true, :ally => true,
		:mandatory => true,
		:expansion => ci)

	merchant = Alien.find_or_create_by(
		:name => 'Merchant',
		:tagline => 'Plays Cards As Extra Ships',

		:effect =>
		'You have the power to Hire. As a main player or ally, after encounter cards are selected but before they are revealed, if you have at least one ship in the encounter, you may use this power to play one or more cards facedown from your hand as hired ships. These cards are treated as extra ships you have in the encounter and may be played in addition to your normal maximum of 4 ships as the offense or an ally. Hired ships cannot be played for their card effect and are not part of your hand. Other players may not look at or draw hired ships. Any hired ship that goes to the warp, is captured, or is removed from the game is discarded. Otherwise, hired ships become normal cards again and return to your hand at the end of the encounter.',

		:flavour => 'Hailing from a world incredibly rich in natural resources, the Merchants achieved star travel early in their history thanks to a crew of intergalactic mercenaries who crash-landed on their planet. Since then, the Merchants have frequently used their wealth and natural charisma to hire other races to do their fighting for them.',

		:colour => 1,
		:planning => true,
		:offense => true, :defense => true, :ally => true,
		:expansion => ci)

	mesmer = Alien.find_or_create_by(
		:name => 'Mesmer',
		:tagline => 'Can Change Own Artifacts',

		:effect =>
		'You have the power of Mass Hypnosis. You may use this power to play any artifact card from your hand as though it were any artifact card you name. If you are zapped you return the card to your hand, but may then play it normally, for its original printed effect, if appropriate.',

		:flavour => 'Raised in a society where grace and physical charm are equated with success, the unsightly Mesmers have as a defense developed the power to entrance all who might gaze upon them. Now, accomplished performers, the Mesmers can bedazzle a crowd into believing anything. Only long after the glow has faded do the most astute begin to wonder how much was real, and how much imagined.',

		:colour => 2,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:expansion => cd)

	mimic = Alien.find_or_create_by(
		:name => 'Mimic',
		:tagline => 'Copies Opponent\'s Hand Size',

		:effect =>
		'You have the power to Imitate. As a main player, before encounter cards are selected, use this power. If your opponent has more cards in hand than you, draw cards from the deck until you have just as many cards in your hand. If your opponent has fewer cards in hand than you, discard cards of your choice until you have just as few cards in your hand.',

		:flavour => 'Evolving from a small insectoid creature that had an incredible gift for imitating the appearance of the other beings on their homeworld, the Mimics have come to be known as some of the greatest copycats in the Cosmos. Watching a Mimic change form is an eye-watering process, a bit like watching a giant, invisible sculptor at work. The Mimics hope that their ability to blend in throughout the Cosmos will allow them to ascend to Cosmic dominance, but only time will tell.',

		:colour => 1,
		:planning => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => cc)

	mind = Alien.find_or_create_by(
		:name => 'Mind',
		:tagline => 'Sees Other Players\' Hands',

		:effect =>
		'You have the power of Knowledge. Before allies are invited, you may use this power to look at the entire hand of one of the main players. If you are a main player, you may look at your opponent\'s hand. You may not tell any other players what cards you see in a player\'s hand using this power.',

		:flavour => 'Springing forth on a triple star system subject to constant Energy Fluxes, the Mind thrives on shifting wave pulses, ultraviolet rays, and gamma-release explosions. Extreme sensitivity to potentialities has enabled it to view with wisdom (and some skepticism) the threats of its Cosmic competitors.',

		:colour => 1,
		:alliance => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:expansion => ce)

	mirage = Alien.find_or_create_by(
		:name => 'Mirage',
		:tagline => 'Changes Number Of Ships Involved',

		:effect =>
		'You have the power of Delusion. As a main player, after encounter cards are revealed, use this power to choose any one of your colonies and any one of your opponent\'s colonies. Encounter totals are calculated as though the main players\' ships on the chosen colonies were involved instead of their actual ships in the encounter. Allies\' ships count toward the totals normally.',

		:flavour => 'Beings of inconstant mass, the Mirage willfully change their form to mislead adversaries about their actual numerical strength. The field of distortion surrounding the Mirage is so powerful, those venturing within it are unable to precisely determine their own appearance. Great fleets have been deluded into thinking they were suddenly outnumbered, and those captains able to survive become forever wary of the misshapen ripples of space seen in the distance.',

		:colour => 0,
		:reveal => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => cd)

	mirror = Alien.find_or_create_by(
		:name => 'Mirror',
		:tagline => 'Swaps Digits On Attack Cards',

		:effect =>
		'You have the power of Reversal. As a main player, after encounter cards are selected but before they are revealed, you may use this power to call for a reversal. If one or both players reveal attack cards, this changes the value of those cards by reversing their digits. For example, this would make an attack 15 into a 51, a 20 into an 02, and an 08 into an 80. Resolve the encounter using these reversed values.',

		:flavour => 'Springing from a world with such a high surface silver content that everything reflected off everything else, the Mirrors adapted to the difficulty of separating mirror images from reality. They also developed an inner symmetry that confounds their opponents across the Cosmos.',

		:colour => 1,
		:planning => true,
		:offense => true, :defense => true,
		:expansion => ce)

	miser = Alien.find_or_create_by(
		:name => 'Miser',
		:tagline => 'Gets Second Hand',

		:effect =>
		'Game Setup: You are dealt two separate eight-card hands. Look at them and choose one to be your "hoard." Place it facedown on this sheet.
		You have the power to Hoard. Whenever you wish to play a card, you may use this power to play a card from your hoard instead of your normal hand. You may not add cards you gain to your hoard, and other players may not look at or draw cards from your hoard. If there are no encounter cards left in your hoard, you may show it, then discard it and get a new eight-card hoard. Cards played from your hoard which should return to your hand must return to your hoard instead.',

		:flavour => 'Barely eking out a living on their shriveled moon, the Misers for generations secreted away their small annual surplus. But as the hoard grew, so did their greed, until now they prepare to risk their holdings for greater Cosmic booty.',

		:colour => 0,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:expansion => ce)

	mite = Alien.find_or_create_by(
		:name => 'Mite',
		:tagline => 'Demands Colony Or Loss Of Cards',

		:effect =>
		'You have the power to Bluster. As the offense, after you launch ships in the hyperspace gate, if the defense has more than three cards in hand, use this power to bluster. The defense must either discard down to three cards at random or let you establish a colony on the targeted world. If the defense gives you a colony, land any ships you have in the hyperspace gate on the targeted planet and the encounter immediately ends successfully. If the defense discards down to three cards at random, the encounter continues normally.',

		:flavour => 'Long stigmatized by others as being pests, swarms of microscopic Mites learned to use their omnipresence your encounter to release all players\' ships from the warp. Freed ships return to any of their owners\' colonies.',

		:colour => 1,
		:launch => true,
		:offense => true,
		:mandatory => true,
		:expansion => ce)

	mouth = Alien.find_or_create_by(
		:name => 'Mouth',
		:tagline => 'Gobbles Up Cards',

		:effect =>
		'You have the power to Gobble. As a main player, after alliances are formed, whenever a card would be placed in the discard pile by the opposing main player or one of that player\'s allies, use this power to gobble up the card instead. When you gobble up a card, it is placed facedown on this sheet.
		At the end of the resolution phase, if there are five or more cards on this sheet, use this power to belch one of those cards back up, placing it in your hand. The rest of the cards on this sheet are removed from the game.',

		:flavour => 'Although considered more of an annoyance than a genuine threat, the Mouth can devastate the unwary with its constant eating. Anything within reach of a Mouth will likely be swallowed whole in the blink of an eye. Objects too large for a single bite will be systematically devoured to satisfy its voracious hunger.',

		:colour => 2,
		:alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => cs)

	muckraker = Alien.find_or_create_by(
		:name => 'Muckraker',
		:tagline => 'Gets Allies Thrown Out',

		:effect =>
		'You have the power to Slander. As a main player or ally, at the start of the resolution phase, you may use this power to discard one card from your hand and accuse any or all winning allies of subversive intent. Each accused ally may bribe you to cancel your accusation against him or her by giving you, from his or her hand, any non-encounter card or a card of the same type (attack, negotiate, etc.) as the one you discarded. Attack card bribes must have a higher value than the attack card you discarded. Accused allies who cannot or do not bribe you must return their ships to their other colonies, and receive no rewards, colonies, or other benefits of winning the encounter.
		If you are an ally and your side won, the main player on your side may exempt any or all allies from this power. You may not accuse yourself.',

		:flavour => 'With tongues of silver and hearts of arsenic, the Muckrakers are natural soapbox politicians, never missing an opportunity to sow seeds of discord if it suits their aims. Presenting themselves as watchmen dedicated to protecting their neighbors from flim-flam artists, they secretly scheme to remove those who would stand in their way.',

		:colour => 1,
		:resolution => true,
		:offense => true, :defense => true, :ally => true,
		:expansion => cd)

	mutant = Alien.find_or_create_by(
		:name => 'Mutant',
		:tagline => 'Maintains 8-Card Hand',

		:effect =>
		'You have the power to Regenerate. As a main player, before allies are invited, if you have fewer than eight cards you may use this power to refill your hand. Draw cards one at a time, at random, from any other player(s) and/or from the deck. Draw until you have a full hand of eight cards.',

		:flavour => 'Evolving on a highly radioactive and unshielded moon, the protean Mutants quickly learned to augment their silicon-based heredity. Before long they began to control and accumulate key genetic codes from other life forms, stripping opponents of their most basic defenses in a Mutant drive to transform the Universe.',

		:colour => 1,
		:alliance => true,
		:offense => true, :defense => true,
		:expansion => ce)

	neighbour = Alien.find_or_create_by(
		:name => 'Neighbour',
		:tagline => 'Adds All Ships In System To Attack',

		:effect =>
		'You have the power of Community. As a main player or ally, after the main player on your side reveals an attack card, use this power to add one to your side\'s total for each ship you have in the targeted system that is not involved in the encounter.',

		:flavour => 'No race may have as strong a sense of community and working toward the common good as the Neighbor. While some races are secretive, solitary, or sensitive, the Neighbor is always interested in what the other races nearby are doing, and they are more than happy to lend another alien their technology or tools. Several times each year, they ritualistically come together in great masses to feast on food prepared by other Neighbors, and regale each other with anecdotes everyone has heard several times before.',

		:colour => 0,
		:reveal => true,
		:offense => true, :defense => true, :ally => true,
		:mandatory => true,
		:expansion => cs)

	observer = Alien.find_or_create_by(
		:name => 'Observer',
		:tagline => 'Allies Do Not Go To Warp',

		:effect =>
		'You have the power to Protect. As an ally, when you should lose ships to the warp, use this power to instead return them to any of your colonies and keep using them.
		As a main player, when any of your allies should lose ships to the warp, use this power to instead allow your allies to return them to any of their colonies of their choice.',

		:flavour => 'Seldom interfering in Cosmic affairs, the Observers have been around for millennia, simply watching the other alien races. With their advanced technology and strange abilities, the others were hesitant to draw them into their squabbles. Now, however, it seems that the Observers have decided that the time for action has come at last.',

		:colour => 0,
		:resolution => true,
		:offense => true, :defense => true, :ally => true,
		:mandatory => true,
		:expansion => ce)

	oracle = Alien.find_or_create_by(
		:name => 'Oracle',
		:tagline => 'Forsees Opponent\'s Card',

		:effect =>
		'You have the power to Foresee. As a main player, when encounter cards are to be selected, use this power to force your opponent to play his or her encounter card faceup. Only after you have seen your opponent\'s card do you select and play your card.',

		:flavour => 'During millennia of civilization, the ancient Oracles developed perceptiveness about the intentions of others to uncanny lengths. While reluctant to test the outer limits of their vision, they find even short-range prescience has given them the reputation of great wisdom.',

		:colour => 0,
		:planning => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => ce)

	outlaw = Alien.find_or_create_by(
		:name => 'Outlaw',
		:tagline => 'Steals Cards From Opponents',

		:effect =>
		'You have the power to Waylay. As a main player, after alliances are formed, you may use this power to take one card at random from your opponent and from each of his or her allies. Add those cards to your hand.',

		:flavour => 'The Outlaws are rightly feared throughout the great expanses of space. They arrive in a fury of laser blasts, explosions, and angry threats. Their victims barely have time to react before the Outlaws have swept through a sector, pillaging and stealing loot as they go.',

		:colour => 0,
		:alliance => true,
		:offense => true, :defense => true,
		:expansion => cs)

	pacifist = Alien.find_or_create_by(
		:name => 'Pacifist',
		:tagline => 'Wins With Negotiate Card',

		:effect =>
		'You have the power of Peace. As a main player, if you reveal a negotiate card and your opponent reveals an attack card, use this power to win the encounter.',

		:flavour => 'A simple but ungainly race, the Pacifists long ago learned how to turn the power of an opponent against him. Always ready to demonstrate the superiority of retreat in unbalancing an aggressor, the Pacifists now seek to bring the Universe to its knees by yielding at just the right moment.',

		:colour => 0,
		:reveal => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => ce)

	parasite = Alien.find_or_create_by(
		:name => 'Parasite',
		:tagline => 'Joins Alliance At Will',

		:effect =>
		'You have the power to Infest. When it is your turn to ally, you may use this power to ally (sending one to four ships, as usual) with one side as if you had been invited, even when you were not.',

		:flavour => 'Evolving late on their almost totally polluted world, the Parasites had to depend on the already dominant life forms for survival. But, so rapidly did they succeed in infesting their home planets, they now need unsuspecting hosts to carry them throughout the far reaches of space.',

		:colour => 0,
		:alliance => true,
		:ally => true, :bystander => true,
		:expansion => ce)

	patriot = Alien.find_or_create_by(
		:name => 'Patriot',
		:tagline => 'Offers Cards To Secure Loyalty',

		:effect =>
		'You have the power of Loyalty. Once per encounter, you may use this power to show any player one card from your hand as a show of loyalty. If the player accepts your loyalty, he or she adds the card to his or her hand. If the player declines your loyalty, he or she must give you one of his or her ships from any colony. Place that ship on this sheet.
		As a main player, after alliances are formed but before encounter cards are selected, if you have any ships on this sheet belonging to your opponent, you may use this power to return those ships to that player. Proceed to the resolution phase and resolve the encounter as if both players had revealed negotiate cards.',

		:flavour => 'There is no more faithful ally to have supporting your cause than the reliable, steadfast Patriot. The species is proud of its long heritage of fidelity, while many other races find its loyalty annoying and pretentious.',

		:colour => 1,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:expansion => cs)

	pentaform = Alien.find_or_create_by(
		:name => 'Pentaform',
		:tagline => 'Has Five Life Stages',

		:effect =>
		' Game Setup: Draw five flares from the unused flare deck and arrange the matching alien powers in front of you as "life stages," in the order of your choosing. If any have Game Setup text or are not allowed in the current game, discard them and draw again. Remove the five flares from the game and slide this sheet partway under the leftmost life stage.
		You have the power to Evolve. You use both your Pentaform power and whichever life stage it is underneath (zapping one does not zap the other).
		Whenever you gain a foreign colony, use this power to move this sheet one life stage to the right (if possible). Whenever you lose a foreign colony, use this power to move this sheet one life stage to the left (if possible).',

		:flavour => 'Evolving on the fifth moon of the fifth planet of their star system, the Pentaforms coincidentally developed with five distinct life stages. Though differing in form from one specimen to another, all Pentaforms go through cataclysmic changes from each life stage to the next: childhood, adolescence, adulthood, middle age, and seniority. They have been causing a handful of trouble for the rest of the galaxy.',

		:colour => 2,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => cd)

	phantasm = Alien.find_or_create_by(
		:name => 'Phantasm',
		:tagline => 'Replaces Encounter Card',

		:effect =>
		' You have the power of Instability. As a main player, after encounter cards are revealed, use this power to reveal the top card of the deck.
		If it is not an encounter card, discard it. If it is an encounter card, replace one of either player\'s revealed encounter cards with the card from the deck, discarding the replaced card. In either case, the encounter then continues normally.',

		:flavour => 'Often mistaken for other species, the Phantasm\'s constantly roiling form makes it difficult to classify. This works well for the secretive race, as Phantasms enjoy befuddling and confusing others.',

		:colour => 0,
		:reveal => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => cs)

	philanthropist = Alien.find_or_create_by(
		:name => 'Philanthropist',
		:tagline => 'Gives Away Cards',

		:effect =>
		'You have the power of Giving. As a main player or ally, after alliances are formed, you may use this power to give one card from your hand to either main player (your opponent, if you are a main player). That player immediately adds the card to his or her hand. If, after using this power, you do not have any encounter cards in your hand and you are a main player, you draw a new hand.',

		:flavour => 'Rejecting a heavy-handed, dogmatic religious background, the cynical Philanthropists have learned to parody greed itself. Knowing that the Universe cannot bring itself to reject a gift, even when it is no present, the race has grown cunning in the art of self-serving charity.',

		:colour => 1,
		:alliance => true,
		:offense => true, :defense => true, :ally => true,
		:expansion => ce)

	pickpocket = Alien.find_or_create_by(
		:name => 'Pickpocket',
		:tagline => 'Lifts Cards From Other Players',

		:effect =>
		'You have the power to Lift. Once per encounter, you may use this power to take one card at random from the hand of any other player who has a foreign colony in your system. Add the card to your hand or discard it.',

		:flavour => 'The glorious civilization of the once-noble Edificabi throve for millennia before giving in to the ease of burgling over building. As production of new resources dwindled, their world fell into decline and might have faded from the annals of Cosmic history, had not an unwitting company of spacefarers stumbled upon their troubled neighborhood. Quickly relieving the visitors of every last item of value, the Edificabi – by now reduced to little more than squabbling Pickpockets – saw their chance at a better future. Empowered by their newfound spaceflight technology, they artfully turned their nefarious skills upward and outward. Centuries later, these "big dippers" are still at work lightening the loads of their fellow travelers.',

		:colour => 0,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:expansion => cd)

	pirate = Alien.find_or_create_by(
		:name => 'Pirate',
		:tagline => 'Captures Ships For Booty',

		:effect =>
		'You have the power to Raid. As the offense or an ally, if your side wins the encounter, you may use this power. Capture one or more ships from the losing side by returning an equal number of your winning ships to your other colonies (they do not land on the targeted planet, receive rewards, or gain other benefits from winning). Place the captured ships on this sheet.
		During any regroup phase, you may send up to four ships from this sheet to the warp to receive an equal number of rewards.
		During any regroup phase, you may negotiate the release of any or all ships on this sheet (back to colonies) in exchange for anything their owners may legally give you in a deal, such as cards from their hands or new colonies where they already have one (although this does not count as a deal).',

		:flavour => 'Whispering rapacious orders into their ears, a small flock of rogue traders leads its minions into the far reaches of interstellar space.',

		:colour => 1,
		:resolution => true,
		:offense => true, :ally => true,
		:expansion => cd)

	plant = Alien.find_or_create_by(
		:name => 'Plant',
		:tagline => 'Accumulates Opponents\' Powers',

		:effect =>
		' You have the power of Grafting. As a main player, before encounter cards are selected, you may use this power to graft any one player in whose home system you have at least one colony. If that player has not lost his or her power, you steal that power until the end of the encounter. If you lose your own power, you may not graft any power until you get your own back.',

		:flavour => 'This species of Plant combines the longevity of the redwood, the persistence of the weed, and the delicacy of the fern. Slowly grafting to themselves the traits of others, they can afford to quietly wait until their enemies grow tired, then spread their tendrils unopposed throughout the Cosmos.',

		:colour => 2,
		:planning => true,
		:offense => true, :defense => true,
		:expansion => ci)

	poison = Alien.find_or_create_by(
		:name => 'Poison',
		:tagline => 'Has Hazardous Home System',

		:effect =>
		'You have the power of Toxicity. Each time a card with a hazard warning is drawn from the destiny deck, use this power. Each foreign colony in your home system loses one ship to the warp.
		In addition, as a main player, if both players reveal attack cards and your opponent\'s attack card value is within 2 of your attack card\'s value (such as an attack 04 and an attack 06), you may use this power to win the encounter, regardless of the actual totals.',

		:flavour => 'Born from an ooze of chemicals that are highly toxic to all other life forms, the Poison are greatly feared for their ability to kill with a single touch. Those who visit their homeworlds must exercise extreme caution, as even the barest whiff of the atmosphere can prove fatal.',

		:colour => 2,
		:destiny => true, :reveal => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => ca)

	porcupine = Alien.find_or_create_by(
		:name => 'Porcupine',
		:tagline => 'Discards Cards For Attack Power',

		:effect =>
		'You have the power to Needle. As a main player or ally, if both players revealed attack cards and your side would lose the encounter, you may use this power to discard any number of cards from your hand. Then, add or subtract from your side\'s total an amount equal to the number of cards you discarded.',

		:flavour => 'Under no circumstance is meeting a Porcupine a pleasant experience. Although highly intelligent, these creatures declare vendettas with little or no provocation. They exhibit no sense of self-preservation when pursuing the target of their ill will. Rather than talking out their problems, they are more than happy to let their razor-sharp quills do all the talking for them.',

		:colour => 1,
		:reveal => true,
		:offense => true, :defense => true, :ally => true,
		:expansion => cs)

	prophet = Alien.find_or_create_by(
		:name => 'Prophet',
		:tagline => 'Predicts Encounter Winner',

		:effect =>
		'You have the power to Predict. When you are not a main player or ally, you may use this power before encounter cards are selected to predict aloud which main player (offense or defense) will win. A deal counts as a win for this purpose. If you are correct, you gain a colony on any one planet of your choice with any number of ships taken from your colonies. If you are not correct, the winner selects any two of your ships and sends them to the warp. If there is no winner, this power has no effect.',

		:flavour => 'Declaring themselves to be omniscient, the Prophets set forth into the promised vacuum of space to seek a new home in the interstellar wilderness. Are these Prophets false? Only the Eons will judge.',

		:colour => 2,
		:planning => true,
		:bystander => true,
		:expansion => cc)

	pygmy = Alien.find_or_create_by(
		:name => 'Pygmy',
		:tagline => 'Colonies Count As Half',

		:effect =>
		'Game Setup: Choose one unused player color and place the five extra planets of that color in your home system (four in a four-planet game). Place two of your ships on each of your home planets. Your player color is the color of your ships. Do not use this power unless you have an unused player color.
		You have the power of Half. Each of your home worlds counts as only half of a foreign colony toward victory for all other players (rounding down). There can never be more than four ships on any of your planets (counting yours). When determining landing order, use the timing rules. This power cannot be zapped, lost, stolen, copied, or separated from your player color through any means.',

		:flavour => 'When the Cosmos was young, the Pygmies were quite large, living on twin worlds, rich with valuable resources. A gravitational anomaly caused the two planets to collide, scattering the Pygmies among the ruined rubble of their former homes. With so little space to exist, each successive generation of the Pygmy race became physically smaller, but the desire to grow their empire never diminished. The inhospitable chunks of debris on which the Pygmies now live serve only as a staging ground for their invasion of other worlds.',

		:colour => 1,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => ca)

	quartermaster = Alien.find_or_create_by(
		:name => 'Quartermaster',
		:tagline => 'Delivers Rewards',

		:effect =>
		'You have the power to Supply. Whenever other player(s) should receive rewards, use this power. Those players announce how many rewards of each kind they will receive. You decide which colonies their ships return to. Then, you draw all of their cards together, look at them, and deliver the appropriate number to each player as you choose. If multiple sources are involved (e.g., the cosmic and reward decks), you must draw the cards as announced but may deliver them as you choose, as long as each player receives the correct number.
		If you are due rewards as well, receive yours afterwards. Otherwise, when delivering the others\' rewards you may either retrieve one of your ships from the warp, or draw one extra card from a deck those rewards came from, include that card in your delivery decisions, and keep whichever card is left over for yourself.',

		:flavour => 'The Quartermasters were first tasked with ordering supplies for other alien races. They soon found themselves handling transportation and military equipment for the entire Cosmos, taking on more and more responsibility. As time passed, the influence of the Quartermasters became more pronounced, until the line was blurred between who was giving the orders, and who was receiving them.',

		:colour => 1,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => cd)

	reactor = Alien.find_or_create_by(
		:name => 'Reactor',
		:tagline => 'Makes Aliens Super',

		:effect =>
		'Game Setup: Before flares are added to the deck, take the flares that match all other players\' alien powers and place them faceup on this sheet. Cards on this sheet are not part of your hand. The other flares are shuffled into the deck as usual.
		You have the power of Radiation. As an ally, if the main player on your side wins the encounter and his or her matching flare(s) are on this sheet, use this power to give that player his or her matching flare(s).
		If neither main player invites you to ally and one of them loses the encounter, you may add the losing main player\'s matching flare(s) to your hand from this sheet, discard that player\'s matching flare(s) from your hand, or add your own matching flare(s) to your hand from this sheet.
		When any player\'s matching flare is discarded by a player other than you, use this power to place that flare faceup on this sheet.',

		:flavour => 'Originally an environmentally conscious race of peaceful activists, the Reactors sought to turn themselves into a source of sustainable energy. Yet the awesome power of Cosmic radiation and its mutating properties transformed the Reactors into radioactive freaks, eager to spread their sickness to other power-hungry cultures.',

		:colour => 2,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => cd)

	reborn = Alien.find_or_create_by(
		:name => 'Reborn',
		:tagline => 'Filters Hand Of Cards',

		:effect =>
		'You have the power of Rebirth. For each ship you lose to the warp, you may use this power to draw a card from the deck.
		For each ship you retrieve from the warp, you may use this power to discard a card of your choice from your hand.',

		:flavour => 'The Reborn were once a vibrant, happy race spreading across the Cosmos. But then, one of their scientists discovered a fateful technology that allowed the older members of the race to transfer their consciousness into the bodies of their offspring. Although this allowed them to preserve the memories and skills of their wiser members, the chance to cheat death was ultimately too tempting for the Reborn, who have since become a ghoulish race of nearly immortal beings living on in their children\'s bodies.',

		:colour => 0,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:expansion => ca)

	reincarnator = Alien.find_or_create_by(
		:name => 'Reincarnator',
		:tagline => 'Uses Powers Not In Game',

		:effect =>
		'You have the power of Reincarnation. As a main player or ally, when your side loses an encounter (or you fail to deal), use this power to reincarnate. Draw an unused alien power at random and become that alien. If the alien has Game Setup text or is not allowed in the current game, discard it and draw again. If your side loses or you fail to deal again, discard that alien and reincarnate again. This power stays with you while you use the others. Players that copy or steal your power use both your Reincarnator power and whatever power you are reincarnated as. If while doing so their side loses an encounter or they fail to deal, they must reincarnate, losing their original power.',

		:flavour => 'Having conquered the fear of death, the Reincarnators rejoice with the passing of each of their kind. Feeling kinship with all life forms, they know that those who die will soon be born again in an endless cycle.',

		:colour => 1,
		:resolution => true,
		:offense => true, :defense => true, :ally => true,
		:mandatory => true,
		:expansion => ce)

	relic = Alien.find_or_create_by(
		:name => 'Relic',
		:tagline => 'Gains Power From New Hands',

		:effect =>
		'You have the power to Awaken. Any time another player draws a new hand of cards (after his or her starting hand), use this power to immediately gain a free foreign colony in his or her home system on a planet of your choice with any number of ships taken from your colonies.
		Any time you draw a new hand of cards (after your starting hand), use this power to retrieve all of your ships from the warp, returning them to your colonies.',

		:flavour => 'Eons ago, a warlike race of machines swept across the Cosmos, conquering one planet after another. However, before they could complete their terrible goal, they began to shut down, seeking refuge in hidden caves and beneath murky seas on countless worlds. Now, these machines have begun to awaken once more, ready to continue their ancient dreams of Cosmic domination.',

		:colour => 2,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => cc)

	remora = Alien.find_or_create_by(
		:name => 'Remora',
		:tagline => 'Gets Cards Or Ships With Others',

		:effect =>
		'You have the power to Cling. Whenever another player retrieves one or more ships from the warp, you may use this power to retrieve one of your ships from the warp as well. You may not use this power to retrieve a ship during the same encounter in which it went to the warp.
		Whenever another player draws one or more cards from the deck, you may use this power to draw one card from the deck as well.',

		:flavour => 'The Universe\'s original tag-alongs, the Remoras first reached space as the valued servants of the dominant race on their homeworld. Seldom accomplishing anything for themselves, the Remoras simply make themselves useful to others and then ride their coat-tails to victory. Although other races might chide them for a lack of drive, the Remoras simply wonder why they should give up a good thing.',

		:colour => 1,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:expansion => ce)

	remote = Alien.find_or_create_by(
		:name => 'Remote',
		:tagline => 'Forces Others To Ally',

		:effect =>
		'You have the power to Control. As a main player, after you win an encounter, you may use this power to turn one ship in the encounter belonging to one opposing player into a remote. To turn the ship into a remote, remove the ship from the game and place it on this sheet.
		As a main player, after allies are invited but before alliances are formed, you may use this power to activate one or more of your remotes. Send each activated remote to the warp. Then, the players who own the activated remotes are forced to ally with you for this encounter and must each send four ships (or as many as possible up to four). A player must send all of his or her ships if he or she has fewer than four. A controlled player must abandon home and/or foreign colonies to send the requisite number of ships, if necessary. You cannot activate a remote belonging to the opposing main player during an encounter.',

		:flavour => 'Evolving from a potato-like creature, the Remotes are both lazy and frightened of suffering personal harm. Why do their own fighting, they figure, when they can just use their Mind Control technology to get others to do it for them?',

		:colour => 2,
		:alliance => true, :resolution => true,
		:offense => true, :defense => true,
		:expansion => ca)

	reserve = Alien.find_or_create_by(
		:name => 'Reserve',
		:tagline => 'Can Use Attacks As Reinforcements',

		:effect =>
		'You have the power to Augment. As a main player or ally, after encounter cards are revealed, you may use this power to play one or more attack cards of 06 or less from your hand as if they were reinforcement cards of their listed value.
		As a main player or ally, when another player plays a reinforcement card, you may use this power and discard a negotiate card to cancel and discard that reinforcement card.',

		:flavour => 'The Reserves became the dominant species on their homeworld by waiting for other beings to wear each other out and then arriving with timely force to deliver a knockout punch. Showing the effective use of timing, the Reserves call in extra strength just when they need it most.',

		:colour => 0,
		:reveal => true,
		:offense => true, :defense => true, :ally => true,
		:expansion => ce)

	roach = Alien.find_or_create_by(
		:name => 'Roach',
		:tagline => 'Spawns Additional Ships',

		:effect =>
		'Game Setup: Choose one unused player color and place the 20 ships of that color on this sheet (16 if you are playing with four planets per player). Ships of this color are your roach ships. When not on this sheet, roach ships function as normal ships in every way. Do not use this power unless you have an unused player color.
		You have the power to Breed. When you are determined to be the defense during another player\'s turn, you may use this power to place up to four ships from this sheet among the planets in your home system, including planets where you have no current colony.
		During your regroup phase, you may use this power to place up to four ships from this sheet among your colonies outside of your home system.
		Whenever a roach ship would be sent to the warp, it is placed on this sheet instead.
		This power cannot be stolen, copied, or separated from your player color through any means. You do not lose this power because of having too few home colonies.',

		:flavour => 'The Roaches tend to scurry, scamper, and outnumber their enemies into submission. Wherever you see one, there are bound to be more. In fact, in the vast sprawling cities of Nova Yorkk, locals say you are never more than two meters from a Roach at any time.',

		:colour => 2,
		:regroup => true, :destiny => true,
		:offense => true, :defense => true,
		:expansion => cs)

	saboteur = Alien.find_or_create_by(
		:name => 'Saboteur',
		:tagline => 'Booby Traps Planets',

		:effect =>
		'Game Setup: Take one trap token and two decoy tokens per player (including yourself). Place these tokens facedown next to any planets of your choice. Place no more than one token next to a given planet.
		You have the power to Booby Trap. Any time ships land on a planet with one of your tokens next to it, use this power to reveal the token. If the revealed token is a decoy, return the token to this sheet. If the token is a trap, send all ships on the planet (including those that just landed) to the warp and then return the token to this sheet.
		At the start of each encounter, you may either swap any two of your tokens (whether next to a planet or on this sheet) or take a token on this sheet and place it facedown next to any planet that doesn\'t already have one of your tokens next to it.',

		:flavour => 'Long demented by the magnetic unbalance of their own planet, the Saboteurs can see no way but their own and are determined to achieve it by violence.',

		:colour => 2,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => cc)

	sadist = Alien.find_or_create_by(
		:name => 'Sadist',
		:tagline => 'Wins By Killing Other\'s Ships',

		:effect =>
		'You have the power to Inflict Pain. At the start of any regroup phase (before the offense retrieves a ship from the warp), use this power to win the game if all other players have lost at least eight ships each. Lost ships include ships in the warp, ships removed from the game, and ships captured by other players.
		You may still win the game via the normal method.
		Do not use with Zombie or Healer',

		:flavour => 'A civilization that glorifies pain and pleasure in primal, brutal rituals, the Sadists barely manage to keep their own race alive. Desiring to spread their brand of worship across the Universe, these being enter the Cosmos with peering eyes, blood on their hands, and the desire to kill as many living things as possible.',

		:colour => 2,
		:regroup => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => cc)

	sapient = Alien.find_or_create_by(
		:name => 'Sapient',
		:tagline => 'Adds Wisdom Points',

		:effect =>
		'You have the power of Wisdom. After you win an encounter as an ally, place one token on this sheet. After you lose an encounter as an ally, place a number of tokens equal to the number of your ships involved in the encounter on this sheet. In either case, add one extra token if playing with four planets per player.
		As an ally, after the main players reveal attack cards during an encounter, use this power to add 1 to your side\'s total for each token on this sheet. Doing so does not cause you to discard tokens.',

		:flavour => 'Brewed in the cauldron of a gorgeous planet circling a robust star in a spectacular galaxy, the Sapient culture became dominated by those who combined beauty with brilliance. Now they turn their alluring essence outward, secure in the knowledge that all life forms will desire them as allies.',

		:colour => 0,
		:reveal => true,
		:ally => true,
		:mandatory => true,
		:expansion => ca)

	scavenger = Alien.find_or_create_by(
		:name => 'Scavenger',
		:tagline => 'Searches Discard Pile',

		:effect =>
		'You have the power to Scavenge. Whenever you lose a colony, you may use this power to search the discard pile, take one card of your choice, and add it to your hand.
		Whenever you would place one or more cards in the cosmic deck discard pile, you must instead place those cards faceup on this sheet. Cards on this sheet are not part of your hand. These cards are added to the discard pile whenever it is reshuffled to form a new deck.
		You do not lose this power because of having too few home colonies.',

		:flavour => 'Few races are as resourceful as the Scavengers, a species renowned for recycling, re-using, and at times re-eating virtually anything they come across. Their gear is often cobbled together from the remnants of discarded tech from other races, augmented with seemingly random features or customization.',

		:colour => 1,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:expansion => cs)

	schizoid = Alien.find_or_create_by(
		:name => 'Schizoid',
		:tagline => 'Changes Goal Of Game',

		:effect =>
		'Game Setup: Take the six schizoid cards, choose one of them, and place it facedown on this sheet. Place the other five facedown as a deck near this sheet.
		You have the power to Alter Reality. The facedown schizoid card on this sheet lists the victory conditions players must fulfill in order to win the game. These conditions replace the normal victory condition of accumulating enough foreign colonies to win, and you must announce when any player(s) have fulfilled them. Alternate victory conditions (such as those of the Masochist or Tick-Tock) are not affected by this power. Any player who has completed the normal victory condition may play a Cosmic Zap on you at any time.
		Each time you are on the losing side of an encounter, the winning main player chooses a card from the schizoid deck at random and reveals it to the winner(s) of the encounter. Then, shuffle the chosen card back into the deck.',

		:flavour => 'Long ago their system slipped into a cascading series of alternate spacetimes. Now the Schizoids believe that universal acceptance of their current reality will end their madness.',

		:colour => 2,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => ca)

	seeker = Alien.find_or_create_by(
		:name => 'Seeker',
		:tagline => 'Asks "Yes Or No" Question',

		:effect =>
		'You have the power of Truth. As a main player or ally, after alliances are formed but before encounter cards are selected, you may use this power to ask one "yes or no" question of one of the main players (your opponent, if you are a main player). That player must answer your question truthfully. If your question involves the player\'s intentions during this encounter (such as "Are you going to play a negotiate this encounter?"), he or she must decide now and abide by his or her answer. Once this encounter ends, the player is no longer bound by his or her answer.',

		:flavour => 'Evolving during an intense struggle between more developed species, the Seekers gained ecological room only by acute sensitivity to their opponent\'s disposition. Always probing, they closely evaluate what is known. Lately, Seekers have turned searching eyes upon the Cosmos.',

		:colour => 1,
		:alliance => true, :planning => true,
		:offense => true, :defense => true, :ally => true,
		:expansion => ci)

	shadow = Alien.find_or_create_by(
		:name => 'Shadow',
		:tagline => 'Removes Others\' Ships',

		:effect =>
		'You have the power to Execute. Whenever any other player\'s color or a special destiny card that targets another player is drawn from the destiny deck, use this power to choose one of that player\'s ships from any colony of your choice and send it to the warp. On a wild destiny card, you may execute one ship belonging to any other player regardless of who the offense chooses to encounter.',

		:flavour => 'After being subjected to colonial domination for thousands of years, a hive of Shadows rose up on an outpost planet in a forgotten empire. Devoted to guerilla warfare and adept at choosing the most isolated and vulnerable targets as their victims, they mercilessly cleansed their sector of its overlords. Having become imperialists themselves, however, they now have new uses for their old talents.',

		:colour => 1,
		:destiny => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => ce)

	siren = Alien.find_or_create_by(
		:name => 'Siren',
		:tagline => 'Entices Challengers',

		:effect =>
		'You have the power to Lure. Whenever a player in whose home system you have a colony is chosen as the defense, you may use this power to aim the hyperspace gate at one of your home planets on which you have a colony (your choice which) and become the defense instead. The encounter then continues normally.
		Whenever you win an encounter as the defense, you immediately gain a free foreign colony in the offense\'s home system on a planet of your choice with any number of ships taken from your colonies.',

		:flavour => 'Born on a planet of beauty and illusion, the Siren entices unsuspecting travelers into her traps. Seduced by her call, the luckless guests are totally unaware of the destruction awaiting them.',

		:colour => 1,
		:destiny => true,
		:bystander => true,
		:expansion => cc)

	skeptic = Alien.find_or_create_by(
		:name => 'Skeptic',
		:tagline => 'Doubles Risk Of Encounters',

		:effect =>
		'You have the power to Doubt. As a main player or ally, before encounter cards are selected, you may use this power to tell the opposing player: "I doubt that you will win." If the opposing player agrees with you and is the offense, that player ends his or her turn and the offense\'s and allies\' ships return to colonies. If the opposing player agrees and is the defense, all offensive ships in the hyperspace gate establish a colony on the planet as if they had won (although defending ships already on the planet remain) and defending allies return to colonies.
		If the opposing player disagrees or "double doubts" you, the encounter continues. If any side loses or a deal fails, the number of ships normally lost by either of you is doubled.',

		:flavour => 'During growth, one colony of marine Skeptics achieved the size and organization necessary for neuronic activity. Proliferating into super-rationality, they doubt the brash claims of others and see no reality but their own.',

		:colour => 1,
		:planning => true,
		:offense => true, :defense => true, :ally => true,
		:expansion => ca)

	sloth = Alien.find_or_create_by(
		:name => 'Sloth',
		:tagline => 'Shows Up At Last Minute',

		:effect =>
		'Game Setup: Take the sloth token and place it on this sheet.
		You have the power of Laziness. As the offense or an ally, when you should send your ships into the encounter, use this power to send the sloth token in their place instead of deciding how many ships to commit. The sloth token is not a ship.
		After encounter cards are selected but before they are revealed, replace the sloth token with 0 to 4 of your ships from any of your colonies. Then, return the sloth token to this sheet.
		If you replace the sloth token with zero ships as the offense, you must still continue your encounter. If you replace the sloth token with zero ships as an ally, you are no longer an ally.',

		:flavour => 'The Sloths will eventually arrive in force to take over the sector. Any time now. Just wait for it. They should be here soon.',

		:colour => 1,
		:launch => true, :alliance => true,
		:offense => true, :ally => true,
		:mandatory => true,
		:expansion => cs)

	sneak = Alien.find_or_create_by(
		:name => 'Sneak',
		:tagline => 'Colonizes Attacker',

		:effect =>
		'You have the power to Infiltrate. As the defense, after you lose an encounter that results in losing one of your home colonies, you may use this power to immediately place your ships from the losing encounter on any one planet in the offense\'s home system instead of sending them to the warp.
		You do not lose this power because of having too few home colonies.',

		:flavour => 'The Sneaks are masters of disguise and stealth. In fact, there are many conflicting opinions about what the aliens actually look like, where they live, and what sort of technology they have at their disposal. This suits the Sneaks fine, as they are quick to take advantage of the confusion and insinuate themselves into other aliens\' societies.',

		:colour => 1,
		:resolution => true,
		:defense => true,
		:expansion => cs)

	sniveller = Alien.find_or_create_by(
		:name => 'Sniveller',
		:tagline => 'Catches Up When Behind',

		:effect =>
		'You have the power to Whine. As a main player, before allies are invited, if you have more ships in the warp than all other players, have fewer foreign colonies than all other players, or lack an encounter card you want, you may use this power to whine about it. If you whine about your ships, either all other players must agree to let you retrieve all your ships
		from the warp, or (if possible) they each must place ships into the warp until each matches your number there. If you whine about colonies, the other players must agree to let you have one extra foreign colony of your choice or they each lose one foreign colony of their choice, returning those ships to their other colonies. If you whine about cards, you name a card
		you don\'t have (e.g., "I don\'t have an attack card higher than a 15"). Either one player must give you such a card or all players must discard all such cards in their hands. Whine only once per encounter.',

		:flavour => 'The Snivelers developed in the evolutionary shadow of a closely related but older and more gifted race. Beset by adversity at every turn, they looked to their elder brethren for succor and defense. Now grown adept at self-pity and having liquidated their generous patrons, they turn their wet, envious gaze toward the heavens.',

		:colour => 1,
		:alliance => true,
		:offense => true, :defense => true,
		:expansion => ci)

	sorcerer = Alien.find_or_create_by(
		:name => 'Sorcerer',
		:tagline => 'Can Switch Played Cards',

		:effect =>
		'You have the power of Magic. As a main player, after encounter cards are selected but before they are revealed, you may use this power to switch encounter cards with your opponent so that he or she reveals your card and you reveal your opponent\'s card.',

		:flavour => 'Over eons the clan of Sorcerers studied the Cosmic flow and learned to channel these tides to their own needs. Beginning with minor alterations in the probability patterns of matter, they progressed to transportation of objects over great distances. Undaunted by an occasional backlash of fate, they even now are humming the incantations of mastery.',

		:colour => 0,
		:planning => true,
		:offense => true, :defense => true,
		:expansion => ce)

	spiff = Alien.find_or_create_by(
		:name => 'Spiff',
		:tagline => 'Receives Colony As Loser',

		:effect =>
		'You have the power to Crash Land. As the offense, if both players revealed attack cards and you lost the encounter by 10 or more, you may use this power to land one of your ships that would otherwise be lost to the warp on the targeted planet.',

		:flavour => 'Attacking vicious space monsters at incredible odds comes naturally to the valorous Spiffs. Their cunning and courage have let them save the day even when their doom seemed imminent. Let those who face them beware!',

		:colour => 0,
		:resolution => true,
		:offense => true,
		:expansion => ce)

	squee = Alien.find_or_create_by(
		:name => 'Squee',
		:tagline => 'Is Dangerously Adorable',

		:effect =>
		'You have the power of Unimaginable Cuteness. As the defense, after encounter cards are selected but before they are revealed, you may use this power to bat your eyes at the offense and look too adorable to attack. The offense must choose whether to concede or continue.
		If the offense chooses to concede, you win the encounter. Immediately proceed to the resolution phase. The played encounter cards will be discarded as usual.
		If the offense chooses to continue, the offense must send any three of his or her ships to the warp. If the offense reveals an attack card and wins the encounter, you collect compensation even if you did not reveal a negotiate card.',

		:flavour => 'The Squee are so incredibly cute that they are almost painful to behold. From their fuzzy wuzzy feathers to their adorable eyes, you just want to pick them up and love them and hug them and protect them forever. Unless you are a Locust, in which case you prefer to devour them by the dozen.',

		:colour => 2,
		:planning => true,
		:defense => true,
		:expansion => cs)

	sting = Alien.find_or_create_by(
		:name => 'Sting',
		:tagline => 'Switches Lost Ships',

		:effect =>
		'You have the power to Substitute. Each time you lose ships to the warp, you may use this power to designate another player to substitute half the lost ships instead. Return half of your lost ships (rounded down) to your colonies. Then, your substitute makes up for the saved ships by choosing an equal number of his or her own ships to lose to the warp. That player may then take one card at random from your hand for each ship he or she lost. If you have too few cards, that player may draw the remainder needed from the deck.',

		:flavour => 'Genetically sterile through a side effect of their colony\'s energy shield, the Sting desperately sought a way to save themselves from extinction. In their quest, they stumbled upon a vampiric form of immortality. Emboldened, they now scour the Cosmos in search of a cure for their sterility, and woe to those who try to stop them.',

		:colour => 1,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:expansion => ca)

	swindler = Alien.find_or_create_by(
		:name => 'Swindler',
		:tagline => 'Steals A Player\'s Identity',

		:effect =>
		'Game Setup: Take one swindler token for each other player in the game, making sure that one of these is the mark token with the "X" on its front. Secretly look at these tokens and place one token facedown next to each other player\'s alien sheet. The player to whom you assigned the mark token is your "mark." You may look at these tokens at any time, but the other players cannot.
		As the original Swindler, you have the power of Identity Theft. After the defense has been determined, you may use this power. Reveal your mark by flipping all swindler tokens faceup and removing them from the game. You and your mark then exchange everything in the game, including physical seats, alien powers, player colors, ships, hands, systems, planets, colonies, etc. The encounter continues, although this may change who the main player(s) are. If the offense\'s color has become controlled by a different player, it is now that player\'s turn instead of the original offense\'s turn.
		As the revealed mark, you have the power to Panic. During each other player\'s start turn phase, you may use this power to immediately gain a colony in the offense\'s home system.
		This power cannot be stolen, copied, or separated from your player color through any means.',

		:flavour => 'To a Swindler, stealing identities is like taking candy from a larval Atrachean Gooshumple.',

		:colour => 2,
		:startturn => true, :destiny => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:expansion => cs)

	sycophant = Alien.find_or_create_by(
		:name => 'Sycophant',
		:tagline => 'Wins Through Flattery',

		:effect =>
		'Game Setup: Place 10 tokens on this sheet (eight if playing with four planets per player).

You have the power of Flattery. If you are not a main player, after alliances are formed, you may use this power to flatter one of the main players (even if you are allied against that player). If the player you flatter wins the encounter or makes a deal, discard one token from this sheet. If there are no more tokens on this sheet, you immediately win the game. You may still win the game via the normal method.',

		:flavour => '',

		:colour => 1,
		:alliance => true,
		:ally => true, :bystander => true,
		:expansion => cs)

	symbiote = Alien.find_or_create_by(
		:name => 'Symbiote',
		:tagline => 'Has Twice As Many Ships',

		:effect =>
		'Game Setup: Choose one unused player color and take the 20 ships of that color (16 in a four-planet game), placing twice as many ships as usual on each of your planets. Your player color is that of the planets you use. Do not use this power unless you have an unused player color.
		You have the power of Symbiosis. You have twice as many ships as usual. This power cannot be zapped, lost, stolen, copied, or separated from your player color through any means.',

		:flavour => 'The environmental extremes on the Symbiote\'s homeworld drove its two sentient species into a mutual interdependence. Now this exceptionally tough hybrid has discovered that the warp gives this two-in-one race a distinct advantage over its adversaries.',

		:colour => 0,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => ci)

	ticktock = Alien.find_or_create_by(
		:name => 'Tick-Tock',
		:tagline => 'Limits Length Of Game',

		:effect =>
		'Game Setup: Place ten tokens on this sheet (eight if playing with four planets per player).
		You have the power of Patience. Each time any player wins an encounter as the defense or a deal is made between any two players, use this power to discard one token from this sheet. If there are no more tokens on this sheet, you immediately win the game. You may still win the game via the normal method.',

		:flavour => 'Lurking in the depths of space-time beyond even the warp itself, this mechanical race waits patiently for the heat-death of the Universe, when it will rule over the strange abyss that remains. In the meantime, they subtly turn the races of the Universe against each other to prevent them from discovering a way to prevent the inevitable.',

		:colour => 1,
		:resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => ce)

	tide = Alien.find_or_create_by(
		:name => 'Tide',
		:tagline => 'Makes Players Draw Or Discard',

		:effect =>
		'Game Setup: Place two tokens on this sheet.
		You have the power to Ebb and Flow. After you win an encounter as a main player, use this power to place one token on this sheet. Then, you and each of your allies draw one card from the deck for each token on this sheet.
		After you lose an encounter as a main player, if there is more than one token on this sheet, use this power to discard one token from this sheet. Then, the opposing main player and each of his or her allies must discard one card of their choice from their hands for each token on this sheet.',

		:flavour => 'The Tide\'s cultural philosophy is simple: go with the flow. From an early age, members of the Tide\'s army are trained to react and respond to even the slightest change of plans. While some may consider the Tide\'s approach to military and diplomatic matters wishy-washy, the Tide seem resolute to vacillate on issues and continue to change their minds at a moment\'s notice.',

		:colour => 1,
		:resolution => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => cs)

	tourist = Alien.find_or_create_by(
		:name => 'Tourist',
		:tagline => 'Travels On Cruise Liner',

		:effect =>
		'Game Setup: Place the cruise liner token in your system. Now and each time the cruise liner enters your system, you may move up to four of your ships from your home colonies onto it, or vice versa.
		You have the power to Sightsee. At the end of the destiny phase, if any hazard warnings were drawn during this encounter, use this power to send one of your ships to the warp from the cruise liner.
		If no hazard warnings were drawn, use this power to move the cruise liner one system clockwise or counterclockwise. Then, if the cruise liner is in the defense\'s system and you do not already have a colony in that system, you may use this power to disembark all of your ships from the cruise liner to any one planet there. If for any reason you do not disembark, you may use this power to send a postcard home. Return one ship from the cruise liner to any of your colonies, and then take a card at random from the hand of that system\'s player.',

		:flavour => 'Among the most curious of all the races in the Cosmos, the Tourists have no interest in conquest. They\'d rather see everything, though sometimes their visits stretch on for millennia. Their neighbors often mistake these visits for invasions. Rest assured, those really are flashbulbs and loud floral prints, not explosives and camouflage!',

		:colour => 1,
		:destiny => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => cd)

	trader = Alien.find_or_create_by(
		:name => 'Trader',
		:tagline => 'Trades Hands With Opponent',

		:effect =>
		'You have the power of Transference. As a main player, before encounter cards are selected, you may use this power to trade hands with your opponent. You each then keep the new hand.
		As the defense, if you need to draw a new hand, you must do so before trading hands with your opponent.',

		:flavour => 'Originating on a Trojan Cloud in a heavily traveled star system, the crafty Traders learned to use the most valuable debris which drifted their way and discard the rest. As their numbers grew, however, they began to search out markets for their low-grade material. With a wealth of resources always at hand, they became adept merchants and soon were carefully scrutinizing all galactic transactions. Now they have begun to parlay their economic foundation into Cosmic control.',

		:colour => 0,
		:planning => true,
		:offense => true, :defense => true,
		:expansion => ce)

	trickster = Alien.find_or_create_by(
		:name => 'Trickster',
		:tagline => 'Wins Encounters 50% Of THe Time',

		:effect =>
		'You have the power of Possibilities. As a main player, after alliances are formed, you may use this power to manipulate probability instead of having a normal encounter. If you do so, take a token and conceal it secretly in one of your hands. The other main player then chooses one of your closed fists. You then open both of your fists, revealing which hand held the token. If your opponent chose the hand containing the token, you lose the encounter. If he or she chose your empty hand, you win the encounter. In either case, the resolution phase is then carried out as usual.',

		:flavour => 'The Tricksters are a race of incredibly powerful beings, able to manipulate the very fabric of the Cosmos with their minds without ever leaving their homeworld. Fortunately, they have few dreams of conquest, instead preferring to select members of other alien races to toy with. Still, given their power, there\'s always the chance that they could take over the Cosmos by accident.',

		:colour => 0,
		:alliance => true,
		:offense => true, :defense => true,
		:expansion => cc)

	tripler = Alien.find_or_create_by(
		:name => 'Tripler',
		:tagline => 'Low Cards Triple, High Cards 1/3',

		:effect =>
		'You have the power of Thrice. As a main player, after you reveal an attack card, use this power to adjust its value. If the card\'s value is 10 or lower, triple its value. If the card\'s value is higher than 10, divide its value by three (rounded up).',

		:flavour => 'Millennia of obsessive racing and betting have given the Triplers a knack for making something out of nothing. The unfortunate downside of such flimflammery is that they have become equally prone to making nothing out of something. The Triplers now wish to redefine the Universe as an opportunity for their final race, forcing all other beings to bet everything they have on one final mad dash across the Cosmos.',

		:colour => 2,
		:reveal => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => ce)

	tyrant = Alien.find_or_create_by(
		:name => 'Tyrant',
		:tagline => 'Claims Other Players\' Ships',

		:effect =>
		'You have the power to Subjugate. As a main player, when you win an encounter after revealing an attack card, use this power to subjugate one involved ship from each player on the losing side. Subjugated ships are captured and placed on this sheet instead of being sent to the warp.
		When you are determined to be the defense against a player whose ships you have subjugated, use this power to force that player to discard one card at random for each of his or her subjugated ships.
		When you are the offense and having an encounter with a player whose ships you have subjugated, after you reveal an attack card, use this power to add the number of that player\'s subjugated ships to your total.
		When you would be forced to send ships to the warp, you may choose to send subjugated ships to the warp instead. You may choose to release subjugated ships as part of a deal. When a ship is removed from this sheet, it is no longer subjugated.',

		:flavour => 'It is no surprise that upon the arrival of the Tyrant into a new sector of space, other races begin to suddenly make travel plans to distant regions. The Tyrants are one of the most despised races in the Cosmos given their brutal leadership style, which often ends in their victims\' indentured servitude.',

		:colour => 2,
		:destiny => true, :reveal => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => cs)

	usurper = Alien.find_or_create_by(
		:name => 'Usurper',
		:tagline => 'Makes Allies Play Encounter Cards',

		:effect =>
		'You have the power to Accroach. As a main player, you may use this power immediately after encounter cards are selected (before any other game effects that apply after card selection). Every ally must play one encounter card facedown from his or her hand (first drawing a new hand if out of encounter cards). Look at the cards played by your allies. You may select one of them to replace your encounter card. You may select one of the opposing allies\' cards (without looking at them) to replace your opponent\'s card. All replaced and unused cards return to their owners\' hands and the encounter continues.
		If a main player\'s encounter card selection is forced by a game effect such as Oracle, Magician, or Visionary, this power does not affect his or her allies.',

		:flavour => 'Tactical advisors once employed by many great races, the Usurpers seized power in a bloodless coup. Through Mind Control techniques and technologies, they subtly wrest control of power from their enemies, causing others to achieve their goals for them. Even allies are gently forced to commit resources on their behalf, for the Usurpers trust no one but themselves.',

		:colour => 1,
		:planning => true,
		:offense => true, :defense => true,
		:expansion => cd)

	vacuum = Alien.find_or_create_by(
		:name => 'Vacuum',
		:tagline => 'Takes Other\'s Ships To Warp',

		:effect =>
		'You have the power of Catharsis. Whenever you lose ships to the warp, use this power to take along up to an equal number of other players\' ships. You specify which players must lose them, and how many each player must lose. The targeted players decide which colonies the ships are taken from. Ships lost to the Vacuum this way are in addition to any ships normally lost in an encounter.',

		:flavour => 'Suffering from severe necrophobia, the panicky Vacuum clings to others in a desperate attempt to save itself from the warp. Succeeding only in dragging innocent bystanders along, it takes solace in not going to its doom alone.',

		:colour => 0,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => ce)

	virus = Alien.find_or_create_by(
		:name => 'Virus',
		:tagline => 'Multiplies In Attack',

		:effect =>
		'You have the power to Multiply. As a main player, after you reveal an attack card, use this power to multiply the number of ships you have in the encounter by the value of your card instead of adding them together. Your allies\' ships are still added to your total as usual.',

		:flavour => 'Able to multiply rapidly in the presence of other life forms, the Virus soon overwhelmed its own planets and now waits for opportunities to proliferate throughout the Universe.',

		:colour => 2,
		:reveal => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => ce)

	visionary = Alien.find_or_create_by(
		:name => 'Visionary',
		:tagline => 'Dictates Encounter Card',

		:effect =>
		'You have the power of Perception. As a main player, before encounter cards are selected, you may use this power to specify an encounter card which your opponent must play (for instance: "You will play an attack 06"). If your opponent does not have such a card, he or she may play any encounter card he or she wishes. If your opponent does have the card, however, he or she must play it unless prevented by another player.',

		:flavour => 'Once an ancient race of wandering fortune tellers, the Visionaries have recently stirred debate among philosophers throughout the Cosmos. Does the mystic sight of the Visionary merely foretell the future, or does it shape it? This intellectual debate between advocates of causationalism and free will has tended to mask the alarming growth of the Visionary empire. As for the Visionaries themselves, they loathe logic and philosophy, preferring a more intuitive approach to the problems of Cosmic domination.',

		:colour => 1,
		:planning => true,
		:offense => true, :defense => true,
		:expansion => cc)

	void = Alien.find_or_create_by(
		:name => 'Void',
		:tagline => 'Eradicates Opponents\' Ships',

		:effect =>
		'You have the power to Eradicate. As a main player, when you win an encounter, use this power to remove the losing side\'s ships from the game rather than sending them to the warp. This occurs before any other game effects that affect ships headed to the warp. A player cannot be reduced to fewer ships than the number of foreign colonies needed to win the game. Any eradicated ships that would reduce a player below this number are sent to the warp as usual.',

		:flavour => 'Taught from vortexhood that no other intelligent life existed, the Voids were deeply offended to learn of alien races. They are now on a holy campaign to cleanse the heavens of all gross, material beings.',

		:colour => 2,
		:resolution => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => cd)

	vox = Alien.find_or_create_by(
		:name => 'Vox',
		:tagline => 'Goes Up To Eleven',

		:effect =>
		'You have the power of Volume. As a main player or offensive ally, after encounter cards are revealed, you may use this power to choose one revealed attack card or played reinforcement card with a value lower than 11. That card goes up to 11.',

		:flavour => 'The Vox pride themselves on being among the loudest species in the Cosmos. In Vox society, the louder the better. Leadership is often determined by shouting matches to see who can drown out the others for dominance. Minor members of society generally open for more prominent members before such a shouting match, getting the crowd warmed up for the main act to follow.',

		:colour => 0,
		:reveal => true,
		:offense => true, :defense => true, :ally => true,
		:expansion => cs)

	voyager = Alien.find_or_create_by(
		:name => 'Voyager',
		:tagline => 'Can Have A Colony In The Warp',

		:effect =>
		'You have the power to Journey. At the start of your turn, you may use this power to move one of your home planets into the warp if you do not already have one there, or to exchange one of your home planets with one of your planets in the warp. Ships on that planet are both on a colony and in the warp, and may/must leave through all the usual ways for both. Ships sent to the warp do not land on the planet, but ships returning to colonies may go to a colony already on the warp-world.
		Your colony on a warp-world counts as both a foreign and home colony, but other players\' colonies there count as neither. If this sheet is lost or turned facedown, return the warp-world to your system.',

		:flavour => 'Fearless adventurers, the Voyagers traveled to the far reaches of the Cosmos, seeking answers to questions long forgotten. Hungry for new revelations, the Voyagers discovered how to access the unfathomable depths of the warp itself, establishing a presence there. With the entrance to the warp breached, others have followed the Voyagers, but none have had the same success conquering its mysteries.',

		:colour => 1,
		:startturn => true,
		:offense => true,
		:expansion => cd)

	vulch = Alien.find_or_create_by(
		:name => 'Vulch',
		:tagline => 'Collects Discarded Artifacts',

		:effect =>
		'You have the power to Salvage. Whenever any other player discards an artifact card (whether after playing it or not), use this power to add the artifact to your hand. Any artifact cards you play are discarded as usual and cannot be salvaged.
		If you draw a new hand, you keep your old artifacts after revealing them, then draw eight new cards in addition to the artifacts.',

		:flavour => 'Originally developing as a structured, bureaucratic race, only the Vulches who were most able to grasp new opportunities rose to the top. Over millions of years, this inbred scavenging talent flourished and spread throughout the race. Now, Vulches are prepared to use the discarded refuse of others to achieve their goal of universal supremacy.',

		:colour => 0,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => ce)

	warhawk = Alien.find_or_create_by(
		:name => 'Warhawk',
		:tagline => 'Never Negotiates',

		:effect =>
		'You have the power to Attack. As a main player, if only your opponent reveals a negotiate card, use this power to change it into an attack 00.
		As a main player, if only you reveal a negotiate card, use this power to change it into a morph card.
		As a main player, if both you and your opponent reveal negotiate cards, use this power to change both negotiates into attack 00 cards.',

		:flavour => 'The Warhawks rush into combat with no thoughts of surrender. Negotiation is not a concept they understand, and the entire Warhawk society is built upon the notion of fight or die.',

		:colour => 1,
		:reveal => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => cc)

	warpish = Alien.find_or_create_by(
		:name => 'Warpish',
		:tagline => 'Adds Ships In Warp To Total',

		:effect =>
		'You have the power of Necromancy. As a main player, after you reveal an attack card, use this power to add 1 to your total for each ship (yours or otherwise) in the warp.',

		:flavour => 'Born of the slime and unpalatable scum in the most repulsive bars on dying planets, the Warpish seeks the pall of miserable places. Now it has found comfort in the despairing ambiance of the Cosmic warp.',

		:colour => 2,
		:reveal => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => ce)

	warrior = Alien.find_or_create_by(
		:name => 'Warrior',
		:tagline => 'Adds Experience Points',

		:effect =>
		'You have the power of Mastery. After an encounter in which you were a main player, add one token to this sheet if you won (or made a deal) or two tokens if you lost (or failed to make a deal). In either case, add one extra token if playing with four planets per player.
		As a main player, after you reveal an attack card, use this power to add 1 to your total for each token you have on this sheet. Tokens are not discarded from this sheet after doing so.',

		:flavour => 'Once considered ferocious but dull-witted by more "enlightened" races, the Warrior clans were bred as fighting stock for the petty squabbles of their lords. Throughout the ages, however, they have learned the value of both defeat and victory. This wisdom gives them mastery over those who would sneer at their potential.',

		:colour => 0,
		:reveal => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => ce)

	whirligig = Alien.find_or_create_by(
		:name => 'Whirligig',
		:tagline => 'Mixes Two Hands',

		:effect =>
		'You have the power to Swirl. As a main player, during the planning phase, you may use this power to mix the other main player\'s hand with your own. You and your opponent put your hands facedown on the table, and you mix them together. Then, choose how they will be returned:
		• Even Steven: Both players get an equal number of cards. If there is an odd number, you get the extra card.
		• As Is: Each player gets the same number of cards they originally had.
		• Switcheroo: Each player gets the number of cards the other player originally had.
		Once you decide, the other main player takes his or her assigned number of cards at random from the mixed hands. You take the rest.',

		:flavour => 'A seemingly wacky species, the Whirligigs are actually quite clever. As they swirl from planet to planet, those they encounter are left befuddled. Less becomes more, high becomes low, and good becomes bad. The uncertainty caused when the Whirligigs come to call lingers long after they have left.',

		:colour => 0,
		:planning => true,
		:offense => true, :defense => true,
		:expansion => cd)

	will = Alien.find_or_create_by(
		:name => 'Will',
		:tagline => 'Not Controlled By Destiny',

		:effect =>
		'You have the power of Choice. As the offense, after destiny is drawn, use this power to declare which other player will be the defense (regardless of the destiny draw). You may encounter any one of that player\'s colonies or home planets of your choice instead of encountering the player mandated by the drawn destiny card (for example, you could choose to encounter the Virus\' ships on the Mind\'s planet, even if you were actually directed to have an encounter with the Oracle by the destiny card). Any other effects caused by the drawn destiny card still take place as usual.',

		:flavour => 'Arising on a cold and barren asteroid, the Wills gave no thought to legal niceties in their relentless struggle to capture the faint rays of a dying star. Unfairly charged with preying upon the weak, they wish only to find locations in which they may spread their solar membranes, unopposed.',

		:colour => 1,
		:destiny => true,
		:offense => true,
		:mandatory => true,
		:expansion => ce)

	winner = Alien.find_or_create_by(
		:name => 'Winner',
		:tagline => 'Gets Extra Colonies',

		:effect =>
		'You have the power to Win More. As a main player, after both players reveal attack cards and you win the encounter by 10 or more, use this power to immediately gain one free foreign colony on a planet of your choice in any system with any number of ships taken from your colonies.',

		:flavour => 'From the time their ancestors crawled out of the crystal blue sea on a paradisiacal world under a particularly lucky sun, the Winners have always been incredibly fortunate. Random factors have a bizarre tendency to go their way, and the stars always seem to shine down just a little brighter on them. Now, as they casually sail out into the Cosmos under a favorable solar wind, they know that they will soon take their place as the rulers of the Universe. After all, they\'re Winners – it\'s what they do.',

		:colour => 1,
		:resolution => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => ca)

	worm = Alien.find_or_create_by(
		:name => 'Worm',
		:tagline => 'Re-Aims Hyperspace Gate',

		:effect =>
		'Game Setup: You may distribute your ships among your planets however you wish as long as there is at least one ship on each planet.
		You have the power to Tunnel. As a main player, after encounter cards are revealed, you may use this power to re-aim the hyperspace gate at any one of the defense\'s colonies (in any system) or home planets, as long as the offense does not already have a colony there. All offensive and allied ships move along with the gate and the encounter then continues normally.',

		:flavour => 'Evolving beneath the rolling sands of the vast deserts of their home worlds, the Worms became adept at mounting surprise attacks and befuddling aggressors. As this fledgling race expands into the Cosmos, no alien knows where they will surface next.',

		:colour => 1,
		:reveal => true,
		:offense => true, :defense => true,
		:expansion => cs)

	wormhole = Alien.find_or_create_by(
		:name => 'Wormhole',
		:tagline => 'Commits Ships From Warp',

		:effect =>
		'You have the power to Translocate. As the offense or an ally, when committing ships to an encounter, you may use this power to commit your ships from the warp and/or from your colonies.
		As a main player, whenever one of your allies commits ships to the encounter, you may use this power to allow that ally to commit those ships from the warp and/or from his or her colonies.
		This power does not allow players to exceed the normal limit of four ships in the encounter.',

		:flavour => 'The bizarre Wormhole is renowned for its ability to seemingly appear out of nowhere. In fact, the Wormhole has the socially awkward distinction of being the race to startle more unassuming aliens than any other.',

		:colour => 1,
		:launch => true, :alliance => true,
		:offense => true, :defense => true, :ally => true,
		:expansion => cs)

	xenophile = Alien.find_or_create_by(
		:name => 'Xenophile',
		:tagline => 'Gains Strength From "Tourists"',

		:effect =>
		'You have the power of Welcoming. As a main player, after both players reveal attack cards, use this power to add or subtract 3 from your total for each foreign colony in your home system.
		You do not lose this power because of having too few home colonies.',

		:flavour => 'One of the most gregarious, friendly races in the Universe, the Xenophiles have had their homeworld invaded over 20 twenty times by hostile aliens – and never once noticed. Orders given to them by the invaders were cheerfully carried out, until the invaders eventually grew exasperated with the relentlessly cheerful Xenophiles and left of their own accord. The Xenophiles, for their part, are looking forward to the next batch of "tourists" whom they can make feel at home.',

		:colour => 0,
		:reveal => true,
		:offense => true, :defense => true,
		:mandatory => true,
		:expansion => cc)

	yinyang = Alien.find_or_create_by(
		:name => 'Yin-Yang',
		:tagline => 'Allies With Both Sides',

		:effect =>
		'You have the power of Balance. When you are invited to join both sides of an encounter, you may use this power to ally with both sides. If you ally with both sides and the defense loses, for each ship you have allied with the offense, the defense may keep one of his or her losing ships on the planet instead of sending it to the warp. If you ally with both sides and the offense loses, for each ship you have allied with the defense, the offense may receive one reward.
		When a main player declines to invite you to ally, you may give that player one of your yin-yang tokens. Each main player who has a yin-yang token when his or her opponent loses ships to the warp from the encounter must lose an equal number of ships from his or her colonies. At the end of each encounter, place both yin-yang tokens on this sheet.',

		:flavour => 'For as long as intelligent life has existed, the mysterious aliens known only as the Yin-Yangs have garnered influence and control over the positive and the negative, the masculine and the feminine, and the meek and the bold aspects of the Cosmos. Through their efforts in balancing power, they are certain to maintain equilibrium with their enemies.',

		:colour => 1,
		:alliance => true,
		:ally => true, :bystander => true,
		:expansion => cd)

	zombie = Alien.find_or_create_by(
		:name => 'Zombie',
		:tagline => 'Never Goes To Warp',

		:effect =>
		'You have the power of Immortality. Whenever you should lose ships to the warp, use this power to instead return them to any of your colonies and keep using them.
		In addition, you may release any player\'s ships from the warp (back to any colonies he or she has) as part of a deal.',

		:flavour => 'Shadowy forms on a dark and murky world, Zombies prized all sources of energy. They could flourish only by careful recycling of their own kind. Living on decomposed organic matter, they abhor the needless waste of war and have developed effective techniques to make sure their numbers will not be reduced.',

		:colour => 0,
		:startturn => true, :regroup => true, :destiny => true, :launch => true, :alliance => true, :planning => true, :reveal => true, :resolution => true,
		:offense => true, :defense => true, :ally => true, :bystander => true,
		:mandatory => true,
		:expansion => ce)
