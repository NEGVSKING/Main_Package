// Sources/SHIFT/AlcoholBrands.swift
// E-ROK-Package
//
// Created by Fabien Koré on 07/09/2025.

import Foundation

public struct AlcoholBrands {
    nonisolated(unsafe) public static let brandsByType: [AlcoholType: [String]] = [
        .beer: ["Heineken", "Kronenbourg", "1664", "Desperados", "Carlsberg", "Guinness", "Leffe", "Affligem", "Grimbergen", "Brewdog"],
        .wineRed: ["Bordeaux", "Burgundy", "Rhône", "Cabernet Sauvignon", "Merlot", "Pinot Noir", "Syrah", "Malbec", "Chianti", "Rioja"],
        .wineWhite: ["Chardonnay", "Sauvignon Blanc", "Pinot Grigio", "Riesling", "Chablis", "Sancerre", "Pouilly-Fumé", "Muscadet"],
        .wineRose: ["Côtes de Provence", "Tavel", "Bandol Rosé", "Languedoc Rosé", "Bordeaux Rosé", "Anjou Rosé"],
        .sparkling: ["Crémant", "Prosecco", "Cava", "Blanquette de Limoux", "Clairette de Die", "Saumur Brut"],
        .champagne: ["Moët & Chandon", "Veuve Clicquot", "Dom Pérignon", "Louis Roederer", "Krug", "Taittinger"],
        .fortified: ["Porto", "Sherry", "Madeira", "Marsala", "Banyuls", "Maury"],
        .dessertWine: ["Sauternes", "Tokaji", "Ice Wine", "Vin Santo", "Pedro Ximénez", "Barsac"],
        .organicWine: ["Domaine de la Romanée-Conti", "Château Pontet-Canet", "Domaine Zind-Humbrecht"],
        .biodynamicWine: ["Domaine de la Romanée-Conti", "Château Pontet-Canet", "Domaine Zind-Humbrecht"],
        .whisky: ["Johnnie Walker", "Chivas Regal", "Ballantine's", "Glenfiddich", "Macallan", "Jack Daniel's"],
        .vodka: ["Absolut", "Smirnoff", "Grey Goose", "Cîroc", "Eristoff", "Belvedere"],
        .rum: ["Bacardi", "Captain Morgan", "Havana Club", "Malibu", "Mount Gay", "Appleton Estate"],
        .gin: ["Bombay Sapphire", "Tanqueray", "Gordon's", "Beefeater", "Hendrick's", "Roku"],
        .tequila: ["Jose Cuervo", "Don Julio", "Patrón", "Herradura", "Casamigos", "El Jimador"],
        .brandy: ["Hennessy", "Courvoisier", "Rémy Martin", "Martell", "Camus"],
        .liqueur: ["Amaretto Disaronno", "Baileys", "Campari", "Cointreau", "Grand Marnier", "Kahlúa"],
        .absinthe: ["Pernod Absinthe", "Absente", "La Fée Absinthe", "St. George Absinthe"],
        .aquavit: ["Aalborg", "Linie", "O.P. Anderson", "Skåne Akvavit"],
        .arrack: ["Batavia Arrack", "Ceylon Arrack", "VSOA Arrack"],
        .bitters: ["Angostura", "Peychaud's", "Fee Brothers", "The Bitter Truth"],
        .cider: ["Strongbow", "Magners", "Kopparberg", "Rekorderlig", "Somersby"],
        .mead: ["Bunratty Meade", "Chaucer's Mead", "Sky River Mead"],
        .sake: ["Gekkeikan", "Hakutsuru", "Kubota", "Dassai"],
        .soju: ["Jinro", "Chum Churum", "Good Day", "Charm"],
        .shochu: ["Iichiko", "Kurokirishima", "Satsuma Shiranami"],
        .baijiu: ["Moutai", "Wuliangye", "Luzhou Laojiao"],
        .makgeolli: ["Kook Soon Dang", "Seoul Jangsu", "Busan Makgeolli"],
        .hardSeltzer: ["White Claw", "Truly", "TopChico", "Bon V!V"],
        .kombuchaAlcoolise: ["June Shine", "Unity Vibration", "Flying Embers"],
        .nonAlcoholic: ["Heineken 0.0", "Beck's Non-Alcoholic", "Erdinger Alkoholfrei", "Clausthaler", "Budweiser Zero", "Kronenbourg 1664 Sans Alcool"],
        .cocktail: ["Mojito", "Margarita", "Cosmopolitan", "Pina Colada", "Daiquiri", "Martini", "Old Fashioned", "Negroni", "Manhattan", "Whiskey Sour"],
        .soda: ["Coca-Cola", "Sprite", "Fanta", "Red Bull", "Schweppes Tonic", "Canada Dry", "7Up", "Dr Pepper", "Orangina", "Pepsi"]
    ]
}
