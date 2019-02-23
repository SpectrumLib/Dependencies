/*
 * This is the implementation file for stb_image.h and stb_image_resize.h.
 * This file is public domain.
 */

#define STB_IMAGE_IMPLEMENTATION
#define STB_IMAGE_RESIZE_IMPLEMENTATION

// Enable only the image loaders we want
#define STBI_ONLY_JPEG
#define STBI_ONLY_PNG
#define STBI_ONLY_BMP
#define STBI_ONLY_TGA

#include "stb_image.h"
#include "stb_image_resize.h"


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
