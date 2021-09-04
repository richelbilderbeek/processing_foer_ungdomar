# `width` och `height`

I den här lektionen lär du dig hur användbara 'bredd' och 'höjd' är

! [Gameboy har en skärm på 160 x 144 pixlar] (Gameboy.jpg)

## `width` en `height`: intro

```c++
void setup() 
{
  size(256, 256);
}

void draw()
{
  ellipse(128, 128, 256, 256);  
}
```

! [Dator] (EmojiComputer.png) | ! [Smiley] (EmojiSmiley.png)
: ----------: |: -------------- ---------------:
`storlek (800, 400);` | 'Kära dator, gör ett fönster 800 pixlar brett och 400 pixlar högt.'
`ellips (60,50,40,30);` | 'Dear computer, draw a oval' 60 'pixels to the right, 50 pixels down, which is 40 pixels wide and 30 pixels high.'

Skriv in koden ovan och kör den.

! [`bredd` och` höjd`: intro] (WidthHeight_Intro.png)

## `bredd` och` höjd`: kommando 1

! [`bredd` och` höjd`: kommando 1] (WidthHeight_1.png)

Gör nu fönstret 128 x 128 pixlar litet.

## `bredd` och` höjd`: lösning

```c++
void setup() 
{
  size(128, 128);
}

void draw()
{
  ellipse(64, 64, 128, 128);  
}
```

## `bredd` och` höjd`


'bredd' och 'höjd' är inbyggda i bearbetning,
så att ditt program fortfarande fungerar när du ändrar storlek på skärmen.

Nu fungerar våra program bara för en skärm av en viss storlek.
Varje gång du väljer en ny storlek måste du skriva in mycket kod igen!

Om vi ​​vet skärmens bredd och höjd vet vi också vilka siffror som ska vara i ellips:

 * ovalens x -koordinat är halva bredden
 * y -koordinaten för ovalen är halva höjden
 * ovalens bredd är skärmens bredd
 * höjden på ovalen är skärmens höjd

! [Vad du vill säga] (WidthHeight.png)

Bearbetningen känner till skärmens bredd och höjd:
Skärmens bredd kallas 'bredd' och höjden kallas 'höjd'

! [Dator] (EmojiComputer.png) | ! [Smiley] (EmojiSmiley.png)
: -----------------: |: ---------------------- ------- :
`width` | 'Dear computer, ange här hur många pixlar fönstret är brett.'
`höjd` | 'Kära dator, ange här hur många pixlar fönstret är högt.'

Dessa siffror bestäms när du använder storlek för att definiera storleken på din skärm.

\pagebreak

## `bredd` och` höjd`: kommando 2

! [`bredd` och` höjd`: kommando 2] (WidthHeight_2.png)

Skapa ett program som ritar en oval som fyller skärmen:

 * Ändra den första '64' till 'bredd / 2'
 * Ändra den andra '64' till 'höjd / 2'
 * Ändra den första `128` till` bredd`.
 * Ändra den andra `128` till` höjd`.

! [Dator] (EmojiComputer.png) | ! [Smiley] (EmojiSmiley.png)
: -----------------: |: ---------------------- ------- :
`/` | 'dividerat med', en delningsrad som du har med bråk, `:`

## `bredd` och` höjd`: lösning 2


```c++
void setup() 
{
  size(128, 128);
}

void draw()
{
  ellipse(width / 2, height / 2, width, height);  
}
```

## `bredd` och` höjd`: kommando 3

! [`bredd` och` höjd`: kommando 3] (WidthHeight_3.png)

Ställ in cirkelns mitt för att koordinera `(0, 0)`.

\pagebreak

## `bredd` och` höjd`: lösning 3

```c++
void setup() 
{
  size(128, 128);
}

void draw()
{
  ellipse(0, 0, width, height);  
}
```

## `bredd` och` höjd`: kommando 4

! [`bredd` och` höjd`: kommando 4] (WidthHeight_4.png)

Skapa en andra cirkel centrerad i det övre högra hörnet.
Använd "bredd" och/eller "höjd".

\pagebreak

## `bredd` och` höjd`: lösning 4

```c++
void setup() 
{
  size(128, 128);
}

void draw()
{
  ellipse(0, 0, width, height);  
  ellipse(width, 0, width, height);  
}
```

## `bredd` och` höjd`: kommando 5

![`width` en `height`: opdracht 5](WidthHeight_5.png)

Gör en tredje cirkel centrerad i nedre vänstra hörnet.
Använd "bredd" och/eller "höjd".

## `bredd` och` höjd`: lösning 5

```c++
void setup() 
{
  size(128, 128);
}

void draw()
{
  ellipse(0, 0, width, height);  
  ellipse(width, 0, width, height);  
  ellipse(0, height, width, height);  
}
```

\pagebreak

## `bredd` och` höjd`: sista kommandot

! [`bredd` och` höjd`: slutuppgift] (WidthHeight_End -uppgift.png)

 * Gör fönstret 300 pixlar brett och 200 pixlar högt
 * Gör en fjärde cirkel centrerad i nedre högra hörnet
 * Gör en femte cirkel som är i mitten och är dubbelt så liten

## `bredd` och` höjd`: vänster

 * `bredd` och` höjd`: [YouTube] (https://youtu.be/pbj0fUn0qVQ), [mp4] (http://www.richelbilderbeek.nl/width_en_height.mp4) 

