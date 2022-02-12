# Mus inuti kvadraten

Under den här lektionen ska vi lära oss hur man ser om muspekaren är inuti en fyrkant

\pagebreak

## Mus inuti ruta: kommando 1

Skriv denna kod över:

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  fill(255, 255, 255);
  if (mouseX > 25)
  {
    fill(255, 0, 0);  
  }
  rect(25, 50, 75, 100);  
}
```

Vad ser du? När blir fyrkanten röd?

\pagebreak

## Mus inuti kvadraten: lösning 1

Fyrkanten blir röd när du flyttar muspekaren
flyttar mer än 25 pixlar åt höger.

![](MuisBinnenVierkant1.png)

\pagebreak

## Mus inuti ruta: kommando 2

Ändra koden så att fyrkanten blir röd när du flyttar musen
är till vänster om den högra sidan av torget.

![](MuisBinnenVierkant2.png)

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
†
`if (x < 200) { }`|'Bästa dator, om `x` är mindre än 200, gör vad som står mellan klammerparenteser.'

\pagebreak

## Mus inuti kvadraten: lösning 2

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  fill(255, 255, 255);
  if (mouseX < 100)
  {
    fill(255, 0, 0);  
  }
  rect(25, 50, 75, 100);  
}
```

## Mus inuti ruta: kommando 3

Vi kommer nu att kombinera `om`-satserna!

Ersätt "om" du har nu med detta:

```c++
  if (mouseX > 25 && mouseX < 100)
  {
    fill(255, 0, 0);  
  }
```

![Solglasögon](EmojiSunglasses.png) | "&&" läses som "och"
†

\pagebreak

## Mus inuti kvadraten: lösning 3

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  fill(255, 255, 255);
  if (mouseX > 25 && mouseX < 100)
  {
    fill(255, 0, 0);  
  }
  rect(25, 50, 75, 100);  
}
```

## Mus inuti ruta: kommando 4

Gör nu fyrkanten röd när muspekaren är under toppen av kvadraten.

![](MouseInsideSquare1.png)

\pagebreak

## Mus inuti kvadraten: lösning 4

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  fill(255, 255, 255);
  if (mouseY > 50)
  {
    fill(255, 0, 0);  
  }
  rect(25, 50, 75, 100);  
}
```

## Mus inuti ruta: Slutuppgift

Gör rutan röd när muspekaren är i rutan. 

