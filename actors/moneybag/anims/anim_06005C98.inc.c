// 0x06005C04
static const s16 moneybag_seg6_animvalue_06005C04[] = {
	 0x0000,  0x00f0, -0x00e6,  0x3fff,  0x3b84,  0x3fff, -0x0067,  0x026a, 
	-0x0067, -0x0339,  0x5537,  0x2406,  0x2986,  0x2406,  0x1e86,  0x243a, 
	 0x1f56,  0x243a,  0x291e, -0x7fff, -0x7fff, -0x0067,  0x026a, -0x0067, 
	-0x0339,  0x5537, 
};

// 0x06005C38
static const u16 moneybag_seg6_animindex_06005C38[] = {
    0x0001, 0x0000, 0x0001, 0x0001, 0x0001, 0x0002, 0x0001, 0x0003, 0x0001, 0x0004, 0x0001, 0x0005,
    0x0001, 0x0000, 0x0004, 0x0015, 0x0001, 0x0019,
    0x0001, 0x0000, 0x0001, 0x0000, 0x0001, 0x0014,
    0x0001, 0x0000, 0x0001, 0x0000, 0x0004, 0x000B,
    0x0001, 0x0000, 0x0001, 0x0000, 0x0001, 0x0013,
    0x0001, 0x0000, 0x0001, 0x0000, 0x0004, 0x000F,
    0x0001, 0x0000, 0x0004, 0x0006, 0x0001, 0x000A,
};

// 0x06005C98
static const struct Animation moneybag_seg6_anim_06005C98 = {
	Animation::Flags::NONE,
    0,
    0,
    0,
    0x04,
    ANIMINDEX_NUMPARTS(moneybag_seg6_animindex_06005C38),
    moneybag_seg6_animvalue_06005C04,
    moneybag_seg6_animindex_06005C38,
    0,
};
