#!/bin/bash
set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$REPO_DIR"

# Init repo if needed
if [ ! -d ".git" ]; then
    git init
    git checkout -b main
fi

git add -A
git commit -m "init: book metadata"

# === MAIN BRANCH ===

git commit --allow-empty -m "$(cat <<'EOF'
Le mail de la BPI arrive un mardi à 14h37. « Félicitations, votre dossier a été retenu. » 500 000 euros. Un demi-million. Tu relis le chiffre trois fois, comme si les zéros allaient disparaître.

Tu te lèves de ta chaise IKEA, tu fais trois pas dans ton studio de 22m², et tu te cognes le tibia contre la table basse. La douleur est immédiate, violente, et parfaitement symbolique de ce qui t'attend. Mais ça, tu ne le sais pas encore.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu appelles ton cofondateur, Maxime. Enfin, « cofondateur » — c'est ton pote de promo qui a dit « ouais grave, ça a l'air cool » quand tu lui as montré ton pitch deck dans un bar à 2h du matin. Il décroche à la sixième sonnerie.

« Max, on a les thunes. — Les thunes de quoi ? — La BPI, mec. 500K. — Attends, le truc avec l'app là ? — Oui, le truc avec l'app là. — Mais on n'a pas d'app. — Justement, maintenant on peut en faire une. »

Un silence. Puis : « Je démissionne lundi. »
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Semaine 1. Vous êtes officiellement une startup. Tu as un numéro SIRET, un compte Qonto avec 500 000 € dessus, et un Notion avec exactement trois pages : « Roadmap » (vide), « Culture » (contient uniquement le mot « bienveillance »), et « Idées de noms » (47 propositions, toutes déjà prises sur .com).

Maxime a quitté son CDI chez Capgemini. Il rayonne. Il a changé son titre LinkedIn en « Co-founder & CTO | Building the future 🚀 ». Il ne sait pas encore coder en dehors de Java, mais les emojis fusée compensent.

Le premier vrai défi se présente : où installer le QG de votre empire ?
EOF
)"

# DIVERGE_CRYPTO: Semaine 1 — trésorerie qui dort, tentations crypto
DIVERGE_CRYPTO=$(git rev-parse HEAD)

git commit --allow-empty -m "$(cat <<'EOF'
Tu signes un bail pour un open space de 120m² dans le Marais. 4 500 € par mois, charges comprises. « C'est un investissement », tu expliques à Maxime qui fait mentalement le calcul du nombre de mois de runway que ça représente. Il ouvre la bouche, la referme, et hoche la tête.

L'espace est magnifique. Murs en briques apparentes, verrière industrielle, un baby-foot vintage qui vient avec le bail. Il y a même un néon rose qui dit « HUSTLE » au-dessus de l'entrée. Tu ne sais pas encore que ce néon va devenir le symbole involontaire de tout ce qui va mal tourner.

Vous êtes deux. L'open space peut accueillir quarante personnes. Les trente-huit chaises vides vous regardent avec un optimisme silencieux.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Semaine 3. Le bureau est meublé. Tu as dépensé 12 000 € chez un fournisseur de mobilier design danois. Les bureaux sont en bouleau scandinave, les chaises sont ergonomiques (699 € pièce), et la machine à café est une Jura E8 à 1 800 €. Elle fait quatorze types de boissons. Vous en utilisez deux : expresso et allongé.

Maxime a installé trois écrans 4K sur son bureau « pour le dev ». Il passe 80% de son temps sur un seul, à regarder des tutoriels React sur YouTube. Mais l'esthétique est impeccable. Le photographe de Maddyness pourrait débarquer n'importe quand.

Runway restant : 458 000 €. Nombre de lignes de code : 0.
EOF
)"

# DIVERGE_RECRUTEMENT: Semaine 3 — le produit n'avance pas, tentations de recruter ou outsourcer
DIVERGE_RECRUTEMENT=$(git rev-parse HEAD)

git commit --allow-empty -m "$(cat <<'EOF'
Semaine 6. Il est temps de décider ce que votre app va réellement faire. Le pitch deck disait « réinventer l'expérience sociale locale grâce à l'IA et la blockchain ». C'était suffisamment vague pour convaincre un jury, mais maintenant il faut coder un truc.

Tu organises un « Product Sprint » d'une semaine. Vous commandez des pizzas, vous collez des post-it sur les murs en briques (qui n'accrochent pas bien, les post-it tombent toutes les vingt minutes), et au bout de cinq jours, vous avez : un Figma avec 47 écrans, zéro user story, et un nom. L'app s'appellera « Konnekt ». Avec un K. Parce que le C était trop corporate.

Konnekt est un réseau social hyperlocal qui connecte les gens autour de passions communes dans un rayon de 500 mètres. Comme Tinder, mais pour les gens qui aiment le tricot.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Semaine 8. Maxime a choisi la stack technique. Micro-services en Go, frontend React Native, base de données MongoDB ET PostgreSQL (« pour la flexibilité »), cache Redis, queue RabbitMQ, et déploiement Kubernetes sur AWS.

« C'est pas un peu over-engineered pour une V1 ? » tu demandes timidement. Maxime te regarde avec la condescendance polie de quelqu'un qui vient de regarder 200 heures de conférences tech. « Tu veux scaler ou pas ? » Tu ne sais pas ce que ça veut dire, mais ça a l'air important, donc tu hoches la tête.

La facture AWS du premier mois : 2 300 €. Nombre d'utilisateurs : 0. Nombre de micro-services déployés : 7. Nombre qui fonctionnent : 2.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Semaine 12. Le premier prototype de Konnekt est prêt. L'app crash au démarrage sur Android, le GPS vide la batterie en 20 minutes, et la feature « découvrir des passionnés autour de moi » renvoie systématiquement zéro résultat parce que vous êtes les deux seuls utilisateurs.

Tu décides d'organiser un « beta test ». Tu envoies le lien à 200 personnes sur LinkedIn avec un message qui commence par « 🚀 Exciting news! ». 14 personnes cliquent. 3 téléchargent l'app. 1 laisse un avis : « Ça crash. »

Maxime dit que c'est normal, que Facebook aussi crashait au début. Tu n'oses pas lui dire que Facebook avait un Mark Zuckerberg et pas un développeur Java reconverti en architecte micro-services.
EOF
)"

# DIVERGE_PROTOTYPE: Semaine 12 — prototype raté, zéro traction, tentations multiples
DIVERGE_PROTOTYPE=$(git rev-parse HEAD)

git commit --allow-empty -m "$(cat <<'EOF'
Mois 4. Zéro traction. Le board (ta mère, ton ancien prof d'éco, et un « business angel » qui a mis 5 000 €) commence à poser des questions. Tu décides que le problème n'est pas le produit, c'est le marketing. Il faut « créer du buzz ».

Tu recrutes Chloé, une « Growth Hacker » qui a 12 000 followers sur Twitter et un blog intitulé « Disrupt or Die ». Son CV mentionne « 3x startup founder ». Tu découvriras plus tard que les trois startups en question ont toutes fermé en moins de six mois, mais elle appelle ça « trois exits ».

Son premier jour, elle installe 14 outils analytics sur l'app. Le temps de chargement passe de 3 secondes à 11 secondes. « C'est pour comprendre l'utilisateur », explique-t-elle.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 5. Chloé a dépensé 35 000 € en Facebook Ads. Le résultat : 4 200 téléchargements, 180 inscriptions, 12 utilisateurs actifs après une semaine. Le coût d'acquisition est de 2 916 € par utilisateur actif. Chloé dit que c'est « dans la moyenne du marché ». Tu ne vérifies pas.

Elle lance aussi un compte TikTok pour la startup. Maxime fait une vidéo où il explique la stack technique en dansant. La vidéo fait 47 vues. 38 sont les vôtres. Les 9 autres sont des bots russes.

Le Notion « Culture » a maintenant une deuxième ligne : « Data-driven ». L'ironie est palpable, mais personne ne la relève.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 6. Mi-parcours. Tu fais le point financier. Il reste 298 000 € sur le compte. Tu as brûlé 202 000 € en six mois. En face : 12 utilisateurs actifs dont 4 sont des employés, 3 sont ta famille, et 5 sont des vrais humains dont 2 se sont inscrits par erreur en croyant que c'était Tinder.

Maxime passe ses soirées à refactorer le backend. La base de code est magnifique — tests unitaires à 94% de couverture, documentation Swagger impeccable, architecture hexagonale. Personne ne l'utilise, mais si quelqu'un l'utilisait, ça serait une expérience technique irréprochable.

Il est temps de prendre une décision stratégique majeure. Enfin, « stratégique ».
EOF
)"

# DIVERGE_MIPARCOURS: Mois 6 — mi-parcours, 12 utilisateurs, cash brûlé, décision stratégique
DIVERGE_MIPARCOURS=$(git rev-parse HEAD)

git commit --allow-empty -m "$(cat <<'EOF'
Tu décides de pivoter. Pas un petit pivot, non. Un virage à 180 degrés. Konnekt ne sera plus un réseau social hyperlocal. Konnekt sera une marketplace de services entre voisins. « Comme Leboncoin mais en mieux », tu expliques à Maxime, qui te rappelle que Leboncoin a 28 millions d'utilisateurs et toi, 12.

Le pivot nécessite de réécrire 70% du code. Maxime dit que ce n'est pas grave parce que « l'architecture est modulaire ». Trois semaines plus tard, il admet que les modules sont en fait tous couplés entre eux et qu'il faut tout reprendre de zéro.

Tu crées un nouveau pitch deck. Les mots-clés sont les mêmes — IA, blockchain, disruption — mais les slides ont des photos de voisins souriants au lieu de jeunes urbains branchés. Le jury ne verra jamais la différence.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 8. La V2 de Konnekt est en « beta fermée ». Fermée parce que tu n'as invité personne. Le concept marketplace fonctionne théoriquement, mais tu as un problème classique de chicken-and-egg : pas de prestataires sans clients, pas de clients sans prestataires.

