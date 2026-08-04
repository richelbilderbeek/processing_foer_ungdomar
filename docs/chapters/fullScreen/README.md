# `fullScreen`

`fullScreen` är en funktion som låter dig förstora fönstret för ditt program till samma storlek som datorns skärm.

\pagebreak

## `fullScreen`: uppgift 1

Kör den här koden. Vad ser du?

```processing
void setup() 
{
  fullScreen();
}

void draw() 
{
  rect(100, 200, width / 4, height / 4);
}
```

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:----------------------------:|:----------------------------------------:
`rect (100, 200, 300, 400)` | 'Kära dator, rita en rektangel där' (100, 200) 'är koordinaten för det övre vänstra hörnet och där bredden på rektangeln är 300 pixlar och höjden 400 pixlar. '
`width / 4` | 'Kära dator, ange här fönstrets bredd, dividerat med fyra'
`height / 4` | 'Kära dator, ange här fönstrets höjd, dividerat med fyra'

\pagebreak

## `fullScreen`: lösning 1

![`fullScreen`: lösning 1](fullscreen_1.png)

\pagebreak

## `fullScreen`: uppgift 2

Skapa en rektangel med det övre vänstra hörnet i mitten,
med bredden 200 pixlar och höjden 100 pixlar.

![`fullScreen`: uppgift 2](fullscreen_2.png)

\pagebreak

## `fullScreen`: lösning 2

```processing
void setup() 
{
  fullScreen();
}

void draw() 
{
  rect(width / 2, height / 2, 200, 100);
}
```

\pagebreak

## `fullScreen`: uppgift 3

Rita nu ut rektangeln i mitten på skärmen.

![`fullScreen`: uppgift 3](fullscreen_3.png)

![Solglasögon](EmojiSunglasses.png) | Rektangeln ska flyttas 100 pixlar till vänster och 50 pixlar uppåt
:-----------------:|:-----------------------------:

\pagebreak

## `fullScreen`: lösning 3

```processing
void setup() 
{
  fullScreen();
}

void draw() 
{
  rect(width / 2 - 100, height / 2 - 50, 200, 100);
}
```

\pagebreak

## `fullScreen`: uppgift 4

Rita ut en rektangel i mitten på skärmen, med en bredd på 300 pixlar
och en höjd på 400 pixlar.

![`fullScreen`: uppgift 4](fullscreen_4.png)

\pagebreak

## `fullScreen`: lösning 4

```processing
void setup() 
{
  fullScreen();
}

void draw() 
{
  rect(width / 2 - 150, height / 2 - 200, 300, 400);
}
```

\pagebreak

## `fullScreen`: uppgift 5

Rita ut en rektangel i mitten på skärmen, med hälften av skärmens bredd,
och höjden 500 pixlar.

![`fullScreen`: uppgift 5](fullscreen_5.png)

\pagebreak

## `fullScreen`: lösning 5

```processing
void setup() 
{
  fullScreen();
}

void draw() 
{
  rect(width / 4, height / 2 - 250, width / 2, 500);
}
```

\pagebreak

## `fullScreen`: slutuppgift

![`fullScreen`: slutuppgiftt](fullscreen_6.png)

Rita ut en rektangel i mitten på skärmen som är hälften så bred och hälften så hög som skärmen.
