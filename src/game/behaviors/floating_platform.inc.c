// floating_platform.c.inc

f32 board_YCheck(void)
{
	struct Surface* sp24;
	f32 sp20;
	f32 sp1C;

	sp20 = mcWaterCheck(o->oPosX, o->oPosZ);
	sp1C = mcBGGroundCheck(o->oPosX, o->oPosY, o->oPosZ, &sp24);
	if(sp20 > sp1C + o->oFloatingPlatformUnkFC)
	{
		o->oFloatingPlatformUnkF4 = 0;
		return sp20 + o->oFloatingPlatformUnkFC;
	}
	else
	{
		o->oFloatingPlatformUnkF4 = 1;
		return sp1C + o->oFloatingPlatformUnkFC;
	}
}

void board_Floating(void)
{
	s16 sp6 = (gMarioObject->header.gfx.pos[0] - o->oPosX) * coss(-o->oMoveAngleYaw) + (gMarioObject->header.gfx.pos[2] - o->oPosZ) * sins(-o->oMoveAngleYaw);
	s16 sp4 = (gMarioObject->header.gfx.pos[2] - o->oPosZ) * coss(-o->oMoveAngleYaw) - (gMarioObject->header.gfx.pos[0] - o->oPosX) * sins(-o->oMoveAngleYaw);

	if(gMarioObject->platform == o)
	{
		o->oFaceAnglePitch = sp4 * 2;
		o->oFaceAngleRoll  = -sp6 * 2;

		o->oVelY -= 1.0f * FRAME_RATE_SCALER;

		if(o->oVelY < 0.0f)
			o->oVelY = 0.0f;

		o->oFloatingPlatformUnkF8 += o->oVelY * FRAME_RATE_SCALER;

		if(o->oFloatingPlatformUnkF8 > 90.0f)
			o->oFloatingPlatformUnkF8 = 90.0f;
	}
	else
	{
		o->oFaceAnglePitch /= 2 * FRAME_RATE_SCALER_INV;
		o->oFaceAngleRoll /= 2 * FRAME_RATE_SCALER_INV;

		o->oFloatingPlatformUnkF8 -= 5.0;
		o->oVelY = 10.0f;

		if(o->oFloatingPlatformUnkF8 < 0.0f)
		{
			o->oFloatingPlatformUnkF8 = 0.0f;
		}
	}

	o->oPosY = o->oHomeY - 64.0f - o->oFloatingPlatformUnkF8 + sins(o->oFloatingPlatformUnk100 * (0x800 / FRAME_RATE_SCALER_INV)) * 10.0f;

	o->oFloatingPlatformUnk100++;

	if(o->oFloatingPlatformUnk100 == 32 * FRAME_RATE_SCALER_INV)
	{
		o->oFloatingPlatformUnk100 = 0;
	}
}

void s_floatingboard_main(void)
{
	o->oHomeY = board_YCheck();
	if(o->oFloatingPlatformUnkF4 == 0)
		o->oAction = 0;
	else
		o->oAction = 1;

	switch(o->oAction)
	{
		case 0:
			board_Floating();
			break;

		case 1:
			o->oPosY = o->oHomeY;
			break;
	}
}