Pour amorcer la pompe, tu demandes à toute l'équipe (Maxime, Chloé, et Jordan le stagiaire que tu as recruté via une annonce qui disait « startup à fort impact, rémunération à définir ») de créer de faux profils. Maxime est plombier. Chloé donne des cours de yoga. Jordan est dog-sitter. Aucun d'entre eux ne sait faire ces choses.

La première vraie commande arrive : quelqu'un veut un plombier pour une fuite urgente. Maxime ne répond pas. La fuite continue.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 9. Les choses s'accélèrent. Vers le mur. Le runway est à 180 000 €. Tu brûles 28 000 € par mois. Ça laisse environ six mois et demi. Chloé propose de « lever une Série A ». Tu ne sais pas exactement ce que ça implique, mais ça sonne ambitieux.

Tu passes deux semaines à préparer un deck de 45 slides. Dedans, des courbes de croissance en forme de bâton de hockey, un TAM de 4 milliards d'euros (le marché mondial des services de proximité, qui inclut apparemment la plomberie en Indonésie), et un slide « Team » où tout le monde a l'air compétent et heureux.

Premier meeting investisseur. Le VC regarde le deck, regarde tes métriques, et dit avec un sourire professionnel : « C'est intéressant. On reste en contact. » Tu ne le recontacteras jamais. Lui non plus.
EOF
)"

# DIVERGE_MUR: Mois 9 — le mur approche, runway critique, dernières options
DIVERGE_MUR=$(git rev-parse HEAD)

git commit --allow-empty -m "$(cat <<'EOF'
Mois 11. Le désespoir s'installe. Les meetings investisseurs se sont tous terminés par des « on reste en contact » polis. Maxime code 14 heures par jour mais l'app a toujours 23 utilisateurs. Chloé a lancé un podcast intitulé « Scale or Fail » qui a 8 abonnés. Jordan le stagiaire a démissionné pour monter sa propre startup — il a trouvé l'idée en travaillant ici, ce qui est ironique puisque personne ici n'a trouvé la sienne.

Il reste 95 000 € sur le compte. À ce rythme, c'est fini en mars. Tu passes tes nuits à chercher des solutions. Tu lis « The Lean Startup » pour la troisième fois, mais les exemples de pivot réussi ressemblent de moins en moins à ta situation.

Le néon « HUSTLE » au-dessus de la porte a commencé à clignoter. La lettre H s'éteint parfois. Ça donne « USTLE ». C'est pas un mot, mais c'est un résumé assez fidèle de ton expérience.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 12. Le mur est là. 52 000 € sur le compte. Deux mois de runway. Tu convoques une réunion d'équipe — enfin, tu demandes à Maxime et Chloé de s'asseoir autour du baby-foot parce que la salle de réunion, vous n'en avez jamais eu.

« On a trois options, tu annonces. Un : on trouve de l'argent. Deux : on coupe les coûts. Trois : on ferme. » Silence. Maxime fixe ses chaussures. Chloé vérifie son téléphone — elle live-tweete la réunion. « Moment de vérité pour notre startup. Thread 🧵 ».

Tu te demandes à quel moment exact ta vie est devenue un thread Twitter.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 13. C'est fini. Le compte est à 8 000 € — juste assez pour payer les dernières charges et le solde de tout compte. Tu rédiges le mail de dissolution à 3h du matin, assis par terre dans l'open space vide. Le baby-foot est le seul témoin.

Tu écris un post LinkedIn. « Après 13 mois d'aventure incroyable, nous avons pris la difficile décision de fermer Konnekt. Ce n'est pas un échec, c'est un apprentissage. » 847 likes. 52 commentaires « Force à toi 💪 ». 3 propositions de CDI.

Maxime retourne chez Capgemini. Son manager lui dit « content de te revoir ». Chloé rejoint une autre startup en pré-seed. Son titre LinkedIn : « 4x startup founder ». Le néon HUSTLE, tu le récupères. Il est dans ton salon maintenant. La lettre H ne marche toujours pas.
EOF
)"

# ============================================================
# === SECONDARY BRANCHES ===
# ============================================================

# ============================================================
# DIVERGENCE POINT 1: DIVERGE_CRYPTO (Semaine 1)
# ============================================================

# === BRANCH: hotfix/crypto-tresorerie ===
git checkout -b hotfix/crypto-tresorerie $DIVERGE_CRYPTO

git commit --allow-empty -m "$(cat <<'EOF'
Maxime a une idée. « Et si au lieu de laisser les 500K dormir sur le compte courant, on en mettait une partie en crypto ? Les taux d'intérêt sont à zéro, le Bitcoin est à 40K et il monte. C'est du bon sens financier. »

Tu lui fais remarquer que ni toi ni lui n'avez jamais acheté de crypto. Il te montre un thread Twitter de 47 tweets par un type avec un laser eyes avatar qui explique pourquoi le Bitcoin va atteindre 200K avant la fin de l'année. « C'est un expert reconnu », dit Maxime. Tu ne vérifies pas.

Vous transférez 200 000 € sur Binance un mardi soir, après deux bières.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Premier jour : +3,2%. Vous gagnez 6 400 € en dormant. C'est plus que le loyer mensuel du bureau. Maxime suggère de mettre 100 000 € de plus. « On diversifie : 50% Bitcoin, 30% Ethereum, 20% en... c'est quoi ce truc ? SafeMoonRocketInu ? Le rendement APY est de 847%. »

Tu te surprends à rafraîchir CoinMarketCap toutes les dix minutes. Le développement de l'app ralentit sensiblement. Maxime a remplacé ses trois écrans 4K de développement par un dashboard crypto en temps réel, un canal Discord de « alpha calls », et le cours du Bitcoin en chandelier japonais.

Semaine 2 : vous êtes à +11%. Le Notion « Culture » a une nouvelle ligne : « High Risk, High Reward ».
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le marché se retourne un jeudi à 3h du matin. Tu te réveilles avec 14 notifications Binance. Le Bitcoin a perdu 22% en six heures. L'Ethereum dégringole. SafeMoonRocketInu a perdu 94% — ce qui n'est pas une surprise pour quiconque n'a pas lu son whitepaper écrit en Comic Sans.

Tu ouvres l'app Binance les mains tremblantes. Le portefeuille affiche 187 000 € au lieu de 340 000 €. Tu as perdu 153 000 € en une nuit. Maxime t'appelle. « On ne vend pas. C'est un dip. Les institutions vont racheter. » Tu entends dans sa voix qu'il essaie de se convaincre lui-même.

La facture AWS du mois arrive le même jour : 3 100 €. Tu la paies depuis le compte courant, qui n'a plus que 160 000 €.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu paniques et tu vends tout. À perte. Maxime refuse de te parler pendant trois jours. Les 200 000 € investis sont devenus 156 000 €. Tu as perdu 44 000 € — l'équivalent du salaire annuel de Jordan le stagiaire, si tu l'avais payé.

Le plus douloureux, c'est que deux semaines plus tard, le Bitcoin remonte. Et trois mois après, il dépasse son plus haut. Maxime te le rappelle. Chaque. Jour. Parfois avec un graphique. Parfois juste avec un regard.

Tu inscris dans le Notion « Leçons apprises » : « Ne jamais investir la trésorerie dans des actifs volatils. » Puis tu supprimes la page, parce que la relire te donne des palpitations.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
La perte crypto combinée au loyer du bureau te met dans une situation critique dès le mois 4. Tu avais prévu 18 mois de runway, tu en as 7. Le burn rate n'a pas changé, mais la trésorerie a fondu comme un NFT de singe en bear market.

Tu passes un week-end à faire des tableurs. Dans le scénario optimiste, tu tiens jusqu'en septembre. Dans le scénario pessimiste, c'est mai. Tu n'as même pas lancé le produit. Tu n'as même pas fini le produit. Tu as un prototype qui crash sur Android et 44 000 € de moins qu'au départ pour une raison que tu ne pourras jamais expliquer à la BPI.

L'expert-comptable te regarde par-dessus ses lunettes : « Vous avez fait QUOI avec la trésorerie de la société ? »
EOF
)"

git checkout main

# ============================================================
# DIVERGENCE POINT 2: DIVERGE_RECRUTEMENT (Semaine 3)
# ============================================================

# === BRANCH: feature/recrute-rockstars ===
git checkout -b feature/recrute-rockstars $DIVERGE_RECRUTEMENT

git commit --allow-empty -m "$(cat <<'EOF'
Le produit n'avance pas assez vite. La solution évidente : recruter. Pas n'importe qui — des « rockstars ». Tu publies une annonce sur Welcome to the Jungle : « Startup en hypercroissance cherche développeur fullstack 10x. Stack : React, Go, K8s. Ambiance startup, baby-foot, café premium. Salaire : compétitif. Equity : à négocier. »

Tu reçois 340 candidatures en une semaine. 280 commencent par « Passionné depuis toujours ». 45 ont des CV de 4 pages. 15 sont des recruteurs qui ont postulé par erreur.

Maxime veut faire passer des tests techniques de 6 heures. Tu lui dis que les vrais rockstars n'ont pas le temps pour ça. C'est la première de nombreuses erreurs de recrutement.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu recrutes Théo. Son GitHub est impressionnant : 3 000 contributions, 47 repos, 12 étoiles sur un framework CSS qu'il a créé. En entretien, il a parlé pendant 45 minutes de « clean architecture » et de « domain-driven design » sans que tu comprennes un seul mot. Tu l'as engagé sur le coup : 65 000 € brut + 1% d'equity.

Premier jour de Théo. Il regarde le code de Maxime. Son visage passe par les cinq étapes du deuil en trente secondes. « Il faut tout réécrire, annonce-t-il. L'architecture est un monolithe déguisé en micro-services. » Maxime blêmit.

Théo passe sa première semaine à écrire un document de 40 pages intitulé « Proposition de refactoring architectural ». Pas une ligne de code.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Semaine 3 de Théo. Il a réécrit le module d'authentification. C'est magnifique, c'est élégant, c'est testé à 100%. Ça a pris trois semaines pour quelque chose qui marchait déjà. Mais maintenant c'est « propre ».

