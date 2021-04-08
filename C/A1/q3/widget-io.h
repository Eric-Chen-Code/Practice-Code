
// widget_machine_input() reads and interprets widget machine instructions
// effects: reads input
//          may generate output
//          may terminate program with error code

void widget_machine_input(void);


/********************************************************************
INPUT:          BEHAVIOUR:
reset           calls reset_machine()
status          calls display_status()
cog <n>         calls add_cog(n)
sprocket <n>    calls add_sprocket(n)
make            calls make()
empty           calls empty_bin()
resize <n>      calls replace_bin(n)
quit            causes widget_machine_input() to return
<anything else> causes the program to terminate with an error code
********************************************************************/

