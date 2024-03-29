set iskeyword+=',-
"négociation?
"actuel?
"espérance (proba)???
"global: avançant, l'œil, d'œil


" TODO 'heure' est rare, 'pas' est fréquent
" TODO 'sur' est plus fréquent que 'sans'
" TODO "git" est le nom d'un logiciel, donc gxt->gît, pas git->gxt
" TODO check compat between {French accents} and English
" époque vs équipe (le premier semble plus fréquent)
" oeil -> d'oeil et l'oeil
" rez-de-chaussée??(?)
" effaçant?? pour "global"
" trouvé??
" négligeable(?)
" fixe??(?)
" épisode?
" uniforme??
" s:sur, ss: sans, sr: sûr, sous: sous (b ms fqt q sur)
" avançant?
" produit?
" qu'un+++ qu'une++
" initialement?
" valable?
" concept+ centre?
" d'à (peu près) global ?? apperçu
" particulier?
" d'abord?
" exceptionnel: rare mais long x écrire
" 'pas' est un mot fréquent, 'jour' et un doublon
" 'par' est plus fréquent que 'autant', de loin
" yatil : y a-t-il
" TODO 'par' sur 'j' ou 'h', 'près' sur 'pr'++
" TODO aw autant
" commun+
" parmi?
" dm : demain vs domaine
" autour?(?)
" redondant?? affichage??
" soi-même global
" l'ile -> circonflexe, d'entre (d'er)
"
" TODO déclinaisons comme : préférABLE, INcertain, quantitéS
" m'é : m'est ou m'être, s'é : s'être ou s'est
" effet->efficace?
" efc->en fonction ++
" commençant?
" non plus+++ (npl)
" individu??

" Évite les collisions avec les expressions mathématiques.
" utile en LaTeX
let b:Etusina_one_letter_active=0

function! Etusina_one_letter()
	if b:Etusina_one_letter_active
		iuna b
		iuna c
		iuna d
		iuna e
		iuna f
		iuna g
		iuna h
		iuna i
		iuna j
		iuna k
		iuna l
		iuna m
		iuna n
		iuna o
		iuna p
		iuna q
		iuna r
		iuna s
		iuna t
		iuna u
		iuna v
		iuna w
		iuna x
		iuna z

		iuna B
		iuna C
		iuna D
		iuna E
		iuna F
		iuna G
		iuna H
		iuna J
		iuna K
		iuna L
		iuna M
		iuna N
		iuna O
		iuna P
		iuna Q
		iuna R
		iuna S
		iuna T
		iuna U
		iuna V
		iuna W
		iuna X
		iuna Z
		iuna X'
	else
		iab b bien
		iab c comme
		iab d des
		iab e avec
		iab f fait
		iab g j'ai
		iab h pas
		iab i aussi
		iab j jour
		iab k mais
		iab l les
		iab m même
		iab n nous
		iab o ô
		iab p pour
		iab q que
		iab r rien
		iab s sans
		iab t tout
		iab u une
		iab v vous
		iab w aucun
		iab x à
		iab z dont

		iab B Bien
		iab C Comme
		iab D Des
		iab E Avec
		iab F Fait
		iab G J'ai
		iab H Pas
		"iab I Aussi
		iab J Jour
		iab K Mais
		iab L Les
		iab M Même
		iab N Nous
		iab O Ô
		iab P Pour
		iab Q Que
		iab R Rien
		iab S Sans
		iab T Tout
		iab U Une
		iab V Vous
		iab W Aucun
		iab X À
		iab Z Dont
		iab X' Avoir
	endif
	let b:Etusina_one_letter_active = 1 - b:Etusina_one_letter_active
	return ""
endfunction

call Etusina_one_letter()
inoremap <buffer> <silent> <expr><c-^> Etusina_one_letter()
inoremap <buffer> <c-\> <c-v><Space>

iab è autant
iab é être
iab cé c'est
iab sé s'est
iab pé peut-être
" potentiel(lement)
iab d'é d'être
iab l'é l'être
"TODO néh n'est pas?
iab x' avoir

"TODO iab … …………………… bug on nvim

" TODO : msg: message?
" TODO dh dl dm de la syntaxe .not = incompatibles
" TODO dépendant++, retard, avance, alternative, remplacé, séparation, intuition
" structure++, tradition, transition, entraînement, vitesse (rapidité), emprunt
" manière écart meilleur jéo:j'étais plutôt
" meilleur+/pire
" fort → force, forcément
" TODO partout
" cqa ce qu'a
" immédiat?
" déplacement+
" accents auto: gêné? tâche avec accent néanmoins/pourtant+ embêter?
" accents auto: hôte (c'est plus fréquent que Daïmio ou des trucs du genre)
" porte-fenêtre??
" couleur+
" augmenter, diminuer, puissant+ (verbe?)
" origine
" global: avancant hôte(s) menacant
" ci-dessus, ci-dessous "est-ce qu'il" ou autres formes de ce genre
" alq = alors que (td est trop différent)
" cad c'est-à-dire++
" cependant++ (cpd?)
" ainsi?
" todo: je n'ai pas / je ne vais pas + conjugués
" TODO extrêmités n'existe pas
" (MAYBE commençant ?)
" TODO au lieu++
"
" FOO = è:avoir? aw:autant ay:ailleurs d'ay:d'ailleurs h:pas hr:heure s:sur
" ss:sans sr:sûr vr:vrai vi:∅  vrm:vraiment ∅ ?:hier pa:part vm:∅  ?:arrière
" di:difficile df:différent ∅ :verbe
"
" DONE intervertir 'difficile' et 'différent car il y a beaucoup de 'i' dans
" le premier
" ce qu'il, ce qu'elle, ce qu'on
" qu'avec??
" suivant VS souvent : sv VS zv
" qu'autre?
" d'erreur(s)
" x peu près ?
" TODO près
" WARNING: les 'io' ds les URL


" forçais n'empêch(e|ais)

iab l'aa l'abréviation
iab d'aa d'abréviation
iab d'aas d'abréviations
iab aa abréviation
iab aas abréviations
iab aaé abrégé
iab aaée abrégée
iab aaés abrégés
iab aaées abrégées
iab aae abrège

iab ab ambigu
iab abe ambiguë
""anti bloquage système
iab abs ambigus
iab abes ambiguës
iab abé ambiguïté
iab abés ambiguïtés

iab l'ac l'ancien
iab ac ancien
iab acs anciens
iab acn ancienne
iab acns anciennes

iab l'ad l'adresse
iab d'ad d'adresse
iab ad adresse
iab ads adresses
iab adé adressé
iab adée adressée
iab adés adressés
iab adées adressées
iab adg adressage

iab ae assez
iab pae pas assez

iab af afin

iab ag argument
"cfl accent âgé
iab argé argumenté
iab argée argumentée
iab argés argumentés
iab argées argumentées
iab arge argumente
iab ags arguments

" d'aujourd'hui
iab aj aujourd'hui

iab ak à confirmer
iab aké confirmé
iab akés confirmés
iab akée confirmée
iab akées confirmées
iab ako confirmation
iab akos confirmations

iab al alors
iab alq alors que
"permet tandis
"iab alq alors que
"eal et alors

iab l'am l'animal
iab d'am d'animal
iab am animal
iab ams animaux
"cfl accent âme
iab ame animale
iab ames animales

iab ao attention
iab aos attentions
iab aoé attentionné
iab aoée attentionnée
iab aoés attentionnés
iab aoées attentionnées
iab aof attentif
iab aofe attentive
iab aofs attentifs
iab aofes attentives
iab fao fait attention

" lendemain?
iab d'ap d'après
iab ap après
iab eap et après
iab apm après-midi
iab apdm après-demain

iab l'aq l'attaque
iab aq attaque
iab aqé attaqué
iab aqée attaquée
iab aqés attaqués
iab aqées attaquées
iab aqn attaquant
iab aqns attaquants
iab aqne attaquante
iab aqnes attaquantes
iab aqr attaquer

iab d'ar d'autre
iab d'ars d'autres
iab l'ar l'autre
iab d'ars d'autres
iab ar autre
iab ars autres
"TODO: change it pq cfl anglais bras
iab atrm autrement

iab av avant
iab avhe avant-hier
iab d'av d'avant
"qav qu'avant+

iab aw au revoir

iab ax axiome
iab axs axiomes
iab axq axiomatique
iab axqs axiomatiques
"iab d'ax d'axiome
"iab d'axs d'axiomes
"iab l'ax l'axiome

"ou 'ailleurs'
iab ay arrière

"bof?
iab aè année
"d'aè l'aè+
"aès années++

iab ba bas
iab bae basse
iab baes basses
iab eba en bas

iab bb bibliothèque
iab bbs bibliothèques

iab bc boucle
iab bcs boucles
iab bcé bouclé
iab bcée bouclée
iab bcés bouclés
iab bcées bouclées
iab bcr boucler

iab bg blague
iab bgs blagues

iab bh bonheur
iab bhl heureux
iab bhe heureuse
iab bhes heureuses
iab bhm heureusement

iab bi bilan
"pluriel rare, cfl bis

iab bj bonjour

iab bk bijection
iab bks bijections
iab bkf bijectif
iab bkfe bijective
iab bkfs bijectifs
iab bkfes bijectives

"blagué: conflit avec blé
iab bl balise
iab bls balises
iab blsé balisé
iab blée balisée
iab blés balisés
iab blsées balisées
iab blr baliser

iab bm binôme
iab bms binômes
iab bml binomial
iab bme binomiale
iab bmls binomiaux
iab bmes binomiales

iab bn besoin
iab bns besoins

iab bo bord
iab bos bords
iab bor bordure
iab bors bordures
iab boé bordé
iab boée bordée
iab boés bordés
iab boées bordées
iab dbo déborde
iab dboé débordé
iab dboée débordée
iab dboés débordés
iab dboées débordées

