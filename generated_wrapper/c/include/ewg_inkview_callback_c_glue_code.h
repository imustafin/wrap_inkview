#ifndef EWG_CALLBACK_INKVIEW___
#define EWG_CALLBACK_INKVIEW___

#include <inkview.h>

typedef int (*iv_handler_eiffel_feature) (void *a_class, int type, int par1, int par2);

void* iv_handler_object;
iv_handler_eiffel_feature iv_handler_address_1;
iv_handler_eiffel_feature iv_handler_address_2;
iv_handler_eiffel_feature iv_handler_address_3;

void set_iv_handler_object (void* a_class);

void release_iv_handler_object (void);

void* get_iv_handler_stub_1 ();
void* get_iv_handler_stub_2 ();
void* get_iv_handler_stub_3 ();

void set_iv_handler_entry_1 (void* a_feature);
void set_iv_handler_entry_2 (void* a_feature);
void set_iv_handler_entry_3 (void* a_feature);

int call_iv_handler (void *a_function, int type, int par1, int par2);


#endif
