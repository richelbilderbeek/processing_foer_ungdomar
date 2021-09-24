# Ett vackert program

Processing är ett programmeringsspråk som har utvecklats för designers
och är mycket lämpligt för att göra spel och vackra saker.

Under den här lektionen lär vi oss

 * hur man kopierar kod till Processing
 * hur man startar programmet

Så här ser programmet ut:

![Ett vackert program](ett_vackert_program.png)

\pagebreak

## Ett trevligt program: intro

När du öppnar programmet ser du ett tomt program utan kod:

![Processing utan kod](processing_utan_kod.png)

\pagebreak

Detta är programmeringskoden som vi kommer att använda:

```c++
void setup()
{
  size(256,256);  
}

void draw() 
{
  fill(mouseX, mouseY, mouseX + mouseY);
  ellipse(mouseX, mouseY, 50, 50);  
  fill(mouseY, mouseX, 255);
  ellipse(mouseY, mouseX, 50, 50);  
}
```

Vi kommer att förklara exakt vad koden gör senare.
Just nu räcker det att veta att den gör något vackert.

![Processing med kod](processing_med_kod.png)

\pagebreak

## Ett trevligt program: slutuppgift

 * Skriv av koden, precis som den ser ut, i programmet
 * Kör den här koden genom att klicka på knappen "Run"

![Run knappen](processing_run.png)

![Sunglasses](EmojiSunglasses.png) | Gick det bra? Visa det för en vuxen så får du ett klistermärke!
:-------------:|:----------------------------------------: 