iab bp beaucoup
iab pbp pas beaucoup

iab br bref
iab bre brève
iab brs brefs
iab bres brèves
iab ebr en bref

iab bs bien sûr

iab bt bientôt
iab tbt très bientôt

iab bv bienvenue
"masculin? pluriel?

iab bw double
iab bws doubles
iab bwé doublé
iab bwée doublée
iab bwés doublés
iab bwées doublées
iab ebw en double
iab bwm doublement

iab bx beau
iab bxe belle
iab bxs beaux
iab bxes belles
iab bxé beauté


"plus fréquent que bizarre
iab bz bizarre
"iab bzs étranges
"iab bzé étrangeté
"iab bzr étranger
"iab bzrs étrangers
"iab bzre étrangère
"iab bzres étrangères

iab bè bénéfice
iab bès bénéfices
iab bèr bénéficiaire
iab bèrs bénéficiaires

iab ca ça

iab cb combien

"cfl copie conforme
iab cc conclusion
iab ccs conclusions
iab ccr conclure
iab ccl conclu
iab cce conclue
iab ccls conclus
iab cces conclues

"cfl centigramme
iab cg catégorie
iab cgs catégories
iab cgq catégorique
iab cgqs catégoriques
"catégoriquement?

iab ch chose
iab chs choses

iab cj chaud
iab cje chaude
iab cjs chauds
iab cjes chaudes
iab cjl chaleur

iab ck conséquence
iab cks conséquences
iab pck par conséquent

"cfl centilitre
iab cl celui
iab cle celle
iab cls ceux
iab cles celles

"cfl centimètre
iab cm comment
iab cmr commentaire
iab cmer commenter
iab cmé commenté
iab cmée commentée
iab cmés commentés
iab cmées commentées

iab cn certain
iab cne certaine
iab cns certains
iab cnes certaines
iab cnd certitude
iab cnds certitudes
iab cnm certainement

" TODO compliqué
iab co complexe
"cos cfl cosinus
iab coxs complexes
iab coé complexité

iab cp coup
iab cps coups

iab cq ce que
iab cqi ce qui
"ce qu'il(s)+, ce qu'elle(s)+, ce qu'on

iab cr contre
"cfl 'B$'
iab crs contres
iab crr contraire
"TODO contrairement

iab cs cause
"css cfl prog
iab cses causes
iab csé causé
iab csée causée
iab csés causés
iab csées causées
iab csr causer
"csl causal?

iab ct constant
iab cte constante
iab cts constants
iab ctes constantes

iab cu court
"cfl anglais "cue" = "signal"
"iab cue courte
iab cus courts
"iab cues courtes
"radical différent
iab pcu parcours

iab cw cinq

iab cx choix

iab cy cycle
iab cys cycles
iab cyq cyclique
iab cyqs cycliques
iab cyé cyclicité

iab cz chez

iab cè cette
"ces ne gagne pa de tp

iab da déjà
iab dav déjà-vu

iab db début
iab dbs débuts
iab dbn débutant
iab dbne débutante
iab dbns débutants
iab dbnes débutantes

iab dc d'accord

iab dd dedans
"peu employé?
iab edd en dedans

iab df différent
iab dfe différente
iab dfc différence
iab dfcs différences
iab dfs différents
"dis cfl i vb dire
"dies cfl anglais
iab dfes différentes

iab dg dommage
"slm le nom?
iab dgs dommages
" danger(eux)+

iab dh dehors
iab edh en dehors

iab di difficile
iab difs difficiles
iab dift difficulté
iab difts difficultés
iab dim difficilement

iab dk direct
iab dks directs
iab dkm directement
iab dko direction
iab dkos directions
"dkol directionnel
"directeur?
"dirigé?

iab dl développement
iab dlé développé
iab dlée développée
iab dlés développés
iab dlées développées
iab dlm développement

iab dm demain
iab xdm à demain

iab dn donc

iab dp depuis
iab dpq depuis que

iab dq dès que

iab dr derrière

iab ds dans

iab dt détail
iab dts détails
iab dté détaillé
iab dtée détaillée
iab dtés détaillés
iab dtées détaillées
iab dte détaille
iab dtr détailler

iab dv devant

iab dw deux

iab dx dû

iab dy distance
iab dys distances

iab dz droite
iab dzs droites

iab dè déficit
"dès cfl
iab dèfs déficits
iab dèfr déficitaire
iab dèfrs déficitaires

iab ea et alors

iab l'eb l'ensemble
iab d'eb d'ensemble
iab eb ensemble
iab ebs ensembles
iab ebt ensembliste
iab ebts ensemblistes

iab ec encore

iab l'ed l'endroit
iab d'ed d'endroit
iab ed endroit
iab eds endroits

iab ee existence
iab d'ee d'existence
iab l'ee l'existence
iab iee il existe
iab inee il n'existe
iab ipee il n'existe pas
iab nee inexistence
iab eer exister
iab een existant
iab eet existe-t-il

iab l'ef l'effet
iab d'ef d'effet
iab ef effet
iab efs effets
iab sef sans effet
iab eef en effet
iab efm effectivement

iab eg égal
iab egm également
iab egé égalité
iab egés égalités
iab ege égale
iab egs égaux
iab eges égales
iab ieg inégal
iab iegm inégalement
iab iegé inégalité
iab iegés inégalités
iab iege inégale
iab iegs inégaux
iab ieges inégales

" suite?
iab ei ensuite

iab l'ej l'enjeu
iab d'ej d'enjeu
iab ej enjeu
iab ejs enjeux

iab ek en tout cas
iab enk en aucun cas

iab el elle
iab els elles
"d'el d'elle++

"TODO époque, exemple isof exemple événement???
iab l'em l'événement
iab em événement
iab ems évènements

iab eo selon

iab l'ep l'exemple
iab d'ep d'exemple
iab ep exemple
"sport collège: iu
iab eps exemples
iab epr exemplaire
iab eprs exemplaires
"pep cfl? anglais
iab pep par exemple

iab eq est-ce que

"d'entre+
iab er entre
iab eré entré
iab erée entrée
iab erés entrés
iab erées entrées

iab ew entier
"ewe cfl anglais brebis
iab ewte entière
iab ews entiers
iab ewtes entières
iab ewm entièrement

iab l'ey l'essai
iab ey essai
"iab j'eye j'essaye
iab eys essais
iab eyé essayé
iab eyés essayés
iab eyée essayée
iab eyées essayées

iab j'ez j'hésite
iab ez hésite
iab ezé hésité
"iab ezée hésitée
"iab ezés hésités
"iab ezées hésitées
iab ezo hésitation
iab ezos hésitations
iab ezr hésiter

iab eè extrême
iab eès extrêmes
iab eèé extrémité
iab eèés extrémités
iab eèm extrêmement

iab fb faible
iab fbs faibles
iab fbc faiblesse
iab fbcs faiblesses
iab fbm faiblement

iab fc fonction
iab fcs fonctions
iab fcj fonctionne
iab fcr fonctionner
iab fcm fonctionnement
iab fcl fonctionnel
iab fce fonctionnelle
iab fcls fonctionnels
iab fces fonctionnelles

iab fd fond

iab fe femme
iab fes femmes
"fen cfl anglais marais
iab femn féminin

iab ff façon
iab ffs façons
iab tff de toute façon

iab fg figure
iab fgs figures
iab fgé figuré
iab fgée figurée
iab fgés figurés
iab fgées figurées
iab fgr figurer

iab fh fichier
iab fhs fichiers
iab ffh dossier
iab ffhs dossiers

iab fj froid
iab fje froide
iab fjs froids
iab fjes froides
iab fjr froideur

iab fk facultatif
iab fke facultative
iab fks facultatifs
iab fkes facultatives

iab fl facile
iab fls faciles
iab flm facilement
iab flé facilité

" fmt = format+
" fm = famille : plus fq q forme? qd dit-on 'forme'?
iab fm forme
iab fml formel
iab fmé formé
iab fmée formée
iab fmés formés
iab fmées formées
iab fmo formation
iab fmos formations

iab fn fin
iab fni fini
iab fnl final
iab fne finale
iab fnls finaux
iab fnes finales
"le plus ul des fn*
iab fnm finalement

iab fo fort
"foc cfl
iab fote forte
iab fos forts
iab fotes fortes
iab fom fortement
"iab foc force ???
iab focm forcément
"foe cfl anglais ennemi
iab fp frappe
iab fps frappes
iab fpé frappé
iab fpée frappée
iab fpés frappés
iab fpées frappées
iab ffp faute de frappe

iab fq fréquent
iab fqe fréquente
iab fqs fréquents
iab fqes fréquentes
iab fqm fréquemment
iab fqc fréquence

iab fr fermé
iab fre fermée
iab frs fermés
iab fres fermées
iab frr fermer
iab frur fermeture
iab frurs fermetures
iab frm fermement

iab fs fois

iab ft il faut
"TODO il fallait

iab fu futur
"fus cfl
"furs cfl anglais fourrures
"iab furs futurs
iab fue future
iab fues futures

iab fv préféré
iab fve préférée
iab fvs préférés
iab fves préférées
iab fvr préférer
iab fvj préfère
iab fvc préférence
iab fvcs préférences

iab fw premier
iab fwe première
iab fws premiers
iab fwes premières
iab fwm premièrement

iab fx faux
iab fxe fausse
iab fxes fausses
iab fxm faussement

iab fy foyer
iab fys foyers

iab fz français
iab fze française
iab fzes françaises

iab fè fenêtre
iab fès fenêtres

iab ga général
iab gae générale
"gas cfl anglais gaz
iab gals généraux
iab gaes générales
"annulé tpm, pk?
iab gam généralement
iab gaé généralité
iab gaés généralités
iab gao généralisation
iab gaos généralisations
iab ega en général
" généraliser

