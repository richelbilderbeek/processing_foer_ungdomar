# 45. `enum` och spelstatus

`enum` tilllåter en uppräkning.



```
public enum GameState {
  MENU, GAME;
}

GameState s;

void setup() {
  s = GameState.MENU;
}

void draw() {
  if (s == GameState.MENU) {
    s = GameState.GAME;
  }
  else if (s == GameState.GAME) {
    s = GameState.MENU;
  }
  print(s);
}
```
