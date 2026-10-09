// =========================================================================
// PFE & Internship Cover Letter Template (Typst)
// Concise, Grounded, Anti-AI-Slop (Strictly 1 Page)
// =========================================================================

#set page(
  paper: "a4",
  margin: (x: 2.5cm, top: 2.2cm, bottom: 2.2cm),
)

#set text(
  font: "Liberation Serif",
  size: 10.5pt,
  lang: "fr",
  fill: rgb("#2d3748")
)

#set par(justify: true, leading: 0.65em)

// Theme color
#let primary-color = rgb("#1e3a8a")

// Sender and Recipient Header
#grid(
  columns: (1fr, 1fr),
  align(left)[
    #text(12pt, weight: "bold", fill: primary-color)[Prénom NOM] \
    #text(9pt, fill: rgb("#718096"))[Étudiant Ingénieur d'État en Dernière Année] \
    #v(2pt)
    #text(9pt)[
      Casablanca / Rabat / Kénitra, Maroc \
      +212 6 XX XX XX XX \
      prenom.nom\@gmail.com \
      #link("https://github.com/votre-username")[github.com/votre-username] \
      #link("https://linkedin.com/in/votre-profil")[linkedin.com/in/votre-profil]
    ]
  ],
  align(right)[
    #text(9.5pt, weight: "bold")[À l'attention de l'Équipe Recrutement] \
    #text(9.5pt)[Direction des Ressources Humaines / Équipe Technique] \
    #text(9.5pt, weight: "bold")[Nom de l'Entreprise Cible] \
    #text(9.5pt)[
      Ville, Maroc \
      #link("https://www.entreprise-cible.ma")[www.entreprise-cible.ma]
    ]
  ]
)

#v(0.6cm)

#align(right)[
  #text(9.5pt, fill: rgb("#4a5568"))[Le 9 octobre 2026]
]

#v(0.3cm)

#text(weight: "bold", fill: primary-color)[
  Objet : Candidature – Stage de Projet de Fin d'Études (PFE) / Ingénieur Logiciel & Data
]

#v(0.3cm)

Madame, Monsieur,

Actuellement en dernière année de cycle d'ingénieur d'État à l'[Nom de l'École], je vous adresse ma candidature pour réaliser mon stage de Projet de Fin d'Études (PFE) au sein de vos équipes d'ingénierie logicielle et data.

Ma formation académique m'a permis d'acquérir une solide rigueur en modélisation mathématique, algorithmique et conception de systèmes. Pour prolonger ces acquis théoriques, j'ai développé une pratique concrète du cycle de vie logiciel et du traitement de la donnée à travers mes projets et mes stages opérationnels :

- *Développement Full-Stack :* Conception et déploiement d'une application d'entreprise en React, TypeScript et ASP.NET Core, intégrant un portail sécurisé, la validation automatique des données et l'édition de rapports d'analyse.
- *Data Engineering & IA :* Implémentation de pipelines de classification supervisée en Python (Scikit-Learn, plus de 95 % de précision) et manipulation de bases vectorielles pour la recherche d'information.
- *DevOps & Déploiement :* Gestion d'infrastructures conteneurisées sous Linux (Docker, reverse proxy Traefik avec certificats SSL et isolation réseau).

Curieux, autonome et rigoureux, je souhaite mettre mes compétences techniques au service de vos projets opérationnels, tout en bénéficiant de l'expertise de vos ingénieurs. Si votre programme priorise des profils déjà diplômés pour ce rôle, je reste pleinement ouvert à intégrer un parcours de Graduate Program ou de stage de pré-embauche.

Vous trouverez en pièce jointe mon curriculum vitae détaillé. Je serais ravi de vous exposer mes motivations de vive voix lors d'un entretien.

Je vous prie d'agréer, Madame, Monsieur, l'expression de mes salutations distinguées.

#v(0.4cm)

#align(right)[
  #text(weight: "bold", fill: primary-color)[Prénom NOM] \
  #text(9pt)[
    +212 6 XX XX XX XX \
    prenom.nom\@gmail.com
  ]
]
