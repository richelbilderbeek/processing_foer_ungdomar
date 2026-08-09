# 45. `enum` och spelstatus

Du har redan användt **datatypen** `float`.
En datatyp är arten av data, till exempel, en kommavärde.
Men ibland vill man säga något annat, till exampel,
i vilken tillstånd en spel är. Med en **enum** kan du göra detta.

## 45.1

Här har vi kod som visar vår problem:

```processing
float game_state = 0;

void setup()
{
  size(320, 200);
  textSize(32);
}

void draw_menu()
{
  text("Menu", 0, 32);
}

void draw_game()
{
  text("Game", 0, 32);
}

void draw()
{
  if (game_state == 0) draw_menu();
  if (game_state == 1) draw_game();
}
```

Problemet är att det är onaturligt att använda en noll eller ett
för en speltillstånd. Istället ska vi envända en
uppräkning (på engelska: 'enumeration') med nyckelordet `enum`.

Här ser en uppräkning ut:

```processing
enum GameState {
  MENU, GAME;
}
```

Namnet av en uppräkning börja med en stor bokstav och har kamelfall
(engelsa: 'Camel case'),
dvs stora bokstäver för varje nästa ord.
Namn av uppräkningselementer är i skrikfall
(engelse: 'Scream case'),
dvs alla bokstäver är stora.

Med den här uppräkning i din kod, kann du översätta
den oklara kod här:

```processing
float game_state = 0;
```

till den här klarare kod:

```processing
GameState game_state = GameState.MENU;
```

Också på andra ställe kan ändra `0` till `GameState.MENU`
och `1` till `GameState.GAME`.

Får koden att funkar med en uppräkning.

### 45.1. Svar

```processing
enum GameState {
  MENU, GAME;
}

GameState game_state = GameState.MENU;

void setup()
{
  size(320, 200);
  textSize(32);
}

void draw_menu()
{
  text("Menu", 0, 32);
}

void draw_game()
{
  text("Game", 0, 32);
}

void draw()
{
  if (game_state == GameState.MENU) draw_menu();
  if (game_state == GameState.GAME) draw_game();
}
```

## 45.2. Slutuppgift

Lägg till en uppräkningsvärde: `GAME_WON` (man kan inte dö i ditt spel ännu).
Använder ett nytt funktion kallad `draw_game_won` för att visar detta.

I menyn, om du trycker på en tangent, blir tillståndet av spelet till `GAME`.
I spelet, om du trycker på en tangent, blir tillståndet `GAME_WON`.
När speleran har vunnit, om hen trycker på en tangent,
blir tillståndet `MENU` igen.
