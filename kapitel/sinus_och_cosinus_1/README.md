# Sinus och cosinus 1: graf

Under den här lektionen ska vi rita en sinus och en cosinus.

![Elite](Elite.jpg)

\pagebreak

## Sinus och Cosinus 1: uppgift 1

Skriv denna kod över:

```c++
float x = 0;

void setup()
{
  size(314, 200);
}

void draw()
{
  final float y = sin(x);
  point(x, y);
  x = x + 1;  
}
```

Vad ser du?

![Solglasögon](EmojiSunglasses.png) | 314 är ungefär hundra gånger talet pi
:-----------------:|:--------------------------------------------:

\pagebreak

## Sinus och cosinus 1: lösning 1

![Sinus och cosinus 1: lösning 1](sinus_och_cosinus_1_1.png)

Du kommer att se en sorts prickad linje längst upp.

\pagebreak

## Sinus och Cosinus 1: uppgift 2

 * Flytta den prickade linjen nedåt. Gör detta genom att lägga till halva höjden med `y`

![Solglasögon](EmojiSunglasses.png) | Tips: det är smart att sätta parenteser runt `höjd / 2`
:-----------------:|:--------------------------------------------:

![Sinus och cosinus 1: kommando 2](sinus_och_cosinus_1_2.png)

\pagebreak

## Sinus och cosinus 1: lösning 2

```c++
float x = 0;

void setup()
{
  size(314, 200);
}

void draw()
{
  final float y = sin(x) + (height / 2);
  point(x, y);
  x = x + 1;  
}
```

![Solglasögon](EmojiSunglasses.png) | Fästena hjälper datorn att veta ordningen på en beräkning
:-----------------:|:-----------------------------:

![Solglasögon](EmojiSunglasses.png) | En sinusvåg är formad som en våg som svänger mellan -1 och 1
:-----------------:|:--------------------------------------------:

\pagebreak

## Sinus och cosinus 1: uppgift 3

 * Ersätt `sin(x)` med `(sin(x) * 50)`

![Sinus och cosinus 1: kommando 3](sinus_och_cosinus_1_3.png)

![Solglasögon](EmojiSunglasses.png) | Parentes är viktigt!
:-----------------:|:--------------------------------------------:

\pagebreak

## Sinus och cosinus 1: lösning 3

Du kommer nu att se ett mönster.

![Sinus och cosinus 3: kommando 2](sinus_och_cosinus_1_3.png)

```c++
float x = 0;

void setup()
{
  size(314, 200);
}

void draw()
{
  final float y = (sin(x) * 50) + (height / 2);
  point(x, y);
  x = x + 1;  
}
```

![Solglasögon](EmojiSunglasses.png) | Det är en röra, eftersom vi blandar ungefär 100 bihålor
:-----------------:|:--------------------------------------------:

![Solglasögon](EmojiSunglasses.png) | `*50` gör att sinus förstoras femtio gånger
:-----------------:|:--------------------------------------------:

## Sinus och cosinus 1: uppgift 4

 * Ersätt `sin(x)` med `sin(x / 100)`

![Sinus och cosinus 1: kommando 4](sinus_och_cosinus_1_4.png)


\pagebreak

## Sinus och cosinus 1: lösning 4

Du ser nu en våg: en sinus!.

![Sinus och cosinus 1: kommando 4](sinus_och_cosinus_1_4.png)

```c++
float x = 0;

void setup()
{
  size(314, 200);
}

void draw()
{
  final float y = (sin(x / 25) * 50) + (height / 2);
  point(x, y);
  x = x + 1;  
}
```

## Sinus och Cosinus 1: uppgift 5

 * Ersätt `sin(x)` med `cos(x)`

![Sinus och cosinus 1: kommando 5](sinus_och_cosinus_1_5.png)


\pagebreak

## Sinus och cosinus 1: lösning 5

Du ser nu en våg: en sinus!.

![Sinus och cosinus 1: kommando 5](sinus_och_cosinus_1_5.png)

```c++
float x = 0;

void setup()
{
  size(314, 200);
}

void draw()
{
  final float y = (sin(x / 25) * 50) + (height / 2);
  point(x, y);
  x = x + 1;  
}
```


![Solglasögon](EmojiSunglasses.png) | `x / 25` ser till att vi går 25x lugnare genom sinus
:-----------------:|:-----------------------------:

\sidbrytning

## Sinus och cosinus 1: Slutuppgift

 * Rita både sinus och cosinus
 * Få varje våg att gå upp och ner en gång
 * Rita cosinus röd, sinus blå

![Sinus och cosinus 1: Slutuppgift](sinus_och_cosinus_1_End assignment.png)
