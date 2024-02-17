---
## Front matter
title: "Отчет по лабораторной работе №1"
subtitle: "Настройка рабочего пространства"
author: "Бекбузарова Роза Алисхановна"


## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Настроить рабочее пространство для выполнения лабораторной работы 1, а так жеследующих лабораторных работ.

# Задание

1. Создать гит репозиторий
2. Создать labs и group-project


# Выполнение лабораторной работы

Описываются проведённые действия, в качестве иллюстрации даётся ссылка на иллюстрацию

![cсоздание каталога](image/01.png)
Создание каталога


![cоздание репозитория](image/02.png)
Создание репозитория


![установка chocolatey](image/3.png)
Установка chocolatey


![установка make](image/4.png)
Установка make

![установка git](image/5.png)
Установка git

![генерация ssh ключа](image/6.png)
Генерация ssh ключа

![настройка агента](image/7.png)
Настройка агента

![добавление ключа](image/8.png)
Добавление ключа


![создание репозитория](image/9.png)
Создание репозитория


![установка pandoc](image/10.png)
Установка pandoc

# Выводы

Настроили рабочее пространство для лабораторных работ и попрактиковались с системой контроля Git и яыком разметки Markdown.


::: {#refs}
:::