iab gb global
iab gbe globale
iab gbs globaux
iab gbes globales
iab gbm globalement
iab gbé globalité

iab gc j'essaye
"TODO conjuguer

iab gd grand
iab gde grande
iab gds grands
iab gdes grandes
iab gdr grandeur
"initiales++
"grandement?
iab odg ordre de grandeur
iab odgs ordres de grandeur

iab ge gens

iab gf j'ai fait
iab ngf je n'ai fait
iab pgf je n'ai pas fait

iab gg Google

iab gh graphe
iab ghs graphes

iab gl GNU/Linux

iab gn genre
iab gns genres

iab gp groupe
iab gpr grouper
"gps cfl
iab grps groupes
iab gpé groupé
iab gpée groupée
iab gpés groupés
iab gpées groupées
iab gpm groupement
iab rgp regroupe
iab rgrps regroupes
iab rgpé regroupé
iab rgpée regroupée
iab rgpés regroupés
iab rgpées regroupées
iab rgpm regroupement
iab rgpr regrouper

iab gq graphique
iab gqs graphiques
iab gqm graphiquement

iab gr grade
"gré cfl
"grdé peu ul
iab grs grades
iab grl graduel
iab grm graduellement

iab gs geste
iab gss gestes

iab gt garantie
iab gts garanties
iab gtl garanti
iab gtls garantis

iab gu gratuit
iab gue gratuite
iab gus gratuits
iab gues gratuites
"gum cfl anglais
iab gutm gratuitement
"légal?

iab gv gouvernement
iab gvé gouverné
iab gvée gouvernée
iab gvés gouvernés
iab gvées gouvernées
iab gvr gouverner
iab gve gouverne

iab gw milliard
iab gws milliards

iab gz gauche
iab gzs gauches

iab gè génération
iab gès générations

iab hb habitude
"l'hb++, d'hb++
iab hbs habitudes
iab hbl habituel
iab hbe habituelle
iab hbls habituels
iab hbes habituelles
iab hbm habituellement

iab hc chacun
"TODO chacune

" TODO change + fréquent que échange ?
iab l'hg l'échange
iab d'hg d'échange
iab hg échange
iab hgs échanges
iab hgé échangé
iab hgée échangée
iab hgés échangés
iab hgées échangées
"changés? peu de lettres gagnées
iab hgm changement
iab hgms changements

iab hh cherché
iab hhr chercher
iab hhs cherchés
iab hhj cherche
iab hhe cherchée
iab hhes cherchées
iab rhh recherché
iab rhhr rechercher
iab rhhs recherchés
iab rhhj recherche
iab rhhjs recherches
iab rhhe recherchée
iab rhhes recherchées

iab hj hasard
iab phj par hasard

iab hk hors

iab l'hl l'échelle
iab d'hl d'échelle
iab hl échelle
iab hls échelles

iab l'hm l'homme
iab d'hm d'homme
iab hm homme
iab hms hommes
iab hmn masculin

iab l'hn l'humain
iab hn humain
iab hne humaine
iab hnes humaines
iab hns humains
iab hné humanité
iab hnr humanitaire
iab hnrs humanitaires
iab hnm humainement

iab ho histoire
iab hos histoires
iab hoq historique
iab hoqs historiques
iab hom historiquement
"TODO l'ho++ d'ho d'hos

iab hp hyper

iab hq chaque
"iab hqs chaques

iab hr hier
iab hrs heures
iab hrr horaire
iab hrrs horaires

iab ht haut
iab hte haute
iab hts hauts
iab htes hautes
iab htr hauteur
iab htm hautement

iab hu huit

iab hv terminé
iab hvs terminés
iab hvo terminaison
iab hvos terminaisons

iab l'hy l'hypothèse
iab hy hypothèse
iab hys hypothèses
iab hyq hypothétique
iab hyqs hypothétiques
iab hym hypothétiquement

iab hè sphère
iab hès sphères
iab hèq sphérique
iab hèqs sphériques

iab ib immobile
iab ibs immobiles

iab ic incertain
"ice cfl anglais glace
iab icte incertaine
iab ics incertains
iab ices incertaines
iab icd incertitude
iab icds incertitudes

iab l'id l'idée
iab id idée
iab ids idées
iab idl idéal
"idle cfl anglais ↻ au ralenti
"iab idle idéale
iab idls idéaux
"iab idles idéales
iab idm idéalement

"1=maybe
iab l'ig l'image
iab ig image
iab igs images
iab igé imagé
iab igée imagée
iab igés imagés
iab igées imagées

"§=todo remove pq rdd
iab ih imaginaire
iab ihs imaginaires
iab iho imagination
iab ihé imaginé
iab ihée imaginée
iab ihés imaginés
iab ihées imaginées

iab ii infini
iab iis infinis
iab iie infinie
iab iies infinies
iab iim infiniment
iab iié infinité

iab ij injustifié
iab ijs injustifiés
iab ijb injustifiable
iab ijbs injustifiables
"TODO injuste++

iab ik injection
iab iks injections
iab ikl injectif
iab ike injective
iab ikls injectifs
iab ikes injectives

iab im important
iab ime importante
iab ims importants
iab imes importantes
iab imc importance
iab simc sans importance
iab pim peu importe

iab io information
iab ios informations
iab ioq informatique
iab d'ioq d'informatique
iab l'ioq l'informatique
iab ioé informé
iab ioés informés
iab ioée informée
iab ioées informées
iab ioe informe
iab ioer informer

iab iq identique
iab iqs identiques
iab iqm identiquement
"cf maths
iab iqé identité
iab iqés identités
iab iqf identifié
iab iqfe identifiée
iab iqfs identifiés
iab iqfes identifiées

iab iu inutile
iab ius inutiles
iab iué inutilité
iab ium inutilement

iab iv inverse
iab ivs inverses
iab ivé inversé
iab ivée inversée
iab ivés inversés
iab ivées inversées
iab ivm inversement
iab ivo inversion
iab ivos inversions

iab iw moitié
iab iws moitiés

iab ix dix

iab iy interdit
iab iye interdite
iab iys interdits
iab iyes interdites
iab iyo interdiction
iab iyos interdictions
"peu utile en fait

iab iz indice
iab izs indices
iab izo indication
iab izos indications
iab izl indicatif
iab ize indicative
iab izls indicatifs
iab izes indicatives

iab iè intérêt
iab iès intérêts
iab siè sans intérêt
iab ièl intéressant
iab ièe intéressante
iab ièls intéressants
iab ièes intéressantes
iab l'iè l'intérêt
" TODO l'ajouter dans v_global +++

iab ja jusqu'à
iab jau jusqu'au
iab jax jusqu'aux
"jusqu'... ici?

iab jd jardin
iab jds jardins

iab jf justifié
iab jfe justifiée
iab jfs justifiés
iab jfes justifiées
iab jfo justification
iab jfos justifications
iab jfb justifiable
iab jfbs justifiables

iab jg jugement
iab jgs jugements
"jugé pè iu

iab jk joker
iab jks jokers

iab jl je l'ai
iab njl je ne l'ai pas

iab jm jamais

iab jn je ne

iab jp je ne vais pas

iab jr jour
iab jrs jours
iab jré journée
iab jrés journées

iab jt juste
iab jts justes
"cfl sito
iab jtm justement

iab ju jeune
"cfl jus
iab juns jeunes
iab jues jeunesse

iab jv je vais

"bof
"jx jeux directement
" TODO : mettre ça partout
iab jx jeux
"iab jxs jeux
iab jxb jouable
iab jxbs jouables
"iab jxé joué
"iab jxr jouer

iab jy joyeux
iab jye joyeuse
iab jyes joyeuses
iab jym joyeusement

iab ka capitale
iab kas capitales
iab kal capital
iab kals capitaux

iab kb courbe
iab kbs courbes
iab kbé courbé
iab kbée courbée
iab kbées courbées
iab kbr courbure
iab kbrs courbures

iab kc cassé
iab kcs cassés
iab kce cassée
iab kces cassées
"ar mots: gain fb

iab kd cadeau
iab kds cadeaux

iab kf conforme
iab kfs conformes
iab kfé conformité
iab kfm conformément
iab kfi conformisme

iab kh caché
iab khe cachée
iab khs cachés
iab khes cachées
iab khe cache

iab ki copie
iab kis copies
iab kié copié
iab kiée copiée
iab kiés copiés
iab kiées copiées
"cfl kir
iab kier copier

iab kk correct
iab kke correcte
iab kks corrects
iab kkes correctes
iab kkm correctement
iab kko correction
iab kkos corrections
iab kké corrigé
iab kkée corrigée
iab kkés corrigés
iab kkées corrigées
iab kkl corrige
iab kkr corriger

iab kl classe
iab kls classes
iab klé classé
iab klée classée
iab klés classés
iab klées classées
iab klr classer
iab klu classeur
iab klus classeurs
iab klm classement
iab klms classements
iab klq classique
iab klqs classiques
iab klqm classiquement

iab kn connu
iab kne connue
iab kns connus
iab knes connues
iab knc connaissance
iab kncs connaissances
iab ikn inconnu
iab ikne inconnue
iab ikns inconnus
iab iknes inconnues

"compte+++++ bien plus fréquent que 'complet'
"ou au lieu de 'coup'
iab kp complet
iab kpe complète
iab kps complets
iab kpes complètes
iab kpr compléter
iab kpm complètement
iab kpo complétion
"èn this
iab akpo auto-complétion
"maths, hors liste
iab kpd complétude
iab kpé complété
iab kpée complétée
iab kpés complétés
iab kpées complétées
iab ikp incomplet
iab ikpe incomplète
iab ikps incomplets
iab ikpes incomplètes
iab ikpm incomplètement
iab ikpd incomplétude

iab kq caractéristiques

iab kr clair
iab kre claire
iab krs clairs
iab kres claires
iab kré clarté
iab krés clartés
iab krm clairement

