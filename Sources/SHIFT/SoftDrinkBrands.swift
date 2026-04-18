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
    case other          = "Autres"
}

public struct SoftDrinkBrands {
    nonisolated(unsafe) public static let brandsByType: [SoftDrinkType: [String]] = [

        // MARK: - Colas
        .cola: [
            "Coca-Cola", "Coca-Cola Zero", "Coca-Cola Light",
            "Coca-Cola Cherry", "Coca-Cola Vanilla", "Coca-Cola Orange",
            "Pepsi", "Pepsi Max", "Pepsi Light",
            "Pepsi Mango", "Pepsi Lime",
            "RC Cola", "Big Cola", "Afri-Cola",
            "Fritz-Kola", "Club-Mate Cola",
            "Cheerwine", "Dr Pepper", "Dr Pepper Cherry",
            "Mr. Pibb", "Barq's", "Virgil's Cola",
            "Boylan Cane Cola", "Jones Cola",
            "Bundaberg Cola", "Karma Cola"
        ],

        // MARK: - Limonades
        .lemonade: [
            "Sprite", "Sprite Zero", "Sprite Cranberry",
            "7Up", "7Up Free", "7Up Revive",
            "Fanta Citron", "Fanta Tropical", "Fanta Fraise",
            "Fanta Orange", "Fanta Ananas",
            "Schweppes Lemon", "Schweppes Agrum",
            "Orangina", "Orangina Rouge", "Orangina Light",
            "Lorina Limonade", "Lorina Citron Gingembre",
            "Lipton Lemon Sparkling", "Sanpellegrino Limonata",
            "Sanpellegrino Aranciata", "Fever-Tree Lemon",
            "Belvoir Elderflower Lemonade",
            "Luscombe Sicilian Lemonade", "Square Root Lemonade",
            "Bundaberg Lemon Myrtle"
        ],

        // MARK: - Sodas Orange
        .orangeSoda: [
            "Fanta Orange", "Fanta Blood Orange",
            "Tropicana Sparkling Orange",
            "Sunkist Orange", "Crush Orange",
            "Mirinda Orange", "Tango Orange",
            "Orangina", "Squirt", "Sun Drop",
            "Sanpellegrino Aranciata Rossa",
            "Looza Orange", "Oasis Orange",
            "Pulco Orange", "Schweppes Orange"
        ],

        // MARK: - Energy Drinks
        .energyDrink: [
            "Red Bull", "Red Bull Sugar Free", "Red Bull Tropical",
            "Red Bull Watermelon", "Red Bull Blueberry",
            "Monster Energy", "Monster Ultra White", "Monster Ultra Zero",
            "Monster Mango Loco", "Monster Pipeline Punch",
            "Rockstar Energy", "Rockstar Pure Zero",
            "Burn", "Relentless", "NOS Energy",
            "XL Energy", "Cult Energy",
            "Hell Energy", "Dark Dog",
            "Reign Total Body Fuel", "Celsius",
            "Ghost Energy", "Alani Nu",
            "Prime Energy", "Bucked Up",
            "G Fuel", "Xyience", "Full Throttle",
            "Spike Hardcore Energy", "Rip It",
            "Tenzing Natural Energy", "Pussy Natural Energy",
            "Lucozade Energy", "Lucozade Sport",
            "Boost Energy", "Tiger Energy"
        ],

        // MARK: - Tonics & Sodas
        .tonic: [
            "Schweppes Tonic Water", "Schweppes Indian Tonic",
            "Fever-Tree Indian Tonic", "Fever-Tree Mediterranean Tonic",
            "Fever-Tree Elderflower Tonic", "Fever-Tree Aromatic Tonic",
            "Fever-Tree Light Tonic",
            "London Essence Indian Tonic", "London Essence Ginger Beer",
            "1724 Tonic Water", "Q Tonic",
            "Fentimans Tonic Water", "Fentimans Ginger Beer",
            "Bundaberg Ginger Beer", "Cawston Press Ginger Beer",
            "Canada Dry Ginger Ale", "Schweppes Ginger Ale",
            "Fever-Tree Ginger Ale", "Vernors Ginger Ale",
            "San Pellegrino Sparkling Water", "Perrier",
            "Badoit", "Evian Sparkling", "Volvic",
            "Schweppes Soda Water", "Fever-Tree Soda Water"
        ],

        // MARK: - Jus de fruits
        .juice: [
            "Tropicana Orange", "Tropicana Multivitamines",
            "Innocent Orange", "Innocent Mango",
            "Minute Maid Orange", "Minute Maid Pomme",
            "Oasis Orange-Mangue", "Oasis Tropical",
            "Lipton Ice Tea Peach", "Lipton Ice Tea Lemon",
            "Capri-Sun Orange", "Capri-Sun Tropical",
            "Pago Orange", "Pago Pomme-Poire",
            "Granini Orange", "Granini Multifruit",
            "Cappy Orange", "Cappy Pomme",
            "Maaza Mango", "Rubicon Mango",
            "Jumex Mango", "Jumex Guava",
            "Ocean Spray Cranberry", "Ocean Spray Blueberry",
            "Welch's Grape", "Welch's Strawberry",
            "Naked Juice Green Machine", "Odwalla Mango",
            "Suja Organic", "Evolution Fresh"
        ],

        // MARK: - Eaux
        .water: [
            "Evian", "Volvic", "Badoit", "Perrier",
            "San Pellegrino", "Acqua Panna",
            "Vittel", "Hépar", "Contrex",
            "Cristalline", "Mont Roucous",
            "Bru", "Spa Reine",
            "Wattwiller", "Vals Saint-Jean",
            "Fiji Water", "Voss", "Hildon",
            "Iceland Spring", "Iskilde",
            "Icelandic Glacial", "Waiakea",
            "Smartwater", "Dasani", "Core Hydration",
            "Essentia", "Bai Water", "Flow Alkaline"
        ],

        // MARK: - Thés glacés
        .icedTea: [
            "Lipton Ice Tea Pêche", "Lipton Ice Tea Citron",
            "Lipton Ice Tea Mangue", "Lipton Ice Tea Framboise",
            "Nestea Citron", "Nestea Pêche",
            "Arizona Iced Tea", "Arizona Green Tea",
            "AriZona Peach", "AriZona Raspberry",
            "Snapple Lemon", "Snapple Peach",
            "Fuze Tea Pêche-Hibiscus", "Fuze Tea Citron-Framboise",
            "Gold Peak Sweet Tea", "Pure Leaf Unsweetened",
            "Peace Tea", "Sweet Leaf Mint & Honey",
            "Honest Tea", "Tejava Unsweetened"
        ],

        // MARK: - Boissons sportives
        .sports: [
            "Gatorade Cool Blue", "Gatorade Fruit Punch",
            "Gatorade Orange", "Gatorade Lemon-Lime",
            "Powerade Mountain Berry Blast", "Powerade Orange",
            "Powerade Zero", "Powerade Fruit Punch",
            "Lucozade Sport Orange", "Lucozade Sport Mango",
            "Isostar", "Aptonia",
            "Overstim's", "High5",
            "SiS Go Electrolyte", "Nuun Sport",
            "Skratch Labs", "Precision Hydration",
            "Bodyarmor Lyte", "Bodyarmor SportWater",
            "Prime Hydration", "Electrolit"
        ],

        // MARK: - Boissons lactées
        .milkDrink: [
            "Yop Fraise", "Yop Vanille",
            "Choco Milk", "Nesquik Chocolat", "Nesquik Fraise",
            "Oatly Barista", "Alpro Soya Chocolat",
            "Innocent Kids Smoothie",
            "Yazoo Chocolate", "Yazoo Strawberry",
            "Müller Frûttis", "Danette Café",
            "Yakult", "Actimel Fraise"
        ],

        // MARK: - Kombuchas
        .kombucha: [
            "GT's Living Foods Gingerade", "GT's Classic Kombucha",
            "Health-Ade Pink Lady Apple", "Health-Ade Ginger-Lemon",
            "Synergy Raw Kombucha", "Brew Dr. Clear Mind",
            "Humm Kombucha", "Aqua ViTea",
            "Kevita Ginger Lemon", "Kevita Tart Cherry",
            "Remedy Kombucha", "Mojo Kombucha",
            "Equinox Ginger & Lemon", "Jarr Kombucha",
            "Booch & Brew", "Real Kombucha Dry Dragon",
            "Lo Bros Kombucha", "Good Buzz Kombucha"
        ],

        // MARK: - Autres
        .other: [
            "Ribena Blackcurrant", "Ribena Strawberry",
            "Vimto", "Fentimans Victorian Lemonade",
            "Fentimans Rose Lemonade", "Fentimans Dandelion & Burdock",
            "Bundaberg Root Beer", "Bundaberg Guava",
            "Jones Strawberry Lime", "Stewarts Orange Cream",
            "IBC Root Beer", "Boylan Birch Beer",
            "Cock n Bull Ginger Beer", "Reed's Ginger Beer",
            "Virgil's Root Beer", "Maine Root Lemon",
            "Jarritos Tamarindo", "Jarritos Mandarin",
            "Ting Grapefruit", "D&G Kola Champagne",
            "Mauby Fizz", "Vita Malt", "Supermalt"
        ]
    ]
}