Maxime et Théo ne se parlent plus. Ils communiquent par pull requests passives-agressives. Théo laisse des reviews de 200 lignes sur les PR de Maxime. Maxime approuve les PR de Théo sans les lire. Tu découvres que « l'enfer du code review » n'est pas qu'une expression.

Entre-temps, tu recrutes aussi Inès, une designer UX à 55 000 €. Elle redesigne l'app en entier. C'est sublime. Les maquettes font pleurer de beauté. Aucun développeur n'a le temps de les implémenter parce qu'ils sont trop occupés à réécrire ce qui marchait déjà.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 4. L'équipe est à 5 personnes (toi, Maxime, Théo, Inès, Chloé) et le burn rate mensuel est passé de 12 000 € à 38 000 €. Tu fais le calcul sur un coin de nappe : à ce rythme, le runway est de 8 mois. Sauf que le produit a régressé — la réécriture de Théo a cassé la moitié des features existantes.

Théo veut recruter deux développeurs de plus « pour aller plus vite ». Tu connais la loi de Brooks — ajouter des gens à un projet en retard le retarde davantage — mais tu ne connais pas le nom de la loi, donc tu ne sais pas que tu es en train de la violer quand tu dis oui.

Tu publies deux nouvelles annonces. Le cycle recommence. Quelque part, Fred Brooks sourit tristement depuis l'au-delà.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 6. L'équipe tech est à 4 développeurs. Ils produisent moins de code que quand Maxime était seul. Les stand-ups durent 45 minutes. Les retros durent 2 heures. Les sprints de deux semaines contiennent en moyenne 3 jours de travail effectif et 7 jours de réunions, discussions architecturales, et résolution de conflits de merge.

Le point culminant arrive quand Théo et le nouveau développeur, Samir, passent une journée entière à débattre de l'utilisation de tabs vs spaces. Théo menace de démissionner si le projet n'adopte pas les tabs. Samir refuse de toucher un fichier indenté avec des tabs. Tu règles le conflit en achetant un Prettier configuré à 2 spaces. Théo boude pendant trois jours.

Le coût de cette journée de débat : environ 800 € en salaires. Le résultat concret : un fichier `.prettierrc`.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 8. Théo démissionne. Dans son mail de départ, il écrit : « Je ne peux pas en bonne conscience continuer à travailler sur une codebase qui viole les principes SOLID à chaque commit. » Il part chez une scale-up qui fait du SaaS B2B et qui a probablement les mêmes problèmes, mais avec plus d'argent.

Son départ laisse un trou. Pas dans l'équipe — dans le code. Personne ne comprend sa réécriture. Le module d'authentification qu'il a passé trois semaines à refaire utilise un pattern si abstrait que même ChatGPT ne sait pas l'expliquer. Samir passe deux semaines à essayer de le débugger, puis renonce et réécrit tout avec un simple JWT.

Tu as dépensé 35 000 € en salaire pour Théo. Résultat net : un fichier `.prettierrc` et un trauma collectif.
EOF
)"

git checkout main

# === BRANCH: fix/outsource-pas-cher ===
git checkout -b fix/outsource-pas-cher $DIVERGE_RECRUTEMENT

git commit --allow-empty -m "$(cat <<'EOF'
Maxime galère. Le code n'avance pas. Mais recruter un dev à Paris, c'est 55-70K par an. Sur Upwork, tu trouves une agence à Dhaka qui promet « full-stack development, React + Go, $15/hour, delivery in 2 weeks ». C'est 8 fois moins cher qu'un dev français. Le calcul est simple.

Tu signes un contrat pour la V1 de Konnekt. Budget : 8 000 $. Délai : 4 semaines. L'agence s'appelle « CodeNinja Solutions Pro ». Leur portfolio montre 47 projets terminés. Tu ne vérifies pas les références. Tu envoies le Figma et les specs (un Google Doc de 3 pages avec des phrases comme « l'utilisateur peut faire des trucs »).

Le project manager s'appelle Rafiq. Il répond à chaque message par « Yes sir, no problem sir, we are on it sir ».
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Semaine 2. Rafiq envoie un premier livrable. Tu ouvres l'APK sur ton téléphone. L'app se lance. Tu es agréablement surpris — pendant exactement 4 secondes. L'écran d'accueil est magnifique. Puis tu cliques sur « S'inscrire » et l'app affiche « Lorem ipsum dolor sit amet ».

Tu explores. Chaque écran est une coquille vide avec du faux texte. Les boutons existent mais ne font rien. Le formulaire d'inscription envoie les données dans le void. La carte affiche la ville de Dhaka par défaut. Le profil utilisateur montre une photo de stock d'un homme d'affaires souriant.

Rafiq : « Sir, this is the UI phase. Backend will come in phase 2. » Les specs ne mentionnaient pas de phases.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Semaine 4. Le « backend » arrive. Il est écrit en PHP. Pas en Go, comme spécifié. Le code contient 17 injections SQL, 4 endpoints sans authentification, et un fichier nommé `test_password_123.php` qui contient, en effet, le mot de passe de la base de données en clair.

Maxime regarde le code en silence pendant vingt minutes. Puis il ferme son laptop, se lève, et va faire une promenade de 45 minutes. Quand il revient, il dit simplement : « On ne peut rien utiliser. Rien. Pas une ligne. »

Tu demandes un remboursement à CodeNinja Solutions Pro. Rafiq ne répond plus. Son profil Upwork passe en « Unavailable ». Le litige Upwork prendra 3 mois et te remboursera 2 200 $ sur 8 000 $. La leçon coûte cher mais tu ne la retiendras pas — tu retenteras avec une autre agence six mois plus tard.
EOF
)"

git checkout main

# ============================================================
# DIVERGENCE POINT 3: DIVERGE_PROTOTYPE (Semaine 12)
# ============================================================

# === BRANCH: feature/comm-de-crise ===
git checkout -b feature/comm-de-crise $DIVERGE_PROTOTYPE

git commit --allow-empty -m "$(cat <<'EOF'
Chloé a une idée pour « générer du buzz » : publier un article provocateur sur Medium intitulé « Pourquoi les VCs français sont des lâches ». L'article critique l'écosystème d'investissement français, cite nommément trois fonds qui vous ont refusé, et inclut la phrase « En France, on finance des PowerPoints, pas des produits ».

Tu relis l'article. C'est bien écrit. C'est percutant. C'est aussi une bombe à fragmentation relationnelle. « Tu es sûre, Chloé ? » Elle sourit : « Le bad buzz n'existe pas. Tout buzz est bon buzz. » Tu te souviens que ses trois startups précédentes ont toutes fermé, mais tu publies quand même.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
L'article fait 12 000 vues en 24 heures. Twitter s'enflamme. La moitié de la French Tech te traite de visionnaire courageux. L'autre moitié te traite d'arrogant ingrat. Les trois fonds cités publient des réponses polies mais glaciales.

Le problème, c'est que l'un des trois fonds cités, Elaia Partners, est aussi investisseur dans le programme d'accélération auquel tu as postulé le mois dernier. Ta candidature est silencieusement retirée. Tu ne l'apprendras que six semaines plus tard, par un mail automatique.

Le deuxième problème : un journaliste de BFM Business trouve l'article et veut t'interviewer. Pas sur ta startup — sur ta critique des VCs. Tu te retrouves en direct à la télé à défendre des opinions que Chloé a écrites et que tu n'as relues qu'une fois.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
L'interview BFM dure 4 minutes. Tu bafouilles. Le présentateur te demande ton chiffre d'affaires. Tu dis « on est en pré-revenue ». Il te demande ton nombre d'utilisateurs. Tu dis « on se concentre sur l'engagement, pas sur la volumétrie ». Il te regarde avec l'expression d'un homme qui a vu beaucoup de startups naître et mourir sur son plateau.

Le clip circule sur LinkedIn. Les commentaires sont impitoyables : « Le gars critique les VCs mais n'a même pas de revenu 💀 ». « Belle masterclass de ce qu'il ne faut pas faire en startup ». « Le mec a brûlé 500K€ de BPI et il donne des leçons d'investissement ».

Chloé quitte l'entreprise le lendemain. Par SMS. « Désolée, ça ne va pas être possible de continuer dans ce contexte médiatique. » Tu admires la capacité de la personne qui a créé le contexte médiatique à fuir le contexte médiatique.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
La suite est un enchaînement de catastrophes PR. La BPI voit le clip BFM et accélère sa demande de rapport. Un blog startup français publie un article intitulé « Konnekt : autopsie d'un flop à 500K€ ». Un twittos crée un meme avec ta tête sur le format « Expectation vs Reality ».

Tu fais ce que tout fondateur en crise fait : tu publies un thread Twitter d'excuses. 17 tweets. « J'ai fait des erreurs. L'article était maladroit. Je m'excuse auprès des fonds cités. L'entrepreneuriat est un chemin d'humilité. (1/17) ». Le thread reçoit 2 likes. L'un d'eux est ta mère.

La leçon est douloureuse : dans l'écosystème startup, ta réputation est ton seul actif quand tout le reste a échoué. Et tu viens de le brûler aussi.
EOF
)"

git checkout main

# === BRANCH: feature/concours-startup ===
git checkout -b feature/concours-startup $DIVERGE_PROTOTYPE

git commit --allow-empty -m "$(cat <<'EOF'
Chloé découvre un concours : « Les Pépites de la French Tech — édition Social Impact ». Premier prix : 25 000 € et un article dans Les Échos. Tu postules. Le dossier demande un « impact social mesurable ». Tu écris : « Konnekt réduit l'isolement social en reconnectant les voisins dans un rayon de 500 mètres. » C'est techniquement vrai si on considère que vos 12 utilisateurs sont moins isolés qu'avant.

Le jury est composé d'un adjoint au maire, d'une directrice RSE de L'Oréal, et d'un « serial entrepreneur à impact » dont le LinkedIn mentionne 7 startups — aucune n'a de page Wikipédia.

