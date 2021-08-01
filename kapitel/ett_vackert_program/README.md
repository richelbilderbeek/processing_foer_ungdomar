# Ett vackert program

Processing är ett programmeringsspråk som utvecklats för artister
och mycket lämplig för att göra spel och vackra saker.

I den här lektionen lär vi oss

 * hur vi börjar bearbeta
 * hur man kopierar kod till Processing
 * hur man startar programmet

Så här ser programmet ut:

![Ett vackert program](ett_vackert_program.png)

\pagebreak

## Ett trevligt program: intro

Behandlingen börjar med ett tomt program utan kod:

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
För nu är det tillräckligt att veta att det gör något vackert.

![Processing med kod](processing_med_kod.png)

\pagebreak

## Ett trevligt program: slutuppgift

 * Börja bearbeta
 * Kör den här koden genom att klicka på knappen "Run"

![Run knappen](processing_run.png)

![Sunglasses](EmojiSunglasses.png) | Framgång? Visa detta för en vuxen för ett klistermärke!
:-------------:|:----------------------------------------: 

