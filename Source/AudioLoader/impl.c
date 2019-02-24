/*
 * This is the implementation file for dr_wav, dr_flac, and dr_mp3.
 * This file is public domain.
 */

#define DR_WAV_IMPLEMENTATION
#define DR_FLAC_IMPLEMENTATION
#define DR_MP3_IMPLEMENTATION

#include "dr_wav.h"
#include "dr_flac.h"
#include "dr_mp3.h"


// Export the stl free function for use in C# code
void stl_c_free(void *mem)
{
	free(mem);
}

// Export the stl malloc function for use in C# code
void* stl_c_alloc(size_t size)
{
	return malloc(size);
}