Contre toute attente, tu passes la première sélection. Sur 340 dossiers, 20 sont retenus pour le pitch final. Tu te retrouves dans une salle de conférence du Station F, avec un PowerPoint et un chronomètre de 7 minutes.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le pitch se passe étonnamment bien. Tu ne parles pas de blockchain, ni d'IA, ni de micro-services. Tu parles d'une mamie du 11ème qui a trouvé quelqu'un pour l'aider à monter ses courses grâce à l'app. C'est une vraie histoire (c'est ta voisine, et c'est toi qui as monté les courses, mais le jury n'a pas besoin de le savoir).

Le jury est ému. L'adjoint au maire hoche la tête. La directrice RSE essuie une larme (ou une poussière, c'est difficile à dire). Le serial entrepreneur prend des notes.

Résultat : tu gagnes le deuxième prix. 10 000 €, un article dans un supplément régional des Échos, et un « accompagnement de 6 mois par un mentor ». C'est pas le premier prix, mais c'est 10 000 € de plus que ce que Konnekt a jamais généré en revenu.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le concours a un effet secondaire inattendu : la presse locale s'y intéresse. France 3 Île-de-France fait un sujet de 90 secondes. La journaliste te filme dans l'open space (tu as demandé à Maxime et Chloé de faire semblant de travailler en arrière-plan pour que ça ait l'air « dynamique »). Le sujet passe un mardi à 19h23.

Ta mère appelle en pleurant de fierté. L'ancien prof d'éco t'envoie un mail : « Bravo, je l'ai montré à mes étudiants. » Le business angel à 5 000 € t'envoie un SMS : « Top 👍 ». Maxime a été reconnu par un ancien collègue sur le passage télé. Il n'est pas content.

Les téléchargements passent de 12 à 67 en une semaine. Puis reviennent à 14 la semaine suivante. L'effet « France 3 » a une demi-vie d'environ 5 jours.

Les 10 000 € du prix durent exactement 2 mois et 8 jours. Tu n'as rien appris, mais au moins tu as un trophée en plexiglas pour ton bureau en bouleau scandinave.
EOF
)"

git checkout main

# === BRANCH: feature/culture-toxique ===
git checkout -b feature/culture-toxique $DIVERGE_PROTOTYPE

git commit --allow-empty -m "$(cat <<'EOF'
Tu as lu un article de First Round Review sur l'importance de la culture d'entreprise. Tu décides que Konnekt aura la meilleure culture de la French Tech. Tu commences par écrire un « Culture Deck » de 30 slides, inspiré de celui de Netflix.

Slide 1 : « Chez Konnekt, nous sommes une famille. » Slide 7 : « Freedom & Responsibility. » Slide 12 : « Nous recrutons des adultes et nous les traitons comme tels. » Slide 23 : « Le feedback est un cadeau. » Slide 30 : « Work hard, play hard. »

Tu présentes le deck à l'équipe un lundi matin. Maxime lit le slide « nous sommes une famille » et marmonne : « Les familles dysfonctionnelles aussi sont des familles ». Tu ignores le commentaire.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
La « culture Konnekt » se matérialise de manière tangible. Tu installes une PlayStation dans l'open space (890 €). Tu organises des « Friday Beers » chaque vendredi à 17h (budget alcool : 200 €/semaine). Tu achètes un ping-pong pliable (350 €). Tu fais imprimer des t-shirts « Konnekt Crew » (45 € pièce, commande minimum 50, vous êtes 5).

Les vendredis deviennent le meilleur jour de la semaine. Pas pour le travail — le travail s'arrête à 16h le vendredi. Mais pour le baby-foot, les bières, et les tournois Mario Kart. Tu postes des photos sur Instagram avec le hashtag #KonnektLife. Tes 340 followers sont impressionnés.

Les quatre autres jours de la semaine, personne ne mentionne qu'on n'a toujours pas d'utilisateurs.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu instaures des rituels. Beaucoup de rituels. Stand-up quotidien (15 minutes prévues, 40 minutes réelles). Weekly all-hands (1 heure prévue, 1h45 réelle). Retro bi-mensuelle (2 heures, dont 1h30 de plaintes). 1-on-1 hebdomadaires avec chaque membre de l'équipe. Monthly « team building ».

Le premier team building est un escape game. Tu réserves le thème « Évasion de prison ». L'ironie d'une équipe de startup enfermée dans une pièce en essayant désespérément de s'échapper n'échappe à personne. Vous échouez en 58 minutes. La game master vous regarde avec pitié.

Chloé calcule un jour que l'équipe passe 12 heures par semaine en réunions et rituels. Sur 35 heures ouvrées, c'est 34% du temps. Mais au moins, la culture est solide.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le « work hard, play hard » dérive lentement vers le « work hard ». Puis vers le « work always ». Tu commences à envoyer des messages Slack à 23h. Pas des urgences — des « idées » que tu as sous la douche. « Et si on ajoutait un système de gamification ? 💡 » à 23h47 un mardi.

Maxime répond à 23h48. Théo à 23h52. Pas parce qu'ils sont enthousiastes — parce qu'ils ont peur de ne pas être vus comme « engagés ». Le présentéisme numérique s'installe. Le premier arrivé le matin poste « ☀️ » dans #general à 8h. Le dernier parti le soir poste « 🌙 » à 22h. C'est un concours silencieux de masochisme.

Le slide « We treat people like adults » du culture deck prend une teinte ironique quand tu refuses la demande de congé de Chloé parce que « c'est un moment critique pour la boîte ». Ça fait six mois que c'est un moment critique.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 7. Inès craque. Pas un craquage spectaculaire — un craquage silencieux. Elle arrive un lundi, dépose sa lettre de démission sur ton bureau (la table en bouleau danois), et dit : « J'ai adoré l'aventure mais je ne peux plus. Les horaires, la pression, l'ambiguïté permanente sur ce qu'on construit... Je n'ai pas signé pour ça. »

Tu es sincèrement choqué. « Mais on a le baby-foot. Et les Friday Beers. Et le ping-pong. » Elle sourit tristement. « Les avantages ne compensent pas l'absence de vision, de process, et de vie personnelle. » Tu n'as pas de réponse.

Le soir, tu rouvres le culture deck. Slide 1 : « Chez Konnekt, nous sommes une famille. » Tu ajoutes mentalement : « Et comme dans toute famille, les gens finissent par partir. »
EOF
)"

git checkout main

# === BRANCH: feature/legal-nightmare ===
git checkout -b feature/legal-nightmare $DIVERGE_PROTOTYPE

git commit --allow-empty -m "$(cat <<'EOF'
Tu reçois un mail de la CNIL. Objet : « Notification de contrôle — traitement de données à caractère personnel ». Tu lis le mail trois fois. La CNIL veut contrôler Konnekt. Toi. Ta startup de 12 utilisateurs. Celle dont la politique de confidentialité est un copier-coller de celle de Airbnb avec « Konnekt » en find-and-replace.

Tu appelles un avocat RGPD. 250 € de l'heure. Il te demande ton DPO. Tu n'en as pas. Il te demande ton registre de traitement. Tu n'en as pas. Il te demande si tu as fait une analyse d'impact. Tu ne sais pas ce que c'est. Il soupire — un soupir professionnel, calibré, facturé.

« Vous collectez des données de géolocalisation en temps réel, résume-t-il, sans consentement explicite, sans base légale documentée, sans durée de conservation définie, stockées sur un serveur AWS dont vous n'avez pas vérifié la localisation. » Tu acquiesces à chaque point comme un métronome de la honte.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le contrôle CNIL a lieu un mardi. Deux inspecteurs débarquent dans votre open space magnifique et vide. Ils sont polis, méthodiques, et terrifiants dans leur calme. L'un prend des notes. L'autre pose des questions.

« Pouvez-vous nous montrer le parcours de consentement de l'utilisateur ? » Tu montres l'app. L'écran d'inscription a un checkbox qui dit « J'accepte les CGU ». Les CGU font 14 000 mots copiés de Airbnb. Le mot « géolocalisation » n'apparaît nulle part. L'inspectrice note quelque chose.

« Et la donnée, elle est stockée où exactement ? » Maxime vérifie. AWS eu-west-1. Irlande. C'est bon — c'est en Europe. Puis il vérifie les backups. AWS us-east-1. Virginie. Transfert de données hors UE sans clause contractuelle type. L'inspectrice note encore quelque chose. Plus longuement cette fois.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le rapport de la CNIL arrive six semaines plus tard. Mise en demeure de se conformer sous 3 mois. Si ce n'est pas corrigé : amende administrative pouvant aller jusqu'à 4% du chiffre d'affaires. Ton chiffre d'affaires est de 0 €, donc 4% de 0 c'est 0. Mais l'amende plancher est de 10 000 €.

L'avocat te facture 6 000 € pour la mise en conformité : rédaction d'une vraie politique de confidentialité, registre de traitement, nomination d'un DPO (toi, par défaut), migration des backups en Europe, et implémentation d'un vrai parcours de consentement granulaire.

Le résultat : l'inscription qui prenait 2 taps en prend maintenant 7. Le taux de conversion, déjà microscopique, passe de 3% à 0.8%. La conformité légale et la croissance sont, tu le découvres, dans une relation inversement proportionnelle.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Deux mois plus tard, c'est un ancien utilisateur qui attaque. Pas pour les données — pour la marketplace. Il a commandé un service de « montage de meubles » via Konnekt. Le prestataire (un faux profil créé par Jordan le stagiaire) n'est jamais venu. L'utilisateur a porté plainte pour « pratiques commerciales trompeuses ».

Son avocat découvre que Konnekt n'a pas de CGV pour la marketplace, pas d'assurance responsabilité civile professionnelle, et que les « prestataires vérifiés » sur la plateforme ne sont vérifiés par rien ni personne. Le dossier est un festival de non-conformité.

Tu règles à l'amiable pour 3 500 €. C'est moins cher qu'un procès, mais c'est 3 500 € que tu n'as pas. Tu retires tous les faux profils de la plateforme. Il ne reste que 4 vrais prestataires. L'un d'eux vend des cours de didgeridoo.
EOF
)"

