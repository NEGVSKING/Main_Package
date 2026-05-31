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
            "Duvel", "Chimay", "Orval", "Westmalle", "Rochefort", "La Trappe",
            "Delirium Tremens", "Chouffe", "Karmeliet", "Pilsner Urquell", "Beck's",
            "Kirin Ichiban", "Samuel Adams", "Paulaner", "Franziskaner", "Weihenstephaner",
            "Erdinger", "Lagunitas IPA", "Sierra Nevada Pale Ale", "Punk IPA", "Pelforth",
            "Goudale", "Fischer", "Vedett", "Lindemans", "Kasteel", "Desperados Red",
            "San Miguel Selecta", "Birra Moretti", "Red Stripe", "Carib", "Anchor Steam",
            "Kona Big Wave", "Estrella Galicia", "Super Bock", "Sagres", "Quilmes",
            "Club Colombia", "Cusqueña", "Presidente", "Mythos", "Fix", "Carling",
            "Tennent's", "Smithwick's", "Kilkenny", "Innis & Gunn"
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
            "Carménère", "Tannat", "Montepulciano",
            "Château Lafite Rothschild", "Château Palmer", "Château Lynch-Bages",
            "Château Figeac", "Château Angélus", "Gevrey-Chambertin", "Nuits-Saint-Georges",
            "Chambolle-Musigny", "Vosne-Romanée", "Pommard", "Volnay", "Saint-Joseph",
            "Hermitage", "Crozes-Hermitage", "Côte-Rôtie", "Gigondas", "Vacqueyras",
            "Bandol Rouge", "Cahors", "Madiran", "Fitou", "Minervois", "Corbières",
            "Saint-Amour", "Morgon", "Fleurie", "Juliénas", "Brouilly", "Barbera d'Asti",
            "Valpolicella Ripasso", "Nero d'Avola", "Primitivo di Manduria", "Priorat",
            "Ribera del Duero", "Mendoza Malbec", "Napa Valley Cabernet", "Stags Leap",
            "Caymus", "Silver Oak"
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
            "Verdejo", "Albariño", "Txakoli",
            "Pouilly-Fuissé", "Petit Chablis", "Chablis Premier Cru", "Chablis Grand Cru",
            "Condrieu", "Châteauneuf-du-Pape Blanc", "Hermitage Blanc", "Côtes du Rhône Blanc",
            "Crozes-Hermitage Blanc", "Saint-Aubin", "Corton-Charlemagne", "Montrachet",
            "Muscadet Sèvre et Maine", "Gros Manseng", "Petit Manseng", "Bordeaux Blanc Sec",
            "Entre-Deux-Mers", "Pessac-Léognan Blanc", "Jurançon Sec", "Rias Baixas",
            "Rueda", "Vinho Verde", "Pinot Blanc d'Alsace", "Riesling Grand Cru",
            "Sancerre Grand Chemarin", "Cloudy Bay Sauvignon Blanc", "Marlborough Sauvignon Blanc",
            "Soave Classico", "Gavi di Gavi", "Roero Arneis", "Orvieto Classico"
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
            "Île de Beauté Rosé", "Rosé d'Oc",
            "Garrus", "Rock Angel", "The Palm by Whispering Angel", "Minuty M",
            "Minuty Rose et Or", "Minuty 281", "Château d'Aquéria", "Domaine de la Mordorée",
            "Domaine Tempier", "Ott Château de Selle", "Hampton Water", "Source Sacha Lichine",
            "Studio by Miraval", "Gris Blanc Gérard Bertrand", "Coteaux de l'Aubance",
            "Rosé d'Anjou", "Rosé des Riceys", "Chiaretto di Bardolino", "Cerasuolo d'Abruzzo",
            "White Zinfandel", "Mateus Rosé", "Lancers Rosé"
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
            "Nyetimber", "Chapel Down", "Camel Valley",
            "Prosecco Superiore Conegliano", "Mionetto Prosecco", "La Marca Prosecco",
            "Freixenet Cordon Negro", "Codorníu Clasico", "Gramona Cava",
            "Llopart Cava", "Ca' del Bosco Franciacorta", "Bellavista Franciacorta",
            "Ferrari Trento Brut", "Rotari Trento DOC", "Jansz Premium Cuvée",
            "Chandon Brut", "Schramsberg Mirabelle", "Roederer Estate Brut",
            "Bouvet-Ladubay Saumur", "Ackerman Crémant", "Gratien & Meyer",
            "Antech Limoux", "Sieur d'Arques"
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
            "Ayala", "Barons de Rothschild", "Besserat de Bellefon",
            "Dom Ruinart", "Veuve Clicquot La Grande Dame", "Krug Clos d'Ambonnay",
            "Krug Clos du Mesnil", "Bollinger La Grande Année", "Bollinger R.D.",
            "Laurent-Perrier Grand Siècle", "Pol Roger Sir Winston Churchill",
            "Taittinger Comtes de Champagne", "Perrier-Jouët Belle Epoque",
            "Mumm Cordon Rouge", "R de Ruinart", "Ruinart Blanc de Blancs",
            "Ruinart Rosé", "Moët & Chandon Imperial", "Moët & Chandon Grand Vintage",
            "Veuve Clicquot Yellow Label", "Veuve Clicquot Rich", "Piper-Heidsieck Rare",
            "Charles Heidsieck Brut Réserve", "Delamotte", "Palmer & Co", "Devaux",
            "Mailly Grand Cru", "Egly-Ouriet", "Jacques Selosse", "Larmandier-Bernier",
            "Agrapart", "Benoît Lahaye", "Champagne Collet", "Champagne Castelnau"
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
            "Pineau des Charentes", "Floc de Gascogne", "Ratafia de Champagne",
            "Kopke Port", "Niepoort Port", "Quinta do Noval", "Croft Port",
            "Ramos Pinto", "Tio Pepe Fino", "Lustau Sherry", "Valdespino Sherry",
            "Harveys Bristol Cream", "Blandy's Madeira", "Cossart Gordon",
            "Pellegrino Marsala", "Florio Marsala", "Noilly Prat Original Dry",
            "Dubonnet", "Byrrh", "Lillet Rouge", "Punt e Mes", "Carpano Antica Formula",
            "Cocchi Vermouth di Torino"
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
            "Pacherenc du Vic-Bilh Doux", "Gaillac Doux",
            "Château d'Yquem", "Château Suduiraut", "Château Rieussec",
            "Château Guiraud", "Château Climens", "Château Coutet",
            "Tokaji Aszú 6 Puttonyos", "Royal Tokaji", "Oremus Tokaji",
            "Kracher TBA", "Inniskillin Icewine", "Jackson-Triggs Icewine",
            "Klein Constantia Vin de Constance", "Banyuls Grand Cru", "Maury Tuilé",
            "Muscat de Rivesaltes", "Commandaria", "Passito di Pantelleria",
            "Moscato de Setúbal", "Rasteau Vin Doux Naturel"
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
            "Clos du Tue-Bœuf", "Château Le Puy", "Domaine de l'Écu",
            "Gérard Bertrand Clos d'Ora", "Gérard Bertrand Cigalus", "Domaine Cazes",
            "Château Maris", "Domaine Pithon-Paillé", "Domaine Valentin Zusslin",
            "Domaine Binner", "Domaine Josmeyer", "Domaine Lapierre",
            "Château de Beaucastel", "Domaine Tempier Bio", "Château de Roquefort",
            "Domaine Combier", "M. Chapoutier Bio"
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
            "Domaine Marlier", "Domaine de la Vougeraie",
            "Domaine Marcel Deiss", "Domaine Viret", "Château de Chambert",
            "Domaine de Villeneuve", "Domaine Zusslin Biodynamique",
            "M. Chapoutier Fac & Spera", "Domaine de la Haute Olive",
            "Domaine Grand Veneur", "Domaine de la Taille aux Loups",
            "Domaine Philippe Gilbert", "Château Meylet", "Domaine Derain"
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
            "Nikka Whisky", "Yamazaki", "Hakushu", "Hibiki",
            "Cardhu", "Knockando", "Balvenie", "Aberlour", "Glenmorangie",
            "Talisker 10", "Lagavulin 16", "Laphroaig 10", "Ardbeg 10", "Bowmore",
            "Caol Ila", "Jura", "Auchentoshan", "Glenkinchie", "Highland Park 12",
            "Bruichladdich", "Port Charlotte", "Octomore", "Monkey Shoulder",
            "Johnnie Walker Red", "Johnnie Walker Green", "Chivas Royal Salute",
            "Jameson Black Barrel", "Tullamore D.E.W.", "Teeling", "Connemara",
            "The Sexton", "Nikka From The Barrel", "Nikka Coffey Grain", "Kavalan",
            "Amrut", "Wild Turkey 101", "Bulleit Bourbon", "Bulleit Rye", "Jim Beam Black",
            "Knob Creek", "Basil Hayden's", "Michter's Bourbon", "Sazerac Rye",
            "WhistlePig Rye", "Crown Royal", "Canadian Club"
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
            "Pinnacle", "Burnett's", "New Amsterdam",
            "Belvedere Intense", "Cîroc Peach", "Cîroc Coconut", "Cîroc Pineapple",
            "Grey Goose VX", "Grey Goose L'Orange", "Absolut Citron", "Absolut Vanilia",
            "Absolut Raspberri", "Zubrowka Biala", "Stolichnaya Elit", "Russian Standard Platinum",
            "Russian Standard Gold", "Beluga Noble", "Beluga Transatlantic", "Beluga Gold Line",
            "Mamont", "Kremlin Award", "Soplica", "U'Luvka", "Pravda", "Wódka",
            "Debowa", "Vestal", "Potocki", "Single Estate Vodka", "Snow Queen",
            "Royal Dragon", "Skyy Infusions", "Sobieski Estate", "Nemiroff", "Khortytsa",
            "Zirkova", "Dripping Springs"
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
            "Barceló", "Santa Teresa 1796", "Botran",
            "Don Papa", "Don Papa Baroko", "Kraken Black Spiced", "Bumbu Rum",
            "Bumbu XO", "Sailor Jerry", "Havana Club Seleccion de Maestros",
            "Havana Club 15 Ans", "Havana Club Maximo", "Bacardi Diez", "Mount Gay XO",
            "Mount Gay 1703", "Appleton Estate 12", "Appleton Estate 21", "Diplomatico Mantuano",
            "Diplomatico Seleccion de Familia", "Plantation XO 20th Anniversary",
            "Plantation Pineapple", "Rhum J.M. XO", "Rhum J.M. VSOP", "Clément XO",
            "Clément VSOP", "Saint James XO", "Trois Rivières VSOP", "Trois Rivières Triple Millésime",
            "Neisson Profil 105", "Damoiseau XO", "Bologne VSOP", "Zacapa Royal",
            "Dictador 12", "Dictador 20", "Flor de Caña 12", "Flor de Caña 18",
            "Abuelo 12", "Abuelo Centuria", "Barceló Imperial", "Barceló Onyx",
            "Goslings Black Seal", "Pusser's Gunpowder", "Wray & Nephew White Overproof",
            "Cachaça 51", "Leblon Cachaça"
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
            "Brockmans", "Oxley", "No.3 London Dry",
            "Bombay Bramble", "Bombay Sapphire East", "Tanqueray Flor de Sevilla",
            "Tanqueray Lovage", "Gordon's Pink Gin", "Beefeater Pink", "Hendrick's Neptunia",
            "Hendrick's Flora Adora", "Malfy Con Limone", "Malfy Gin Rosa", "Malfy Con Arancia",
            "Citadelle Jardin d'Été", "Citadelle No.12", "Engine Gin", "Generous Gin",
            "Christian Drouin Le Gin", "G'Vine Floraison", "G'Vine Nouaison", "Cotswolds Dry Gin",
            "Harris Gin", "Silent Pool", "Tarquin's Cornish Gin", "Mermaid Gin", "Brooklyn Gin",
            "Death's Door", "Bluecoat", "Koval Dry Gin", "Ki No Bi Kyoto Dry Gin",
            "Elephant Gin", "Windspiel", "Ferdinand's Saar Dry Gin", "Siegfried Rheinland Dry Gin",
            "Broken Heart", "Peddlers Shanghai Gin", "Dictador Ortodoxy", "Dictador Treasure"
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
            "1800 Silver", "Hornitos", "Milagro", "Lunazul",
            "Clase Azul Reposado", "Clase Azul Añejo", "Don Julio 70 Anejo Claro",
            "Patrón El Cielo", "Patrón Gran Platinum", "Patrón El Alto", "Casamigos Mezcal",
            "Del Maguey Vida Mezcal", "Ilegal Mezcal Joven", "Ilegal Mezcal Reposado",
            "Montelobos Mezcal", "Casamigos Extra Añejo", "Jose Cuervo Tradicional",
            "Herradura Añejo", "Herradura Ultra", "Espolòn Reposado", "Espolòn Añejo",
            "Volcan De Mi Tierra Blanco", "Volcan De Mi Tierra Cristalino", "Volcan De Mi Tierra X.A",
            "Teremana Blanco", "Teremana Reposado", "Teremana Añejo", "DeLeón Blanco",
            "DeLeón Reposado", "Gran Centenario Plata", "Gran Centenario Reposado",
            "1800 Reposado", "1800 Añejo", "1800 Cristalino", "Cazadores Reposado",
            "Corralejo Reposado", "Corralejo Añejo", "Centinela Blanco", "Centinela Reposado",
            "Tapatio Blanco", "Tapatio Reposado", "Tapatio Excelencia Extra Añejo"
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
            "Armagnac Darroze", "Pisco Portón",
            "Hennessy Black", "Hennessy Pure White", "Courvoisier L'Essence",
            "Rémy Martin 1738", "Rémy Martin Tercet", "Martell Blue Swift", "Martell Cohiba",
            "Martell L'Or de Jean Martell", "Camus Borderies XO", "Hine Triomphe",
            "Frapin VSOP", "Frapin VIP XO", "Delamain Pale & Dry XO", "Delamain Vesper",
            "Meukow VSOP", "Meukow XO", "Otard VSOP", "Otard XO", "Baron Otard",
            "Château du Breuil Calvados", "Christian Drouin Calvados", "Boulard Calvados",
            "Janneau VSOP Armagnac", "Janneau XO", "Chabot VSOP", "Chabot XO",
            "Castarède Armagnac", "Pisco Barsol", "Macchu Pisco", "Grappa Nonino",
            "Grappa Poli", "Grappa Sassicaia"
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
            "Martini Bianco", "Martini Rosso", "Martini Extra Dry",
            "Baileys Strawberries & Cream", "Baileys Salted Caramel", "Cointreau Noir",
            "Grand Marnier Cordon Rouge", "Grand Marnier Cuvée Louis-Alexandre",
            "Grand Marnier Centenaire", "Licor 43", "Solerno Blood Orange", "Glayva",
            "Drambuie 15", "Jägermeister Manifest", "Jägermeister Cold Brew Coffee",
            "Chartreuse V.E.P. Verte", "Chartreuse V.E.P. Jaune", "Genepi", "Izarra Verte",
            "Izarra Jaune", "Menthe-Pastille Giffard", "Limoncello di Capri",
            "Villa Massa Limoncello", "Sambuca Romana", "Galliano L'Autentico",
            "Luxardo Amaretto", "Luxardo Limoncello", "Italicus Rosolio di Bergamotto",
            "Martini Fiero", "Martini Riserva Speciale Rubino", "Martini Riserva Speciale Ambrato",
            "Lillet Rosé", "Lillet Rouge Liqueur", "Dubonnet Rouge", "Carpano Punt e Mes",
            "Noilly Prat Rouge", "Cocchi Americano", "Bonal Gentiane-Quina",
            "Byrrh Grand Quinquina", "St-Germain Elderflower", "Marie Brizard Triple Sec",
            "Bols Blue Curaçao", "Heering Cherry Liqueur", "Pisco Porton Liqueur",
            "Passoã", "Safari Liqueur", "Pisang Ambon"
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
            "Henri Bardouin", "Francois Guy", "Duplais Verte",
            "Obsello Absinthe", "Pacifique Absinthe", "Emperor Absinthe",
            "Absinthe Ordinaire", "Roquette 1797", "L'Entêtante", "Absinthe Sauvage",
            "La Muse Verte", "Artemisia Bugnon", "Duplais Blanche", "Un Emile 68",
            "Vila de Valls", "Grande Absente 69"
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
            "Lysholm Linie", "Løiten Linie", "Nordic Aquavit",
            "Krogstad Festlig Aquavit", "Brennivín Rugbraud", "Aalborg Export",
            "Linie Double Cask Port", "Linie Double Cask Madeira", "Lysholm No 52",
            "Hven Organic Aquavit", "Løiten Export", "Simers Taffel",
            "O.P. Anderson Petronella"
        ],

        // MARK: - Arracks
        .arrack: [
            // Génériques
            "Arrack", "Arak", "Arak anisé",
            "Arak blanc", "Arak brun",
            // Marques
            "Batavia Arrack Van Oosten", "Ceylon Arrack Old Reserve",
            "VSOA Arrack", "Arrak Punsch",
            "Arak Brun", "Arak Blanc", "Arak Touma",
            "Arak Razzouk", "Arak Ksara", "Arak Kefraya", "Arak Massaya",
            "Arak El Massaya", "Arak Gantous & Abou Raad", "Arak Haddad",
            "Arak Al-Zumurrud", "Arak Fakra"
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
            "Bittermens Xocolatl Mole", "Cynar Bitters",
            "Angostura Cocoa Bitters", "Angostura Orange Bitters", "Peychaud's Barrel Aged",
            "Fee Brothers Plum", "Fee Brothers Peach", "Fee Brothers Black Walnut",
            "The Bitter Truth Peach", "The Bitter Truth Celery", "Scrappy's Orange",
            "Scrappy's Chocolate", "Bittermens Hopped Grapefruit", "Bittercube Bolivar",
            "Bittercube Blackstrap", "Dashfire Sichuan Peppercorn", "El Guapo Love Potion #9"
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
            "Guillevic Brut Nature",
            "Angry Orchard Crisp Apple", "Woodchuck Amber", "Stella Artois Cidre",
            "Crispin Original", "Westons Wyld Wood", "Thatchers Haze",
            "Henry Westons Vintage", "Sheppy's Classic Draught", "Sandford Orchards Devon Red",
            "Cidre Val de Rance Brut", "Cidre Val de Rance Doux", "Cidre Ecusson Brut",
            "Cidre Ecusson Doux", "Sassy Cidre Brut", "Sassy Cidre Rosé", "Sassy Cidre Poire",
            "Eric Bordelet Poire Granit", "Cidre Fermier de Haute-Normandie", "Cidre Christian Drouin"
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
            "Redstone Meadery", "Rabbit's Foot Meadery",
            "Superstition Meadery", "Garagiste Meadery", "Ken Schramm The Statement",
            "Dansk Mjød Ribe Mjød", "Dansk Mjød Klapojster Mjød", "Viking Blod Hibiscus",
            "Heidrun Meadery", "Maine Mead Works", "Apis Meadery", "Green Flash Mead",
            "Chouchen Melmor", "Chouchen L'Hermine"
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
            "Sho Chiku Bai", "Hana Awaka",
            "Dassai Beyond", "Kubota Manju", "Kubota Senju", "Hakkaisan Tokubetsu Junmai",
            "Hakkaisan Junmai Daiginjo", "Kenbishi", "Dewazakura Oka", "Soto Sake Junmai",
            "Soto Sake Junmai Daiginjo", "Shichida", "Tedorigawa", "Masumi Okuden Kanzukuri",
            "Suigei Tokubetsu Junmai", "Kikusui Funaguchi", "Rihaku Wandering Poet",
            "Tozai Snow Maiden"
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
            "Tokki Soju",
            "Jinro Chamisul Fresh", "Jinro Chamisul Classic", "Jinro Grapefruit",
            "Jinro Green Grape", "Jinro Plum", "Jinro Strawberry", "Chum Churum Original",
            "Chum Churum Peach", "Chum Churum Apple", "Saero Soju", "C1 Soju",
            "Halla Mountain Soju (Hallasan)", "Tokki Soju Black Label", "West 32 Soju",
            "Yobo Soju"
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
            "Tantakatan", "Lento", "Hyakunen no Kodawari",
            "Aka Kirishima", "Shiro Kirishima", "Mitoko Shochu", "Iichiko Saiten",
            "Kakushura", "Towari Soba Shochu", "Kura no Shihou", "Amami Lento",
            "Jikuya", "Kannoko"
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
            "Shui Jing Fang", "Lang Jiu",
            "Kweichow Moutai Prince", "Wuliangye 1618", "Yanghe Spirit Classic Dream Blue",
            "Luzhou Laojiao National Cellar 1573", "Gu井贡酒 年份原浆", "Red Star Erguotou",
            "Niulanshan Erguotou", "Jiang小白 (Jiangxiaobai)", "Tuopai Shede",
            "Jiugui (Alcoholic Spirit)"
        ],

        // MARK: - Makgeollis
        .makgeolli: [
            // Génériques
            "Makgeolli", "Makgeolli nature", "Makgeolli fruité",
            // Marques
            "Kook Soon Dang", "Seoul Jangsu", "Busan Makgeolli",
            "Nongmin Makgeolli", "Wolhyang",
            "Ipeori", "Gapyeong Makgeolli",
            "Kook Soon Dang Peach", "Kook Soon Dang Banana", "Kook Soon Dang White Grape",
            "100 Billion Prebiotics Makgeolli", "Boksoondoga Hand-brewed Makgeolli",
            "Song Myeong-seop Makgeolli", "Hareubang Mandarines Makgeolli"
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
            "Flying Embers Hard Seltzer",
            "White Claw Watermelon", "White Claw Natural Lime", "Truly Pineapple",
            "Truly Strawberry Lemonade", "Topo Chico Strawberry Guava",
            "Topo Chico Exotic Pineapple", "Nectar Hard Seltzer", "Snow Melt",
            "High Noon Sun Sips Watermelon", "High Noon Sun Sips Grapefruit",
            "High Noon Pineapple", "Long Drink Traditional", "Jose Cuervo Playamar",
            "Mike's Hard Seltzer"
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
            "Health-Ade Booch Hard Kombucha",
            "JuneShine Blood Orange Mint", "JuneShine Midnight Painkiller",
            "Flying Embers Grapefruit Thyme", "Flying Embers Pineapple Chili",
            "Boochcraft Grapefruit Hibiscus", "Boochcraft Apple Jasmine",
            "Wild Tonic Blueberry Basil", "Wild Tonic Raspberry Goji Rose",
            "Nova Easy Kombucha"
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
            "Borrago", "Everleaf Forest", "Everleaf Marine",
            "Ghia Non-Alcoholic Aperitif", "Tanqueray 0.0%", "Gordon's Alcohol Free 0.0%",
            "G'Vine 0.0%", "Crodino", "Sanbitter", "Martini Vibrante", "Martini Floreale",
            "Nona June Non-Alcoholic Gin", "Jnpr n°1", "Jnpr n°2", "French Bloom Le Blanc",
            "French Bloom Le Rosé", "Noughty Alcohol-Free Sparkling Chardonnay",
            "Natureo Red Wine Torres", "Natureo White Wine Torres",
            "Le Petit Béret Virgin Chardonnay", "Le Petit Béret Virgin Cabernet",
            "Athletic Brewing Free Wave Hazy IPA", "Brewdog Nanny State", "Guinness 0.0 Can",
            "Lucky Saint", "Brooklyn Special Effects", "Clausthaler Dry Hopped",
            "Seedlip Notas de Agave", "Lyre's Italian Spritz", "Lyre's Coffee Originale",
            "Ritual Zero Proof Gin Alternative", "Ritual Zero Proof Tequila Alternative",
            "Ritual Zero Proof Rum Alternative"
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
            "Amaretto Sour", "Lemon Drop", "Kir",
            "Boulevardier", "Sazerac", "Rusty Nail", "Godfather", "Irish Coffee",
            "B52", "Kamikaze", "White Russian", "Black Russian", "Gin Fizz",
            "Pisco Sour", "Paloma Mezcal", "Michelada", "Bloody Mary", "Mimosa",
            "Aviation Cocktail", "Vesper Martini", "Dry Martini", "Dirty Martini",
            "Gimlet Gin", "Gimlet Vodka", "Southside", "French Connection",
            "Sidecar Brandy", "El Diablo", "Harvey Wallbanger", "Tequila Daisy",
            "Painkiller", "Zombie", "Mai Tai", "Planter's Punch", "Hurricane",
            "Ti' Punch", "Cuba Libre", "Caipirissima", "Caipiroska", "Moscow Mule Vodka",
            "London Mule", "Kentucky Mule", "Mexican Mule", "Gin Gin Mule",
            "Spritz Select", "Hugo Spritz", "Limoncello Spritz", "Campari Spritz",
            "Americano", "Garibaldi", "Negroni Sbagliato"
        ]
    ]
}
