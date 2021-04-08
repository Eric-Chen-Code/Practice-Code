// SEASHELL_READONLY 

// This is for including in str-list.c and str-create-destroy.c
// This is not to be included in any clients of this module.
// The client should include str-list.h and str-create-destroy.h

///////////////////////////////////////////////////////////////////////////
// Provided structure definitions: DO NOT CHANGE THESE
// NOTE: the sizes here must match the constant values in str-list.c
// These are in a separate file so they can be included (used) by
// str-create-destroy.c (to create str-create-destroy.ll)
// which implements str_list_create and str_list_destroy
// and it can be included in str-list.c (and still make the
// structure opaque to the client (i.e., in str-list.h).

struct str_info {
  char string[1000+1]; // 1 extra char for '\0':  MAX_STRING_LEN is 1000
  // for the client's use (see str_list_get_value and str_list_set_value)
  int value;
};

struct str_list {
  int len;
  int max_len;
  int max_str_len; // May not be necessary
  struct str_info strings[100000]; // MAX_STRINGS
};
///////////////////////////////////////////////////////////////////////////
