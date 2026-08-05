# 33. Funktioner 1

Funktioner hjälper en programmerare att uttrycka sina tankar bättre:
istället av att skriva en massa rad med kod, kan man skriva, t.ex.
`move_enemies()`, eller `draw_menu()`.

![Smiley with sunglasses](EmojiSunglasses.png) | Nu är det dags att vår kod blir skriven i engelska
:-------------:|:----------------------------------------:

## 33.1. Funktionen måste göra vad dem säger

Kolla på en minimalt Processing program:

```processing
void setup() {}

void draw() {}
```

Den här program använder två funktioner: `setup` och `draw`.
Namnet av `setup` funktionen är bra: den gör vad den säger.
Namnet av `draw` funktionen blev från bra till dåligt:
i våra första program bara ritade vi saker. Men nudagens reagerar vi
också på tangenbordet, kankse spelar musik, kankse skriva en fil.

![Smiley with bowtie](EmojiBowtie.png) | En bra funktion gör exakt vad den säger
:-------------:|:----------------------------------------:

Här har vi ett mer komplett exempel:

```processing
float x = 0;
float y = 0;

void setup()
{
  size(200,200);
  x = width / 2;
  y = height / 2;
}

void draw()
{
  if (keyPressed)
  {
    if (key == 'w') y = y - 1;
    if (key == 'd') x = x + 1;
    if (key == 's') y = y + 1;
    if (key == 'a') x = x - 1;
  }
  if (x < 0) y = width;
  if (x > width) x = 0;
  if (y < 0) y = height;
  if (y > height) y = 0;
  point(x,y);
}
```

Tror du att `setup` och `draw` funktionerna gör vad den säger? Varför ja eller nej?

### 33.1. Svar

`setup`funktionen gör vad den säger: den gör saker för att förbera spelet.

`draw`funktion gör mer än vad den säger:

- först reagerer den på tangentborden
- efter detta, hållar den spelaren i fönstret
- sist ritar den spelaren

## 33.2. Att lägga till kommentar

Den första steg att förenkla din kod är med kommentarer som sammanfattar
vad några rader gör, t.ex:

```processing
float x = 0;
float y = 0;

void setup()
{
  size(200,200);
  x = width / 2;
  y = height / 2;
}

void draw()
{
  // Respond to keyboard
  if (keyPressed)
  {
    if (key == 'w') y = y - 1;
    if (key == 'd') x = x + 1;
    if (key == 's') y = y + 1;
    if (key == 'a') x = x - 1;
  }

  // Keep player on the screen
  if (x < 0) y = width;
  if (x > width) x = 0;
  if (y < 0) y = height;
  if (y > height) y = 0;

  // Draw the player
  point(x,y);
}
```

![Smiley with bowtie](EmojiBowtie.png) | En kommentar är inte läst av din dator
:-------------:|:----------------------------------------:

Kolla på den kod här nere:
vilka kommentar kann du skriva här?
Om du tror det är bättre, du får ändra radföljden!

```processing
float cannon_angle = 0;

void setup()
{
  size(300, 200);
  strokeWeight(5);
}

void draw()
{
  background(255, 255, 255);
  final float x_mid = width / 2;
  final float y_mid = height / 2;
  final float x_cannon = x_mid + (cos(cannon_angle) * 20);
  final float y_cannon = y_mid - (sin(cannon_angle) * 20);  
  line(x_mid, y_mid, x_cannon, y_cannon);
  ellipse(x_mid, y_mid, 20, 20);
}
```

### 33.2. Svar

Bara den `draw` funktion har saker:

```processing
void draw()
{
  // Clear the background
  background(255, 255, 255);

  // Calculate where to draw the cannon
  final float x_mid = width / 2;
  final float y_mid = height / 2;
  final float x_cannon = x_mid + (cos(cannon_angle) * 20);
  final float y_cannon = y_mid - (sin(cannon_angle) * 20);  

  // Draw the cannon
  line(x_mid, y_mid, x_cannon, y_cannon);
  ellipse(x_mid, y_mid, 20, 20);
}
```

## 33.3. Att skapa en procedyr

En procedyr en type av funktion som har inga argument (vad det än är)
och ger inget värde tillbaka (vad det än är). Du känner redan två:
`setup` och `draw`.

Att skapa en procedyr är lätt:

```processing
void name_of_procedure()
{
  // Code in procedure
}
```

Att använda en procedyr i din kod är lätt också:

```processing
name_of_procedure();
```

Nu använder vi den sista exempel, och visar hur det ser ut:

```processing
void clear_background()
{
  background(255, 255, 255);
}

void draw_cannon()
{
  // Calculate where to draw the cannon
  final float x_mid = width / 2;
  final float y_mid = height / 2;
  final float x_cannon = x_mid + (cos(cannon_angle) * 20);
  final float y_cannon = y_mid - (sin(cannon_angle) * 20);  

  line(x_mid, y_mid, x_cannon, y_cannon);
  ellipse(x_mid, y_mid, 20, 20);
}

void draw()
{
  clear_background()
  draw_cannon();
}
```

Så har vi just skapad en `draw` funktion (som är en procedyr)
som är väldigt lätt att läsa: den är precis engelska, utan konstigheter!

![Smiley with sunglasses](EmojiSunglasses.png) | En bra programmerare skriver kod som är mestadels lätt att läsa
:-------------:|:----------------------------------------:

Vi har också ersätt kommentarer med namn av funktioner.
Det är klokt, för det behövs inte att säga samma sak två gånger.

![Smiley with bowtie](EmojiBowtie.png) | En bra programmerare föredra att använda klara funktionnamn över att skriva en kommentar
:-------------:|:----------------------------------------:

Ordningen av funktionerna har inget betydelse: du får ordnar det som du
tror är bäst.

## 33.4. Slutuppgift

I ditt eget program, använder åtminstone 5 procedyr.
Varje procedyr måste göra precis vad den säger.
Du får försvara dina val, men om en lärare är inte övertigad,
räknas en procedyr inte.


