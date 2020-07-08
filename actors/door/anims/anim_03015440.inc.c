// 0x03015220
static const s16 door_seg3_animvalue_03015220[] = {
	 0x0000, -0x012c,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000, 
	 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0002,  0x0006,  0x0005, 
	 0x0003,  0x0001,  0x0000,  0x0000,  0x0000, -0x0001, -0x0002, -0x0001, 
	 0x0000,  0x0002,  0x0007,  0x000d,  0x0014,  0x001b,  0x0023,  0x002b, 
	 0x0034,  0x003d,  0x0046,  0x004f,  0x0058,  0x0061,  0x006a,  0x0073, 
	 0x007c,  0x0085,  0x008d,  0x0095,  0x009d,  0x00a4,  0x00ab,  0x00b1, 
	 0x00b6,  0x00bb,  0x00bf,  0x00c3,  0x00c7,  0x00ca,  0x00cd,  0x00cf, 
	 0x00d1,  0x00d2,  0x00d3,  0x00d3,  0x00d3,  0x00d1,  0x00d0,  0x00cd, 
	 0x00ca,  0x00c6,  0x00c1,  0x00bb,  0x00b3,  0x00a8,  0x009a,  0x008a, 
	 0x0078,  0x0066,  0x0053,  0x0040,  0x002e,  0x001c,  0x000d,  0x0000, 
	-0x0007, -0x0009,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000, 
	 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0068,  0x0285,  0x0803, 
	 0x0dab,  0x0fb3,  0x1184,  0x1529,  0x194b,  0x1dab,  0x220e,  0x2635, 
	 0x29e2,  0x2cd9,  0x2eda,  0x3048,  0x31ac,  0x3305,  0x3451,  0x3591, 
	 0x36c2,  0x37e3,  0x38f4,  0x39f4,  0x3ae1,  0x3bba,  0x3c7f,  0x3d2e, 
	 0x3dc6,  0x3e45,  0x3eac,  0x3ef9,  0x3f2b,  0x3f40,  0x3f38,  0x3f12, 
	 0x3ecc,  0x3e66,  0x3e66,  0x3e66,  0x3e66,  0x3e66,  0x3e66,  0x3e66, 
	 0x3e66,  0x3e66,  0x3e66,  0x3e66,  0x3e66,  0x3e66,  0x3e66,  0x3e66, 
	 0x3e66,  0x3e66,  0x3e66,  0x3e66,  0x3cac,  0x3af1,  0x3937,  0x377d, 
	 0x35c2,  0x3408,  0x324e,  0x3093,  0x246e,  0x1849,  0x0c24,  0x0000, 
	 0x012e,  0x01eb,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000, 
	 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0002,  0x0006,  0x0005, 
	 0x0003,  0x0003,  0x0005,  0x0005,  0x0005,  0x0005,  0x0005,  0x0005, 
	 0x0007,  0x000a,  0x000f,  0x0015,  0x001c,  0x0023,  0x002b,  0x0033, 
	 0x003c,  0x0044,  0x004d,  0x0056,  0x005f,  0x0068,  0x0071,  0x007a, 
	 0x0083,  0x008b,  0x0094,  0x009c,  0x00a3,  0x00aa,  0x00b1,  0x00b7, 
	 0x00bc,  0x00c1,  0x00c5,  0x00c9,  0x00cc,  0x00d0,  0x00d3,  0x00d5, 
	 0x00d7,  0x00d8,  0x00d9,  0x00d9,  0x00d9,  0x00d8,  0x00d6,  0x00d3, 
	 0x00d0,  0x00cc,  0x00c7,  0x00c1,  0x00b9,  0x00ad,  0x009f,  0x008e, 
	 0x007c,  0x0069,  0x0056,  0x0042,  0x002f,  0x001e,  0x000d,  0x0000, 
	-0x0008, -0x000a, 
};

// 0x03015404
static const u16 door_seg3_animindex_03015404[] = {
    0x0001, 0x0001, 0x0001, 0x0000, 0x0001, 0x0000, 0x0001, 0x0000, 0x0001, 0x0000, 0x0001, 0x0000,
    0x0050, 0x0002, 0x0050, 0x0052, 0x0050, 0x00A2,
    0x0001, 0x0000, 0x0001, 0x0000, 0x0001, 0x0000,
    0x0001, 0x0000, 0x0001, 0x0000, 0x0001, 0x0000,
};

// 0x03015440
static const struct Animation door_seg3_anim_03015440 = {
	Animation::Flags::NOLOOP,
    0,
    0,
    0,
    0x50,
    ANIMINDEX_NUMPARTS(door_seg3_animindex_03015404),
    door_seg3_animvalue_03015220,
    door_seg3_animindex_03015404,
    0,
};
