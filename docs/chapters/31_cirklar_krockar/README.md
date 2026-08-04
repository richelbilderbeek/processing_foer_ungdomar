# 31. Cirklar krockar

I den här lektionen ska vi lära oss hur man mäter om två cirklar krockar.

\pagebreak

## 31.1. Cirklar krockar: uppgift 1

Skriv denna kod över:

```processing
float x1 = 150;
float y1 = 100;
float d1 = 180;
float r1 = d1 / 2;

void setup()
{
  size(300, 200);
}

void draw()
{
  fill(255, 255, 255);
  if (dist(mouseX, mouseY, x1, y1) < r1)
  {
    fill(255, 0, 0);  
  }
  ellipse(x1, y1, d1, d1);  
}
```

Vad ser du?

\pagebreak

### 31.1. Svar

En cirkel. Om du flyttar muspekaren in i den blir den röd.

![n cirkel. Om du flyttar muspekaren in i den blir den röd](cirklar_krockar_1.png)

\pagebreak

## 31.2. En andra cirkel

Lägg till en andra cirkel.
Skapa fyra nya variabler:

```processing
float x2 = 30;
float y2 = 100;
float d2 = 60;
float r2 = d2 / 2;
```

Rita en andra cirkel centrerad på `(x2, y2)` och bredd en
höjd `d2`.

\pagebreak

### 31.2. Svar

```processing
// ...
float x2 = 30;
float y2 = 100;
float d2 = 60;
float r2 = d2 / 2;

void setup()
{
  size(300, 200);
}

void draw()
{
  // ...
  ellipse(x2, y2, d2, d2);  
}
```

Vad ser du?

\pagebreak

## 31.3. Cirklar röra sig

Lägg till i `draw`-funktionen:

```processing
x2 = x2 + random(-1, 1);
y2 = y2 + random(-1, 1);
```

Vad ser du?

\pagebreak

### 31.3. Svar

Du kommer att se att den lilla cirkeln rör sig.

![Den lilla cirkeln rör sig](cirklar_krockar_3.png)

\pagebreak

## 31.4. Att krocka rätt

Ändra `if`-satsen till `draw`-funktionen till:

```processing
  if (dist(x1, y1, x2, y2) < r1 + r2)
  {
    fill(255, 0, 0);  
  }
```

Vad ser du?

### 31.4. Svar

Du kan ser cirklarna bli röda när de krockar:

![Cirklarna bli röda när de krockar](cirklar_krockar_4.png)

## 31.5. Slutuppgift

Få också den stora cirkeln att röra sig.
Krockar dem, så ska dem bli röda.

![Båda cirklar rör sig](cirklar_krockar_slutuppgift.png)
