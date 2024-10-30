---
## Front matter
title: "Отчёт по лабораторной работе 5"
subtitle: "дисциплина:	Архитектура компьютера"
author: "Усманова Амина Булатовна НММбд-04-24"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

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

Целью работы является приобретение практических навыков работы в Midnight Commander. 
Освоение инструкций языка ассемблера mov и int.

# Выполнение лабораторной работы

## Знакомство с Midnight Commander

Запускаю Midnight Commander (см. рис. [-@fig:001]), используя клавиши со стрелками и Enter, перехожу в каталог `~/work/arch-pc`. Затем создаю новый каталог под названием `lab05`, нажав F7 (см. рис. [-@fig:002]).

![Запуск Midnight Commander](image/01.png){ #fig:001 width=70%, height=70% }

![Создание нового каталога](image/02.png){ #fig:002 width=70%, height=70% }

Использую команду `touch`, чтобы создать файл `lab05-1.asm` (см. рис. [-@fig:003]).

![Создание файла lab05-1.asm](image/03.png){ #fig:003 width=70%, height=70% }

Открываю файл для редактирования с помощью F4, выбираю редактор `mcedit`, и пишу программу в соответствии с заданием (см. рис. [-@fig:005]).

![Выбор редактора mcedit](image/04.png){ #fig:004 width=70%, height=70% }

![Написание программы lab05-1.asm](image/05.png){ #fig:005 width=70%, height=70% }

Для проверки содержимого файла просматриваю его с помощью F3 и убеждаюсь в корректности написанного кода (см. рис. [-@fig:006]).

![Просмотр кода lab05-1.asm](image/06.png){ #fig:006 width=70%, height=70% }

Транслирую исходный код в объектный файл, затем выполняю компоновку для создания исполняемого файла программы (см. рис. [-@fig:007]).

![Тестовый запуск lab05-1.asm](image/07.png){ #fig:007 width=70%, height=70% }

## Подключение внешнего файла in_out.asm

Скачиваю файл `in_out.asm` и переношу его в рабочий каталог (см. рис. [-@fig:008]). Для копирования использую F5, для перемещения — F6.

![Перемещение файла in_out.asm](image/08.png){ #fig:008 width=70%, height=70% }

Копирую файл `lab05-1.asm` и создаю его копию под именем `lab05-2.asm` (см. рис. [-@fig:009]).

![Создание копии файла lab05-1.asm](image/09.png){ #fig:009 width=70%, height=70% }

Редактирую код `lab05-2.asm`, добавляя подпрограммы из файла `in_out.asm` (см. рис. [-@fig:010]).

![Добавление подпрограмм в lab05-2.asm](image/10.png){ #fig:010 width=70%, height=70% }

Компилирую программу и проверяю её выполнение (см. рис. [-@fig:011]).

![Запуск программы lab05-2.asm](image/11.png){ #fig:011 width=70%, height=70% }

В файле `lab05-2.asm` заменяю подпрограмму `sprintLF` на `sprint`, после чего повторно собираю программу (см. рис. [-@fig:012] и [-@fig:013]).

![Обновлённая версия lab05-2.asm](image/12.png){ #fig:012 width=70%, height=70% }

![Запуск обновлённой lab05-2.asm](image/13.png){ #fig:013 width=70%, height=70% }

Теперь программа выводит строку без переноса на новую строку.

## Задание для самостоятельной работы

Создаю копию программы `lab05-1.asm` и изменяю код для выполнения следующего алгоритма (см. рис. [-@fig:014] и [-@fig:015]):
- отображает запрос "Введите строку:";
- принимает строку с клавиатуры;
- выводит введённую строку на экран.

![Редактирование программы lab05-3.asm](image/14.png){ #fig:014 width=70%, height=70% }

![Тестовый запуск lab05-3.asm](image/15.png){ #fig:015 width=70%, height=70% }

Аналогично, копирую `lab05-2.asm` и изменяю код, добавляя подпрограммы из файла `in_out.asm` (см. рис. [-@fig:016] и [-@fig:017]).

![Обновлённая программа lab05-4.asm](image/16.png){ #fig:016 width=70%, height=70% }

![Тестовый запуск lab05-4.asm](image/17.png){ #fig:017 width=70%, height=70% }

# Выводы

В ходе работы освоены базовые навыки написания ассемблерных программ, а также инструкции `mov` и `int`.
