// =========================================================================
// PFE & Software Engineering Resume Template (RenderCV & Typst)
// Clean, Modern, ATS-Friendly, Anti-AI-Slop Architecture
// =========================================================================

#import "@preview/rendercv:0.3.0": *

#show: rendercv.with(
  name: "Prénom NOM",
  title: "Prénom NOM - CV - Stage PFE",
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "a4",
  page-top-margin: 0.5in,
  page-bottom-margin: 0.5in,
  page-left-margin: 0.55in,
  page-right-margin: 0.55in,
  page-show-footer: false,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 0, 0),
  colors-headline: rgb(0, 0, 0),
  colors-connections: rgb(0, 0, 0),
  colors-section-titles: rgb(0, 0, 0),
  colors-links: rgb(0, 0, 0),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.58em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Liberation Serif",
  typography-font-family-name: "Liberation Serif",
  typography-font-family-headline: "Liberation Serif",
  typography-font-family-connections: "Liberation Serif",
  typography-font-family-section-titles: "Liberation Serif",
  typography-font-size-body: 10pt,
  typography-font-size-name: 24pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.2em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: false,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: true,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-space-below-name: 0.5cm,
  header-space-below-headline: 0.5cm,
  header-space-below-connections: 0.5cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: false,
  header-connections-display-urls-instead-of-usernames: true,
  header-connections-separator: "|",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.32cm,
  section-titles-space-below: 0.14cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.08cm,
  sections-space-between-regular-entries: 0.28cm,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0.08cm,
  entries-highlights-bullet: text(13pt, [•], baseline: -0.6pt),
  entries-highlights-nested-bullet: text(13pt, [•], baseline: -0.6pt),
  entries-highlights-space-left: 0cm,
  entries-highlights-space-above: 0.08cm,
  entries-highlights-space-between-items: 0.08cm,
  entries-highlights-space-between-bullet-and-text: 0.3em,
  date: datetime(year: 2026, month: 10, day: 9),
)

= Prénom NOM

  #headline([Software & Data/AI Engineer | Étudiant Ingénieur d'État en Dernière Année])

#connections(
  [Casablanca / Rabat / Kénitra, Maroc],
  [#link("mailto:prenom.nom@gmail.com", icon: false, if-underline: false, if-color: false)[prenom.nom\@gmail.com]],
  [#link("tel:+212-6-00-00-00-00", icon: false, if-underline: false, if-color: false)[+212 6 XX XX XX XX]],
  [#link("https://github.com/votre-username", icon: false, if-underline: false, if-color: false)[github.com\/votre-username]],
  [#link("https://linkedin.com/in/votre-profil", icon: false, if-underline: false, if-color: false)[linkedin.com\/in\/votre-profil]],
)

== Summary

Étudiant Ingénieur d'État en dernière année combinant une solide rigueur analytique avec une pratique approfondie du développement logiciel moderne et de l'ingénierie de la donnée. Expérience pratique dans la conception et le déploiement d'architectures web complètes (React, TypeScript, APIs REST), l'implémentation de modèles de Machine Learning prédictifs et l'automatisation d'infrastructures conteneurisées. À la recherche d'un stage de Projet de Fin d'Études (PFE) stimulant pour concevoir des solutions logicielles performantes et scalables.

== Education

#education-entry(
  [
    #strong[École Nationale Supérieure d'Ingénieurs] \ Diplôme d'Ingénieur d'État (Dernière Année) en Informatique / Génie des Procédés
  ],
  [
    2022 – 2027
  ],
  main-column-second-row: [
    #summary[Formation académique combinant modélisation des systèmes et calcul scientifique]

    - Outils de calcul & Programmation : Apprentissage approfondi de C, Python et MATLAB pour l'algorithmique, l'optimisation matricielle et la résolution numérique

    - Machine Learning & Fondements IA : Apprentissage supervisé et non-supervisé, architectures de réseaux de neurones artificiels et modélisation prédictive

    - Analyse numérique & Optimisation : Méthodes itératives, optimisation sous contraintes, modélisation dynamique des systèmes et traitement des signaux

  ],
)

== Experience

#regular-entry(
  [
    #strong[Stagiaire Développeur Full-Stack], Entreprise / Laboratoire d'Accueil
  ],
  [
    Juillet 2026 – Août 2026
  ],
  main-column-second-row: [
    #summary[Conception d'une plateforme web d'entreprise et automatisation des flux de travail opérationnels]

    - Conception et déploiement d'une application web complète dotée d'un portail client sécurisé, du suivi du cycle de vie des données et de la génération automatique de rapports PDF

    - Architecture d'un modèle relationnel strict (TypeScript, React, PostgreSQL/MySQL), éliminant les saisies manuelles sur tableurs et garantissant l'intégrité référentielle

    - Implémentation du contrôle d'accès basé sur les rôles (RBAC), de journaux d'audit horodatés et de validations de conformité automatiques avant validation

  ],
)

#regular-entry(
  [
    #strong[Stagiaire Data & Machine Learning], Société Régionale / Entreprise Industrielle
  ],
  [
    Juillet 2025 – Août 2025
  ],
  main-column-second-row: [
    #summary[Pipelines de données analytiques, modélisation statistique et détection d'anomalies]

    - Élaboration d'un pipeline de classification supervisé en Python (pandas, Scikit-Learn) atteignant plus de 95% de précision pour anticiper les dérives de qualité

    - Développement de routines automatisées d'extraction, de nettoyage et d'ingénierie des caractéristiques sur des jeux de données multi-paramètres

    - Synthèse des indicateurs de performance et création de tableaux de bord de suivi opérationnel pour les équipes techniques

  ],
)