iab ks explosion
iab kss explosions
iab ksl explosif
iab kse explosive
iab ksls explosifs
iab kses explosives
iab ksr exploser
iab ksj explose

iab kt contrainte
iab ktl contraint
iab kts contraintes
iab ktls contraints

iab ku courant
iab kue courante
iab kus courants
iab kues courantes
iab kum couramment

iab kv clavier
iab kvs claviers

iab kw mille
iab kws milles
iab kwr millier
iab kwrs milliers

iab kx connexion
iab kxs connexions
iab kxé connecté
iab kxée connectée
iab kxés connectés
iab kxées connectées
iab kxr connecteur
iab kxrs connecteurs

iab kè côté
iab kès côtés
iab akè à côté
iab kèa côte à côte

iab lb label
iab lbl label

iab lc local
iab lcs locaux
iab lce locale
iab lces locales
iab lcm localement
iab lcé localité
iab lcée localisée
iab lcés localisés
iab lcées localisées
iab lcr localiser
iab lce localise
iab lco localisation
iab lcos localisations
iab lcoé localisé
iab lcoée localisée
iab lcoés localisés
iab lcoées localisées

iab ld liquide
iab lds liquides
iab ldd liquidité
iab ldds liquidités
iab ldf liquéfié
iab ldfe liquéfiée
iab ldfs liquéfiés
iab ldfes liquéfiées
iab ldfo liquéfaction
iab ldfos liquéfactions

iab lg long
iab lge longue
iab lgs longs
iab lges longues
iab lgr longueur
iab lgm longuement
" langage? ++ ++(+)

iab lh large
iab lhs larges
iab lgr largeur
iab lgrs largeurs
iab lgm largement

iab li libre
"cfl lis
iab libs libres
"cfl lié
iab libé libéré
iab libée libérée
iab libés libérés
iab libées libérées
iab lité liberté
iab libo libération

iab ll logiciel
iab lls logiciels
iab llb logiciel libre

iab lm limite
iab lms limites
iab alm à la limite
iab lmé limité
iab lmée limitée
iab lmés limités
iab lmées limitées
iab lmo limitation
iab lmos limitations

iab lo logique
iab los logiques
iab lom logiquement

iab lp longtemps

iab lq lorsque

iab lr leur
iab lrs leurs

iab ls liste
iab lss listes
iab lsé listé
iab lsée listée
iab lsés listés
iab lsées listées

iab lt lent
"cfl? lemme LTE
iab lte lente
iab lts lents
iab ltes lentes
iab ltm lentement
iab ltr lenteur

iab lv niveau
iab lvs niveaux

iab lw dernier
iab lwe dernière
iab lws derniers
iab lwes dernières
iab lwm dernièrement

iab ly labyrinthe
"cfl lys
iab lbys labyrinthes

iab lz loisir
iab lzs loisirs

iab lè lumière
iab lès lumières
iab lèl lumineux
iab lèe lumineuse
"iab lèls lumineux
iab lèes lumineuses

iab mb mobile
iab mbs mobiles

iab mc machine
iab mcs machines
iab mcl machinal
iab mce machinale
iab mcls machinaux
iab mces machinales
iab mcm machinalement

iab md monde
iab mds mondes
iab mdl mondial
iab mde mondiale
iab mdls mondiaux
iab mdes mondiales
iab mdm mondialement

iab mf modifié
iab mfe modifiée
iab mfs modifiés
iab mfes modifiées
iab mfj modifie
iab mfr modifier
iab mfo modification
iab mfos modifications
iab mfb modifiable
iab mfbs modifiables
"++

iab mg malgré

iab mh malheur
iab mhl malheureux
iab mhe malheureuse
iab mhes malheureuses
iab mhm malheureusement

iab mj majorité
iab mjs majorités
iab mjr majoritaire
iab mjrs majoritaires
iab mjm majoritairement

iab mk masque
iab mks masques
iab mké masqué
iab mkée masquée
iab mkés masqués
iab mkées masquées

iab ml milieu
iab mls milieux

iab mm moment
iab mms moments
iab mmé momentané
iab mmée momentanée
iab mmés momentanés
iab mmées momentanées

"bof?
iab mn mon

iab mq montrer que
"(qu'il existe…)
iab mqi montrer qu'il

iab mr merci
iab mrb merci beaucoup

iab ms moins
iab msg message
iab msgs messages

iab mt maintenant

iab mv mouvement
iab mvs mouvements
iab mvé mouvementé
iab mvée mouvementée
iab mvés mouvementés
iab mvées mouvementées

iab mw million
iab mws millions

iab ux mieux

"my cfl anglais mon
"iab my moyen
"iab mye moyenne+++
"iab mys moyens
"iab myes moyennes
"iab mym moyennement

iab mz maison
iab mzs maisons

" modèle, manière
iab mè mètre
iab mès mètres
iab mèq métrique
iab mèqs métriques
iab cmè centimètre
iab mmè millimètre
iab kmè kilomètre

iab na normal
iab nae normale
iab nas normaux
iab naes normales
iab nam normalement

iab nc nécessaire
iab ncs nécessaires
iab ncm nécessairement
iab ncé nécessité
iab ncés nécessités

iab nd nœud
iab nds nœuds

iab nf neuf
iab nfe neuve
iab nfs neufs
iab nfes neuves

iab ng je n'ai

iab nh n'importe

iab nj énergie
iab njs énergies
iab njq énergique
iab njqs énergiques
iab njqm énergiquement

iab nk n'importe quoi

iab nl naturel
iab nle naturelle
iab nls naturels
iab nles naturelles
iab nlm naturellement

iab nm néanmoins

iab nn non

iab nq tant que

iab nr nature
iab nrs natures

iab ns non seulement

iab nt notre

iab nv nouveau
"TODO: nouvel nvl
iab nve nouvelle
iab nvs nouveaux
iab nves nouvelles
iab nvé nouveauté
iab nvés nouveautés
iab nvm nouvellement

iab nw numéro
iab nws numéros

iab nx tant mieux

iab ny noyau
iab nys noyaux

iab nz tant pis

iab nè négatif
iab nèe négative
iab nès négatifs
iab nèes négatives
iab nèm négativement

iab oa organisation
iab d'oa d'organisation
"l'oa?
iab oas organisations
iab oae organise
iab oaé organisé
iab oaée organisée
iab oaés organisés
iab oaées organisées
iab oar organiser
iab oam organisme

iab ob observation
iab obs observation
iab obé observé
iab obée observée
iab obés observés
iab obées observées
iab obe observe
iab ober observer

iab od ordre
iab ods ordres
iab odé ordonné
iab odée ordonnée
iab odés ordonnés
iab odées ordonnées

iab oe œuvre
iab oes œuvre

"TODO cfl english
"iab of officiel
"iab ofe officielle
"iab ofs officiels
"iab ofes officielles
"iab ofm officiellement

iab og organe
iab ogs organes
iab ogq organique
iab ogqs organiques
"cfl OGM
iab ogqm organiquement

iab oi ordinateur
"cfl ois
"TODO l'ordi / d'ordi l'oi+
iab ordis ordinateurs

iab oj objet
iab l'oj l'objet
iab d'oj d'objet
iab d'ojs d'objets
iab ojs objets
iab ojl objectif
iab oje objective
iab ojls objectifs
iab ojes objectives
iab ojo objection
iab ojos objections
iab ojm objectivement
iab ojé objectivité
iab ojés objectivités

iab ol oral
iab ole orale
iab ols oraux
iab oles orales
iab olm oralement

iab om nombre
"cfl organisation mondiale (de la) santé
iab oms nombres
iab omq numérique
iab omqs numériques
iab omm numériquement
iab omo numération
"TODO nombreux++++++, nombreuses+

iab oo option
iab oos options
iab ool optionnel
iab ooe optionnelle
iab ools optionnels
iab ooes optionnelles
"iab oom optionnellement

iab op opinion
iab ops opinions

iab oq optique
iab oqs optiques

iab ot optimal
iab ote optimale
iab ots optimaux
iab otes optimales
iab oté optimisé
iab otée optimisée
iab otés optimisés
iab otées optimisées
iab oto optimisation
iab otos optimisations

iab ov ouvert
"cfl ove
iab ovte ouverte
iab ovs ouverts
iab ovtes ouvertes
iab ovm ouvertement
iab ovr ouverture
iab ovrs ouvertures
iab ovr ouvrir
iab ovj ouvre

iab ow obstacle
iab ows obstacles

iab oy oui

iab oz possible
iab ozs possibles
iab ozé possibilité
iab ozés possibilités
iab ioz impossible
iab iozs impossibles
iab iozé impossibilité
iab iozés impossibilités

iab oè positif
iab oèe positive
iab oès positifs
iab oèes positives
iab oèm positivement

iab pa pas
iab pae partiel
iab paee partielle
iab paes partiels
iab paees partielles
iab paem partiellement

iab pb problème
iab pbs problèmes
iab pbq problématique
iab pbqs problématiques
" TODO more about probable
" probabilité
"idée: pm=problème, pb=proba, plms=plus ou moins
iab pbl probable
iab pbls probables
iab pbm probablement

iab pd pendant

iab pe petit
"pee cfl anglais
iab pte petite
iab pes petits
iab ptes petites

iab pf parfait
iab pfe parfaite
iab pfs parfaits
iab pfes parfaites
iab pfm parfaitement
iab pfo perfection
iab pfoé perfectionné

"est-ce vrm ul?
iab pg page
iab pgs pages

iab pj projet
iab pjs projets
iab pjo projection
iab pjos projections
iab pjl projectif
iab pje projective
iab pjls projectifs
iab pjes projectives

iab pk pourquoi
iab pkp pourquoi pas

iab pl plus
iab plp plupart
iab plt plutôt
iab epl en plus

iab pm plus ou moins

