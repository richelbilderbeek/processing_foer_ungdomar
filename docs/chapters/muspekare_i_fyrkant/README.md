# 29. Muspekare i fyrkant

Under den här lektionen ska vi lära oss hur man ser om muspekaren är inuti en fyrkant

\pagebreak

## 29.1. Muspekare i fyrkant: uppgift 1

Skriv denna kod över:

```processing
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

## 29.2. Muspekare i fyrkant: lösning 1

Fyrkanten blir röd när du flyttar muspekaren
flyttar mer än 25 pixlar åt höger.

![](muspekare_i_fyrkant_1.png)

\pagebreak

## 29.3. Muspekare i fyrkant: uppgift 2

Ändra koden så att fyrkanten blir röd när du flyttar musen
är till vänster om den högra sidan av torget.

![](muspekare_i_fyrkant_2.png)

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
†
`if (x < 200) { }`|'Bästa dator, om `x` är mindre än 200, gör vad som står mellan klammerparenteser.'

\pagebreak

## 29.4. Muspekare i fyrkant: lösning 2

```processing
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

## 29.5. Muspekare i fyrkant: uppgift 3

Vi kommer nu att kombinera `om`-satserna!

Ersätt "om" du har nu med detta:

```processing
  if (mouseX > 25 && mouseX < 100)
  {
    fill(255, 0, 0);  
  }
```

![Solglasögon](EmojiSunglasses.png) | "&&" läses som "och"
:-----:|:--------------------------------------------:

\pagebreak

## 29.6. Muspekare i fyrkant: lösning 3

```processing
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

## 29.7. Muspekare i fyrkant: uppgift 4

Gör nu fyrkanten röd när muspekaren är under toppen av kvadraten.

![](muspekare_i_fyrkant_4.png)

\pagebreak

## 29.8. Muspekare i fyrkant: lösning 4

```processing
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

## 29.9. Muspekare i fyrkant: slutuppgift

Gör rutan röd när muspekaren är i rutan. 

