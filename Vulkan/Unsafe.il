.class public auto ansi abstract sealed beforefieldinit _Unsafe
	extends [System.Runtime]System.Object
{
	// Methods
	.method public hidebysig static 
		!!T Read<T> (
			void* source
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x20d0
		// Code size 7 (0x7)
		.maxstack 1

		IL_0000: ldarg.0
		IL_0001: ldobj !!T
		IL_0006: ret
	} // end of method _Unsafe::Read

	.method public hidebysig static 
		!!T ReadUnaligned<T> (
			void* source
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x20e4
		// Code size 10 (0xa)
		.maxstack 1

		IL_0000: ldarg.0
		IL_0001: unaligned. 1
		IL_0004: ldobj !!T
		IL_0009: ret
	} // end of method _Unsafe::ReadUnaligned

	.method public hidebysig static 
		!!T ReadUnaligned<T> (
			uint8& source
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x20fc
		// Code size 10 (0xa)
		.maxstack 1

		IL_0000: ldarg.0
		IL_0001: unaligned. 1
		IL_0004: ldobj !!T
		IL_0009: ret
	} // end of method _Unsafe::ReadUnaligned

	.method public hidebysig static 
		void Write<T> (
			void* destination,
			!!T 'value'
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2114
		// Code size 8 (0x8)
		.maxstack 2

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: stobj !!T
		IL_0007: ret
	} // end of method _Unsafe::Write

	.method public hidebysig static 
		void WriteUnaligned<T> (
			void* destination,
			!!T 'value'
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2128
		// Code size 11 (0xb)
		.maxstack 2

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: unaligned. 1
		IL_0005: stobj !!T
		IL_000a: ret
	} // end of method _Unsafe::WriteUnaligned

	.method public hidebysig static 
		void WriteUnaligned<T> (
			uint8& destination,
			!!T 'value'
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2140
		// Code size 11 (0xb)
		.maxstack 2

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: unaligned. 1
		IL_0005: stobj !!T
		IL_000a: ret
	} // end of method _Unsafe::WriteUnaligned

	.method public hidebysig static 
		void Copy<T> (
			void* destination,
			!!T& source
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2158
		// Code size 13 (0xd)
		.maxstack 2

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldobj !!T
		IL_0007: stobj !!T
		IL_000c: ret
	} // end of method _Unsafe::Copy

	.method public hidebysig static 
		void Copy<T> (
			!!T& destination,
			void* source
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2174
		// Code size 13 (0xd)
		.maxstack 2

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldobj !!T
		IL_0007: stobj !!T
		IL_000c: ret
	} // end of method _Unsafe::Copy

	.method public hidebysig static 
		void* AsPointer<T> (
			!!T& 'value'
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2190
		// Code size 3 (0x3)
		.maxstack 1

		IL_0000: ldarg.0
		IL_0001: conv.u
		IL_0002: ret
	} // end of method _Unsafe::AsPointer

	.method public hidebysig static 
		int32 SizeOf<T> () cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x21a0
		// Code size 7 (0x7)
		.maxstack 1

		IL_0000: sizeof !!T
		IL_0006: ret
	} // end of method _Unsafe::SizeOf

	.method public hidebysig static 
		void CopyBlock (
			void* destination,
			void* source,
			uint32 byteCount
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x21b4
		// Code size 6 (0x6)
		.maxstack 3

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: cpblk
		IL_0005: ret
	} // end of method _Unsafe::CopyBlock

	.method public hidebysig static 
		void CopyBlock (
			uint8& destination,
			uint8& source,
			uint32 byteCount
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x21c8
		// Code size 6 (0x6)
		.maxstack 3

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: cpblk
		IL_0005: ret
	} // end of method _Unsafe::CopyBlock

	.method public hidebysig static 
		void CopyBlockUnaligned (
			void* destination,
			void* source,
			uint32 byteCount
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x21dc
		// Code size 9 (0x9)
		.maxstack 3

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: unaligned. 1
		IL_0006: cpblk
		IL_0008: ret
	} // end of method _Unsafe::CopyBlockUnaligned

	.method public hidebysig static 
		void CopyBlockUnaligned (
			uint8& destination,
			uint8& source,
			uint32 byteCount
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x21f4
		// Code size 9 (0x9)
		.maxstack 3

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: unaligned. 1
		IL_0006: cpblk
		IL_0008: ret
	} // end of method _Unsafe::CopyBlockUnaligned

	.method public hidebysig static 
		void InitBlock (
			void* startAddress,
			uint8 'value',
			uint32 byteCount
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x220c
		// Code size 6 (0x6)
		.maxstack 3

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: initblk
		IL_0005: ret
	} // end of method _Unsafe::InitBlock

	.method public hidebysig static 
		void InitBlock (
			uint8& startAddress,
			uint8 'value',
			uint32 byteCount
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2220
		// Code size 6 (0x6)
		.maxstack 3

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: initblk
		IL_0005: ret
	} // end of method _Unsafe::InitBlock

	.method public hidebysig static 
		void InitBlockUnaligned (
			void* startAddress,
			uint8 'value',
			uint32 byteCount
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2234
		// Code size 9 (0x9)
		.maxstack 3

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: unaligned. 1
		IL_0006: initblk
		IL_0008: ret
	} // end of method _Unsafe::InitBlockUnaligned

	.method public hidebysig static 
		void InitBlockUnaligned (
			uint8& startAddress,
			uint8 'value',
			uint32 byteCount
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x224c
		// Code size 9 (0x9)
		.maxstack 3

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: unaligned. 1
		IL_0006: initblk
		IL_0008: ret
	} // end of method _Unsafe::InitBlockUnaligned

	.method public hidebysig static 
		!!T As<class T> (
			object o
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2264
		// Code size 2 (0x2)
		.maxstack 1

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method _Unsafe::As

	.method public hidebysig static 
		!!T& AsRef<T> (
			void* source
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2274
		// Code size 4 (0x4)
		.maxstack 1
		.locals (
			[0] int32&
		)

		IL_0000: ldarg.0
		IL_0001: stloc.0
		IL_0002: ldloc.0
		IL_0003: ret
	} // end of method _Unsafe::AsRef

	.method public hidebysig static 
		!!T& AsRef<T> (
			!!T& source
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		.param [1]
		.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2284
		// Code size 2 (0x2)
		.maxstack 1

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method _Unsafe::AsRef

	.method public hidebysig static 
		!!TTo& As<TFrom, TTo> (
			!!TFrom& source
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2294
		// Code size 2 (0x2)
		.maxstack 1

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method _Unsafe::As

	.method public hidebysig static 
		!!T& Add<T> (
			!!T& source,
			int32 elementOffset
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x22a4
		// Code size 12 (0xc)
		.maxstack 3

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: sizeof !!T
		IL_0008: conv.i
		IL_0009: mul
		IL_000a: add
		IL_000b: ret
	} // end of method _Unsafe::Add

	.method public hidebysig static 
		void* Add<T> (
			void* source,
			int32 elementOffset
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x22bc
		// Code size 12 (0xc)
		.maxstack 3

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: sizeof !!T
		IL_0008: conv.i
		IL_0009: mul
		IL_000a: add
		IL_000b: ret
	} // end of method _Unsafe::Add

	.method public hidebysig static 
		!!T& Add<T> (
			!!T& source,
			native int elementOffset
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x22d4
		// Code size 11 (0xb)
		.maxstack 3

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: sizeof !!T
		IL_0008: mul
		IL_0009: add
		IL_000a: ret
	} // end of method _Unsafe::Add

	.method public hidebysig static 
		!!T& AddByteOffset<T> (
			!!T& source,
			native int byteOffset
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x22ec
		// Code size 4 (0x4)
		.maxstack 2

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: add
		IL_0003: ret
	} // end of method _Unsafe::AddByteOffset

	.method public hidebysig static 
		!!T& Subtract<T> (
			!!T& source,
			int32 elementOffset
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x22fc
		// Code size 12 (0xc)
		.maxstack 3

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: sizeof !!T
		IL_0008: conv.i
		IL_0009: mul
		IL_000a: sub
		IL_000b: ret
	} // end of method _Unsafe::Subtract

	.method public hidebysig static 
		void* Subtract<T> (
			void* source,
			int32 elementOffset
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2314
		// Code size 12 (0xc)
		.maxstack 3

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: sizeof !!T
		IL_0008: conv.i
		IL_0009: mul
		IL_000a: sub
		IL_000b: ret
	} // end of method _Unsafe::Subtract

	.method public hidebysig static 
		!!T& Subtract<T> (
			!!T& source,
			native int elementOffset
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x232c
		// Code size 11 (0xb)
		.maxstack 3

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: sizeof !!T
		IL_0008: mul
		IL_0009: sub
		IL_000a: ret
	} // end of method _Unsafe::Subtract

	.method public hidebysig static 
		!!T& SubtractByteOffset<T> (
			!!T& source,
			native int byteOffset
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2344
		// Code size 4 (0x4)
		.maxstack 2

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: sub
		IL_0003: ret
	} // end of method _Unsafe::SubtractByteOffset

	.method public hidebysig static 
		native int ByteOffset<T> (
			!!T& origin,
			!!T& target
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2354
		// Code size 4 (0x4)
		.maxstack 2

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: sub
		IL_0003: ret
	} // end of method _Unsafe::ByteOffset

	.method public hidebysig static 
		bool AreSame<T> (
			!!T& left,
			!!T& right
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2364
		// Code size 5 (0x5)
		.maxstack 2

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ceq
		IL_0004: ret
	} // end of method _Unsafe::AreSame

	.method public hidebysig static 
		bool IsAddressGreaterThan<T> (
			!!T& left,
			!!T& right
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2378
		// Code size 5 (0x5)
		.maxstack 2

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: cgt.un
		IL_0004: ret
	} // end of method _Unsafe::IsAddressGreaterThan

	.method public hidebysig static 
		bool IsAddressLessThan<T> (
			!!T& left,
			!!T& right
		) cil managed aggressiveinlining 
	{
		.custom instance void [netstandard]System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x238c
		// Code size 5 (0x5)
		.maxstack 2

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: clt.un
		IL_0004: ret
	} // end of method _Unsafe::IsAddressLessThan

} // end of class _Unsafe