git checkout main

# === BRANCH: feature/marketing-yolo ===
git checkout -b feature/marketing-yolo $DIVERGE_PROTOTYPE

git commit --allow-empty -m "$(cat <<'EOF'
Tu décides que le problème est simple : personne ne connaît Konnekt. La solution est donc simple aussi : MARKETING MASSIF. Tu alloues 150 000 € — la moitié du runway restant — à une campagne « 360° omnicanale ». Tu ne sais pas ce que ça veut dire, mais l'agence de comm que tu as engagée pour 8 000 € par mois, elle, a l'air de savoir.

L'agence s'appelle « Disruption Factory ». Leur bureau est encore plus beau que le tien. Ils ont un mur de post-it qui fait toute la longueur de l'open space et un golden retriever qui s'appelle « MVP ». Tu aurais dû voir les red flags.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
La campagne commence. Phase 1 : « Awareness ». L'agence crée une vidéo de 90 secondes avec un drone, des plans de Paris en time-lapse, une voix off qui dit « Et si le futur de la connexion humaine était déjà là ? » et votre logo à la fin. Budget production : 18 000 €. C'est la plus belle publicité qu'aucun de vos 12 utilisateurs ne verra jamais.

Phase 2 : « Acquisition ». Campagne Facebook, Instagram, Google Ads, LinkedIn, TikTok, Snapchat, et Pinterest. Oui, Pinterest. « On ne sait jamais d'où viendra la croissance », dit le directeur de compte en ajustant ses lunettes sans correction.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Semaine 3 de la campagne. Les résultats arrivent. 2,3 millions d'impressions. 45 000 clics. 890 téléchargements. 34 inscriptions. 2 utilisateurs actifs après 7 jours. L'un d'eux est le community manager de l'agence qui a oublié de se déconnecter.

Le CPM est « excellent », selon l'agence. Le CPA est « en cours d'optimisation ». Le ROI est négatif de 147 000 €, mais ça, personne ne le formule comme ça. Chloé produit un dashboard Notion avec 47 métriques dont aucune n'est « nombre de gens qui utilisent vraiment l'app ».

Tu reçois un mail de l'agence : « Pour la phase 3, on recommande un partenariat influenceur. Budget estimé : 40 000 €. »
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu signes pour les influenceurs. L'agence contacte 15 micro-influenceurs lifestyle parisiens. Trois acceptent. Le premier poste une story Instagram avec l'app ouverte en arrière-plan, mal cadrée, pendant qu'il mange un açai bowl. Le deuxième écrit « Trop cool cette app @konnekt_app #ad #startup #innovation » sous une photo de coucher de soleil. Le troisième installe l'app en live sur TikTok et elle crash devant ses 78 000 followers.

Le crash devient viral. Pas l'app — le crash. Le TikTok fait 340 000 vues. Les commentaires sont créatifs : « On dirait ma vie amoureuse : ça crash au lancement 💀 ». Tu découvres que la mauvaise publicité n'est PAS de la publicité.

Coût total de la campagne influenceurs : 42 000 €. Nouveaux utilisateurs actifs : 0. Memes sur Twitter : 3.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu vérifies le compte. Il reste 87 000 €. Tu as brûlé 215 000 € en marketing en trois mois. Le nombre d'utilisateurs actifs est passé de 12 à 9, parce que trois de tes early adopters ont désinstallé l'app après avoir vu le TikTok du crash et perdu confiance.

L'agence envoie sa dernière facture avec un rapport de 80 pages intitulé « Bilan de campagne & perspectives stratégiques ». La conclusion : « Les résultats sont encourageants et posent les bases d'une croissance durable. Nous recommandons de poursuivre l'investissement marketing. » Tu admires leur audace.

Maxime ne dit rien. Il code. Il a ajouté un système de cache qui réduit le temps de réponse API de 200ms à 47ms. Personne ne le remarquera jamais.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
La trésorerie est à sec en deux mois au lieu de six. Tu n'as plus les moyens de pivoter, de recruter, ou même de garder le bureau. Le bail du Marais est un boulet de 4 500 € par mois et tu ne peux pas le casser avant 8 mois sans pénalité.

Tu publies un post LinkedIn intitulé « Ce que j'ai appris en brûlant 200K€ en marketing ». Il devient ton post le plus viral : 2 400 likes, 180 commentaires. Des gens que tu n'as jamais rencontrés te félicitent pour ta « transparence ». Un VC te contacte pour « prendre un café ». Il veut juste t'interviewer pour son podcast sur les échecs de startups.

Le néon HUSTLE ne s'allume plus du tout. C'est peut-être un fusible. Ou peut-être un signe.
EOF
)"

git checkout main

# ============================================================
# DIVERGENCE POINT 4: DIVERGE_MIPARCOURS (Mois 6)
# ============================================================

# === BRANCH: feature/pivot-blockchain ===
git checkout -b feature/pivot-blockchain $DIVERGE_MIPARCOURS

git commit --allow-empty -m "$(cat <<'EOF'
La marketplace ne marche pas. Mais tu as lu un article sur Medium qui dit que la blockchain va « révolutionner les interactions de proximité grâce à la confiance décentralisée ». C'est exactement ce que tu fais ! Enfin, c'est exactement les mots que tu as besoin d'entendre pour justifier un pivot.

Tu annonces à l'équipe : « Konnekt devient KonnektChain. On tokénise les services entre voisins. Chaque prestation crée un smart contract. La confiance est gérée par la blockchain, pas par des avis Google. » Maxime te regarde. « Tu sais ce que c'est, un smart contract ? » Non, mais tu as trouvé un template sur GitHub.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu recrutes un « Web3 developer » sur Discord. Il s'appelle Kévin — enfin, son pseudo est CryptoKev69 — et il habite à Bordeaux. Il travaille en remote, en pyjama, avec un avatar de singe BAYC qu'il a acheté 2 ETH (et qui en vaut maintenant 0.1).

Kévin déploie un smart contract sur Ethereum testnet en deux jours. Tu es impressionné. Puis tu découvres le coût du gas pour déployer sur le mainnet : 340 € par transaction. Pour une app qui connecte des gens pour du dog-sitting à 15 € de l'heure, l'économie est... défavorable.

Kévin suggère de migrer sur Polygon. Puis sur Solana. Puis sur une blockchain qu'il est « en train de créer lui-même ». Tu commences à avoir des doutes.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 8. KonnektChain a son propre token : le $KNKT. Vous avez créé 1 milliard de tokens. Maxime en possède 200 millions. Tu en possèdes 300 millions. Kévin s'en est attribué 100 millions « pour le dev ». Les 400 millions restants sont dans un wallet « de réserve pour le community building ».

Le token ne sert à rien. Littéralement. Il n'y a aucune utilité. Mais tu as créé un serveur Discord avec 47 channels, un whitepaper de 30 pages (écrit par ChatGPT en une après-midi), et un roadmap en phases : Phase 1 — Token Launch, Phase 2 — Community Building, Phase 3 — Mass Adoption, Phase 4 — ?????, Phase 5 — Profit.

Tu remarques que le Phase 4 est exactement le meme South Park des Underpants Gnomes. C'est involontaire. Ou peut-être pas.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu lances une « IDO » — Initial DEX Offering — pour vendre des tokens $KNKT au public. Objectif : lever 100 000 € en vendant 10% de la supply. Tu fais la promo sur Twitter avec des hashtags comme #KonnektChain #Web3 #FutureOfNeighborhood.

Résultat de l'IDO : 4 200 € récoltés. 38 acheteurs. L'un d'eux achète pour 3 800 € — c'est le père de Maxime qui essaie d'être supportif. Le cours du $KNKT s'effondre 48 heures après le listing : -97%. Les 38 acheteurs découvrent que tu ne peux pas payer ton plombier en $KNKT.

L'AMF (Autorité des Marchés Financiers) t'envoie un courrier recommandé. Tu ne savais pas qu'on ne pouvait pas vendre des tokens au public sans agrément. Kévin, lui, le savait. Il a déjà supprimé son Discord.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
L'avocat coûte 8 000 €. Il te regarde avec le même regard que l'expert-comptable quand tu lui as parlé de la crypto — un mélange de compassion professionnelle et de consternation personnelle.

« En résumé, dit-il, vous avez émis un actif financier non régulé, vendu au public sans prospectus, via une plateforme non agréée. » Tu acquiesces. « Et le whitepaper a été écrit par une intelligence artificielle. » Tu acquiesces plus lentement. « Et votre développeur blockchain a disparu. » Tu ne dis rien.

Il négocie une amende réduite : 15 000 €. Plus les frais d'avocat. Plus le remboursement des acheteurs. Total : 32 000 €. Tu paies avec l'argent de la BPI. Tu imagines la tête de ton interlocuteur BPI quand il lira le rapport d'utilisation des fonds.
EOF
)"

git checkout main

# === BRANCH: feature/pivot-ia ===
git checkout -b feature/pivot-ia $DIVERGE_MIPARCOURS

git commit --allow-empty -m "$(cat <<'EOF'
ChatGPT vient de sortir. Le monde entier en parle. Les investisseurs ne veulent financer que des startups IA. Tu n'as pas d'IA, mais tu as un clavier et une capacité remarquable à réécrire ton pitch deck en 24 heures.

Konnekt devient « Konnekt AI — Le premier assistant IA de voisinage ». L'idée : un chatbot qui met en relation les voisins en comprenant leurs besoins grâce au « natural language processing ». En pratique, c'est un wrapper autour de l'API OpenAI avec un prompt système qui dit « Tu es un assistant de quartier sympa ».

Coût de développement : 2 heures et 47 lignes de code. Tu factures ça comme « 6 mois de R&D en intelligence artificielle » dans le nouveau pitch deck.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le pivot IA fonctionne — du moins pour lever de l'argent. Tu arrives enfin à décrocher un deuxième rendez-vous avec un VC. Il est enthousiaste. « L'IA appliquée au local, c'est un marché énorme ! » Il ne te demande pas de démo. Il ne demande jamais de démo. Il demande juste le deck et tes « métriques de traction ».

