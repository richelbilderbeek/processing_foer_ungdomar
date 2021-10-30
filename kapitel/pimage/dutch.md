# `PImage`

I den här lektionen ska vi jobba med bilder!

![EmojiSunglasses.png](EmojiSunglasses.png)

\sidbrytning

## `PImage`: kommando 1

Spara den här koden. Kör den här koden. Vad ser du?
   
```c++
Bild bild;

void setup()
{
  storlek (640, 360);
  image = loadImage("mario.png");
}

void draw()
{
  bakgrund(255, 255, 255);
  image(bild, 100, 200);
}
```

\sidbrytning

## `PImage`: lösning 1

Du får ett fel!

![Lösning 1](PImage1.png)

![Solglasögon](EmojiSunglasses.png) | Datorn säger att den inte kan hitta bilden!
:-----------------:|:---------------------- ------- :

\sidbrytning

## `PImage`: kommando 2

Gå till [https://github.com/richebilderbeek/Dojo/blob/master/LessenProcessing/PImage/mario.png](https://github.com/richebilderbeek/Dojo/blob/master/LessenProcessing/PImage/mario. png)
och ladda ner den här bilden av Mario.

![mario.png](mario.png)

Lägg den här bilden i en undermapp där din kod finns.

Här är en bild som visar var filerna ska vara:

![Mappstruktur](PImageFolder structure.png)

 * Skissen heter `PImage1.pde`. Därför finns den i mappen `PImage1`. Du hittar detta i Bearbetning under `Sketch` -> `Show Sketch Map`
 * Skissen har en mapp `data`. Den innehåller bilden "mario.png".

\sidbrytning

## `PImage`: sista kommandot

![`PImage`: final command](PImage Final command.png)

Gör programmet i helskärm, gör bakgrunden grön och lägg bilden i mitten.
