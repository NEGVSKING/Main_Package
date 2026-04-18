// Sources/SHIFT/AlcoholBrands.swift
// E-ROK-Package
//
// Created by Fabien Koré on 07/09/2025.

import Foundation

public struct AlcoholBrands {
    nonisolated(unsafe) public static let brandsByType: [AlcoholType: [String]] = [

        // MARK: - Bières
        .beer: [
            // Génériques
            "Bière blonde", "Bière brune", "Bière rousse", "Bière ambrée",
            "Bière blanche", "Bière artisanale", "Bière pression", "Bière bouteille",
            "Bière sans alcool", "Bière IPA", "Bière Stout", "Bière Porter",
            "Bière de saison", "Bière trappiste", "Bière d'abbaye",
            // Marques
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
            // Génériques
            "Vin rouge", "Vin rouge maison", "Vin rouge léger", "Vin rouge corsé",
            "Vin rouge fruité", "Vin rouge sec", "Vin rouge tannique",
            "Carafe de vin rouge", "Pichet de vin rouge",
            "Vin rouge d'appellation", "Vin rouge de pays",
            // Marques / Appellations
            "Château Pétrus", "Château Margaux", "Château Latour", "Château Mouton Rothschild",
            "Château Haut-Brion", "Château Ausone", "Château Cheval Blanc",
            "Penfolds Grange", "Opus One", "Sassicaia", "Ornellaia", "Tignanello",
            "Vega Sicilia", "Pingus", "Screaming Eagle",
            "Cabernet Sauvignon", "Merlot", "Pinot Noir", "Syrah", "Malbec",
            "Chianti Classico", "Rioja Reserva", "Brunello di Montalcino",
            "Barolo", "Barbaresco", "Amarone", "Valpolicella",
            "Côtes du Rhône", "Châteauneuf-du-Pape", "Saint-Émilion",
            "Pomerol", "Médoc", "Beaujolais", "Bourgogne Pinot Noir",
            "Zinfandel", "Shiraz", "Tempranillo", "Grenache",
            "Carménère", "Tannat", "Montepulciano"
        ],

        // MARK: - Vins blancs
        .wineWhite: [
            // Génériques
            "Vin blanc", "Vin blanc maison", "Vin blanc sec", "Vin blanc demi-sec",
            "Vin blanc moelleux", "Vin blanc fruité", "Vin blanc minéral",
            "Carafe de vin blanc", "Pichet de vin blanc",
            "Vin blanc d'appellation", "Vin blanc de pays",
            // Marques / Appellations
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
            // Génériques
            "Vin rosé", "Vin rosé maison", "Vin rosé sec", "Vin rosé fruité",
            "Vin rosé de Provence", "Carafe de rosé", "Pichet de rosé",
            // Marques / Appellations
            "Côtes de Provence", "Tavel", "Bandol Rosé", "Languedoc Rosé",
            "Bordeaux Rosé", "Anjou Rosé", "Whispering Angel", "Miraval",
            "Château d'Esclans", "Minuty", "Château Sainte Marguerite",
            "Clos Cibonne", "Domaines Ott", "Peyrassol",
            "Léoube", "Château Beaulieu", "Château de Berne",
            "Gris de Toul", "Marsannay Rosé", "Sancerre Rosé",
            "Côteaux d'Aix Rosé", "Palette Rosé", "Cassis Rosé",
            "Irouléguy Rosé", "Cabernet d'Anjou", "Rosé de Loire",
            "Côtes du Rhône Rosé", "Ventoux Rosé", "Luberon Rosé",
            "Île de Beauté Rosé", "Rosé d'Oc"
        ],

        // MARK: - Effervescents
        .sparkling: [
            // Génériques
            "Vin pétillant", "Vin mousseux", "Crémant", "Bulles blanches",
            "Bulles rosées", "Pétillant naturel", "Pét-Nat",
            // Marques / Appellations
            "Crémant d'Alsace", "Crémant de Bourgogne", "Crémant de Loire",
            "Crémant de Bordeaux", "Crémant du Jura", "Crémant de Limoux",
            "Prosecco Valdobbiadene", "Prosecco DOC", "Cava Brut",
            "Cava Reserva", "Franciacorta", "Trento DOC",
            "Blanquette de Limoux", "Clairette de Die", "Saumur Brut",
            "Vouvray Pétillant", "Bugey Cerdon", "Gaillac Perlé",
            "English Sparkling Wine", "Graham Beck Brut",
            "Codorníu", "Freixenet", "Segura Viudas",
            "Nyetimber", "Chapel Down", "Camel Valley"
        ],

        // MARK: - Champagnes
        .champagne: [
            // Génériques
            "Champagne brut", "Champagne demi-sec", "Champagne rosé",
            "Champagne blanc de blancs", "Champagne blanc de noirs",
            "Champagne millésimé", "Champagne prestige",
            "Coupe de champagne", "Flûte de champagne",
            // Marques
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
            // Génériques
            "Porto rouge", "Porto blanc", "Porto tawny", "Porto vintage",
            "Sherry sec", "Sherry doux", "Madère",
            // Marques
            "Tawny Porto", "Ruby Porto", "Vintage Porto",
            "Taylor Fladgate", "Graham's Port", "Fonseca", "Sandeman",
            "Dow's Port", "Cockburn's", "Warre's",
            "Oloroso Sherry", "Fino Sherry", "Manzanilla",
            "Amontillado", "Palo Cortado", "Pedro Ximénez",
            "Madeira Verdelho", "Madeira Sercial", "Bual",
            "Marsala Superiore", "Marsala Vergine",
            "Banyuls Rancio", "Maury", "Rivesaltes",
            "Muscat de Beaumes-de-Venise", "Muscat de Frontignan",
            "Pineau des Charentes", "Floc de Gascogne", "Ratafia de Champagne"
        ],

        // MARK: - Vins de dessert
        .dessertWine: [
            // Génériques
            "Vin doux", "Vin moelleux", "Vin liquoreux", "Vin de dessert",
            "Vendanges tardives",
            // Marques / Appellations
            "Sauternes", "Barsac", "Loupiac", "Sainte-Croix-du-Mont",
            "Tokaji Aszú 5 Puttonyos", "Tokaji Eszencia",
            "Trockenbeerenauslese", "Beerenauslese", "Eiswein",
            "Ice Wine", "Vin Santo Toscano",
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
            // Génériques
            "Vin bio", "Vin naturel", "Vin sans soufre",
            "Vin rouge bio", "Vin blanc bio", "Vin rosé bio",
            // Marques
            "Château Pontet-Canet", "Domaine Zind-Humbrecht", "Domaine Leflaive",
            "Domaine de Trévallon", "Domaine Richeaume",
            "Château La Tour Figeac", "Vignoble du Rêveur",
            "Domaine Léon Barral", "Mas Bruguière", "Domaine Gauby",
            "Domaine Gramenon", "Domaine des Roches Neuves",
            "Clos du Tue-Bœuf", "Château Le Puy", "Domaine de l'Écu"
        ],

        // MARK: - Vins biodynamiques
        .biodynamicWine: [
            // Génériques
            "Vin biodynamique", "Vin en biodynamie", "Vin Demeter",
            // Marques
            "Domaine de la Romanée-Conti", "Château Pontet-Canet",
            "Domaine Zind-Humbrecht", "Nicolas Joly – Coulée de Serrant",
            "Domaine Leroy", "Domaine Leflaive", "Domaine Huet",
            "Domaine Trapet", "Domaine Weinbach", "Domaine Ostertag",
            "Mas de Daumas Gassac", "Domaine du Possible",
            "Domaine Marlier", "Domaine de la Vougeraie"
        ],

        // MARK: - Whiskies
        .whisky: [
            // Génériques
            "Whisky", "Whisky écossais", "Whisky irlandais", "Whisky américain",
            "Whisky japonais", "Bourbon", "Rye Whiskey",
            "Single Malt", "Blended Scotch", "Tennessee Whiskey",
            "Whisky tourbé", "Whisky sur glace", "Whisky soda",
            // Marques
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
            // Génériques
            "Vodka", "Vodka pure", "Vodka premium", "Vodka aromatisée",
            "Vodka citron", "Vodka fraise", "Vodka vanille",
            "Shot de vodka", "Vodka soda", "Vodka tonic",
            // Marques
            "Absolut", "Absolut Elyx", "Smirnoff", "Smirnoff No.21",
            "Grey Goose", "Cîroc", "Belvedere", "Ketel One",
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
            // Génériques
            "Rhum", "Rhum blanc", "Rhum ambré", "Rhum vieux",
            "Rhum agricole", "Rhum industriel", "Rhum épicé",
            "Rhum arrangé", "Rhum arrangé fruits", "Rhum arrangé vanille",
            "Shot de rhum", "Rhum Coca", "Rhum citron",
            // Marques
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
            "Doorly's", "El Dorado 12", "El Dorado 15",
            "Angostura 1919", "Flor de Caña", "Ron Abuelo",
            "Barceló", "Santa Teresa 1796", "Botran"
        ],

        // MARK: - Gins
        .gin: [
            // Génériques
            "Gin", "Gin London Dry", "Gin tonic", "Gin citron",
            "Gin concombre", "Gin fraise", "Gin premium",
            "Shot de gin", "Gin tonic maison",
            // Marques
            "Bombay Sapphire", "Tanqueray No.Ten", "Gordon's",
            "Beefeater", "Beefeater 24", "Hendrick's",
            "Roku", "Monkey 47", "The Botanist",
            "Sipsmith", "Malfy", "Italicus",
            "Caorunn", "Hayman's", "Martin Miller's",
            "Plymouth Gin", "Whitley Neill", "Opihr",
            "Bulldog", "Warner's", "Citadelle",
            "Darnley's", "Edinburgh Gin", "Gin Mare",
            "Nordes", "Ungava", "St. George",
            "Drumshanbo", "Bertha's Revenge",
            "Four Pillars", "Aviation", "Empress 1908",
            "Brockmans", "Oxley", "No.3 London Dry"
        ],

        // MARK: - Tequilas
        .tequila: [
            // Génériques
            "Tequila", "Tequila blanco", "Tequila reposado", "Tequila añejo",
            "Tequila extra añejo", "Tequila premium", "Mezcal",
            "Shot de tequila", "Tequila citron sel", "Tequila sunrise",
            // Marques
            "Jose Cuervo Especial", "Jose Cuervo Reserva de la Familia",
            "Don Julio Blanco", "Don Julio Reposado", "Don Julio 1942",
            "Patrón Silver", "Patrón Reposado", "Patrón Añejo",
            "Herradura Silver", "Herradura Reposado",
            "Casamigos Blanco", "Casamigos Reposado", "Casamigos Añejo",
            "El Jimador", "Olmeca", "Sauza",
            "Espolòn", "Altos Olmeca", "Tres Generaciones",
            "Casa Noble", "Fortaleza", "G4",
            "Tequila Ocho", "El Tesoro", "Siete Leguas",
            "Clase Azul", "Código 1530",
            "1800 Silver", "Hornitos", "Milagro", "Lunazul"
        ],

        // MARK: - Brandies / Cognacs
        .brandy: [
            // Génériques
            "Cognac", "Cognac VS", "Cognac VSOP", "Cognac XO",
            "Armagnac", "Calvados", "Brandy", "Pisco",
            "Eau-de-vie", "Eau-de-vie de poire", "Eau-de-vie de framboise",
            "Marc de Bourgogne", "Marc de Champagne",
            // Marques
            "Hennessy VS", "Hennessy VSOP", "Hennessy XO",
            "Hennessy Paradis", "Hennessy Richard",
            "Courvoisier VS", "Courvoisier VSOP", "Courvoisier XO",
            "Rémy Martin VSOP", "Rémy Martin XO", "Rémy Martin Louis XIII",
            "Martell VS", "Martell VSOP", "Martell Cordon Bleu", "Martell XO",
            "Camus VSOP", "Camus XO",
            "Hine Rare VSOP", "Hine Antique XO",
            "Torres 10", "Torres 15", "Torres 20",
            "Metaxa 5*", "Metaxa 7*", "Metaxa 12*",
            "Cardenal Mendoza", "Calvados Dupont",
            "Armagnac Darroze", "Pisco Portón"
        ],

        // MARK: - Liqueurs
        .liqueur: [
            // Génériques
            "Liqueur", "Liqueur de fruits", "Liqueur de café",
            "Liqueur de noix", "Liqueur de cerise", "Liqueur de pêche",
            "Liqueur de coco", "Liqueur de menthe", "Liqueur de cassis",
            "Liqueur de framboise", "Liqueur d'orange", "Liqueur de litchi",
            "Crème de cassis", "Crème de mûre", "Crème de pêche",
            "Crème de menthe", "Crème de violette",
            // Marques
            "Amaretto Disaronno", "Amaretto Lazzaroni",
            "Baileys Original", "Baileys Almande",
            "Campari", "Aperol", "Cynar",
            "Cointreau", "Grand Marnier", "Triple Sec",
            "Kahlúa", "Tia Maria",
            "Midori", "Malibu", "Sourz",
            "Chambord", "Crème de Cassis de Dijon",
            "Frangelico", "Nocello", "Limoncello",
            "Sambuca Molinari", "Jägermeister",
            "Chartreuse Verte", "Chartreuse Jaune",
            "Bénédictine", "Drambuie", "Strega",
            "Galliano", "Fernet-Branca", "Averna",
            "Montenegro", "Ramazzotti", "Luxardo Maraschino",
            "Pimm's No.1", "St-Germain", "Lillet Blanc",
            "Suze", "Noilly Prat",
            "Martini Bianco", "Martini Rosso", "Martini Extra Dry"
        ],

        // MARK: - Absinthes
        .absinthe: [
            // Génériques
            "Absinthe", "Absinthe verte", "Absinthe blanche",
            "Absinthe artisanale", "Shot d'absinthe",
            // Marques
            "Pernod Absinthe", "Absente", "La Fée Absinthe",
            "St. George Absinthe", "Lucid", "Kübler",
            "Mata Hari", "Mansinthe", "La Clandestine",
            "Butterfly", "Jade Nouvelle-Orléans", "Vieux Pontarlier",
            "Henri Bardouin", "Francois Guy", "Duplais Verte"
        ],

        // MARK: - Aquavits
        .aquavit: [
            // Génériques
            "Aquavit", "Akvavit", "Aquavit scandinave",
            "Shot d'aquavit",
            // Marques
            "Aalborg Jubilæums", "Aalborg Taffel", "Linie Aquavit",
            "O.P. Anderson", "Skåne Akvavit", "Brennevin",
            "Gammel Opland", "Gilde Non Plus Ultra", "Vikingfjord",
            "Lysholm Linie", "Løiten Linie", "Nordic Aquavit"
        ],

        // MARK: - Arracks
        .arrack: [
            // Génériques
            "Arrack", "Arak", "Arak anisé",
            "Arak blanc", "Arak brun",
            // Marques
            "Batavia Arrack Van Oosten", "Ceylon Arrack Old Reserve",
            "VSOA Arrack", "Arrak Punsch",
            "Arak Brun", "Arak Blanc", "Arak Touma"
        ],

        // MARK: - Bitters
        .bitters: [
            // Génériques
            "Bitter", "Bitter aromatique", "Bitter orange",
            "Bitter pamplemousse", "Bitter cerise",
            "Bitter lavande", "Bitter chocolat",
            // Marques
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
            // Génériques
            "Cidre", "Cidre brut", "Cidre doux", "Cidre rosé",
            "Cidre artisanal", "Cidre fermier", "Cidre bouché",
            "Cidre de Normandie", "Cidre de Bretagne",
            "Poiré", "Cidre poire",
            // Marques
            "Strongbow Gold", "Strongbow Dark Fruit",
            "Magners Original", "Magners Berry",
            "Kopparberg Strawberry & Lime", "Kopparberg Mixed Fruit",
            "Rekorderlig Mango-Raspberry", "Rekorderlig Strawberry-Lime",
            "Somersby Apple", "Somersby Blackberry",
            "Bulmers Original", "Thatchers Gold", "Thatchers Rosé",
            "Aspall", "Westons Stowford Press",
            "Breton Loïc Raison", "Cidre de Normandie Dupont",
            "Eric Bordelet Argelette", "Kerné Brut",
            "Guillevic Brut Nature"
        ],

        // MARK: - Hydromels
        .mead: [
            // Génériques
            "Hydromel", "Hydromel sec", "Hydromel doux",
            "Hydromel fruité", "Hydromel épicé", "Chouchen",
            // Marques
            "Bunratty Meade", "Chaucer's Mead", "Sky River Mead",
            "Bochets du Monde", "Chouchen Breton",
            "Viking Blod", "Dansk Mjød",
            "B. Nektar", "Schramm's", "Moonlight Meadery",
            "Redstone Meadery", "Rabbit's Foot Meadery"
        ],

        // MARK: - Sakés
        .sake: [
            // Génériques
            "Saké", "Saké chaud", "Saké froid", "Saké premium",
            "Junmai Daiginjo", "Ginjo", "Honjozo",
            "Nigori (saké trouble)", "Sparkling Saké",
            // Marques
            "Gekkeikan", "Hakutsuru", "Kubota", "Dassai 23",
            "Dassai 39", "Dassai 45", "Juyondai",
            "Isojiman", "Niizawa", "Born Gold",
            "Nanbu Bijin", "Kokuryu", "Kiku-Masamune", "Ozeki",
            "Sho Chiku Bai", "Hana Awaka"
        ],

        // MARK: - Sojus
        .soju: [
            // Génériques
            "Soju", "Soju nature", "Soju fruité",
            "Soju citron", "Soju pêche", "Soju raisin",
            "Shot de soju",
            // Marques
            "Jinro Chamisul", "Jinro Is Back",
            "Chum Churum", "Good Day",
            "Charm", "Hwayo 23", "Hwayo 41",
            "Andong Soju", "Munbaesoju",
            "Tokki Soju"
        ],

        // MARK: - Shōchūs
        .shochu: [
            // Génériques
            "Shōchū", "Shōchū orge", "Shōchū riz",
            "Shōchū patate douce", "Shōchū soba",
            // Marques
            "Iichiko Silhouette", "Iichiko Frasco",
            "Kurokirishima", "Satsuma Shiranami",
            "Jinsei Sango", "Hakutake Shiro",
            "Tantakatan", "Lento", "Hyakunen no Kodawari"
        ],

        // MARK: - Baijius
        .baijiu: [
            // Génériques
            "Baijiu", "Baijiu sauce arôme", "Baijiu fort arôme",
            "Baijiu arôme léger", "Shot de baijiu",
            // Marques
            "Moutai Feitian", "Wuliangye Classic",
            "Luzhou Laojiao Tequ", "Gu Jing Gong",
            "Xifeng", "Fenjiu Laobaigan",
            "Jiannanchun", "Yanghe Blue Classic",
            "Shui Jing Fang", "Lang Jiu"
        ],

        // MARK: - Makgeollis
        .makgeolli: [
            // Génériques
            "Makgeolli", "Makgeolli nature", "Makgeolli fruité",
            // Marques
            "Kook Soon Dang", "Seoul Jangsu", "Busan Makgeolli",
            "Nongmin Makgeolli", "Wolhyang",
            "Ipeori", "Gapyeong Makgeolli"
        ],

        // MARK: - Hard Seltzers
        .hardSeltzer: [
            // Génériques
            "Hard Seltzer", "Hard Seltzer citron", "Hard Seltzer fruits rouges",
            "Hard Seltzer mangue", "Hard Seltzer pamplemousse",
            "Hard Seltzer pêche", "Hard Seltzer pastèque",
            // Marques
            "White Claw Black Cherry", "White Claw Mango", "White Claw Raspberry",
            "Truly Wild Berry", "Truly Lemonade", "Truly Iced Tea",
            "TopChico Hard Seltzer", "Bon V!V Grapefruit Clementine",
            "Vizzy Hard Seltzer", "Bud Light Seltzer",
            "Corona Hard Seltzer", "Smirnoff Seltzer",
            "Reign Total Body Fuel", "Natty Light Seltzer",
            "Flying Embers Hard Seltzer"
        ],

        // MARK: - Kombuchas alcoolisées
        .kombuchaAlcoolise: [
            // Génériques
            "Kombucha alcoolisée", "Kombucha hard", "Kombucha gingembre",
            "Kombucha citron", "Kombucha fruits rouges",
            // Marques
            "JuneShine Hard Kombucha", "Unity Vibration", "Flying Embers",
            "Boochcraft", "Wild Tonic",
            "Kyla Hard Kombucha", "Sly Fox Hard Kombucha",
            "Health-Ade Booch Hard Kombucha"
        ],

        // MARK: - Sans alcool
        .nonAlcoholic: [
            // Génériques
            "Bière sans alcool", "Vin sans alcool", "Mojito sans alcool",
            "Cocktail sans alcool", "Virgin Cocktail", "Mocktail",
            "Spritz sans alcool",
            // Marques
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
            // Génériques
            "Cocktail maison", "Cocktail du bar", "Cocktail signature",
            "Cocktail fruité", "Cocktail créatif", "Cocktail classique",
            "Long drink", "Short drink", "Shot cocktail",
            // Classiques
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
            "Bramble", "Singapore Sling", "Blue Lagoon",
            "Amaretto Sour", "Lemon Drop", "Kir"
        ]
    ]
}
