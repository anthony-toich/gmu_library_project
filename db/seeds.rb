# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cuddy = Author.where(name:'Amy Cuddy').first_or_create!(dob:'7/27/72', nationality:'United States', awards:'"Rising Star Award, Association for Psychological Science (APS), 2011, Psychology Today, The Top 10 Psychology Studies of 2010 (Carney, Cuddy, & Yap, 2010)', biography:'Amy Joy Casselberry Cuddy is an American social psychologist known for her research on stereotyping and discrimination, emotions, power, nonverbal behavior, and the effects of social stimuli on hormone levels. She is an Associate Professor of Business Administration at Harvard Business School, in the Negotiation, Organizations & Markets Unit.', image_url:'http://www.socialpsychology.org/thumb/3982/0/md.jpg')
rossi = Author.where(name:'Ravi Rossi').first_or_create!(dob:'6/18/71', nationality:'United States', awards:'Danny Meyer Empire Builder of the Year 2015, International Tastemaker of the Year', biography:'Ravi DeRossi began his career as an artist but soon set his sights on New York nightlife. His first venture, the Bourgeois Pig, was a press favorite. Then he co-founded Death & Co. and shortly thereafter Desnuda Cevicheria, described by the New York Times as one of the most creative and innovative restaurants that New York has to offer. Mayahuel, his tequila and mescal bar, won the Best New Cocktail Bar Award at Tales of the Cocktail, and then he opened the Cuban rum bar Cienfuegos, among other notable establishments.', image_url:'http://foodbookfair.com/wp-content/uploads/2015/02/IMG_0208-200x200.jpg')
martin = Author.where(name:'George R. R. Martin').first_or_create!(dob:'9/20/48', nationality:'United States', awards:'Hugo Award for Best Novella for "A Song for Lya, Locus Award for Best Fantasy Novel for "A Dance with Dragons"', biography:'George Raymond Richard Martin, often referred to as GRRM, is an American novelist and short story writer in the fantasy, horror, and science fiction genres, a screenwriter, and television producer.', image_url:'ttp://www-images.theonering.org/torwp/wp-content/uploads/2015/08/George-RR-Martin-thumb.jpg')
stirling = Author.where(name:'S. M. Stirling').first_or_create!(dob:'9/30/53', nationality:'Canada', awards:'idewise Award for Best Long-Form Alternate History, Prometheus Award for Best Novel', biography:'Stephen Michael Stirling is a French-born Canadian-American science fiction and fantasy author. Stirling is probably best known for his Draka series of alternate history novels and his later time travel/alternate history Nantucket series and Emberverse series.', image_url:'http://d.gr-assets.com/authors/1440541452p5/14002.jpg')
herbert = Author.where(name:'Frank Herbert').first_or_create!(dob:'10/8/20', nationality:'United States', awards:'Science Fiction Hall of Fame, Nebula Award for Best Novel', biography:'Frank Patrick Herbert, Jr. was an American science fiction writer best known for the novel ""Dune"" and its five sequels. Though he became famous for science fiction, he was also a newspaper journalist, photographer, short story writer, book reviewer, ecological consultant and lecturer.', image_url:'http://d.gr-assets.com/authors/1168661521p5/58.jpg')
jordan = Author.where(name:'Robert Jordan').first_or_create!(dob:'10/17/48', nationality:'United States', awards:'Goodreads Choice Awards Best Fantasy', biography:'James Oliver Rigney, Jr., better known by his pen name Robert Jordan, was an American author of epic fantasy. He is best known for The Wheel of Time series, which comprises 14 books and a prequel novel.', image_url:'http://d.gr-assets.com/authors/1175475715p5/6252.jpg')
book1 = Book.where(isbn:'978-0316256575').first_or_create!(title:'Bringing Your Boldest Self to Your Biggest Challenges', author_id:1, genre:'Psychology', abstract:'Have you ever left a nerve-racking challenge and immediately wished for a do over? Maybe after a job interview, a performance, or a difficult conversation? The very moments that require us to be genuine and commanding can instead cause us to feel phony and powerless. Too often we approach our lives biggest hurdles with dread, execute them with anxiety, and leave them with regret.', pages:352, image_cover_url:'http://ecx.images-amazon.com/images/I/41f%2BzzTt0kL._SX320_BO1,204,203,200_.jpg', published_on:'12/22/15', total_in_library:1)
book2 = Book.where(isbn:'978-1454917502').first_or_create!(title:'Cuban Cocktails: 100 Classic and Modern Drinks', author_id:2, genre:'Cookbooks', abstract:'From the renowned Cuban rum bar Cienfuegos—owned by the co-owner of Death & Co., named Best American Cocktail Bar at Tales of the Cocktail in 2010—comes this spirited collection of 100 recipes that celebrate Cuba’s rich history and culture. It features timeless classics, such as the Cuba Libre, El Floridita Daiquiri, and Mojito; a bevy of punch recipes to share with friends and family; new takes on familiar favorites, such as the Isla Tea, Por Avion, and Rum Old Fashioned.', pages:256, image_cover_url:'ttp://ecx.images-amazon.com/images/I/51bN1HAUwYL._SX433_BO1,204,203,200_.jpg', published_on:'10/6/15', total_in_library:1)
book3 = Book.where(isbn:'978-0345533487').first_or_create!(title:'A Knight of the Seven Kingdoms', author_id:3, genre:'Fantasy', abstract:"Taking place nearly a century before the events of A Game of Thrones, A Knight of the Seven Kingdoms compiles the first three official prequel novellas to George R. R. Martin's ongoing masterwork, A Song of Ice and Fire. These never-before-collected adventures recount an age when the Targaryen line still holds the Iron Throne, and the memory of the last dragon has not yet passed from living consciousness.  Before Tyrion Lannister and Podrick Payne, there was Dunk and Egg.", pages:368, image_cover_url:'http://ecx.images-amazon.com/images/I/5175zN2T7EL._SX327_BO1,204,203,200_.jpg', published_on:'10/6/15', total_in_library:2)
book4 = Book.where(isbn:'978-0553582017').first_or_create!(title:'A Dance with Dragons', author_id:3, genre:'Fantasy', abstract:'In the aftermath of a colossal battle, the future of the Seven Kingdoms hangs in the balance-beset by newly emerging threats from every direction. In the east, Daenerys Targaryen, the last scion of House Targaryen, rules with her three dragons as queen of a city built on dust and death. But Daenerys has thousands of enemies, and many have set out to find her.', pages:1152, image_cover_url:'http://ecx.images-amazon.com/images/I/51q1qCZ5RfL._SX293_BO1,204,203,200_.jpg', published_on:'10/29/13', total_in_library:5)
book5 = Book.where(isbn:'978-0451460417').first_or_create!(title:'Dies the Fire',author_id:4, genre:'Science Fiction', abstract:'The Change occurred when an electrical storm centered over the island of Nantucket produced a blinding white flash that rendered all electronic devices and fuels inoperable. What follows is the most terrible global catastrophe in the history of the human race-and a Dark Age more universal and complete than could possibly be imagined.', pages:573, image_cover_url:'http://ecx.images-amazon.com/images/I/51S9E7BR81L._SX310_BO1,204,203,200_.jpg', published_on:'9/6/05', total_in_library:5)
book6 = Book.where(isbn:'978-0451460776').first_or_create!(title:"The Protector's War", author_id:4, genre:'Science Fiction', abstract:"It's been eight years since the Change rendered technology inoperable across the globe. Rising from the ashes of the computer and industrial ages is a brave new world. Survivors have banded together in tribal communities, committed to rebuilding society. In Oregon's Willamette Valley, former pilot Michael Havel's Bearkillers are warriors of renown. Their closest ally, the mystical Clan Mackenzie, is led by Wiccan folksinger Juniper Mackenzie. Their leadership has saved countless lives.", pages:608, image_cover_url:'http://ecx.images-amazon.com/images/I/21M5GBS07SL._BO1,204,203,200_.jpg', published_on:'9/6/05', total_in_library:4)
book7 = Book.where(isbn:'978-0441172719').first_or_create!(title:'Dune', author_id:5, genre:'Science Fiction', abstract:"Here is the novel that will be forever considered a triumph of the imagination. Set on the desert planet Arrakis, Dune is the story of the boy Paul Atreides, who would become the mysterious man known as Muad'Dib. He would avenge the traitorous plot against his noble family--and would bring to fruition humankind's most ancient and unattainable dream. A stunning blend of adventure and mysticism, environmentalism and politics, Dune won the first Nebula Award, shared the Hugo Award, and formed the basis of what it undoubtedly the grandest epic in science fiction.", pages:896, image_cover_url:'http://ecx.images-amazon.com/images/I/41shWIN%2BssL._SX302_BO1,204,203,200_.jpg', published_on:'9/1/83', total_in_library:9)
book8 = Book.where(isbn:'978-0441104024').first_or_create!(title:'Children of Dune', author_id:5, genre:'Science Fiction', abstract:"The desert planet of Arrakis has begun to grow green and lush. The life-giving spice is abundant. The nine-year-old royal twins, possesing their father's supernatural powers, are being groomed as Messiahs. But there are those who think the Imperium does not need messiahs...", pages:416, image_cover_url:'http://ecx.images-amazon.com/images/I/41-cUCs7kvL._SX296_BO1,204,203,200_.jpg', published_on:'5/15/87', total_in_library:2)
book9 = Book.where(isbn:'978-0812513714').first_or_create!(title:'The Dragon reborn', author_id:6, genre:'Fantasy', abstract:"The Wheel of Time turns, and Ages come and pass. What was, what will be, and what is, may yet fall under the Shadow.  Rand Al'Thor is the Dragon Reborn-- able to touch the One Power, but unable to control it. Rand knows only that he must face the Dark One in a battle to the death. Ahead of him lies the next great test.", pages:704, image_cover_url:'http://ecx.images-amazon.com/images/I/51qjoryftvL._SX295_BO1,204,203,200_.jpg', published_on:'10/15/93', total_in_library:3)