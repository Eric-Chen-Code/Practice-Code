
// draw_input() reads and interprets drawing instructions
// effects: reads input
//          may generate output
//          may terminate program with error code

void draw_input(void);


/********************************************************************
INPUT:          BEHAVIOUR:
triangle <i>    calls draw_triangle(i), then prints a newline (\n)
n <i>           calls draw_n(i), then prints a newline (\n)
box <i>         calls draw_box(i), then prints a newline (\n)
xbox <i>        calls draw_xbox(i), then prints a newline (\n)
zigzag <i> <j>  calls draw_zigzag(i, j), then prints a newline (\n)
quit            causes draw_input() to return
<anything else> causes the program to terminate with an error code
********************************************************************/

