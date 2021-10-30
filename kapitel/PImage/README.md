# `PImage`

Under den här lektionen ska vi jobba med bilder!

![EmojiSunglasses.png](EmojiSunglasses.png)

\pagebreak

## `PImage`: Uppgift 1

Spara den här koden. Kör den här koden. Vad ser du?
   
```c++
PImage bild;

void setup() 
{
  size(640, 360);
  bild = loadImage("mario.png");
}

void draw() 
{
  background(255, 255, 255);
  image(bild, 100, 200);
}
```

\pagebreak

## `PImage`: lösning 1

Du får ett fel!

![Lösning 1](PImage1.png)

![Solglasögon](EmojiSunglasses.png) | Datorn säger att den inte kan hitta bilden!
:-----------------:|:------------------------------:

\pagebreak

## `PImage`: kommando 2

Gå till [https://raw.githubusercontent.com/richelbilderbeek/processing_foer_tonaaringar/master/kapitel/PImage/mario.png](https://raw.githubusercontent.com/richelbilderbeek/processing_foer_tonaaringar/master/kapitel/PImage/mario.png)
och ladda ner den här bilden av Mario.

![mario.png](mario.png)

Lägg den här bilden i en undermapp där din kod finns.

Här är en bild som visar var filerna ska vara:

![Mappstruktur](PImageFolderstructuur.png)

 * Skissen heter `PImage1.pde`. Därför finns den i mappen `PImage1`. Du hittar detta i Bearbetning under `Sketch` -> `Show Sketch Map`
 * Skissen har en mapp `data`. Den innehåller bilden "mario.png".

\pagebreak

## `PImage`: slutuppgift

![`PImage`: slutuppgift](PImageEindopdracht.png)

Gör programmet i helskärm, gör bakgrunden grön och lägg bilden i mitten.
