// SEASHELL_READONLY

struct str_list;  // opaque structure

//////////////////////////////////////////////////////////////////
// These are provided by us elsewhere (e.g., str-create-destroy.ll)

// str_list_create() creates a new str list and returns a pointer
//    to that str list. The values associated with each string
//    are initialized to 0 and each string contains the empty string.
// effects: allocates memory (client must call str_list destroy)
// time: O(N) where n is the number of elements in the list
struct str_list *str_list_create(void);

// str_list_destroy(l) removes memory for l
// effects: l is no longer valid
// requires: l is not NULL
// time: O(1) 
void str_list_destroy(struct str_list *l);
//////////////////////////////////////////////////////////////////
