// 0x06006EA0
static const s16 swoop_seg6_animvalue_06006EA0[] = {
	 0x0000,  0x0030,  0x0005,  0x3fff,  0x13f6,  0x13cd,  0x1356,  0x1298, 
	 0x119c,  0x1068,  0x0f04,  0x0d77,  0x0bc9,  0x0a01,  0x0826,  0x0640, 
	 0x0457,  0x0271,  0x0096, -0x0131, -0x02df, -0x046c, -0x05d0, -0x0704, 
	-0x0800, -0x08be, -0x0935, -0x095e, -0x093b, -0x08d6, -0x0834, -0x075b, 
	-0x0651, -0x051c, -0x03c2, -0x0248, -0x00b3,  0x00f4,  0x02ab,  0x046a, 
	 0x062d,  0x07ec,  0x09a3,  0x0b4b,  0x0cdf,  0x0e5a,  0x0fb4,  0x10e9, 
	 0x11f3,  0x12cc,  0x136e,  0x13d3,  0x13f6,  0x13f6,  0x7ffb,  0x7ffb, 
	 0x7ffb,  0x7ffb,  0x7ffb,  0x7ffb,  0x7ffb,  0x7ffc,  0x7ffc,  0x7ffc, 
	 0x7ffc,  0x7ffd,  0x7ffd,  0x7ffd,  0x7ffd,  0x7ffe,  0x7ffe,  0x7ffe, 
	 0x7ffe,  0x7ffe,  0x7ffe,  0x7ffe,  0x7ffe, -0x7fff,  0x7ffe,  0x7ffe, 
	 0x7ffe,  0x7ffe,  0x7ffe,  0x7ffe,  0x7ffe,  0x7ffe,  0x7ffd,  0x7ffd, 
	 0x7ffd,  0x7ffd,  0x7ffd,  0x7ffc,  0x7ffc,  0x7ffc,  0x7ffc,  0x7ffc, 
	 0x7ffb,  0x7ffb,  0x7ffb,  0x7ffb,  0x7ffb,  0x7ffb,  0x7ffb,  0x7ffb, 
	 0x7ffd,  0x7ffd,  0x7ffd,  0x7ffd,  0x7ffd,  0x7ffd,  0x7ffd,  0x7ffd, 
	 0x7ffd,  0x7ffc,  0x7ffc,  0x7ffc,  0x7ffc,  0x7ffc,  0x7ffc,  0x7ffc, 
	 0x7ffc,  0x7ffc,  0x7ffc,  0x7ffc,  0x7ffc,  0x7ffc,  0x7ffc,  0x7ffc, 
	 0x7ffc,  0x7ffc,  0x7ffc,  0x7ffc,  0x7ffc,  0x7ffc,  0x7ffc,  0x7ffc, 
	 0x7ffc,  0x7ffc,  0x7ffc,  0x7ffc,  0x7ffc,  0x7ffc,  0x7ffc,  0x7ffd, 
	 0x7ffd,  0x7ffd,  0x7ffd,  0x7ffd,  0x7ffd,  0x7ffd,  0x7ffd,  0x7ffd, 
	 0x7ffd,  0x7ffd, -0x6cd8, -0x6d02, -0x6d79, -0x6e36, -0x6f33, -0x7067, 
	-0x71cb, -0x7358, -0x7506, -0x76ce, -0x78a9, -0x7a8e, -0x7c78, -0x7e5e, 
	 0x7fc5,  0x7dfd,  0x7c4e,  0x7ac2,  0x795d,  0x7829,  0x772d,  0x766f, 
	 0x75f8,  0x75cf,  0x75f2,  0x7657,  0x76f9,  0x77d2,  0x78dc,  0x7a11, 
	 0x7b6c,  0x7ce6,  0x7e7a, -0x7fdb, -0x7e24, -0x7c64, -0x7aa2, -0x78e3, 
	-0x772c, -0x7583, -0x73ef, -0x7275, -0x711a, -0x6fe5, -0x6edc, -0x6e03, 
	-0x6d61, -0x6cfb, -0x6cd8, -0x6cd8,  0x5fa3,  0x3fff, -0x1fa4, -0x5fa3, 
	-0x3fff, -0x1fa4, -0x00d9, -0x00d9,  0x3f48,  0x0000, 
};

// 0x0600704C
static const u16 swoop_seg6_animindex_0600704C[] = {
    0x0001, 0x0000, 0x0001, 0x0001, 0x0001, 0x0002, 0x0001, 0x0000, 0x0001, 0x0003, 0x0001, 0x0000,
    0x0001, 0x0000, 0x0001, 0x0000, 0x0001, 0x00D4,
    0x0001, 0x0000, 0x0001, 0x0000, 0x0001, 0x00D3,
    0x0001, 0x0000, 0x0001, 0x0000, 0x0001, 0x00D2,
    0x0001, 0x00CF, 0x0001, 0x00D0, 0x0001, 0x00D1,
    0x0001, 0x0000, 0x0001, 0x0000, 0x0032, 0x0004,
    0x0001, 0x00CC, 0x0001, 0x00CD, 0x0001, 0x00CE,
    0x0032, 0x0036, 0x0032, 0x0068, 0x0032, 0x009A,
};

// 0x060070B8
static const struct Animation swoop_seg6_anim_060070B8 = {
	Animation::Flags::NONE,
    0,
    0,
    0,
    0x32,
    ANIMINDEX_NUMPARTS(swoop_seg6_animindex_0600704C),
    swoop_seg6_animvalue_06006EA0,
    swoop_seg6_animindex_0600704C,
    0,
};
