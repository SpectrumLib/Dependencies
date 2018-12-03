// This file simply exists to make dr_wav and dr_flac compile their implementations. 
// This file is public domain.

#define DR_FLAC_IMPLEMENTATION
#include "dr_flac.h"

#define DR_WAV_IMPLEMENTATION
#include "dr_wav.h"

#ifdef __cplusplus
extern "C" {
#endif

void _stl_c_free(void* mem)
{
	free(mem);
}

#ifdef __cplusplus
}
#endif