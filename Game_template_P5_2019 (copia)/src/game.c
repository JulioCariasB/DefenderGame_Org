#include "game.h"

void startGame()
{
    fila = 10;
    colu = 10;

    disparoFila = 100;
    disparoFila1 = 100;
    disparoFila2 = 100;
    disparoFila3 = 100;

    keypad_init();

    while(1)
    {
        set_color(BLACK, BLACK);
        clear_screen();
        drawNave();
        if(disparoFila != 100)
        {
            drawDisparo(disparoFila, disparoColu);
            movimientoDisparo();
            
        }
        
        if(disparoFila1 != 100)
        {
            drawDisparo(disparoFila1, disparoColu1);
            movimientoDisparo();
            
        }

        if(disparoFila2 != 100)
        {
            drawDisparo(disparoFila2, disparoColu2);
            movimientoDisparo();
        }

        if(disparoFila3 != 100)
        {
            drawDisparo(disparoFila3, disparoColu3);
            movimientoDisparo();
        }
        move();
        delay_ms(100);
    }


}

void drawNave()
{
    set_color(MAGENTA, MAGENTA);
    set_cursor(fila,colu);
    put_char(0);
    set_cursor(fila-1,colu-1);
    put_char(0);
    set_cursor(fila,colu-1);
    put_char(0);
    set_cursor(fila+1,colu-1);
    put_char(0);
    set_cursor(fila+1,colu);
    put_char(0);
    set_cursor(fila+1,colu+1);
    put_char(0);
    set_cursor(fila+1,colu+2);
    put_char(0);
    set_cursor(fila+1,colu-2);
    put_char(0);

}

void move()
{
    uint8_t tecla = keypad_getkey();
    switch(tecla)
    {
            //Para izquierda
            case 1:
                if(colu>=3)
                {
                   colu = colu-1; 
                }else
                {
                    colu = colu+1;
                }
                break;
            //Para derecha
            case 2:
                if(colu<=MAX_COLS-4)
                {
                    colu = colu+1;
                }else
                {
                    colu = colu-1;
                }      
                break;

            //Para abajo
            case 3:
                if(fila<=MAX_ROWS-3)
                {
                    fila = fila+1;
                }else{
                    fila = fila-1;
                }
                break;
            //Para arriba
            case 4:
                if(fila>=3)
                {
                    fila = fila-1;                    
                }else{
                    fila = fila+1;
                }
                break;
            case 6:
                if(disparoFila == 100)
                {
                    disparoColu = colu+3;
                    disparoFila = fila+1;
                    break;
                }
                
                if(disparoFila1 == 100)
                {
                    disparoColu1 = colu+3;
                    disparoFila1 = fila+1;
                    break;
                }

                if(disparoFila2 == 100)
                {
                    disparoColu2 = colu+3;
                    disparoFila2 = fila+1;
                    break;
                }

                if(disparoFila3 == 100)
                {
                    disparoColu3 = colu+3;
                    disparoFila3 = fila+1;
                    break;
                }
                break;
    } 
}




void drawDisparo(uint8_t f, uint8_t c)
{

    set_color(RED, LIGHT_GREEN);
    set_cursor(f, c);
    put_char(0);
    set_cursor(f, c+1);
    put_char(0);
    set_cursor(f, c+2);
    put_char(0);
    set_cursor(f, c+3);
    put_char(0);
}

void movimientoDisparo()
{
    disparoColu = disparoColu+1;

    if(disparoColu == MAX_COLS-4)
    {
        disparoFila = 100;
    }

    disparoColu1 = disparoColu1+1;

    if(disparoColu1 == MAX_COLS-4)
    {
        disparoFila1 = 100;
    }

        disparoColu2 = disparoColu2+1;

    if(disparoColu2 == MAX_COLS-4)
    {
        disparoFila2 = 100;
    }

        disparoColu3 = disparoColu3+1;

    if(disparoColu3 == MAX_COLS-4)
    {
        disparoFila3 = 100;
    }
}