Problème : tu n'as pas de métriques. Chloé improvise un dashboard qui montre « 15 000 conversations IA traitées ». En réalité, ce sont les conversations de test entre toi, Maxime, et le chatbot, pendant trois semaines intensives où vous lui posiez des questions absurdes pour trouver ses limites. La limite, c'est quand Maxime lui a demandé de l'aider à retrouver son chat perdu et que le bot a suggéré de « tokeniser l'ADN du chat sur la blockchain ». C'était un résidu du pivot précédent.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 9. La facture OpenAI arrive. 4 800 € pour le premier mois. Tu avais estimé 500 €. Maxime avait laissé le mode GPT-4 activé par défaut — y compris pour le chatbot de test interne — et Chloé avait branché le bot sur le compte Twitter de Konnekt où il répondait automatiquement à chaque mention.

Le bot a eu une conversation publique de 47 tweets avec un compte parodique de Nicolas Sarkozy. L'échange a été screenshoté et posté sur Reddit r/france. 3 400 upvotes. Le thread est intitulé « Une startup française a créé un bot qui débat politique avec un faux Sarkozy ». Les commentaires sont partagés entre « c'est du génie marketing » et « c'est un accident juridique ambulant ».

Tu désactives le bot Twitter. Mais le screenshot vit pour toujours.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le VC rappelle. Il a vu le thread Reddit. « C'est viral, c'est génial, votre IA génère du contenu organique ! » Il veut investir 200K en Série Seed extension. Tu n'oses pas lui dire que c'était un accident.

Tu prends l'argent. Tu signes les papiers. Le VC prend 15% de la boîte et un siège au board. Son premier feedback : « Il faut accélérer sur l'IA conversationnelle. Les gens adorent parler au bot. Pivotez full IA. Abandonnez le local. »

Tu viens de pivoter vers le local il y a six mois. Tu viens de pivoter vers l'IA il y a deux mois. On te demande de pivoter encore. Tu réalises que ta startup n'est pas un produit — c'est une toupie.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 11. Konnekt AI est maintenant un chatbot généraliste qui n'a plus rien à voir avec le voisinage, les services locaux, ou quoi que ce soit de ton pitch original à la BPI. C'est un wrapper OpenAI avec un habillage UX sympa. Comme 4 700 autres startups lancées cette année.

La BPI t'envoie un mail de suivi : « Pouvez-vous nous transmettre un rapport d'avancement sur le projet financé ? » Le projet financé, c'était « réinventer l'expérience sociale locale ». Pas « faire un ChatGPT local avec des memes Sarkozy ». Tu passes un week-end à rédiger un rapport de 20 pages qui relie vaguement les deux concepts avec des phrases comme « synergie entre intelligence artificielle et tissu social local ».

La BPI ne répond pas. Tu ne sais pas si c'est bon signe ou très mauvais signe.
EOF
)"

git checkout main

# === BRANCH: feature/stagiaire-sauveur ===
git checkout -b feature/stagiaire-sauveur $DIVERGE_MIPARCOURS

git commit --allow-empty -m "$(cat <<'EOF'
Jordan, le stagiaire à 600 €/mois, lève la main pendant un brainstorm. « Et si, au lieu de pivoter le produit... on écoutait les utilisateurs ? » Le silence est gênant. Pas parce que c'est une mauvaise idée — parce que c'est la première fois en 7 mois que quelqu'un propose de parler aux utilisateurs.

Tu réalises avec horreur que personne dans l'équipe n'a jamais eu une conversation avec un vrai utilisateur. Pas un early adopter recruté sur Twitter, pas un ami d'ami — un vrai inconnu qui a téléchargé l'app et essayé de l'utiliser.

Jordan appelle les 12 utilisateurs actifs. 8 décrochent. La conclusion est unanime : « L'idée est cool mais l'app crash, c'est lent, et on comprend pas l'interface. » C'est pas le concept qui est mauvais — c'est l'exécution.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Jordan prend les choses en main. Il a appris React Native en autodidacte (sur le temps de stage, mais tu ne le lui reprocheras jamais). En deux semaines, il construit un prototype qui fait 10% de ce que l'app actuelle fait, mais qui marche. Pas de micro-services, pas de Kubernetes, pas de MongoDB ET PostgreSQL. Un backend Firebase, un frontend React Native, 2 000 lignes de code.

L'app est moche. Les boutons sont mal alignés. La typo est Comic Sans (par défaut, il ne savait pas changer). Mais elle ne crash pas. Le GPS ne vide pas la batterie. Et quand tu cherches un voisin, la recherche renvoie des résultats. Enfin, elle renverrait des résultats s'il y avait des voisins inscrits.

Maxime regarde le code de Jordan et dit : « C'est pas propre. Mais ça marche. Et ça m'a pris 6 mois pour produire quelque chose qui ne marche pas. » C'est le moment le plus lucide de sa carrière de CTO.
EOF
)"

# DIVERGE_JORDAN: Jordan's prototype — le choix entre abandonner ou repartir dessus
DIVERGE_JORDAN=$(git rev-parse HEAD)

git commit --allow-empty -m "$(cat <<'EOF'
Tu prends une décision courageuse : abandonner les 6 mois de développement de Maxime et repartir du prototype de Jordan. C'est humiliant pour Maxime. C'est glorifiant pour un stagiaire à 600 €. C'est la bonne décision.

Sauf que Jordan termine son stage dans 3 semaines. Et il a reçu une offre de CDI chez Alan — 48 000 € brut, mutuelle premium, MacBook Pro. Tu lui proposes de rester chez Konnekt : 1 800 € net + 2% d'equity. Il fait le calcul en silence.

« C'est super gentil, dit-il. Mais 2% de rien, c'est rien. » Il part chez Alan le lundi suivant. Son prototype reste. La documentation n'existe pas. Le mot de passe Firebase est dans un fichier `.env` qui n'a jamais été commité. Jordan l'avait en mémoire. Jordan est parti.

Tu passes trois jours à retrouver le mot de passe. Tu le trouves dans un message Slack qu'il a envoyé à lui-même. Le message juste au-dessus dit : « Note pour moi : mettre ça dans un gestionnaire de mots de passe ». Il ne l'avait pas fait.
EOF
)"

git checkout main

# === BRANCH: fix/miracle-improbable (diverges from feature/stagiaire-sauveur) ===
git checkout -b fix/miracle-improbable $DIVERGE_JORDAN

git commit --allow-empty -m "$(cat <<'EOF'
Tu reprends le prototype de Jordan. Tu apprends React Native. Pas sur YouTube — sur la documentation officielle, comme un adulte fonctionnel. Deux semaines de galère pure. Mais à la fin, tu comprends le code. Tu corriges les bugs. Tu remplaces le Comic Sans par du Inter. L'app ressemble à quelque chose.

Tu la publies sur le Play Store (pas l'App Store, c'est 99 $/an et tu n'as plus les moyens de gaspiller). Tu ne fais aucun marketing. Tu postes un seul message sur un forum de quartier de ton arrondissement : « J'ai fait une app pour se rendre des services entre voisins. C'est gratuit. »

47 téléchargements la première semaine. Dans ton quartier. De vrais gens. Qui l'utilisent. Quelqu'un prête une perceuse. Quelqu'un d'autre propose de garder un chat. L'app ne crash pas.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 13. L'app a 340 utilisateurs actifs dans le 11ème arrondissement. Le bouche-à-oreille fonctionne. Tu n'as dépensé 0 € en marketing. Les gens recommandent l'app à leurs voisins parce que — surprise — elle résout un vrai problème pour de vrais gens.

Le burn rate est de 800 €/mois : 500 € de Firebase, 200 € de Play Store et domaine, 100 € de divers. Tu finances ça avec des missions freelance le mardi et le jeudi. Les lundis, mercredis et vendredis sont pour Konnekt. C'est pas glamour, c'est pas scalable, c'est pas ce qu'on lit dans TechCrunch. Mais ça marche.

Un journaliste du Parisien découvre l'app en cherchant quelqu'un pour arroser ses plantes pendant les vacances. Il écrit un article de 400 mots dans la section « Vie quotidienne ». Ce n'est pas une couverture Forbes. C'est mieux — c'est le journal que tes utilisateurs lisent vraiment.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 18. Konnekt a 4 200 utilisateurs actifs à Paris. Toujours pas de revenu. Mais un modèle commence à émerger : les prestataires les plus actifs demandent un profil « pro » avec de la visibilité améliorée. Tu crées un abonnement à 4,99 €/mois. 38 personnes s'abonnent le premier mois. 189 € de MRR.

C'est ridicule. C'est dérisoire. C'est le premier euro que Konnekt génère en 18 mois d'existence. Tu l'encadres mentalement. Quelque part dans un univers parallèle, la version de toi qui a brûlé 200K en marketing et 44K en crypto regarde ce chiffre avec envie.

Tu penses à Jordan. Tu lui envoies un mail : « Ton prototype est devenu un produit. 4 200 utilisateurs. Merci. » Il répond : « Haha trop bien ! Mon mot de passe Firebase c'était "jordan123", au cas où. »

C'était pas le bon mot de passe. Mais l'intention était là.
EOF
)"

git checkout main

# === BRANCH: hotfix/burnout ===
git checkout -b hotfix/burnout $DIVERGE_MIPARCOURS

git commit --allow-empty -m "$(cat <<'EOF'
Mois 7. Tu ne dors plus. Enfin, tu dors — 4 heures par nuit, entre 3h et 7h, un sommeil haché de rêves où des graphiques de burn rate te poursuivent dans des couloirs de coworking. Tu te réveilles fatigué. Tu bois 6 cafés par jour. La Jura E8 te connaît mieux que ton médecin.

Tu as perdu 7 kilos depuis le lancement. Pas par régime — par oubli. Tu oublies de manger. Tu oublies de rappeler ta mère. Tu oublies ton code PIN. Tu n'oublies jamais le solde du compte Qonto : il est tatoué dans ton cerveau, mis à jour en temps réel.