" personnalité ?
" personnage
iab pn personne
iab pns personnes
iab pnl personnel
iab pne personnelle
iab pnls personnels
iab pnes personnelles
iab pnm personnellement
iab pnlé personnalisé
iab pnlée personnalisée
iab pnlés personnalisés
iab pnlées personnalisées
iab pno personnalisation

iab po position
iab pos positions

iab pp principe
iab pps principes
iab ppl principal
iab ppe principale
iab ppls principaux
iab ppes principales
"ppm cfl sci partie par million
iab ppm principalement

iab pq parce que
iab pqj parce
" parce qu'il et autres variantes

iab pr par

iab pt point
iab pts points

iab pw sept

"iab px pixel
"iab pxs pixels
"préciser?
iab px précis
iab pxe précise
iab pxes précises
iab pxo précision
iab pxos précisions
iab pxé précisé
iab pxm précisément

iab py physique
iab pys physiques
iab pym physiquement

iab pz plusieurs

iab pè presque

iab qon qu'on
iab qil qu'il
iab qel qu'elle
iab qils qu'ils
iab qels qu'elles
iab qaj qu'ais-je
iab qat qu'as-tu
iab qté quantité
iab qlé qualité
"TODO qu'eux

iab qa qu'à
iab qau qu'au
iab qax qu'aux

" quasiment?(?) / pratiquement""

"TODO l'équilibre++
iab qb équilibre
iab qbs équilibres
iab qbé équilibré
iab qbée équilibrée
iab qbés équilibrés
iab qbées équilibrées
iab qbr équilibrer

iab qc quelconque
iab qcs quelconques

iab qd quand

iab qe qu'est-ce que
iab qei qu'est-ce qui

iab qf parfois

iab qh quelque chose

iab qi qui

iab qk quiconque

iab ql quel
iab qle quelle
iab qls quels
iab qles quelles
" TODO lequel laquelle duquel…
iab lql lequel
iab lqle laquelle
iab lqls lesquels
iab lqles lesquelles
iab dql duquel
iab dqle de laquelle
iab dqls desquels
iab dqles desquelles
"TODO auquel+

iab qm quand même

iab qn quelqu'un
"iab qne quelqu'une++
iab qns quelques uns

iab qo quoi
iab qoq quoique

iab qp quelque part

iab qq quelque

iab qs quelques

iab qt quant

iab qu question
iab qus questions

iab qv équivalent
iab qve équivalente
iab qvs équivalents
iab qves équivalentes
iab qvj équivaut
" d/l'équivalent

iab qw quatre

iab qè quitté
iab qèe quittée
iab qès quittés
iab qèes quittées
iab qèj quitte
iab qèr quitter

iab rb arbre
iab rbs arbres

iab rc racine
iab rcs racines

iab rd rapide
iab rds rapides
iab rdé rapidité
" vitesse?
iab rdm rapidement

iab re réel
iab ree réelle
iab res réels
iab rees réelles
"rem cfl
iab rem réellement

iab rf relatif
iab rfe relative
iab rfs relatifs
iab rfes relatives
iab rfm relativement
iab rfé relativité
" relation?

iab rg régulier
iab rge régulière
iab rgs réguliers
iab rges régulières
iab rgm régulièrement
iab rgo régulation
iab rgé régulé
iab rgée régulée
iab rgés régulés
iab rgées régulées
iab rgr réguler
iab rgj régule
iab rgl règle
iab rglm règlement
iab rgls règles
iab rgg réglage
iab rgt réglementaire
iab rgto réglementation
iab rgts réglementaires
iab rgtm réglementairement
iab irg irrégulier
iab irge irrégulière
iab irgs irréguliers
iab irges irrégulières
iab irgm irrégulièrement
"iab irgo irrégulation
"iab irgé irrégulé
"iab irgée irrégulée
"iab irgés irrégulés
"iab irgées irrégulées

iab ri risque
"ris cfl
iab riis risques
iab rié risqué
iab riée risquée
iab riés risqués
iab riées risquées
iab rir risquer

iab rj rejet
iab rjs rejets
iab rjé rejeté
iab rjée rejetée
iab rjés rejetés
iab rjées rejetées
iab rje rejette
iab rjr rejeter

iab rk récursion
iab rks récursions
iab rkf récursif
iab rke récursive
iab rkfs récursifs
iab rkes récursives
iab rkm récursivement
iab rkc récurrence
iab rkcs récurrences

iab rl résultat
iab rls résultats
iab rle résulte
iab rlr résulter

iab rm rarement
iab rmé rareté
iab rmés raretés

" peu utiles ↓ règle→rè→rp→…?
" règle vs régulier?
iab rn retenue
iab rnl retenu
iab rns retenues
iab rnls retenus

iab ro rôle
iab ros rôles

iab rp rapport
iab prp par rapport
iab rps rapports
iab rpé rapporté
iab rpée rapportée
iab rpés rapportés
iab rpées rapportées
iab brp birapport
iab brps birapports

iab rq remarque
iab rqs remarques
iab rqé remarqué
iab rqée remarquée
iab rqés remarqués
iab rqées remarquées

iab rr erreur
iab rrs erreurs
iab rré erroné
iab rrée erronée
iab rrés erronés
iab rrées erronées
iab rrm erronément

"TODO 'raison' est pl fq q 'reste'
iab rs reste
"cfl RSS
iab rsts restes
iab rsé resté
iab rsée restée
iab rsés restés
iab rsées restées
iab rsr rester

iab rt retour
iab rts retours
iab rté retourné
iab rtée retournée
iab rtés retournés
iab rtées retournées
iab rtm retournement
"TODO rationnel

iab rv preuve
iab rvs preuves
iab rvé prouvé
iab rvée prouvée
iab rvés prouvés
iab rvées prouvées
iab rvr prouver

iab rw triple
iab rws triplé
iab rwé triplé
iab rwée triplée
iab rwés triplés
iab rwées triplées
iab rwr tripler
iab rwm triplement

iab rx approximatif
iab rxe approximative
iab rxs approximatifs
iab rxes approximatives
iab rxo approximation
iab rxos approximations
iab rxm approximativement

iab ry rythme
iab rys rythmes
iab ryé rythmé
iab ryée rythmée
iab ryés rythmés
iab ryées rythmées
iab ryq rythmique
iab ryqs rythmiques

iab rz raison
iab rzs raisons
iab rzm raisonnement
iab rzms raisonnements
iab rzé raisonné
iab rzée raisonnée
iab rzés raisonnés
iab rzées raisonnées
iab rze raisonne
iab rzr raisonner
iab rzb raisonnable
iab rzbs raisonnables
iab rzbm raisonnablement
iab drzb déraisonnable
iab drzbs déraisonnables
iab drzbm déraisonnablement

"rè respect
iab rè réponse
iab rès réponses
iab rèl répondu
iab rèe répondue
iab rèls répondus
iab rèes répondues
"séparés
iab rèp respect
iab rèps respects
iab rèf respectif
iab rèfe respective
iab rèfs respectifs
iab rèfes respectives
iab rèm respectivement

iab sb semblable
iab sbs semblables
iab sbt semblant
iab sbm semblablement
iab sbe semble
iab sbé semblé
"eep semblée
"todo: semble est-il pl fq q semblable ?

iab sc social
iab sce sociale
iab scs sociaux
iab sces sociales
iab scm socialement
iab scé société
iab scés sociétés

"sd soi-disant

iab sf suffisant
iab sfe suffisante
iab sfs suffisants
iab sfes suffisantes
iab sfm suffisamment
iab sfc suffisance
"impôt: osef
iab isf il suffit

iab sg seconde
iab sgl second
iab sgs secondes
iab sgls seconds
iab sgr secondaire
iab sgrs secondaires
iab sgrr seconder
iab sgé secondé
iab sgée secondée
iab sgés secondés
iab sgées secondées
" signal?

iab sh schéma
iab shs schémas
iab shq schématique
iab shqs schématiques
iab shm schématiquement
iab shé schématisé
iab shée schématisée
iab shés schématisés
iab shées schématisées
iab shr schématiser
"she cfl anglais elle
iab shte schématise
iab sho schématisation
iab shos schématisations

iab sj sujet
iab sjs sujets
iab sjl subjectif
iab sje subjective
iab sjls subjectifs
iab sjes subjectives
iab sjm subjectivement
iab sjé subjectivité
iab sjés subjectivités

iab sk surjection
iab sks surjections
iab skl surjectif
iab ske surjective
iab skls surjectifs
iab skes surjectives
iab ské surjectivité
iab skés surjectivités

iab sl seul
iab sle seule
iab sls seuls
iab sles seules
iab slm seulement
iab sld solitude
iab slr solitaire
iab slrs solitaires
iab isl isolé
"isle cfl anglais île
"iab isle isolée
iab isls isolés
"iab isles isolées
iab islr isoler
iab isle isole
iab islo isolation

iab sm simple
"cfl SMS msg
iab smps simples
iab smm simplement
iab smc simplicité
iab smf simplifié
iab smfe simplifiée
iab smfs simplifiés
iab smfes simplifiées
iab smfj simplifie
iab smfo simplification
iab smfos simplifications

iab sn son

iab sp spécial
iab sps spéciaux
iab spe spéciale
iab spes spéciales
"b
iab spé spécialité
iab spés spécialités
iab spm spécialement
iab spi spécialisé
iab spie spécialisée
iab spis spécialisés
iab spies spécialisées

iab sq sachant que

"TODO dso dessous
iab sr sur
iab dsu dessus
"au vs en ka
iab edsu au dessus

iab ss sous
iab dss dessous
iab edss en dessous

iab st surtout

iab sv souvent

iab sx six

iab sy symbole
iab sys symboles
iab syé symbolisé
iab syée symbolisée
iab syés symbolisés
iab syées symbolisées
iab sye symbolise
iab syr symboliser
iab syq symbolique
iab syqs symboliques
iab syqm symboliquement
"TODO syx syntaxe+++

