// This is a very simple test for your queue module
// feel free to modify it or create your own test client

#include <assert.h>
#include "queue.h"
#include "cs136-trace.h"

int main(void) {
  struct queue *q = queue_create();
  queue_add_back(42, q);
  queue_add_back(50, q);
  assert(queue_front(q) == 42);
  assert(queue_remove_front(q) == 42);
  assert(queue_front(q) == 50);
  assert(queue_remove_front(q) == 50);
  assert(queue_is_empty(q));
  queue_destroy(q);
}
