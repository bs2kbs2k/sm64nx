// 0x0301C1B0
static const s16 blue_fish_seg3_animvalue_0301C1B0[] = {
	 0x0000, -0x000f, -0x000f, -0x000e, -0x000c, -0x0009, -0x0006, -0x0003, 
	 0x0000,  0x0002,  0x0005,  0x0008,  0x000a,  0x000c,  0x000e,  0x000e, 
	 0x000e,  0x000d,  0x000c,  0x000a,  0x0009,  0x0006,  0x0004,  0x0002, 
	 0x0000, -0x0003, -0x0005, -0x0008, -0x000a, -0x000d, -0x000f, -0x3fff, 
	-0x0c0a, -0x09e6, -0x0509,  0x003a,  0x0390,  0x052a,  0x06ba,  0x0832, 
	 0x0984,  0x0aa1,  0x0b7c,  0x0c06,  0x0c31,  0x0bee,  0x0b2f,  0x078d, 
	 0x00b3, -0x0656, -0x0a87, -0x0c01, -0x0cfa, -0x0d85, -0x0db9, -0x0da8, 
	-0x0d68, -0x0d0c, -0x0caa, -0x0c55, -0x0c22, -0x0c26,  0x461c,  0x4623, 
	 0x462e,  0x4629,  0x4603,  0x45aa,  0x450a,  0x4410,  0x42c9,  0x4151, 
	 0x3fc6,  0x3e45,  0x3cea,  0x3bd2,  0x3b1b,  0x3ace,  0x3ad5,  0x3b20, 
	 0x3ba0,  0x3c43,  0x3cfa,  0x3db5,  0x3e7e,  0x3f66,  0x4066,  0x4177, 
	 0x4292,  0x43af,  0x44c7,  0x45d4, 
};

// 0x0301C268
static const u16 blue_fish_seg3_animindex_0301C268[] = {
    0x001E, 0x0001, 0x0001, 0x0000, 0x0001, 0x0000, 0x0001, 0x001F, 0x0001, 0x0000, 0x0001, 0x0000,
    0x0001, 0x0000, 0x0001, 0x0000, 0x001E, 0x003E,
    0x0001, 0x0000, 0x0001, 0x0000, 0x001E, 0x0020,
};

// 0x0301C298
static const struct Animation blue_fish_seg3_anim_0301C298 = {
	Animation::Flags::NONE,
    0,
    0,
    0,
    0x1E,
    ANIMINDEX_NUMPARTS(blue_fish_seg3_animindex_0301C268),
    blue_fish_seg3_animvalue_0301C1B0,
    blue_fish_seg3_animindex_0301C268,
    0,
};