iab sz solution
iab szs solutions

"TODO changer en qh de pl ul
iab sè siècle
iab sès siècles

iab tb tableau
iab tbs tableaux

iab tc tendance
iab tcs tendances
iab tcl tendanciel
iab tce tendancielle
iab tcls tendanciels
iab tces tendancielles
"eei tendanciellement

iab td tard
"vs tandis vs tard!!!
"tard ++++

iab tf transfert
iab tfs transferts
iab tfé transféré
iab tfée transférée
iab tfés transférés
iab tfées transférées
iab tfer transférer
iab tfe transfère
"ms ul q tf
iab tfm transfèrement
iab tfms transfèrements

iab tg tangible
iab tgs tangibles
iab tgm tangiblement
iab itg intangible
iab itgs intangibles
"eei intangiblement ka

iab th thème
iab ths thèmes
iab thq thématique
iab thqs thématiques
"iab thm thématiquement

iab ti théorie
iab tis théories
iab tiq théorique
iab tiqs théoriques
iab tim théoriquement

iab tj toujours
"eq cé ul
iab ptj pour toujours
iab dtj depuis toujours

iab tk tel quel
iab tke telle quelle
iab tks tels quels
iab tkes telles quelles

iab tl total
iab tle totale
iab tls totaux
iab tles totales
iab tlm totalement
iab tlé totalité

"ou terme?
iab tm tellement

iab tn ton

"to cfl anglais
"iab to trop

iab tp temps
iab tpr temporaire
iab tprs temporaires
iab tpm temporairement
iab tpl temporel
iab tpe temporelle
iab tpls temporels
iab tpes temporelles
"pgf spatial

iab tq tel que
iab tqe telle que
iab tqs tels que
iab tqes telles que

iab tr très

iab ts tous

iab tt tant
iab tte toute
iab ttes toutes
"toutefois??

iab tv travail
iab tvs travaux
"travaillé?
"slm ka

iab tw trois

iab tx texte
iab txs textes
iab txl textuel
iab txe textuelle
iab txls textuels
iab txes textuelle
iab txm textuellement

iab ty type
iab tys types
iab tyq typique
iab tyqs typiques
iab tym typiquement

iab tz technique
iab tzs techniques
iab tzm techniquement

iab tè théorème
iab tès théorèmes

iab ua unanime
iab uas unanimes
iab uam unanimement
iab uaé unanimité
iab uaés unanimités

iab ub urbain
iab ube urbaine
iab ubs urbains
iab ubes urbaines
iab ubm urbanisme

iab l'uc l'unicité
iab d'uc d'unicité
iab uc unicité
iab ucs unicités

iab ud indéfini
iab ude indéfinie
iab uds indéfinis
iab udes indéfinies
iab udm indéfiniment
" TODO: forme positive défini, définition++++ sert plus souvent
" définitif(?)

iab uf sauf

iab l'ug l'usage
iab ug usage
iab ugs usages
iab d'ugl d'usuel
iab ugl usuel
iab uge usuelle
iab ugls usuels
iab uges usuelles
iab ugm usuellement

iab l'ui l'unité
iab ui unité
iab uis unités
iab uir unitaire
iab uirs unitaires
iab uif unifié
iab uife unifiée
iab uifs unifiés
iab uifes unifiées
iab l'uifo l'unification
iab uifo unification
iab uifos unifications
iab l'uio l'union
iab uio union
iab uios unions

iab d'uj d'urgent
iab uj urgent
iab uje urgente
iab ujs urgents
iab ujes urgentes
iab ujm urgemment
iab ujc urgence
iab ujcs urgences

iab d'ul d'utile
iab ul utile
iab uls utiles
iab ulé utilité
iab ulés utilités
"TODO l'utilité
"cfl ENS
iab ulm utilement
iab ulr utilitaire
iab ulrs utilitaires
" TODO utilisateur

iab l'um l'ultime
iab d'um d'ultime
"um half cfl anglais "euh"
iab um ultime
iab ums ultimes
iab umm ultimement
iab uma ultimatum
iab umas ultimatums

iab l'uo l'utilisation
iab uo utilisation
iab uos utilisations
iab uoé utilisé
iab uoée utilisée
iab uoés utilisés
iab uoées utilisées
iab uoe utilise
iab uor utiliser
"TODO:utilisateur

"iab up un peu

iab l'uq l'unique
iab d'uq d'unique
iab uq unique
iab uqs uniques
iab uqm uniquement

"TODO un peu isof ubuntu, wu=ubuntu
iab d'uu d'Ubuntu
iab uu Ubuntu

iab uw cent
iab uws cents

iab d'uz d'usuel
iab uz usuel
iab uze usuelle
iab uzs usuels
iab uzes usuelles
iab uzm usuellement

" TODO vb variable, vr vrai p éviter le cfl Vim ll
iab vb variable
iab vbs variables
iab vbm variablement
iab ivb invariable
"invariant?
iab ivbs invariables
iab ivbm invariablement

iab vc voici

"bien mais faible gain
iab vd vide
iab vds vides
iab vdé vidé
iab vdée vidée
iab vdés vidés
iab vdées vidées
iab vdr vider

iab ve vers

iab vg végétal
iab vge végétale
iab vgs végétaux
iab vges végétales

iab vh véhicule
"cfl k7
iab vhs véhicules

"iab vi vrai
"cfl vie vis vies…

iab vj vais-je

iab vk vocation
iab vks vocations

iab vl voilà

" TODO déplacer: ce n'est pas canonique d'avoir vrai et vraiment
" en deux lettres
"iab vrm vraiment

iab vn vacances

iab vq vécu
iab vqe vécue
iab vqs vécus
iab vqes vécues

iab vr vrai
iab vre vraie
iab vrs vrais
iab vres vraies
iab vrm vraiment
iab vrb vraisemblable

iab vt votre

iab vv vivant
iab vve vivante
iab vvs vivants
iab vves vivantes

iab vw valeur
iab vws valeurs
iab vwm valeureusement
iab vwl valeureux
iab vwe valeureuse
iab vwes valeureuses

iab vx vieux
iab vxl vieil
iab vxe vieille
iab vxes vieilles

iab vy voyage
iab vys voyages
iab vyé voyagé

iab vz version
iab vzs versions

iab vè vérifié
iab vèe vérifiée
iab vès vérifiés
iab vèes vérifiées
iab vèo vérification
iab vèos vérifications
iab vèb vérifiable
iab vèbs vérifiables

iab wa Azerty

iab wb Bépo

iab wd DuckDuckGo


iab wf Facebook

iab wg Ergodox
iab wge Exgodox EZ

iab wi Internet
iab dwi d'Internet

iab wk Wikipédia

iab wl Linux

iab wm I3wm

iab wn NeoVim

iab l'wo l'ergonomie
iab wo ergonomie
iab wos ergonomies
iab d'woq d'ergonomique
iab woq ergonomique
iab woqs ergonomiques

iab wp Wordpress

iab wq Qwerty

iab ww Windows

iab wy YouTube

iab l'xa l'exact
iab xa exact
iab l'xae l'exacte
iab xae exacte
iab xas exacts
iab xaes exactes
iab xam exactement
iab l'xad l'exactitude
iab xad exactitude
iab xads exactitudes

iab xc et cætera

iab l'xe l'expression
iab xe expression
iab xes expressions
iab xel expressif
iab xee expressive
iab xels expressifs
iab xees expressives
iab xeb exprimable
iab xebs exprimables
iab xeé exprimé
iab xeée exprimée
iab xeés exprimés
iab xeées exprimées

iab xg Xorg

iab xk exclu
iab xke exclue
iab xks exclus
iab xkes exclues
iab xko exclusion
iab xkos exclusions
iab xkr exclure

iab xm maximum
iab xms maximums

iab xn annexe
iab xns annexes

iab l'xo l'explication
iab d'xo d'explication
iab xo explication
iab xos explications
iab xoé expliqué
iab xoée expliquée
iab xoés expliqués
iab xoées expliquées
iab xoj explique
"cfl ou exclusif
iab xor expliquer
iab xol explicatif
iab xoe explicative
iab xols explicatifs
iab xoes explicatives
iab xob explicable
iab xobs explicables

iab l'xp l'expérience
iab d'xp d'expérience
iab xp expérience
iab xps expériences
"'a' ou 'l' ka
iab xpl expérimental
"TODO: adverbe?
iab xpe expérimentale
iab xpls expérimentaux
iab xpes expérimentales
iab xpo expérimentation
iab xpos expérimentations
"xpb expérimentable
iab xpé expérimenté
iab xpée expérimentée
iab xpés expérimentés
iab xpées expérimentées

iab xq ex-æquo

iab l'xr l'exercice
iab d'xr d'exercice
iab xr exercice
iab d'xrs d'exercices
iab xrs exercices
iab xre exerce
iab xrr exercer
iab xré exercé
iab xrée exercée
iab xrés exercés
iab xrées exercées

iab l'xt l'extérieur
iab d'xt d'extérieur
iab xt extérieur
iab xte extérieure
iab xts extérieurs
iab xtes extérieures
iab xtm extérieurement
iab xto extériorisation
iab xtos extériorisations
iab xté extériorisé
iab xtée extériorisée
iab xtés extériorisés
iab xtées extériorisées
iab xtj extériorise
iab xtr extérioriser

iab ya il y a
"il y en a++, il n'y a pas…
"qu'il y a
"il y avait(?)

iab yc y compris
" compris sans le 'y' +

iab yd défaite
iab yds défaites
"ar

iab ye yeux

iab yk inclu
iab yke incluse
iab ykes incluses
iab yks inclus
iab l'yko l'inclusion
iab yko inclusion
iab ykos inclusions
iab ykr inclure

iab yf condition
iab yfs condition
iab yfl conditionnel
iab yfe conditionnelle
iab yfls conditionnels
iab yfes conditionnelles
"inconditionnel
iab yl style