Tes amis t'envoient des messages : « Ça va ? On te voit plus. » Tu réponds « À fond, on scale 🚀 ». C'est le mensonge le plus efficace du monde startup : personne ne vérifie.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 8. La crise de panique arrive un mercredi à 15h, pendant un appel avec un prospect. Tu es en train d'expliquer la « value proposition unique de Konnekt » quand soudain ton cœur s'emballe, tes mains tremblent, et ta vision se rétrécit comme un iris de caméra qui se ferme.

Tu coupes le micro. Tu t'accroupis sous le bureau en bouleau scandinave à 1 200 € et tu respires dans tes mains. L'attaque dure 12 minutes. Ça te paraît 12 heures. Quand c'est fini, tu rouvres le laptop. Le prospect a raccroché. Tu lui envoies un mail : « Désolé, problème de connexion ».

Le soir, tu Googles « crise de panique symptômes ». Tu coches toutes les cases. Tu fermes le navigateur. Tu ne prends pas rendez-vous chez un médecin. Tu as trop de travail.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 9. C'est Maxime qui intervient. Il te trouve endormi sur le canapé de l'open space à 8h du matin — tu n'es pas rentré chez toi depuis deux jours. « Mec, tu ressembles à un personnage de The Walking Dead. » Tu essaies de rire. Le rire se transforme en quelque chose d'autre.

Il te force à prendre rendez-vous chez un médecin. Le diagnostic est sans appel : burn-out sévère. Arrêt de travail de 3 semaines minimum. Tu protestes : « Je suis CEO, je peux pas m'arrêter. » Le médecin te regarde : « Votre corps vient de vous dire qu'il s'arrêtera sans votre permission si vous ne le faites pas volontairement. »

Tu prends l'arrêt. Trois semaines loin de l'open space, loin de Slack, loin du compte Qonto. Tu redécouvres que la lumière du jour existe en dehors des néons du bureau. C'est perturbant.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu reviens au bout de trois semaines. L'open space est exactement comme tu l'as laissé. Rien n'a changé. Personne n'a rien cassé, personne n'a rien construit. La startup a tourné en idle pendant trois semaines et... rien ne s'est passé.

C'est la révélation la plus douloureuse : ton absence n'a rien changé parce que ta présence ne changeait rien non plus. Tu travaillais 80 heures par semaine pour produire le même résultat que 0 heures par semaine : rien.

Tu t'assieds devant le baby-foot. Tu regardes les petits joueurs figés sur leurs tiges. Ils ne bougent pas. Ils ne servent à rien. Mais ils sont là, dans un bureau magnifique, avec un éclairage parfait. C'est toi. Tu es le baby-foot.
EOF
)"

git checkout main

# === BRANCH: hotfix/cofondateur-clash ===
git checkout -b hotfix/cofondateur-clash $DIVERGE_MIPARCOURS

git commit --allow-empty -m "$(cat <<'EOF'
Le pivot est le déclencheur. Maxime ne veut pas pivoter. Il a passé six mois à construire une architecture micro-services pour un réseau social hyperlocal, et maintenant tu veux tout jeter pour faire une marketplace. « Tu changes d'avis toutes les six semaines, lâche-t-il pendant un stand-up. On est une startup, pas un kaléidoscope. »

Le silence dans l'open space est nucléaire. Chloé fixe son écran. Jordan le stagiaire fait semblant de coder. Le baby-foot n'a jamais été aussi silencieux.

Tu réponds calmement : « C'est un pivot stratégique basé sur les données. » Maxime : « Quelles données ? On a 12 utilisateurs, dont ta mère. » C'est techniquement vrai, et c'est ce qui fait le plus mal.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Les jours suivants, la communication passe de « tendue » à « juridique ». Maxime envoie un mail formel avec en objet « Désaccord stratégique — demande de réunion du board ». Le board, c'est ta mère, ton ancien prof d'éco, et le business angel à 5 000 €.

La réunion a lieu dans le salon de ta mère, un dimanche après-midi. Elle a préparé des madeleines. Le business angel participe par téléphone, il est au ski. Ton ancien prof d'éco n'est pas venu mais a envoyé un mail de 4 pages sur la théorie des jeux appliquée aux conflits de cofondateurs.

Maxime présente son cas : « Le CEO prend des décisions unilatérales sans consulter le CTO. » Tu présentes le tien : « Le CTO refuse d'exécuter la stratégie de l'entreprise. » Ta mère propose qu'on se fasse un câlin.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le conflit s'envenime. Maxime découvre que le pacte d'associés, rédigé sur un modèle trouvé sur Google, contient une clause de « bad leaver » qui, si l'un des cofondateurs part, lui fait perdre toutes ses parts non vestées. Comme le vesting est sur 4 ans et qu'on est au mois 8, Maxime perdrait 80% de ses parts s'il claque la porte.

Il consulte un avocat. L'avocat lui dit que la clause est abusive et probablement non-exécutable, mais que la contester prendra 18 mois et coûtera 15 000 €. Maxime te regarde différemment maintenant. Plus comme un ami qui a fait une connerie, mais comme un adversaire dans un jeu dont il ne connaissait pas les règles.

Slack devient un champ de mines. Chaque message est pesé, relu, screenshoté. L'ambiance « startup fun » a laissé place à un bureau d'avocats non-dit.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
La guerre froide dure deux mois. Maxime fait le strict minimum. Il code, mais uniquement les tâches qu'il a lui-même définies. Il ne participe plus aux brainstorms. Il arrive à 9h, part à 18h, et ne répond plus sur Slack après le bureau.

Toi, tu prends toutes les décisions seul. C'est plus rapide, mais c'est aussi plus dangereux. Sans le filtre technique de Maxime, tu dis oui à tout : un partenariat avec une app de livraison de sushis, une intégration avec un chatbot de bien-être, un feature request d'un utilisateur qui veut pouvoir vendre ses poules sur la plateforme.

Un mardi, Maxime te retrouve devant la machine à café. « J'ai trouvé un poste chez Doctolib. Je pars dans un mois. » Le ton est neutre, factuel, définitif. Comme un `git revert` sur votre amitié.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Maxime part. Il exerce sa clause de « good leaver » — son avocat a trouvé une faille — et conserve 60% de ses parts. Tu es seul. Le CTO est parti et a emporté avec lui la seule personne qui comprenait l'architecture technique.

Tu postes sur LinkedIn : « Après 10 mois de collaboration intense, mon cofondateur et moi prenons des chemins différents. Nos visions ont évolué. C'est ça aussi, l'entrepreneuriat : savoir quand les routes divergent. 🙏 » 234 likes. 18 « Force à vous ». 1 commentaire de Maxime : un simple emoji pouce.

Le repo GitHub a maintenant un seul contributeur. Le code que Maxime a écrit est cryptique, sous-documenté, et vital. C'est comme hériter d'une maison dont tu n'as pas les plans et dont le plombier est parti en emportant les clés.
EOF
)"

git checkout main

# ============================================================
# DIVERGENCE POINT 5: DIVERGE_MUR (Mois 9)
# ============================================================

# === BRANCH: feature/fuite-bali ===
git checkout -b feature/fuite-bali $DIVERGE_MUR

git commit --allow-empty -m "$(cat <<'EOF'
Tu ouvres Instagram. Ton feed est rempli de « digital nomads » qui travaillent depuis des plages indonésiennes avec des cocktails et des sunsets. Ils ont l'air heureux. Ils ont l'air bronzés. Ils n'ont pas l'air de gens qui ont brûlé 500 000 € d'argent public sur une app que personne n'utilise.

L'idée germe. Tu pourrais fermer la boîte, prendre tes dernières économies personnelles, et aller « travailler depuis Bali ». Tu rebaptiserais ça « sabbatique entrepreneuriale ». Sur LinkedIn, ça donnerait : « Taking a step back to reconnect with my purpose. Canggu 🌴 ».

Le billet Paris-Denpasar est à 487 € en aller simple. L'aller simple est un détail qui devrait te faire réfléchir.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu atterris à Bali avec un laptop, trois t-shirts, et un syndrome de l'imposteur chronique. Le co-working à Canggu coûte 150 €/mois — le prix d'une demi-journée dans ton ancien open space du Marais. La connection WiFi est meilleure. La vue aussi.

Tu t'installes entre un Australien qui vend des formations Shopify et une Américaine qui fait du « manifestation coaching ». Tu ouvres ton laptop. Tu fixes l'écran. Tu n'as plus de startup, plus d'équipe, plus de produit. Mais tu as un compte Instagram à alimenter.

Tu postes ta première photo : laptop ouvert devant une rizière, café filtre artisanal, légende « Building in paradise 🚀 ». 89 likes. Personne ne demande ce que tu construis. C'est le deal implicite du digital nomad : on ne pose pas de questions.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Semaine 4 à Bali. Tu as trouvé ton créneau : « coach en échec entrepreneurial ». Tu crées un cours en ligne sur Teachable — « Fail Forward : Les 7 leçons de mon crash de startup à 500K ». Le cours coûte 197 €. Tu utilises ta propre histoire comme étude de cas. C'est la première fois que brûler de l'argent rapporte de l'argent.

4 personnes achètent le cours le premier mois. 788 € de chiffre d'affaires. C'est plus que ce que Konnekt a jamais généré en revenue. L'ironie est si épaisse que tu pourrais la tartiner sur du pain de seigle.

Tu vis à Bali avec 800 €/mois. Tu manges des nasi goreng à 2 €. Tu surfes le matin. Tu « travailles » l'après-midi (c'est-à-dire tu réponds à des commentaires Instagram). Tu n'as plus de trésorerie, plus de burn rate, plus de KPIs. Tu as un hamac et une connexion WiFi.

La BPI n'a jamais reçu le rapport d'avancement. Tu as changé de numéro de téléphone.
EOF
)"

git checkout main

# === BRANCH: feature/levee-serie-a ===
git checkout -b feature/levee-serie-a $DIVERGE_MUR

