#include <ewg_eiffel.h>
#include <ewg_inkview_callback_c_glue_code.h>

#ifdef _MSC_VER
#pragma warning (disable:4715) // Not all control paths return a value
#endif
void* iv_handler_object =  NULL;
iv_handler_eiffel_feature iv_handler_address_1 = NULL;
iv_handler_eiffel_feature iv_handler_address_2 = NULL;
iv_handler_eiffel_feature iv_handler_address_3 = NULL;

void set_iv_handler_object (void* a_object)
{
	if (a_object) {
		iv_handler_object = eif_protect(a_object);
	} else { 
		iv_handler_object = NULL;
	}
}

void release_iv_handler_object ()
{
	eif_wean (iv_handler_object);
}

int iv_handler_stub_1 (int type, int par1, int par2)
{
	if (iv_handler_object != NULL && iv_handler_address_1 != NULL)
	{
		return iv_handler_address_1 (eif_access(iv_handler_object), type, par1, par2);
	}
}

int iv_handler_stub_2 (int type, int par1, int par2)
{
	if (iv_handler_object != NULL && iv_handler_address_2 != NULL)
	{
		return iv_handler_address_2 (eif_access(iv_handler_object), type, par1, par2);
	}
}

int iv_handler_stub_3 (int type, int par1, int par2)
{
	if (iv_handler_object != NULL && iv_handler_address_3 != NULL)
	{
		return iv_handler_address_3 (eif_access(iv_handler_object), type, par1, par2);
	}
}

void set_iv_handler_entry_1 (void* a_feature){
	iv_handler_address_1 = (iv_handler_eiffel_feature) a_feature;
}

void set_iv_handler_entry_2 (void* a_feature){
	iv_handler_address_2 = (iv_handler_eiffel_feature) a_feature;
}

void set_iv_handler_entry_3 (void* a_feature){
	iv_handler_address_3 = (iv_handler_eiffel_feature) a_feature;
}

void* get_iv_handler_stub_1 (){
	return (void*) iv_handler_stub_1;
}

void* get_iv_handler_stub_2 (){
	return (void*) iv_handler_stub_2;
}

void* get_iv_handler_stub_3 (){
	return (void*) iv_handler_stub_3;
}

int call_iv_handler (void *a_function, int type, int par1, int par2)
{
	return ((int (*) (int type, int par1, int par2))a_function) (type, par1, par2);
}