== Projects

#regular-entry(
  [
    #strong[Plateforme Web SaaS & Starter Architecture] (#link("https://github.com/votre-username")[github.com\/votre-username])
  ],
  [
  ],
  main-column-second-row: [
    #summary[Architecture logicielle moderne avec rendu côté serveur et backend cloud réactif]

    - Développement d'une architecture full-stack intégrant rendu SSR, synchronisation des données en temps réel et typage de bout en bout avec TypeScript

    - Intégration de l'authentification sécurisée, de passerelles de paiement récurrentes et de notifications transactionnelles automatisées

  ],
)

#regular-entry(
  [
    #strong[Infrastructure Cloud Conteneurisée & DevOps]
  ],
  [
    2025 – Présent
  ],
  main-column-second-row: [
    #summary[Environnement de production sous Linux hébergeant des microservices isolés avec routage dynamique]

    - Configuration et maintien d'un serveur Linux VPS exécutant des services conteneurisés orchestrés avec Docker et Docker Compose

    - Mise en place d'un reverse proxy sécurisé (Traefik/Nginx) avec terminaison SSL/TLS Let's Encrypt automatique et isolation réseau

    - Déploiement de bases de données relationnelles et vectorielles pour la recherche sémantique et la mise en cache Redis

  ],
)

== Skills

#strong[Langages :] Python, TypeScript, JavaScript, SQL, C, C\#, HTML/CSS

#strong[Data & IA :] Machine Learning (Scikit-Learn), Analyse & Modélisation (pandas, NumPy), Vector Databases (pgvector), Pipelines ETL

#strong[Backend & Bases de données :] PostgreSQL, MySQL, Redis, Architecture d'APIs RESTful, Modélisation relationnelle, Authentification RBAC

#strong[Frontend & Interfaces :] React, Next.js, Node.js, TanStack, Tailwind CSS

#strong[DevOps, Outils & Systèmes :] Docker & Docker Compose, Traefik, Linux / Bash, Git / GitHub CI/CD, Postman

== Certifications

- #strong[Machine Learning Specialization] — DeepLearning.AI & Stanford University (Supervised Learning, Neural Networks)

- #strong[Professional Certifications] — Back End Development, Relational Databases & APIs

== Langues

- #strong[Arabe :] Langue maternelle | #strong[Français :] Courant | #strong[Anglais :] Courant
