# Le guide ultime du solo middle avancé par ChaQ, traduction française #

__Ce guide est en construction et ne reflète pas la version finale.__

## Explication des différents répertoires :  

Les sources de ce guide sont écrites en [Markdown](http://daringfireball.net/projects/markdown) et sont situées dans le dossier ``markdown``.

La concaténation des fichiers ``.md`` et la version html brute sont situés dans le dossier ``output``

La version html + [Bootstrap](http://getbootstrap.com) est situé dans le dossier ``build``.

## Pre-compilation ##

Pour précompiler, j'utilise [Gruntjs](http://gruntjs.com). Différentes tâches sont disponibles : 

  + __default__ : tâche par défaut. Ne fais que concaténer les fichiers ``.md`` du répertoire ``markdown`` en un seul fichier : ``output/build.md``

  + __layout__ : concatène, et sort une version bootstrap + html 

  + __concatOnly__ :  même tâche que __default__

  + __noLayout__ :  concatène, et sort une version brute en ``.html``

  + De plus, ce lisez-moi peut être compilé grâce à la tâche __readme__


Pour éxécuter l'une de ces tâche écrire dans le terminal : 

```
grunt <nom de tâche>

```

Exemple avec la tâche __layout__ : 

```
grunt layout

```

# ChaQ's ultimate guide to advanced middle lane solo, french translation #

## Directories explanation ##

Sources of this guide are written in [Markdown](http://daringfireball.net/projects/markdown) and are located in the repository ``markdown``.

Concat of files ``.md`` and basic html version are in ``output`` directory.

Html + [Bootstrap](http://getbootstrap.com) is in ``build`` directory.

## Pre-processing ##

To pre-process, i use [Gruntjs](http://gruntjs.com). Several tasks are available : 

  + __default__ : default task. Only concat ``md`` files of ``markdown`` directory in ``output/build.md`` file.

  + __layout__ : concat, and output Bootstrap + htl version

  + __concatOnly__ : same as __default__ task

  + __noLayout__ : concat, and output a basic ``.html`` version

  + additionally, this readme can be compiled thanx to __readme__ task

In order to execute one of these tasks, type in a console : 

```
grunt <task name>

```

Example with __layout__ task : 

```
grunt layout

```


