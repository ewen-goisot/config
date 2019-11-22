# config
fichiers de configuration

Les commandes de la plupart des logiciels que j'utilise souvent ont été remapées car je n'utilise pas un clavier Qwerty (ce qui est facile à faire en Qwerty ne l'est pas forcément sur d'autres claviers).

En règle générale:

-J'essaye de me baser autant que possible sur les positions des lettres, et non sur des mnémotechniques basés sur les lettres, afin de permettre de pouvoir facilement transformer ma configuration en une configuration pour une quelconque autre disposition des touches.

-Les touches TSMN (équivalent de "Qwerty_fdes" sur la main droite: index, majeur, majeur_haut, annulaire) me servent pour les petits déplacements.

-Les touches CLFR (équivalent de "Qwerty_rwqa" sur la main droite: index_haut, annulaire_haut, auriculaire_haut, auriculaire) me servent pour les autres déplacements, soit plus grands (exemple: descendre d'une page au lieu de descendre d'une ligne), soit plus complexes (exemples: zoom, prochaine/précédente occurence d'un caractère avec "Vim_," et "Vim_;").

-Les touches DV (équivalent de "Qwerty_cv" sur la main droite: index_bas, majeur_bas) servent généralement à chercher un mot ou une regex (D est l'équivalent de "Vim_/" et V est l'équivalent de "Vim_n").

-Les touches restantes de la ligne du bas JW (parfois DVJW s'il n'existe pas de fonction de recherche, par exemple sur "I3wm") servent à d'autres déplacements (par exemple par mots) ou à modifier l'affichage (écran splitté, fulscreen, etc.).

-Les touches P'UY (équivalent de "Qwerty_rty" sur la main gauche: majeur_haut, index_haut, index, index_haut_étiré) servent respectivement à copier, couper, couper_remplacer, coller, notamment sur Vim. Cela permet d'avoir 2/4 touches semblables à celles de Vim, tout en les ayant toutes côte à côte, si cela a du sens dans le logiciel en question.
S'il existe des marques mais pas de copier/coller, 'Y peuvent être utilisées respectivement pour "aller_à" et pour "enregistrer" une marque.
S'il n'y a pas de fonction de texte, AIPU servent à déplacer une fenêtre dans les 4 directions de base (notamment sur "Tmux" et "I3wm").

-Les touches OAIU (équivalent de "Qwerty_asdf" pour la main gauche) ont une fonction semblable à celle dans "Vim" (dans les logiciels pour lesquels cela a du sens) et le "U" remplace le "C" dans "Vim". Pour les autres logiciels où ça a un sens, ces lettres auront des fonctions proches de celles de "Vim".

Quelques lignes spéciales:

-"noremap m jzz" et "noremap s kzz" permettent d'être constamment à la ligne du milieu de l'écran (exceptions si on est vers la fin ou le début du fichier) notamment dans "Vim", pour pouvoir scroller et se déplacer simultanément (les flèches "↑" et "↓" ont toujours un fonctionnement normal sans le "zz", en cas de nécessité).

-un mappage récursif dans "Vim" permets de n'avoir à faire "ctrl-o" (que j'utilise au lieu de "ctrl-w" pour les actions concernant les fenêtres dans ce logiciel) qu'une seule fois lorsque l'on redimentionne les fenêtres. Équivalent du "bind -r" de "Tmux".

-dans "lf", la commande "q" permet de quitter, puis dans le shell, d'aller (avec "cd") au dernier dossier visité par "lf". En cas de nécessité, "Q" se comporte comme la commande par défaut "lf_q".

-dans le shell "Zsh", les lettres accentuées auxquelles je peux accéder facilement sur mon clavier: "é" et "è", permettent d'éditer des fichiers de configurations usuels, de réécrire une partie de la ligne précédante, ou d'écrire des fragments usuels de code tels que "| grep".