git commit --allow-empty -m "$(cat <<'EOF'
Il reste 95 000 €. La solution : lever plus. Tu entres dans le monde merveilleux du fundraising français, un univers parallèle où les mots n'ont plus le même sens. « Intéressant » veut dire non. « On reste en contact » veut dire jamais. « Envoyez-moi votre deck » veut dire je vais le lire en diagonale dans un taxi.

Tu prépares un nouveau deck de 52 slides. Le slide « Métriques » montre un graphique de croissance qui monte en exponentielle. Si tu regardes l'axe des ordonnées, tu remarques qu'il commence à 0 et finit à 47 — c'est le nombre de téléchargements. Mais sur grand écran, ça ressemble à une fusée.

Tu envoies 150 mails à des VCs. 20 répondent. 8 prennent rendez-vous. Tu achètes un blazer chez Zara.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Meeting 1 — Partech. Le partner te pose des questions pendant 45 minutes. « Quel est votre MRR ? » Zéro, mais tu dis « on est en pré-revenue ». « Votre CAC ? » 2 916 €, mais tu dis « on optimise ». « Votre LTV ? » Tu ne sais pas ce que ça veut dire, mais tu dis « on travaille dessus ». Verdict : « Intéressant. Revenez quand vous aurez de la traction. »

Meeting 2 — Kima Ventures. Plus court. 20 minutes. « C'est cool mais on a déjà un truc similaire dans le portfolio. » Tu vérifies : leur « truc similaire » est une app de livraison de fleurs. Le lien avec ton app de services entre voisins est ténu. Mais un non est un non.

Meeting 3 — Un « family office » qui te reçoit dans un appartement haussmannien du 8ème. Le patriarche, 72 ans, te demande : « C'est quoi, un token ? » La réunion dure 2 heures. Il ne comprend rien mais il est charmant. Il ne met pas d'argent.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Meeting 8 — le dernier. Un micro-VC de 5M qui fait du « pre-seed deep tech ». Le partner a 27 ans et un hoodie Patagonia. Il comprend tout, pose les bonnes questions, et à la fin dit : « Votre produit est intéressant mais votre équipe m'inquiète. Vous êtes seul — le CTO est parti, la growth est partie. J'investis dans des équipes, pas dans des produits. »

C'est le feedback le plus honnête que tu aies reçu en 12 mois. Et c'est celui qui fait le plus mal. Parce qu'il a raison. Tu as un produit que personne n'utilise, construit par des gens qui sont tous partis, financé par de l'argent qui s'évapore.

Tu rentres chez toi. Tu ranges le blazer Zara. Tu ne le remettras pas.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
La levée a échoué. Zéro euro levé. Mais le processus t'a coûté 2 mois de temps plein — 2 mois pendant lesquels personne ne travaillait sur le produit, les 23 utilisateurs sont passés à 11, et le serveur AWS a continué à facturer 2 300 € par mois pour héberger une app que personne n'utilise.

Le runway est maintenant à 6 semaines. Tu reçois un mail de la BPI : « Rappel : le rapport d'avancement annuel est attendu pour le 15 du mois prochain. » Tu dois expliquer comment tu as utilisé 500 000 € d'argent public. Tu ouvres un Google Doc vide et tu le fixes pendant 45 minutes.

L'open space de 120m² est très silencieux quand tu es seul. Le baby-foot ne fait aucun bruit quand personne ne joue.
EOF
)"

git checkout main

# === BRANCH: fix/pivot-consulting ===
git checkout -b fix/pivot-consulting $DIVERGE_MUR

git commit --allow-empty -m "$(cat <<'EOF'
L'idée te vient à 2h du matin, comme toutes les idées désespérées. Et si Konnekt devenait... une ESN ? Une boîte de consulting. Tu as des développeurs (enfin, tu avais des développeurs), tu connais la tech, et les ESN facturent 600-900 €/jour pour des profils que tu pourrais trouver.

Tu rebaptises l'entreprise « Konnekt Digital Solutions ». Tu crées un site vitrine en une nuit sur Webflow. Services : « Développement web et mobile, consulting IA, transformation digitale ». Tu ajoutes des logos de clients. Tu n'as pas de clients, mais les logos de technologies (React, Go, AWS) remplissent bien l'espace.

Le lendemain, tu envoies des mails à toutes les ESN de Paris en te présentant comme « freelance senior fullstack ». Toi, qui n'as pas codé une ligne depuis la fac.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Miracle : un contrat tombe. Une boîte de e-commerce a besoin d'un dev React pour 3 mois. 550 €/jour. Tu acceptes et tu te retrouves dans un open space à Levallois, assis entre deux consultants Accenture, à coder un formulaire de commande.

C'est un retour à la réalité brutal. Tu es devenu ce que tu voulais disrupter. Un consultant qui facture à la journée, qui fait des daily scrums à 9h15, et qui travaille sur le backlog JIRA de quelqu'un d'autre. Le rêve de la startup a été remplacé par une réalité de TJM et de timesheets.

Konnekt la startup est morte. Konnekt l'ESN survit. Le bilan est : 500 000 € de financement public transformés en un freelance React à Levallois. C'est peut-être le pivot le plus honnête de l'histoire de la French Tech.
EOF
)"

git checkout main

# === BRANCH: fix/retour-salariat ===
git checkout -b fix/retour-salariat $DIVERGE_MUR

git commit --allow-empty -m "$(cat <<'EOF'
Tu ouvres LinkedIn. Tu changes ton titre de « CEO & Co-founder @ Konnekt 🚀 » à « En recherche d'opportunités ». C'est le changement de statut le plus douloureux depuis « En couple » à « Célibataire » sur Facebook en 2012.

Tu postules à des postes de Product Manager. Ton CV est un exercice de fiction créative : « CEO d'une startup à impact social (exit en cours) ». L'exit en cours, c'est la dissolution de la boîte. Mais « dissolution » n'est pas un mot qu'on met sur un CV.

Trois entretiens la première semaine. Le premier : « C'est quoi votre plus grand échec ? » Tu as l'embarras du choix. Le deuxième : « Pourquoi quitter l'entrepreneuriat ? » Parce que l'entrepreneuriat t'a quitté en premier. Le troisième : « Combien d'ARR aviez-vous ? » Tu évites la question avec l'agilité d'un CEO qui a pivoté 4 fois.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu décroches un poste de Product Manager chez une scale-up de la PropTech. 58 000 € brut. Bureau à Bastille. Tickets resto. Mutuelle Alan — la même que Jordan le stagiaire. Tu te demandes si tu vas le croiser à la machine à café cosmique de l'ironie.

Premier jour. On te donne un backlog JIRA avec 247 tickets. Un PM senior t'explique le process : « Sprint de 2 semaines, retro le vendredi, roadmap trimestrielle validée par le CPO. » Tu hoches la tête. Tu connais tous ces mots. Tu ne les as jamais appliqués correctement, mais tu les connais.

Le soir, tu rentres chez toi à 18h30. Tu n'as pas regardé le compte Qonto une seule fois. Tu n'as pas reçu de message Slack à 23h. Tu as mangé à midi. À une table. Avec des couverts. C'est étrangement... agréable.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 2 du salariat. Tu es étonnamment bon dans ton job. Toutes les erreurs que tu as faites comme CEO — ignorer les utilisateurs, over-engineerer, brûler le cash, négliger le légal — t'ont donné une intuition rare pour repérer les mauvaises décisions. Tu es devenu un détecteur de bêtises humain.

Quand un collègue propose de « pivoter vers la blockchain », tu lèves un sourcil. Quand le CMO veut dépenser 100K en influenceurs, tu envoies discretement un lien vers un calcul de CAC. Quand le CTO veut réécrire le backend en micro-services, tu toussotes poliment.

Tu ne racontes jamais pourquoi tu sais ces choses. Ton passé de CEO catastrophique est devenu ton super-pouvoir secret. Les 500 000 € de la BPI n'ont pas été gaspillés — ils ont financé la formation la plus chère et la plus efficace de l'histoire de la French Tech.

Le néon HUSTLE est toujours dans ton salon. La lettre H ne marche toujours pas. Mais maintenant, ça te fait sourire.
EOF
)"

git checkout main

# === BRANCH: hotfix/acqui-hire ===
git checkout -b hotfix/acqui-hire $DIVERGE_MUR

git commit --allow-empty -m "$(cat <<'EOF'
Un mail inattendu. Un directeur tech chez LeBonGroupe (un conglomérat de services en ligne) a entendu parler de Konnekt. Pas du produit — du crash TikTok. Il veut te rencontrer pour « discuter synergies ».

Tu vas au meeting en pensant vendre la boîte. Il t'annonce la couleur en 5 minutes : « On n'est pas intéressé par le produit. On est intéressé par vous. Votre expérience, votre résilience, votre capacité à pivoter. On appelle ça un acqui-hire. On rachète la structure pour l'équipe, pas pour la tech. »

Tu ne lui dis pas que « l'équipe » c'est juste toi dans un open space vide. Tu souris et tu hoches la tête.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
La négociation dure trois semaines. LeBonGroupe propose de racheter Konnekt pour 1 € symbolique, de reprendre les dettes (il n'y en a pas, techniquement), et de t'embaucher comme « Head of Innovation » à 72 000 € brut. C'est un bon salaire. C'est un bon titre. C'est une mort douce pour ta startup.

Tu signes. La dissolution de Konnekt prend 6 semaines et coûte 4 000 € en frais notariaux et comptables. Tu rends les clés du bureau du Marais. Le propriétaire reprend le baby-foot — il était dans l'inventaire du bail. Le néon HUSTLE, tu le gardes. Il ne marche toujours pas.

Premier jour chez LeBonGroupe. On te donne un badge, un MacBook Pro, et un bureau individuel. Il y a une machine à café Nespresso — pas une Jura E8, mais elle fonctionne. Ton manager te dit : « Bienvenue. On a un stand-up à 9h15. »

Tu es redevenu salarié. Le cercle est complet.
EOF
)"

git checkout main

echo "=== DONE ==="
