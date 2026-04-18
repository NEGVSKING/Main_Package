// Sources/SHIFT/AlcoholBrands.swift
// E-ROK-Package
//
// Created by Fabien Koré on 07/09/2025.

import Foundation

public struct AlcoholBrands {
    nonisolated(unsafe) public static let brandsByType: [AlcoholType: [String]] = [

        // MARK: - Bières
        .beer: [
            "Heineken", "Kronenbourg", "1664", "Desperados", "Carlsberg", "Guinness",
            "Leffe", "Affligem", "Grimbergen", "Brewdog", "Corona", "Stella Artois",
            "Budweiser", "Amstel", "Peroni", "Moretti", "Asahi", "Sapporo",
            "Tiger", "Tsingtao", "Modelo", "Pacifico", "Dos Equis", "Sol",
            "Hoegaarden", "Blue Moon", "Newcastle Brown Ale", "Boddingtons",
            "Foster's", "Coors Light", "Miller Lite", "Bud Light",
            "Tuborg", "Efes", "San Miguel", "Estrella Damm", "Mahou",
            "Duvel", "Chimay", "Orval", "Westmalle", "Rochefort", "La Trappe"
        ],

        // MARK: - Vins rouges
        .wineRed: [
            "Château Pétrus", "Château Margaux", "Château Latour", "Château Mouton Rothschild",
            "Château Haut-Brion", "Château Ausone", "Château Cheval Blanc",
            "Penfolds Grange", "Opus One", "Sassicaia", "Ornellaia", "Tignanello",
            "Vega Sicilia", "Pingus", "Screaming Eagle",
            "Cabernet Sauvignon", "Merlot", "Pinot Noir", "Syrah", "Malbec",
            "Chianti Classico", "Rioja Reserva", "Brunello di Montalcino",
            "Barolo", "Barbaresco", "Amarone", "Valpolicella",
            "Côtes du Rhône", "Châteauneuf-du-Pape", "Saint-Émilion",
            "Pomerol", "Médoc", "Beaujolais", "Bourgogne Pinot Noir",
            "Zinfandel", "Shiraz", "Tempranillo", "Grenache", "Malbec Argentino",
            "Carménère", "Tannat", "Montepulciano"
        ],

        // MARK: - Vins blancs
        .wineWhite: [
            "Chardonnay", "Sauvignon Blanc", "Pinot Grigio", "Riesling",
            "Chablis", "Sancerre", "Pouilly-Fumé", "Muscadet",
            "Meursault", "Puligny-Montrachet", "Chassagne-Montrachet",
            "Alsace Gewurztraminer", "Alsace Pinot Gris",
            "Viognier", "Roussanne", "Marsanne",
            "Grüner Veltliner", "Torrontés", "Vermentino",
            "Greco di Tufo", "Fiano di Avellino", "Soave",
            "Pinot Blanc", "Sylvaner", "Chenin Blanc",
            "Vouvray", "Montlouis", "Savennières",
            "Mâcon-Villages", "Saint-Véran",
            "Verdejo", "Albariño", "Txakoli"
        ],

        // MARK: - Vins rosés
        .wineRose: [
            "Côtes de Provence", "Tavel", "Bandol Rosé", "Languedoc Rosé",
            "Bordeaux Rosé", "Anjou Rosé", "Whispering Angel", "Miraval",
            "Château d'Esclans", "Minuty", "Château Sainte Marguerite",
            "Clos Cibonne", "Domaines Ott", "Peyrassol",
            "Léoube", "Château Beaulieu", "Château de Berne",
            "Gris de Toul", "Marsannay Rosé", "Sancerre Rosé",
            "Côteaux d'Aix Rosé", "Palette Rosé", "Cassis Rosé",
            "Irouléguy Rosé", "Cabernet d'Anjou", "Rosé de Loire",
            "Côtes du Rhône Rosé", "Ventoux Rosé", "Luberon Rosé",
            "Île de Beauté Rosé", "Rosé d'Oc", "Côtes de Thongue Rosé"
        ],

        // MARK: - Effervescents
        .sparkling: [
            "Crémant d'Alsace", "Crémant de Bourgogne", "Crémant de Loire",
            "Crémant de Bordeaux", "Crémant du Jura", "Crémant de Limoux",
            "Prosecco Valdobbiadene", "Prosecco DOC", "Cava Brut",
            "Cava Reserva", "Franciacorta", "Trento DOC",
            "Blanquette de Limoux", "Clairette de Die", "Saumur Brut",
            "Vouvray Pétillant", "Bugey Cerdon", "Gaillac Perlé",
            "Pét-Nat", "English Sparkling Wine", "Graham Beck Brut",
            "Codorníu", "Freixenet", "Segura Viudas",
            "Nyetimber", "Chapel Down", "Camel Valley"
        ],

        // MARK: - Champagnes
        .champagne: [
            "Moët & Chandon", "Veuve Clicquot", "Dom Pérignon", "Louis Roederer",
            "Krug", "Taittinger", "Bollinger", "Laurent-Perrier",
            "Ruinart", "Piper-Heidsieck", "Charles Heidsieck", "Pol Roger",
            "Gosset", "Billecart-Salmon", "Deutz", "Perrier-Jouët",
            "Armand de Brignac", "Cristal", "Salon", "Jacquesson",
            "Bruno Paillard", "Henri Giraud", "Drappier", "Philipponnat",
            "Nicolas Feuillatte", "G.H. Mumm", "Lanson", "Canard-Duchêne",
            "Ayala", "Barons de Rothschild", "Besserat de Bellefon"
        ],

        // MARK: - Vins fortifiés
        .fortified: [
            "Tawny Porto", "Ruby Porto", "Vintage Porto", "Porto Blanc",
            "Taylor Fladgate", "Graham's Port", "Fonseca", "Sandeman",
            "Dow's Port", "Cockburn's", "Warre's",
            "Oloroso Sherry", "Fino Sherry", "Manzanilla",
            "Amontillado", "Palo Cortado", "Pedro Ximénez",
            "Madeira Verdelho", "Madeira Sercial", "Bual",
            "Marsala Superiore", "Marsala Vergine",
            "Banyuls Rancio", "Maury", "Rivesaltes", "Muscat de Beaumes-de-Venise",
            "Muscat de Frontignan", "Pineau des Charentes",
            "Floc de Gascogne", "Ratafia de Champagne"
        ],

        // MARK: - Vins de dessert
        .dessertWine: [
            "Sauternes", "Barsac", "Loupiac", "Sainte-Croix-du-Mont",
            "Tokaji Aszú 5 Puttonyos", "Tokaji Eszencia",
            "Trockenbeerenauslese", "Beerenauslese", "Eiswein",
            "Ice Wine (Canada)", "Vin Santo Toscano",
            "Pedro Ximénez Gran Reserva", "Moscato d'Asti",
            "Jurançon Moelleux", "Coteaux du Layon",
            "Bonnezeaux", "Quarts de Chaume",
            "Gewurztraminer Vendanges Tardives",
            "Riesling Sélection de Grains Nobles",
            "Vin de Paille du Jura", "Monbazillac",
            "Pacherenc du Vic-Bilh Doux", "Gaillac Doux"
        ],

        // MARK: - Vins bio
        .organicWine: [
            "Château Pontet-Canet", "Domaine Zind-Humbrecht", "Domaine Leflaive",
            "Domaine de Trévallon", "Domaine Richeaume",
            "Château La Tour Figeac", "Vignoble du Rêveur",
            "Domaine Léon Barral", "Mas Bruguière", "Domaine Gauby",
            "Domaine Gramenon", "Domaine des Roches Neuves",
            "Clos du Tue-Bœuf", "Château Le Puy", "Domaine de l'Écu"
        ],

        // MARK: - Vins biodynamiques
        .biodynamicWine: [
            "Domaine de la Romanée-Conti", "Château Pontet-Canet",
            "Domaine Zind-Humbrecht", "Nicolas Joly – Coulée de Serrant",
            "Domaine Leroy", "Domaine Leflaive", "Domaine Huet",
            "Domaine Trapet", "Domaine Weinbach", "Domaine Ostertag",
            "Mas de Daumas Gassac", "Domaine du Possible",
            "Domaine Marlier", "Domaine de la Vougeraie"
        ],

        // MARK: - Whiskies
        .whisky: [
            "Johnnie Walker Black", "Johnnie Walker Blue", "Johnnie Walker Gold",
            "Chivas Regal 12", "Chivas Regal 18", "Chivas Regal 25",
            "Ballantine's Finest", "Ballantine's 17",
            "Glenfiddich 12", "Glenfiddich 18", "Glenfiddich 21",
            "Macallan 12", "Macallan 18", "Macallan 25",
            "Jack Daniel's Old No.7", "Jack Daniel's Single Barrel",
            "Gentleman Jack", "Woodford Reserve",
            "Maker's Mark", "Buffalo Trace", "Eagle Rare",
            "Pappy Van Winkle", "Blanton's",
            "Laphroaig", "Ardbeg", "Lagavulin",
            "Oban", "Dalmore", "Glenlivet",
            "Highland Park", "Talisker", "Springbank",
            "Jameson", "Bushmills", "Redbreast",
            "Nikka Whisky", "Yamazaki", "Hakushu", "Hibiki"
        ],

        // MARK: - Vodkas
        .vodka: [
            "Absolut", "Absolut Elyx", "Smirnoff", "Smirnoff No.21",
            "Grey Goose", "Grey Goose L'Original",
            "Cîroc", "Belvedere", "Ketel One",
            "Eristoff", "Stolichnaya", "Russian Standard",
            "Beluga", "Zyr", "Jewel of Russia",
            "Tito's", "Wheatley", "Deep Eddy",
            "Reyka", "Finlandia", "Koskenkorva",
            "Crystal Head", "Konik's Tail", "Chase",
            "Hangar 1", "Chopin", "Luksusowa",
            "Żubrówka", "Wyborowa", "Sobieski",
            "UV Vodka", "SKYY", "Three Olives",
            "Pinnacle", "Burnett's", "New Amsterdam"
        ],

        // MARK: - Rhums
        .rum: [
            "Bacardi Carta Blanca", "Bacardi Carta Negra", "Bacardi 8",
            "Captain Morgan Spiced", "Captain Morgan Dark",
            "Havana Club 3 Ans", "Havana Club 7 Ans", "Havana Club Especial",
            "Malibu", "Mount Gay", "Appleton Estate",
            "Diplomatico Reserva", "Diplomatico Exclusiva",
            "Ron Zacapa 23", "Ron Zacapa XO",
            "Plantation 3 Stars", "Plantation Original Dark",
            "Rhum Barbancourt", "Rhum Damoiseau", "Rhum Clément",
            "Rhum Saint James", "Rhum La Mauny", "Rhum Trois Rivières",
            "Rhum J.M.", "Rhum Neisson", "Rhum Bologne",
            "Doorly's", "Mount Gay XO", "Cockspur",
            "El Dorado 12", "El Dorado 15",
            "Angostura 1919", "Angostura 1824",
            "Flor de Caña", "Ron Abuelo", "Brugal",
            "Barceló", "Santa Teresa 1796", "Botran"
        ],

        // MARK: - Gins
        .gin: [
            "Bombay Sapphire", "Tanqueray No.Ten", "Gordon's",
            "Beefeater", "Beefeater 24", "Hendrick's",
            "Roku", "Monkey 47", "The Botanist",
            "Sipsmith", "Malfy", "Italicus",
            "Caorunn", "Hayman's", "Martin Miller's",
            "Plymouth Gin", "Whitley Neill", "Opihr",
            "Bulldog", "Warner's", "Citadelle",
            "Darnley's", "Edgerton Pink", "Edinburgh Gin",
            "Gin Mare", "Nordes", "Ungava",
            "St. George", "Drumshanbo", "Bertha's Revenge",
            "Four Pillars", "Archie Rose", "West Winds",
            "Aviation", "Empress 1908", "The Botanist",
            "Brockmans", "Oxley", "No.3 London Dry"
        ],

        // MARK: - Tequilas
        .tequila: [
            "Jose Cuervo Especial", "Jose Cuervo Reserva de la Familia",
            "Don Julio Blanco", "Don Julio Reposado", "Don Julio 1942",
            "Patrón Silver", "Patrón Reposado", "Patrón Añejo",
            "Herradura Silver", "Herradura Reposado",
            "Casamigos Blanco", "Casamigos Reposado", "Casamigos Añejo",
            "El Jimador", "Olmeca", "Sauza",
            "Espolòn", "Altos Olmeca", "Tres Generaciones",
            "Casa Noble", "Fortaleza", "G4",
            "Tequila Ocho", "El Tesoro", "Siete Leguas",
            "ArteNOM", "Código 1530", "Clase Azul",
            "Gran Patrón Platinum", "Maestro Dobel Diamond",
            "1800 Silver", "1800 Coconut", "Hornitos",
            "Milagro", "Lunazul", "El Mayor"
        ],

        // MARK: - Brandies / Cognacs
        .brandy: [
            "Hennessy VS", "Hennessy VSOP", "Hennessy XO",
            "Hennessy Paradis", "Hennessy Richard",
            "Courvoisier VS", "Courvoisier VSOP", "Courvoisier XO",
            "Rémy Martin VSOP", "Rémy Martin XO", "Rémy Martin Louis XIII",
            "Martell VS", "Martell VSOP", "Martell Cordon Bleu", "Martell XO",
            "Camus VSOP", "Camus XO", "Camus Borderies",
            "Hine Rare VSOP", "Hine Antique XO",
            "Frapin VSOP", "Frapin XO",
            "Torres 10", "Torres 15", "Torres 20",
            "Metaxa 5*", "Metaxa 7*", "Metaxa 12*",
            "Cardenal Mendoza", "Gran Duque d'Alba",
            "Calvados Père Magloire", "Calvados Boulard",
            "Calvados Dupont", "Armagnac Darroze",
            "Armagnac Castarede", "Pisco Portón"
        ],

        // MARK: - Liqueurs
        .liqueur: [
            "Amaretto Disaronno", "Amaretto Lazzaroni",
            "Baileys Original", "Baileys Almande",
            "Campari", "Aperol", "Cynar",
            "Cointreau", "Grand Marnier", "Triple Sec",
            "Kahlúa", "Tia Maria",
            "Midori", "Malibu", "Sourz",
            "Chambord", "Crème de Cassis de Dijon",
            "Frangelico", "Nocello", "Limoncello",
            "Sambuca Molinari", "Sambuca Vaccari",
            "Jägermeister", "Chartreuse Verte", "Chartreuse Jaune",
            "Bénédictine", "Drambuie", "Strega",
            "Galliano", "Fernet-Branca", "Averna",
            "Montenegro", "Ramazzotti", "Luxardo Maraschino",
            "Pimm's No.1", "St-Germain", "Lillet Blanc",
            "Suze", "Noilly Prat", "Martini Bianco",
            "Martini Rosso", "Martini Extra Dry"
        ],

        // MARK: - Absinthes
        .absinthe: [
            "Pernod Absinthe", "Absente", "La Fée Absinthe",
            "St. George Absinthe", "Lucid", "Kübler",
            "Mata Hari", "Mansinthe", "La Clandestine",
            "Butterfly", "Jade Nouvelle-Orléans", "Vieux Pontarlier",
            "Henri Bardouin", "Francois Guy", "Duplais Verte"
        ],

        // MARK: - Aquavits
        .aquavit: [
            "Aalborg Jubilæums", "Aalborg Taffel", "Linie Aquavit",
            "O.P. Anderson", "Skåne Akvavit", "Brennevin",
            "Gammel Opland", "Gilde Non Plus Ultra", "Vikingfjord",
            "Lysholm Linie", "Løiten Linie", "Brogaard Aquavit",
            "Nordic Aquavit", "Aquavit Krogstad"
        ],

        // MARK: - Arracks
        .arrack: [
            "Batavia Arrack Van Oosten", "Ceylon Arrack Old Reserve",
            "VSOA Arrack", "Arrak Punsch",
            "Arak Brun", "Arak Blanc", "Arak Touma"
        ],

        // MARK: - Bitters
        .bitters: [
            "Angostura", "Peychaud's", "Fee Brothers Old Fashioned",
            "Fee Brothers Whiskey Barrel-Aged", "The Bitter Truth Aromatic",
            "The Bitter Truth Grapefruit", "Regans' Orange Bitters",
            "Scrappy's Lavender", "Bittercube Cherry Bark Vanilla",
            "Woodford Reserve Spiced Cherry",
            "Hella Citrus Bitters", "Dashfire Vintage Orange",
            "Bittermens Xocolatl Mole", "Cynar Bitters"
        ],

        // MARK: - Cidres
        .cider: [
            "Strongbow Gold", "Strongbow Dark Fruit",
            "Magners Original", "Magners Berry",
            "Kopparberg Strawberry & Lime", "Kopparberg Mixed Fruit",
            "Rekorderlig Mango-Raspberry", "Rekorderlig Strawberry-Lime",
            "Somersby Apple", "Somersby Blackberry",
            "Bulmers Original", "Bulmers Red Berries",
            "Thatchers Gold", "Thatchers Rosé",
            "Aspall", "Westons Stowford Press",
            "Fever-Tree Sparkling Apple",
            "Breton Loïc Raison", "Cidre de Normandie Dupont",
            "Cidre Breton Manoir du Kinkiz",
            "Eric Bordelet Argelette", "Kerné Brut",
            "Guillevic Brut Nature", "Domfront Poiré"
        ],

        // MARK: - Hydromels
        .mead: [
            "Bunratty Meade", "Chaucer's Mead", "Sky River Mead",
            "Bochets du Monde", "Chouchen Breton",
            "Viking Blod", "Dansk Mjød", "Mjøds",
            "B. Nektar", "Schramm's", "Moonlight Meadery",
            "Redstone Meadery", "Rabbit's Foot Meadery"
        ],

        // MARK: - Sakés
        .sake: [
            "Gekkeikan", "Hakutsuru", "Kubota", "Dassai 23",
            "Dassai 39", "Dassai 45", "Juyondai",
            "Isojiman", "Niizawa", "Born Gold",
            "Nanbu Bijin", "Kokuryu", "Shichihon Yari",
            "Tengumai", "Kiku-Masamune", "Ozeki",
            "Sho Chiku Bai", "Hana Awaka"
        ],

        // MARK: - Sojus
        .soju: [
            "Jinro Chamisul", "Jinro Is Back",
            "Chum Churum", "Good Day",
            "Charm", "Hwayo 23", "Hwayo 41",
            "Andong Soju", "Munbaesoju",
            "Yipanda", "J Soju", "Tokki Soju"
        ],

        // MARK: - Shōchūs
        .shochu: [
            "Iichiko Silhouette", "Iichiko Frasco",
            "Kurokirishima", "Satsuma Shiranami",
            "Jinsei Sango", "Hakutake Shiro",
            "Tantakatan", "Lento", "Hyakunen no Kodawari"
        ],

        // MARK: - Baijius
        .baijiu: [
            "Moutai Feitian", "Wuliangye Classic",
            "Luzhou Laojiao Tequ", "Gu Jing Gong",
            "Xifeng", "Fenjiu Laobaigan",
            "Jiannanchun", "Yanghe Blue Classic",
            "Shui Jing Fang", "Lang Jiu"
        ],

        // MARK: - Makgeollis
        .makgeolli: [
            "Kook Soon Dang", "Seoul Jangsu", "Busan Makgeolli",
            "Nongmin Makgeolli", "Wolhyang",
            "Ipeori", "Gapyeong Makgeolli"
        ],

        // MARK: - Hard Seltzers
        .hardSeltzer: [
            "White Claw Black Cherry", "White Claw Mango", "White Claw Raspberry",
            "Truly Wild Berry", "Truly Lemonade", "Truly Iced Tea",
            "TopChico Hard Seltzer", "Bon V!V Grapefruit Clementine",
            "Vizzy Hard Seltzer", "Bud Light Seltzer",
            "Corona Hard Seltzer", "Smirnoff Seltzer",
            "Michelob Ultra Organic Seltzer",
            "Crook & Marker", "Cacti Agave Spiked Seltzer",
            "Flying Embers Hard Seltzer", "Natty Light Seltzer"
        ],

        // MARK: - Kombuchas alcoolisées
        .kombuchaAlcoolise: [
            "JuneShine Hard Kombucha", "Unity Vibration", "Flying Embers",
            "Boochcraft", "Wild Tonic",
            "Kyla Hard Kombucha", "Sly Fox Hard Kombucha",
            "Health-Ade Booch Hard Kombucha"
        ],

        // MARK: - Sans alcool
        .nonAlcoholic: [
            "Heineken 0.0", "Beck's Non-Alcoholic", "Erdinger Alkoholfrei",
            "Clausthaler", "Budweiser Zero", "Kronenbourg 1664 Sans Alcool",
            "Carlsberg 0.0", "Leffe Blonde 0.0", "Hoegaarden 0.0",
            "Peroni Nastro Azzurro 0.0%", "Corona Cero",
            "Guinness 0.0", "Stella Artois Alcohol-Free",
            "Athletic Brewing Run Wild IPA", "Athletic Brewing Upside Dawn",
            "Seedlip Spice 94", "Seedlip Garden 108", "Seedlip Grove 42",
            "Lyre's American Malt", "Lyre's Dry London Spirit",
            "Monday Whiskey", "Monday Gin",
            "Ritual Zero Proof Whiskey Alternative",
            "Borrago", "Everleaf Forest", "Everleaf Marine"
        ],

        // MARK: - Cocktails
        .cocktail: [
            "Mojito", "Margarita", "Cosmopolitan", "Pina Colada",
            "Daiquiri", "Martini", "Old Fashioned", "Negroni",
            "Manhattan", "Whiskey Sour",
            "Espresso Martini", "Aperol Spritz", "Bellini",
            "Kir Royal", "French 75", "Sidecar",
            "Gimlet", "Tom Collins", "Long Island Iced Tea",
            "Sex on the Beach", "Tequila Sunrise",
            "Caipirinha", "Moscow Mule", "Dark & Stormy",
            "Paloma", "Mezcal Negroni", "Porn Star Martini",
            "Clover Club", "Last Word", "Paper Plane",
            "Penicillin", "Jungle Bird", "Naked & Famous",
            "Bee's Knees", "Aviation", "Corpse Reviver #2",
            "Bramble", "Singapore Sling", "Blue Lagoon"
        ]
    ]
}
