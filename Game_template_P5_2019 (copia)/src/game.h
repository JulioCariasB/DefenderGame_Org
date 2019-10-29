#include "screen.h"
#include "keypad.h"

uint8_t fila;
uint8_t colu;

uint8_t disparoFila;
uint8_t disparoColu;
uint8_t disparoFila1;
uint8_t disparoColu1;
uint8_t disparoFila2;
uint8_t disparoColu2;
uint8_t disparoFila3;
uint8_t disparoColu3;

void startGame();
void drawNave();
void move();
void drawDisparo(uint8_t f, uint8_t c);
void movimientoDisparo();