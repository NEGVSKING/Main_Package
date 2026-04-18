// Sources/SHIFT/SoftDrinkBrands.swift
// E-ROK-Package
//
// Created by Fabien Koré

import Foundation

public enum SoftDrinkType: String, CaseIterable, Sendable {
    case cola           = "Cola"
    case lemonade       = "Limonade"
    case orangeSoda     = "Soda Orange"
    case energyDrink    = "Energy Drink"
    case tonic          = "Tonic / Soda Water"
    case juice          = "Jus de fruits"
    case water          = "Eau"
    case icedTea        = "Thé Glacé"
    case sports         = "Boisson sportive"
    case milkDrink      = "Boisson lactée"
    case kombucha       = "Kombucha"
    case hotDrink       = "Boisson chaude"
    case smoothie       = "Smoothie"
    case other          = "Autres"
}

public struct SoftDrinkBrands {
    nonisolated(unsafe) public static let brandsByType: [SoftDrinkType: [String]] = [

        // MARK: - Colas
        .cola: [
            // Génériques
            "Cola", "Cola maison", "Cola light", "Cola sans sucre",
            "Cola zéro", "Cola au citron", "Cola aromatisé",
            // Marques
            "Coca-Cola", "Coca-Cola Zero", "Coca-Cola Light",
            "Coca-Cola Cherry", "Coca-Cola Vanilla", "Coca-Cola Orange",
            "Pepsi", "Pepsi Max", "Pepsi Light",
            "Pepsi Mango", "Pepsi Lime", "Pepsi Ginger",
            "RC Cola", "Big Cola", "Afri-Cola",
            "Fritz-Kola", "Fritz-Kola Super Zero",
            "Club-Mate Cola", "Cheerwine",
            "Dr Pepper", "Dr Pepper Cherry", "Dr Pepper Zero",
            "Mr. Pibb", "Barq's", "Virgil's Cola",
            "Boylan Cane Cola", "Jones Cola",
            "Bundaberg Cola", "Karma Cola",
            "Fever-Tree Sicilian Lemon Cola", "Luscombe Wild Cola"
        ],

        // MARK: - Limonades
        .lemonade: [
            // Génériques
            "Limonade", "Limonade maison", "Citronnade",
            "Citronnade fraîche", "Limonade artisanale",
            "Limonade menthe", "Limonade gingembre",
            "Limonade fraise", "Limonade framboise",
            "Soda citron", "Soda citron vert",
            // Marques
            "Sprite", "Sprite Zero", "Sprite Cranberry",
            "7Up", "7Up Free", "7Up Revive",
            "Fanta Citron", "Fanta Tropical", "Fanta Fraise",
            "Fanta Ananas", "Fanta Limon",
            "Schweppes Lemon", "Schweppes Agrum",
            "Orangina", "Orangina Rouge", "Orangina Light",
            "Lorina Limonade", "Lorina Citron Gingembre",
            "Lorina Limonade Rose",
            "Sanpellegrino Limonata", "Sanpellegrino Pompelmo",
            "Fever-Tree Lemon", "Fever-Tree Lime & Yuzu",
            "Belvoir Elderflower Lemonade",
            "Luscombe Sicilian Lemonade",
            "Bundaberg Lemon Myrtle", "Fentimans Victorian Lemonade",
            "Fentimans Rose Lemonade", "Refresco Citron"
        ],

        // MARK: - Sodas Orange
        .orangeSoda: [
            // Génériques
            "Soda orange", "Orangeade", "Orangeade maison",
            "Soda pamplemousse", "Soda mandarine",
            "Soda agrumes", "Soda fruits exotiques",
            // Marques
            "Fanta Orange", "Fanta Blood Orange", "Fanta Zero",
            "Tropicana Sparkling Orange",
            "Sunkist Orange", "Crush Orange",
            "Mirinda Orange", "Tango Orange",
            "Orangina", "Squirt", "Sun Drop",
            "Sanpellegrino Aranciata", "Sanpellegrino Aranciata Rossa",
            "Looza Orange", "Oasis Orange",
            "Pulco Orange", "Schweppes Orange",
            "Fever-Tree Blood Orange Soda",
            "Jarritos Mandarin"
        ],

        // MARK: - Energy Drinks
        .energyDrink: [
            // Génériques
            "Energy drink", "Boisson énergisante", "Energy drink sans sucre",
            "Energy drink zéro", "Energy drink fruité",
            "Energy drink citron", "Energy drink mangue",
            "Energy drink tropical", "Energy drink pastèque",
            "Energy drink fraise", "Energy drink pêche",
            // Marques
            "Red Bull", "Red Bull Sugar Free", "Red Bull Tropical",
            "Red Bull Watermelon", "Red Bull Blueberry",
            "Red Bull Winter Edition", "Red Bull Summer Edition",
            "Monster Energy", "Monster Ultra White", "Monster Ultra Zero",
            "Monster Mango Loco", "Monster Pipeline Punch",
            "Monster Absolutely Zero", "Monster Ultra Sunrise",
            "Rockstar Energy", "Rockstar Pure Zero",
            "Burn Original", "Relentless Origin",
            "NOS Energy", "XL Energy", "Cult Energy",
            "Hell Energy", "Dark Dog Original",
            "Reign Total Body Fuel", "Reign Storm",
            "Celsius Live Fit", "Ghost Energy",
            "Alani Nu", "Prime Energy",
            "Prime Hydration", "Bucked Up",
            "G Fuel", "Xyience", "Full Throttle",
            "Spike Hardcore Energy", "Rip It",
            "Tenzing Natural Energy", "Pussy Natural Energy",
            "Lucozade Energy Original", "Lucozade Energy Orange",
            "Boost Energy", "Tiger Energy Drink"
        ],

        // MARK: - Tonics & Sodas
        .tonic: [
            // Génériques
            "Tonic water", "Indian tonic", "Tonic nature",
            "Tonic citron", "Tonic pamplemousse", "Tonic elderflower",
            "Soda water", "Eau gazeuse plate",
            "Ginger beer", "Ginger ale",
            "Soda siphon", "Eau de Seltz",
            // Marques
            "Schweppes Tonic Water", "Schweppes Indian Tonic",
            "Schweppes Ginger Ale", "Schweppes Soda Water",
            "Fever-Tree Indian Tonic", "Fever-Tree Mediterranean Tonic",
            "Fever-Tree Elderflower Tonic", "Fever-Tree Aromatic Tonic",
            "Fever-Tree Light Tonic", "Fever-Tree Ginger Beer",
            "Fever-Tree Ginger Ale", "Fever-Tree Soda Water",
            "London Essence Indian Tonic", "London Essence Ginger Beer",
            "London Essence White Peach & Jasmine",
            "1724 Tonic Water", "Q Tonic", "Q Ginger Beer",
            "Fentimans Tonic Water", "Fentimans Ginger Beer",
            "Fentimans Dandelion & Burdock",
            "Bundaberg Ginger Beer", "Cawston Press Ginger Beer",
            "Canada Dry Ginger Ale", "Vernors Ginger Ale",
            "San Pellegrino Sparkling Water", "Perrier Nature",
            "Perrier Citron", "Perrier Pamplemousse",
            "Badoit Rouge", "Evian Sparkling",
            "Hildon Natural Mineral Water"
        ],

        // MARK: - Jus de fruits
        .juice: [
            // Génériques
            "Jus d'orange", "Jus de pomme", "Jus de raisin",
            "Jus de pamplemousse", "Jus d'ananas",
            "Jus de mangue", "Jus de pêche", "Jus d'abricot",
            "Jus de poire", "Jus de cerise", "Jus de fraise",
            "Jus de tomate", "Jus de carotte",
            "Jus tropical", "Jus multivitamines",
            "Jus pressé maison", "Jus de citron pur",
            "Nectar d'orange", "Nectar de mangue", "Nectar d'abricot",
            "Jus d'orange frais pressé",
            // Marques
            "Tropicana Orange", "Tropicana Multivitamines",
            "Tropicana Pêche Abricot",
            "Innocent Orange", "Innocent Mango", "Innocent Super Smoothie",
            "Minute Maid Orange", "Minute Maid Pomme",
            "Oasis Orange-Mangue", "Oasis Tropical", "Oasis Pomme",
            "Lipton Ice Tea Peach", "Lipton Ice Tea Lemon",
            "Capri-Sun Orange", "Capri-Sun Tropical",
            "Pago Orange", "Pago Pomme-Poire", "Pago Cranberry",
            "Granini Orange", "Granini Multifruit", "Granini Pomme",
            "Cappy Orange", "Cappy Pomme",
            "Maaza Mango", "Rubicon Mango", "Rubicon Guava",
            "Jumex Mango", "Jumex Guava",
            "Ocean Spray Cranberry", "Ocean Spray Blueberry",
            "Welch's Grape", "Welch's Strawberry",
            "Naked Juice Green Machine", "Naked Juice Blue Machine",
            "Evolution Fresh", "Suja Organic",
            "Odwalla Mango", "V8 Vegetable Juice"
        ],

        // MARK: - Eaux
        .water: [
            // Génériques
            "Eau plate", "Eau gazeuse", "Eau minérale",
            "Eau de source", "Eau aromatisée citron",
            "Eau aromatisée menthe", "Eau aromatisée fraise",
            "Eau aromatisée concombre", "Eau aromatisée pêche",
            "Eau infusée maison", "Eau de coco",
            // Marques
            "Evian", "Volvic", "Badoit", "Perrier",
            "San Pellegrino", "Acqua Panna",
            "Vittel", "Hépar", "Contrex",
            "Cristalline", "Mont Roucous",
            "Bru", "Spa Reine", "Bru Sparkling",
            "Wattwiller", "Vals Saint-Jean",
            "Fiji Water", "Voss Still", "Voss Sparkling",
            "Hildon", "Iceland Spring",
            "Iskilde", "Icelandic Glacial",
            "Waiakea Volcanic Water",
            "Smartwater", "Dasani", "Core Hydration",
            "Essentia Alkaline", "Bai Antioxidant",
            "Flow Alkaline Spring Water",
            "Liquid Death Mountain Water",
            "Cactus Water", "Vita Coco Water"
        ],

        // MARK: - Thés glacés
        .icedTea: [
            // Génériques
            "Thé glacé", "Thé glacé maison", "Thé glacé citron",
            "Thé glacé pêche", "Thé glacé framboise",
            "Thé glacé mangue", "Thé glacé menthe",
            "Thé glacé vert", "Thé glacé noir",
            "Thé glacé hibiscus", "Thé glacé jasmin",
            "Thé glacé gingembre citron", "Infusion froide maison",
            // Marques
            "Lipton Ice Tea Pêche", "Lipton Ice Tea Citron",
            "Lipton Ice Tea Mangue", "Lipton Ice Tea Framboise",
            "Lipton Ice Tea Vert", "Lipton Ice Tea Zéro",
            "Nestea Citron", "Nestea Pêche",
            "Arizona Iced Tea Original", "Arizona Green Tea",
            "Arizona Peach", "Arizona Raspberry",
            "Arizona Watermelon", "Arizona Mucho Mango",
            "Snapple Lemon", "Snapple Peach",
            "Snapple Raspberry", "Snapple Mango",
            "Fuze Tea Pêche-Hibiscus", "Fuze Tea Citron-Framboise",
            "Fuze Tea Vert Menthe", "Fuze Tea Zero",
            "Gold Peak Sweet Tea", "Gold Peak Peach",
            "Pure Leaf Unsweetened", "Pure Leaf Peach",
            "Peace Tea Georgia Peach", "Peace Tea Caddy Shack",
            "Sweet Leaf Mint & Honey",
            "Honest Tea", "Tejava Unsweetened",
            "Harney & Sons Cold Brew Iced Tea"
        ],

        // MARK: - Boissons sportives
        .sports: [
            // Génériques
            "Boisson sportive", "Boisson isotonique",
            "Boisson de récupération", "Boisson hydratante",
            "Boisson électrolytes", "Boisson glucidique",
            "Eau de coco isotonique",
            // Marques
            "Gatorade Cool Blue", "Gatorade Fruit Punch",
            "Gatorade Orange", "Gatorade Lemon-Lime",
            "Gatorade Glacier Freeze", "Gatorade Green Apple",
            "Gatorade Zero Glacier Cherry",
            "Powerade Mountain Berry Blast", "Powerade Orange",
            "Powerade Zero", "Powerade Fruit Punch",
            "Powerade Lemon Lime", "Powerade Watermelon",
            "Lucozade Sport Orange", "Lucozade Sport Mango",
            "Lucozade Sport Berry", "Lucozade Sport Pink Lemonade",
            "Isostar", "Isostar Long Energy",
            "Aptonia ISO+", "Aptonia Hypotonic",
            "Overstim's Hydrixir", "High5 Zero",
            "SiS Go Electrolyte", "Nuun Sport",
            "Nuun Hydration", "Skratch Labs Sport",
            "Precision Hydration 1000",
            "Bodyarmor Lyte", "Bodyarmor SuperDrink",
            "Prime Hydration Lemonade", "Prime Hydration Blue Raspberry",
            "Electrolit Grapefruit", "Electrolit Strawberry Kiwi"
        ],

        // MARK: - Boissons lactées
        .milkDrink: [
            // Génériques
            "Lait", "Lait entier", "Lait demi-écrémé",
            "Lait chocolaté", "Lait fraise", "Lait vanille",
            "Lait de coco", "Lait d'amande", "Lait d'avoine",
            "Lait de soja", "Lait de riz",
            "Milkshake chocolat", "Milkshake vanille", "Milkshake fraise",
            "Milkshake caramel", "Milkshake banane",
            "Milkshake maison", "Lassi mangue", "Lassi nature",
            "Kéfir nature", "Kéfir fruits",
            "Ayran", "Boisson lactée protéinée",
            // Marques
            "Yop Fraise", "Yop Vanille", "Yop Tropical",
            "Choco Milk", "Nesquik Chocolat", "Nesquik Fraise",
            "Nesquik Vanille", "Oatly Barista",
            "Alpro Soya Chocolat", "Alpro Amande",
            "Yazoo Chocolate", "Yazoo Strawberry", "Yazoo Banana",
            "Müller Rice", "Danette Café", "Danette Chocolat",
            "Yakult Original", "Actimel Fraise", "Actimel Multi-fruits",
            "Innocent Kids Smoothie"
        ],

        // MARK: - Kombuchas
        .kombucha: [
            // Génériques
            "Kombucha", "Kombucha nature", "Kombucha gingembre",
            "Kombucha citron", "Kombucha framboise",
            "Kombucha fraise", "Kombucha hibiscus",
            "Kombucha fruits rouges", "Kombucha pomme",
            "Kombucha menthe citron", "Kombucha ananas",
            "Kombucha artisanal maison",
            // Marques
            "GT's Living Foods Gingerade", "GT's Classic Kombucha",
            "GT's Trilogy", "GT's Synergy Grape",
            "Health-Ade Pink Lady Apple", "Health-Ade Ginger-Lemon",
            "Health-Ade Pomegranate",
            "Synergy Raw Kombucha", "Brew Dr. Clear Mind",
            "Brew Dr. Uplift", "Brew Dr. Love",
            "Humm Kombucha", "Aqua ViTea",
            "Kevita Ginger Lemon", "Kevita Tart Cherry",
            "Kevita Raspberry Lemon",
            "Remedy Kombucha", "Mojo Kombucha",
            "Equinox Ginger & Lemon", "Equinox Wild Berry",
            "Jarr Kombucha", "Jarr Passion Fruit",
            "Real Kombucha Dry Dragon",
            "Lo Bros Kombucha", "Good Buzz Kombucha",
            "Booch & Brew", "Bu Kombucha"
        ],

        // MARK: - Boissons chaudes
        .hotDrink: [
            // Génériques
            "Café", "Café allongé", "Café expresso", "Double expresso",
            "Café noisette", "Café latte", "Cappuccino", "Flat white",
            "Café glacé", "Cold brew",
            "Thé noir", "Thé vert", "Thé blanc", "Thé rouge",
            "Thé chai", "Thé menthe", "Thé camomille",
            "Infusion", "Tisane", "Infusion gingembre citron",
            "Chocolat chaud", "Chocolat chaud épicé",
            "Café au lait", "Café décaféiné",
            "Matcha latte", "Turmeric latte", "Chai latte",
            "Moka", "Macchiato", "Ristretto",
            "Viennois", "Irish coffee sans alcool"
        ],

        // MARK: - Smoothies
        .smoothie: [
            // Génériques
            "Smoothie", "Smoothie maison", "Smoothie vert",
            "Smoothie tropical", "Smoothie fruits rouges",
            "Smoothie banane", "Smoothie mangue",
            "Smoothie fraise banane", "Smoothie pêche abricot",
            "Smoothie ananas coco", "Smoothie citron gingembre",
            "Smoothie épinards pomme", "Smoothie betterave",
            "Smoothie protéiné", "Smoothie detox",
            "Bowl smoothie", "Jus vert détox",
            // Marques
            "Innocent Smoothie Fraise Banane",
            "Innocent Smoothie Tropical",
            "Innocent Super Smoothie",
            "Naked Juice Green Machine",
            "Naked Juice Blue Machine",
            "Naked Juice Red Machine",
            "Odwalla Mango", "Odwalla Strawberry",
            "Evolution Fresh Sweet Greens",
            "Suja Organic Mighty Dozen",
            "Bolthouse Farms Green Goodness",
            "Bolthouse Farms Strawberry Banana",
            "Daily Harvest Smoothie",
            "Smoothie King Gladiator"
        ],

        // MARK: - Autres
        .other: [
            // Génériques
            "Limonade artisanale", "Soda artisanal",
            "Soda maison", "Sirop eau plate",
            "Sirop grenadine eau", "Sirop menthe eau",
            "Sirop fraise eau", "Sirop pêche eau",
            "Sirop cassis eau", "Jus de citron sucré",
            "Eau de coco nature",
            // Marques
            "Ribena Blackcurrant", "Ribena Strawberry",
            "Vimto Sparkling", "Fentimans Victorian Lemonade",
            "Fentimans Dandelion & Burdock",
            "Bundaberg Root Beer", "Bundaberg Guava",
            "Jones Strawberry Lime", "Jones Green Apple",
            "Stewarts Orange Cream",
            "IBC Root Beer", "Boylan Birch Beer",
            "Reed's Ginger Beer", "Virgil's Root Beer",
            "Maine Root Lemon", "Maine Root Mexicane Cola",
            "Jarritos Tamarindo", "Jarritos Mandarin",
            "Jarritos Guava", "Jarritos Watermelon",
            "Ting Grapefruit", "D&G Kola Champagne",
            "Mauby Fizz", "Vita Malt", "Supermalt",
            "Calpico Original", "Calpico Strawberry",
            "Ramune Original", "Pocari Sweat",
            "Melon Soda", "Yakult Light"
        ]
    ]
}