iab ym polynôme
iab yms polynômes
iab yml polynômial

iab yn minimum
iab yns minimums

iab yp il n'y a pas

iab l'yr l'intérieur
iab d'yr d'intérieur
iab yr intérieur
iab yrs intérieurs
iab yre intérieure
iab yres intérieures
iab yrm intérieurement

iab l'ys l'instant
iab d'ys d'instant
iab ys instant
iab yss instants
"iab ysé instanté
iab ysée instantanée
iab ysés instantanés
iab ysées instantanées
iab ysm instantanément

iab yt y a-t-il

iab yu introduction
iab yus introductions
"itl introduit

iab yv victoire
iab yvs victoires
"victorieux

iab yè système
iab yès systèmes
iab yèq systématique
iab yèqs systématiques
iab yèm systématiquement
"système d'exploitation

iab zb sombre
iab zbs sombres
iab zbm sombrement

iab zc science
iab zcs sciences
iab zcq scientifique
iab zcqs scientifiques
iab zcm scientifiquement

iab zd soudain
iab zds soudains
iab zde soudaine
iab zdes soudaines
iab zdm soudainement
" sans doutes?

iab ze sans compter
" compte++

iab zg suggestion
iab zgs suggestions
iab zgé suggéré
iab zgée suggérée
iab zgés suggérés
iab zgées suggérées
iab zgf suggestif
iab zgfe suggestive
iab zgfs suggestifs
iab zgfes suggestives

iab zh champ
iab zhs champs
"!=zsh

iab zk sélection
iab zks sélections
iab zké sélectionné
iab zkée sélectionnée
iab zkés sélectionnés
iab zkées sélectionnées
iab zkf sélectif
iab zkfe sélective
iab zkfs sélectifs
iab zkfes sélectives
iab zke sélectionne
iab zkr sélectionner

iab l'zl l'absolu
iab d'zl d'absolu
iab zl absolu
"cfl partiel i zsh fc
iab zle absolue
iab zls absolus
iab zles absolues
iab zlm absolument

iab zm zoom
iab zms zooms
iab zmé zoomé
"ee ka
iab zme zoome
iab zmr zoomer
"féminin, pluriel ka

iab zn zone
iab zns zones

iab zo solide
iab zos solides
iab zom solidement

iab zp super
"ee supers ka

iab zq sécurité
iab zqs sécurités
iab zqé sécurisé
iab zqée sécurisée
iab zqés sécurisés
iab zqées sécurisées
iab zqe sécurise
iab zqr sécuriser

iab zr zéro

iab zt situation
iab zts situations

iab l'zu l'absurde
iab d'zu d'absurde
iab zu absurde
iab zus absurdes
iab zué absurdité
iab zués absurdités
"maths:
iab pzu par l'absurde

"TODO comparer fqce suivant/souvent
iab zv suivant
iab zve suivante
iab zvs suivants
iab zves suivantes
"TODO précédant ++++++++

iab l'èa l'arrivée
iab èa arrivée
iab èal arrivé
iab èas arrivées
iab èals arrivés
iab èae arrive
iab èar arriver

iab d'èb d'abstrait
iab èb abstrait
iab èbe abstraite
iab èbs abstraits
iab èbes abstraites
iab èbo abstraction
iab èbos abstractions
iab èbm abstraitement

iab l'èc l'essai
iab d'èc d'essai
iab èc essai
iab ècs essais
iab èce essaye
iab ècr essayer
iab ècé essayé
iab ècée essayée
iab ècés essayés
iab ècées essayées

iab èd départ
iab èds départs
"partir ka

iab l'èe l'élément
iab d'èe d'élément
iab èe élément
iab èes éléments
iab èer élémentaire
iab èers élémentaires
" .ment ka

iab d'èf d'efficace
iab èf efficace
iab èfs efficaces
iab l'èfé l'efficacité
iab èfé efficacité
iab èfm efficacement
iab èfés efficacités
iab d'ièf d'inefficace
iab ièf inefficace
iab ièfs inefficaces
iab l'ièfé l'inefficacité
iab ièfé inefficacité
iab ièfém inefficacement
iab ièfés inefficacités

iab l'èg l'algorithme
iab d'èg d'algorithme
iab èg algorithme
iab ègs algorithmes
iab ègq algorithmique
iab ègqs algorithmiques

iab èh prochain
iab èhe prochaine
iab èhs prochains
iab èhes prochaines
iab èhm prochainement
"TODO proche++


iab l'èi l'envie
iab d'èi d'envie
iab èi envie
iab èis envies

iab l'èj l'ai-je
iab èj ai-je

iab èk indirect
iab èks indirects
iab èks indirecte
iab èkss indirectes

iab èl sinon

iab èm semaine
iab èms semaines
iab èmr hebdomadaire
iab èmrs hebdomadaires

"TODO à peu près
iab èn environ
iab d'èn d'environ
iab èns environs
iab ènm environnement
iab ènms environnements

iab èo méthode
iab èos méthodes
iab èoq méthodique
iab èoqs méthodiques
iab èom méthodiquement

iab èp impression
iab d'èp d'impression
iab l'èp l'impression
iab èps impressions
iab èpé impressionné
iab èpés impressionnés
iab èpée impressionnée
iab èpées impressionnées
iab èpe impressionne
iab èper impressionner
"iab èpers impressionners

iab èq équipe
iab l'èq l'équipe
iab d'èq d'équipe
iab èqm équipement
iab èqms équipements
iab èqr équiper
iab èqs équipes

iab èr frontière
iab èrs frontières

iab ès source
iab èsr sourcer
iab èsé sourcé
iab èsés sourcés
iab èsée sourcée
iab èsées sourcées

iab èt éventuel
iab ètm éventuellement
iab èts éventuels
" todo : éventuelle(s)

iab èu reçu
iab èus reçus
iab èue reçue
iab èues reçues

iab èv évident
iab èvm évidemment
iab èvs évidents
"cfl prénom
iab ève évidente
iab èves évidentes
iab èvc évidence
iab èvcs évidences
"époque+
"manque++
"(flèche)
"priorité
"ailleurs+++ , d'ailleurs++
"légèrement+
"supplémentaire+
"annulé
"probablement+++++ done
"période+?
"notamment+++++ (ntm?)
"volontaire(+)
"déterminé
"pourtant++++
"cpp c++
"opposition+ (par !!)
"vertical/horizontal?
"soit++
"comparaison / comparatif
"cmd commande
"envers, endroit
"réflexion?
"sens???
"symétrie?
"étape++
"instruction??
"intermédiaire? plus important qu'interdit?
"par défaut+++
"
"d'aj d'aujourd'hui
"pèndemor: aujourd'aujourd'aujourd'hui
"contexte+++ isof choix?
"famille+ (a plusieurs sens)

iab È Autant
iab É Être
iab Cé C'est
iab Pé Peut-être

iab Aa Abréviation
iab Ab Ambigu
iab Ac Ancien
iab Ad Adresse
iab Ae Assez
iab Af Afin
iab Ag Argument
iab Aj Aujourd'hui
iab Ak À confirmer
iab Al Alors
iab Am Animal
iab Ao Attention
iab Ap Après
iab Aq Attaque
iab Ar Autre
iab Av Avant
iab Aw Au revoir
iab Ax Axiome
iab Ay Arrière
iab Aè Année

iab Ba Bas
iab Bb Bibliothèque
iab Bc Boucle
iab Bg Blague
iab Bh Bonheur
iab Bi Bilan
iab Bj Bonjour
iab Bk Bijection
iab Bl Balise
iab Bm Binôme
iab Bn Besoin
iab Bo Bord
iab Bp Beaucoup
iab Br Bref
iab Bs Bien sûr
iab Bt Bientôt
iab Bv Bienvenue
iab Bw Double
iab Bx Beau
iab Bz Bizarre
iab Bè Bénéfice

iab Ca Ça
iab Cb Combien
iab Cc Conclusion
iab Cg Catégorie
iab Ch Chose
iab Cj Chaud
iab Ck Conséquence
iab Cl Celui
iab Cm Comment
iab Cn Certain
iab Co Complexe
iab Cp Coup
iab Cq Ce que
iab Cr Contre
iab Cs Cause
iab Ct Constant
iab Cu Court
iab Cw Cinq
iab Cx Choix
iab Cy Cycle
iab Cz Chez
iab Cè Cette

iab Da Déjà
iab Db Début
iab Dc D'accord
iab Dd Dedans
iab Df Difficile
iab Dg Dommage
iab Dh Dehors
iab Di Différent
iab Dk Direct
iab Dl Développement
iab Dm Demain
iab Dn Donc
iab Dp Depuis
iab Dq Dès que
iab Dr Derrière
iab Ds Dans
iab Dt Détail
iab Dv Devant
iab Dw Deux
iab Dx Dû
iab Dy Distance
iab Dz Droite
iab Dè Déficit

iab Ea Et alors
iab Eb Ensemble
iab Ec Encore
iab Ed Endroit
iab Ee Existence
iab Ef Effet
iab Eg Égal
iab Ei Ensuite
iab Ej Enjeu
iab Ek En tout cas
iab El Elle
iab Em Événement
iab Eo Selon
iab Ep Exemple
iab Eq Est-ce que
iab Er Entre
iab Ew Entier
iab Ey Essai
iab Ez Hésite
iab Eè Extrême

iab Fb Faible
iab Fc Fonction
iab Fd Fond
iab Fe Femme
iab Ff Façon
iab Fg Figure
iab Fh Fichier
iab Fj Froid
iab Fk Facultatif
iab Fl Facile
iab Fm Forme
iab Fn Fin
iab Fo Fort
iab Fp Frappe
iab Fq Fréquent
iab Fr Fermé
iab Fs Fois
iab Ft Il faut
iab Fu Futur
iab Fv Préféré
iab Fw Premier
iab Fx Faux
iab Fy Foyer
iab Fz Français
iab Fè Fenêtre

