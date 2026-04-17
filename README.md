# E-ROK Main Package

Swift Package officiel de **E-ROK Family Corp.** — socle commun partagé entre toutes les applications iOS du groupe (SHIFT, MYMECA, et autres).

- **Plateforme** : iOS 18+
- **Swift** : 6.1+
- **Outils** : Swift Package Manager

---

## Modules

### `EROKUI`
Bibliothèque de composants SwiftUI premium réutilisables.

| Composant | Description |
|---|---|
| `CorrectButton` | Bouton avec action async, mode `.tap` / `.longPress`, morphing en cercle pendant l'exécution |
| `MorphingButton` | Bouton à géométrie animée |
| `TaskButton` | Bouton lié à une tâche asynchrone |
| `FloatingActionMenu` | Menu flottant expansible |
| `AddressField` | Champ d'adresse avec autocomplétion MapKit et debounce `Sendable` |
| `IconTextField` | Champ de texte avec icône intégrée |
| `ValidationIndicator` | Indicateur visuel de validation |
| `AnimatedText` / `DecryptingText` | Effets typographiques animés |
| `GlitchTextEffectView` | Effet glitch sur texte |
| `EROKImage` | Wrapper image avec ressources bundlées |
| `EROKShapes` | Formes SwiftUI custom |
| `TabBar` / `XStyleTabBar` | Barres de navigation personnalisées |
| `CustomSection` | Section stylisée |
| `Xicon` | Icônes custom |

Inclut également un bundle de ressources graphiques (`.png`) pour les labels textuels E-ROK.

---

### `EROKCore`
Modèles de données et logique métier fondamentale.

- `Address` — Modèle d'adresse structuré
- `BirthDate` — Gestion des dates de naissance
- `AgeFormatStyle` — Format d'affichage de l'âge
- `EROKAgeWall` — Contrôle d'accès par âge
- `EROKTransaction` — Modèle de transaction
- `Country`, `DayOfWeek`, `Month` — Enums localisés
- `InformationType`, `Validation` — Utilitaires de validation

---

### `EROKViews`
Vues SwiftUI prêtes à l'emploi composées à partir de `EROKUI` et `EROKCore`.

- `BirthDatePickerView` — Sélecteur de date de naissance
- `InfoFields` — Champs d'information structurés
- `MainTabView` — Navigation principale par onglets

---

### `SHIFT`
Modèles du domaine nightlife/événementiel utilisés par l'app SHIFT.

Couvre : types d'établissement, rôles (DJ, bouncer, barmaid…), dress codes, statuts clients, types d'événements, styles musicaux, gestion des bouteilles, et plus.

---

### `MYMECA`
Modèles du domaine automobile pour l'app MYMECA.

Couvre : marques de véhicules, types de pannes fréquentes, spécialités garage, services de nettoyage, diplômes mécaniques, pays de plaque.

---

### `PROFILES`
Système de profils E-ROK (EROKID) partagé entre les apps.

---

### `FONTS`
Typographies custom E-ROK bundlées via CoreText.

| Police | Fichier |
|---|---|
| Horizon | `horizon.otf` |
| Horizon Outlined | `horizon_outlined.otf` |

**Usage :**
```swift
import FONTS

// Au démarrage de l'app
EROKFonts.registerAll()

// Constantes de nom
Text("E-ROK").font(.custom(EROKFonts.horizon, size: 24))
```

---

## Dépendances entre modules

```
FONTS       (standalone)
MYMECA      (standalone)
EROKCore    → MYMECA
EROKUI      (standalone)
EROKViews   → EROKUI, EROKCore
SHIFT       → EROKUI, EROKCore, EROKViews
PROFILES    → EROKUI, EROKCore, EROKViews, SHIFT, MYMECA
```

---

## Intégration SPM

Dans votre `Package.swift` ou via Xcode → Add Package Dependency :

```swift
dependencies: [
    .package(url: "https://github.com/NEGVSKING/Main_Package.git", from: "1.7.0")
],
targets: [
    .target(
        name: "YourTarget",
        dependencies: [
            .product(name: "EROKUI", package: "Main_Package"),
            .product(name: "EROKCore", package: "Main_Package"),
            .product(name: "FONTS", package: "Main_Package"),
            // ajouter selon les besoins
        ]
    )
]
```

---

## Changelog rapide

| Version | Changements |
|---|---|
| 1.7.0 | Ajout du module `FONTS` avec les polices Horizon via CoreText |
| 1.6.7 | `CorrectButton` : morphing en cercle pendant l'exécution async |
| 1.6.6 | `CorrectButton` : loader E-ROK custom (remplace `ProgressView`) |
| 1.6.5 | `CorrectButton` : support actions async et modes `.tap` / `.longPress` |
| 1.6.4 | `AddressField` : debounce `Sendable`, extraction `Binding`, UI premium |

---

*E-ROK Family Corp. — tous droits réservés.*
