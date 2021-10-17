# `fullScreen`

`fullScreen` är en funktion som låter dig göra fönstret i ditt program samma storlek som datorns skärm.

\pagebreak

## `fullScreen`: uppgift 1

Kör den här koden. Vad ser du?

```c++
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
`rect (100, 200, 300, 400)` | 'Kära dator, rita en rektangel med' (100, 200) `som det övre vänstra hörnet, är 300 pixlar brett och 400 pixlar högt. '
`width / 4` | 'Dear computer, ange här antalet pixlar skärmen är bred dividerat med fyra'
`höjd / 4` | 'Kära dator, ange här antalet pixlar skärmen är hög, dividerat med fyra'

\pagebreak

## `fullScreen`: lösning 1

![`fullScreen`: lösning 1](fullscreen_1.png)

\pagebreak

## `fullScreen`: uppgift 2

Skapa en rektangel med det övre vänstra hörnet i mitten,
med en bredd på 200 och en höjd av 100 pixlar.

![`fullScreen`: uppgift 2](fullscreen_2.png)

\pagebreak

## `fullScreen`: lösning 2

```c++
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

Lägg nu rektangeln i mitten av skärmen.

![`fullScreen`: uppgift 3](fullscreen_3.png)

![Solglasögon](EmojiSunglasses.png) | Rektangeln ska gå 100 till vänster och 50 uppåt
:-----------------:|:-----------------------------:

\pagebreak

## `fullScreen`: lösning 3

```c++
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

Sätt en rektangel i mitten av skärmen, med en bredd på 300 pixlar
och en höjd av 400 pixlar.

![`fullScreen`: uppgift 4](fullscreen_4.png)

\pagebreak

## `fullScreen`: lösning 4

```c++
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

Placera en rektangel i mitten av skärmen, hälften av skärmens bredd,
och är 500 pixlar hög.

![`fullScreen`: uppgift 5](fullscreen_5.png)

\pagebreak

## `fullScreen`: lösning 5

```c++
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

## `fullScreen`: slutuppgiftt

![`fullScreen`: slutuppgiftt](fullscreen_6.png)

Placera en rektangel i mitten av skärmen som är hälften av skärmens bredd och höjd.