iab Ga Général
iab Gb Global
iab Gc J'essaye
iab Gd Grand
iab Ge Gens
iab Gf J'ai fait
iab Gg Google
iab Gh Graphe
iab Gl GNU/Linux
iab Gn Genre
iab Gp Groupe
iab Gq Graphique
iab Gr Grade
iab Gs Geste
iab Gt Garantie
iab Gu Gratuit
iab Gv Gouvernement
iab Gw Milliard
iab Gz Gauche
iab Gè Génération

iab Hb Habitude
iab Hc Chacun
iab Hg Échange
iab Hh Cherché
iab Hj Hasard
iab Hk Hors
iab Hl Échelle
iab Hm Homme
iab Hn Humain
iab Ho Histoire
iab Hp Hyper
iab Hq Chaque
iab Hr Hier
iab Ht Haut
iab Hu Huit
iab Hv Terminé
iab Hy Hypothèse
iab Hè Sphère

iab Ib Immobile
iab Ic Incertain
iab Id Idée
iab Ig Image
iab Ih Imaginaire
iab Ii Infini
iab Ij Injustifié
iab Ik Injection
iab Im Important
iab Io Information
iab Iq Identique
iab Is Instant
iab Iu Inutile
iab Iv Inverse
iab Iw Moitié
iab Ix Dix
iab Iy Interdit
iab Iz Indice
iab Iè Intérêt

iab Ja Jusqu'à
iab Jd Jardin
iab Jf Justifié
iab Jg Jugement
iab Jk Joker
iab Jl Je l'ai
iab Jm Jamais
iab Jn Je ne
iab Jp Je ne vais pas
iab Jq Jusque
iab Jt Juste
iab Ju Jeune
iab Jv Je vais
iab Jx Jeu
iab Jy Joyeux

iab Ka Capitale
iab Kb Courbe
iab Kc Cassé
iab Kd Cadeau
iab Kf Conforme
iab Kh Caché
iab Ki Copie
iab Kk Correct
iab Kl Classe
iab Kn Connu
iab Kp Complet
iab Kq Caractéristiques
iab Kr Clair
iab Ks Explosion
iab Kt Contrainte
iab Ku Courant
iab Kv Clavier
iab Kw Mille
iab Kx Connexion
iab Kè Côté

iab Lb Label
iab Lc Local
iab Ld Liquide
iab Lg Long
iab Lh Large
iab Li Libre
iab Ll Logiciel
iab Lm Limite
iab Lo Logique
iab Lp Longtemps
iab Lq Lorsque
iab Lr Leur
iab Ls Liste
iab Lt Lent
iab Lv Niveau
iab Lw Dernier
iab Lx Là
iab Ly Labyrinthe
iab Lz Loisir
iab Lè Lumière

iab Mb Mobile
iab Mc Machine
iab Md Monde
iab Mf Modifié
iab Mg Malgré
iab Mh Malheur
iab Mj Majorité
iab Mk Masque
iab Ml Milieu
iab Mm Moment
iab Mn Mon
iab Mq Montrer que
iab Mr Merci
iab Ms Moins
iab Mt Maintenant
iab Mv Mouvement
iab Mw Million
iab Mx Mû
iab Mz Maison
iab Mè Mètre

iab Na Normal
iab Nc Nécessaire
iab Nd Nœud
iab Nf Neuf
iab Ng Je n'ai
iab Nh N'importe
iab Nj Énergie
iab Nk N'importe quoi
iab Nl Naturel
iab Nm Néanmoins
iab Nn Non
iab Nq Tant que
iab Nr Nature
iab Ns Non seulement
iab Nt Notre
iab Nv Nouveau
iab Nw Numéro
iab Nx Tant mieux
iab Ny Noyau
iab Nz Tant pis
iab Nè Négatif

iab Oa Organisation
iab Ob Observation
iab Od Ordre
iab Oe Œuvre
iab Of Officiel
iab Og Organe
iab Oi Ordinateur
iab Oj Objet
iab Ol Oral
iab Om Nombre
iab Oo Option
iab Op Opinion
iab Oq Optique
iab Ot Optimal
iab Ov Ouvert
iab Ow Obstacle
iab Ox Où
iab Oy Oui
iab Oz Possible
iab Oè Positif

iab Pa Pas
iab Pb Problème
iab Pd Pendant
iab Pe Petit
iab Pf Parfait
iab Pg Page
iab Pj Projet
iab Pk Pourquoi
iab Pl Plus
iab Pm Plus ou moins
iab Pn Personne
iab Po Position
iab Pp Principe
iab Pq Parce que
iab Pr Par
iab Pt Point
iab Pw Sept
iab Px Précis
iab Py Physique
iab Pz Plusieurs
iab Pè Presque

iab Qa Qu'à
iab Qb Équilibre
iab Qc Quelconque
iab Qd Quand
iab Qe Qu'est-ce que
iab Qf Parfois
iab Qh Quelque chose
iab Qi Qui
iab Qj Que je
iab Qk Quiconque
iab Ql Quel
iab Qm Quand même
iab Qn Quelqu'un
iab Qo Quoi
iab Qp Quelque part
iab Qq Quelque
iab Qs Quelques
iab Qt Quant
iab Qu Question
iab Qv Équivalent
iab Qw Quatre
iab Qè Quitté

iab Rb Arbre
iab Rc Racine
iab Rd Rapide
iab Re Réel
iab Rf Relatif
iab Rg Régulier
iab Ri Risque
iab Rj Rejet
iab Rk Récursion
iab Rl Résultat
iab Rm Rarement
iab Rn Retenue
iab Ro Rôle
iab Rp Rapport
iab Rq Remarque
iab Rr Erreur
iab Rs Reste
iab Rt Retour
iab Rv Preuve
iab Rw Triple
iab Rx Approximatif
iab Ry Rythme
iab Rz Raison
iab Rè Réponse

iab Sb Semblable
iab Sc Social
iab Sf Suffisant
iab Sg Seconde
iab Sh Schéma
iab Sj Sujet
iab Sk Surjection
iab Sl Seul
iab Sm Simple
iab Sn Son
iab Sp Spécial
iab Sq Sachant que
iab Sr Sur
iab Ss Sous
iab St Surtout
iab Sv Souvent
iab Sx Six
iab Sy Symbole
iab Sz Solution
iab Sè Siècle

iab Tb Tableau
iab Tc Tendance
iab Td Tard
iab Tf Transfert
iab Tg Tangible
iab Th Thème
iab Ti Théorie
iab Tj Toujours
iab Tk Tel quel
iab Tl Total
iab Tm Tellement
iab Tn Ton
iab Tp Temps
iab Tq Tel que
iab Tr Très
iab Ts Tous
iab Tt Tant
iab Tv Travail
iab Tw Trois
iab Tx Texte
iab Ty Type
iab Tz Technique
iab Tè Théorème

iab Ua Unanime
iab Ub Urbain
iab Uc Unicité
iab Ud Indéfini
iab Uf Sauf
iab Ug Usage
iab Ui Unité
iab Uj Urgent
iab Ul Utile
iab Um Ultime
iab Uo Utilisation
iab Uq Unique
iab Uu Ubuntu
iab Uw Cent
iab Ux Mieux
iab Uz Usuel

iab Vb Verbe
iab Vc Voici
iab Vd Vide
iab Ve Vers
iab Vg Végétal
iab Vh Véhicule
iab Vi Vrai
iab Vj Vais-je
iab Vk Vocation
iab Vl Voilà
iab Vm Vraiment
iab Vn Vacances
iab Vq Vécu
iab Vr Variable
iab Vt Votre
iab Vv Vivant
iab Vw Valeur
iab Vx Vieux
iab Vy Voyage
iab Vz Version
iab Vè Vérifié

iab Wa Azerty
iab Wb Bépo
iab Wd DuckDuckGo
iab Wf Facebook
iab Wg Ergodox
iab Wi Internet
iab Wk Wikipédia
iab Wl Linux
iab Wm I3wm
iab Wn NeoVim
iab Wo Ergonomie
iab Wp Wordpress
iab Wq Qwerty
iab Ww Windows
iab Wy YouTube

iab Xa Exact
iab Xc Et cætera
iab Xe Expression
iab Xg Xorg
iab Xk Exclu
iab Xm Maximum
iab Xn Annexe
iab Xo Explication
iab Xp Expérience
iab Xq Ex-æquo
iab Xr Exercice
iab Xt Extérieur
iab Xx Çà

iab Ya Il y a
iab Yc Y compris
iab Yd Défaite
iab Ye Yeux
iab Yf Condition
iab Yk Inclu
iab Yl Style
iab Ym Polynôme
iab Yn Minimum
iab Yp Il n'y a pas
iab Yr Intérieur
iab Yt Y a-t-il
iab Yu Introduction
iab Yv Victoire
iab Yè Système

iab Zb Sombre
iab Zc Science
iab Zd Soudain
iab Ze Sans compter
iab Zg Suggestion
iab Zh Champ
iab Zk Sélection
iab Zl Absolu
iab Zm Zoom
iab Zn Zone
iab Zo Solide
iab Zp Super
iab Zq Sécurité
iab Zr Zéro
iab Zt Situation
iab Zu Absurde
iab Zv Suivant

iab Èa Arrivée
iab Èb Abstrait
iab Èc Essai
iab Èd Départ
iab Èe Élément
iab Èf Efficace
iab Èg Algorithme
iab Èh Prochain
iab Èi Envie
iab Èj Ai-je
iab Èk Indirect
iab Èl Sinon
iab Èm Semaine
iab Èn Environ
iab Èo Méthode
iab Èp Impression
iab Èq Équipe
iab Èr Frontière
iab Ès Source
iab Èt Éventuel
iab Èu Reçu
iab Èv Évident

