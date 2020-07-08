// snow_mound.c.inc

void bhv_sliding_snow_mound_loop(void)
{
	switch(o->oAction)
	{
		case 0:
			o->oVelX = -40.0f;
			o->oPosX += o->oVelX * FRAME_RATE_SCALER;

			if(o->oTimer >= 118 * FRAME_RATE_SCALER_INV)
				o->oAction = 1;

			PlaySound(SOUND_ENV_SINK_QUICKSAND);
			break;

		case 1:
			o->oVelX = -5.0f;
			o->oPosX += o->oVelX * FRAME_RATE_SCALER;

			o->oVelY = -10.0f;
			o->oPosY += o->oVelY * FRAME_RATE_SCALER;

			o->oPosZ = o->oHomeZ - 2.0f;

			if(o->oTimer > 50 * FRAME_RATE_SCALER_INV)
				o->activeFlags = 0;
			break;
	}
}

void bhv_snow_mound_spawn_loop(void)
{
	struct Object* sp1C;

	if(!is_point_within_radius_of_mario(o->oPosX, o->oPosY, o->oPosZ, 6000) || o->oPosY + 1000.0f < gMarioObject->header.gfx.pos[1])
		return;

	if(o->oTimer == 64 * FRAME_RATE_SCALER_INV || o->oTimer == 128 * FRAME_RATE_SCALER_INV || o->oTimer == 192 * FRAME_RATE_SCALER_INV || o->oTimer == 224 * FRAME_RATE_SCALER_INV || o->oTimer == 256 * FRAME_RATE_SCALER_INV)
		sp1C = spawn_object(o, MODEL_SL_SNOW_TRIANGLE, sm64::bhv::bhvSlidingSnowMound());

	if(o->oTimer == 256 * FRAME_RATE_SCALER_INV)
	{
		sp1C->header.gfx.scale[0] = 2.0f;
		sp1C->header.gfx.scale[1] = 2.0f;
	}

	if(o->oTimer >= 256 * FRAME_RATE_SCALER_INV)
		o->oTimer = 0;
}