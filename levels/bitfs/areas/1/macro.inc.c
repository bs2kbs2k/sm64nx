// 0x07014F90 - 0x07015122
const MacroObject bitfs_seg7_macro_objs[] = {
    MACRO_OBJECT(/*preset*/ macro_yellow_coin,                 /*yaw*/   0, /*pos*/ -1990, -2780,  -590),
    MACRO_OBJECT(/*preset*/ macro_yellow_coin,                 /*yaw*/   0, /*pos*/ -2860, -2780,  -580),
    MACRO_OBJECT(/*preset*/ macro_coin_line_horizontal_flying, /*yaw*/   0, /*pos*/  1130, -3000,   400),
    MACRO_OBJECT(/*preset*/ macro_1up,                         /*yaw*/   0, /*pos*/ -4320, -2640,  -500),
    MACRO_OBJECT(/*preset*/ macro_bully,                       /*yaw*/   0, /*pos*/  2340, -2764,   580),
    MACRO_OBJECT_WITH_BEH_PARAM(/*preset*/ macro_circling_amp,                /*yaw*/   0, /*pos*/  6600, -2770,   280, /*behParam*/ 0),
    MACRO_OBJECT(/*preset*/ macro_recovery_heart,              /*yaw*/   0, /*pos*/  3660, -2700,   280),
    MACRO_OBJECT(/*preset*/ macro_hidden_1up_in_pole,          /*yaw*/   0, /*pos*/  3880, -1140,   260),
    MACRO_OBJECT(/*preset*/ macro_coin_ring_horizontal_flying, /*yaw*/   0, /*pos*/ -1900,   652,   320),
    MACRO_OBJECT(/*preset*/ macro_bully,                       /*yaw*/   0, /*pos*/ -1720,  1320,  -340),
    MACRO_OBJECT(/*preset*/ macro_coin_line_horizontal,        /*yaw*/   0, /*pos*/  -640,   800,   180),
    MACRO_OBJECT(/*preset*/ macro_bully,                       /*yaw*/   0, /*pos*/ -5340,   410,    20),
    MACRO_OBJECT(/*preset*/ macro_bully,                       /*yaw*/   0, /*pos*/ -5200,   410,   700),
    MACRO_OBJECT(/*preset*/ macro_box_1up,                     /*yaw*/   0, /*pos*/ -7400,  1500,     0),
    MACRO_OBJECT(/*preset*/ macro_hidden_1up_trigger,          /*yaw*/   0, /*pos*/ -6150,  1480,   500),
    MACRO_OBJECT(/*preset*/ macro_hidden_1up_trigger,          /*yaw*/   0, /*pos*/ -6150,  2600,   500),
    MACRO_OBJECT(/*preset*/ macro_hidden_1up_trigger,          /*yaw*/   0, /*pos*/ -6150,  3080,   500),
    MACRO_OBJECT_WITH_BEH_PARAM(/*preset*/ macro_hidden_1up,                  /*yaw*/   0, /*pos*/ -6460,  2760,   320, /*behParam*/ 3),
    MACRO_OBJECT(/*preset*/ macro_coin_line_horizontal,        /*yaw*/  90, /*pos*/ -6360,  3760,  -840),
    MACRO_OBJECT(/*preset*/ macro_recovery_heart,              /*yaw*/   0, /*pos*/   -20,  3850,   160),
    MACRO_OBJECT(/*preset*/ macro_box_1up,                     /*yaw*/   0, /*pos*/  2440,  5520,   140),
    MACRO_OBJECT(/*preset*/ macro_1up_3,                       /*yaw*/   0, /*pos*/  1198,  5478,   103),
    MACRO_OBJECT(/*preset*/ macro_coin_line_horizontal_flying, /*yaw*/   0, /*pos*/ -2610,  3600,     0),
    MACRO_OBJECT(/*preset*/ macro_coin_ring_horizontal,        /*yaw*/   0, /*pos*/  1231, -2168, -1747),
    MACRO_OBJECT(/*preset*/ macro_coin_line_vertical,          /*yaw*/   0, /*pos*/ -5705,   800,     0),
    MACRO_OBJECT(/*preset*/ macro_goomba_triplet_spawner,      /*yaw*/   0, /*pos*/  3660, -2764,   300),
    MACRO_OBJECT(/*preset*/ macro_1up_3,                       /*yaw*/   0, /*pos*/  -174, -2840,  -138),
    MACRO_OBJECT(/*preset*/ macro_red_coin,                    /*yaw*/   0, /*pos*/  2888, -1375,   310),
    MACRO_OBJECT(/*preset*/ macro_red_coin,                    /*yaw*/   0, /*pos*/  1230, -1900, -1747),
    MACRO_OBJECT(/*preset*/ macro_red_coin,                    /*yaw*/   0, /*pos*/  5800, -2000,     0),
    MACRO_OBJECT(/*preset*/ macro_red_coin,                    /*yaw*/   0, /*pos*/ -1846,  1600,  -476),
    MACRO_OBJECT(/*preset*/ macro_red_coin,                    /*yaw*/   0, /*pos*/ -4210,  2615,   280),
    MACRO_OBJECT(/*preset*/ macro_bobomb,                      /*yaw*/   0, /*pos*/ -5361,  3686,   315),
    MACRO_OBJECT(/*preset*/ macro_red_coin,                    /*yaw*/   0, /*pos*/ -1390,  3575,  -420),
    MACRO_OBJECT(/*preset*/ macro_red_coin,                    /*yaw*/   0, /*pos*/  3065,  4610,    92),
    MACRO_OBJECT(/*preset*/ macro_red_coin,                    /*yaw*/   0, /*pos*/  4330,  -790,   -50),
    MACRO_OBJECT(/*preset*/ macro_box_three_coins,             /*yaw*/   0, /*pos*/  7220, -1800,   260),
    MACRO_OBJECT(/*preset*/ macro_fire_spitter,                /*yaw*/   0, /*pos*/ -7280,  3100,  -925),
    MACRO_OBJECT_WITH_BEH_PARAM(/*preset*/ macro_circling_amp,                /*yaw*/   0, /*pos*/ -2325,  3625,     0, /*behParam*/ 2),
    MACRO_OBJECT(/*preset*/ macro_box_ten_coins,               /*yaw*/   0, /*pos*/ -5340,  4000,   100),
    MACRO_OBJECT_END(),
};

#include "game/debug.h"

namespace sm64::macro
{
	EXPORT_MACRO(bitfs_seg7_macro_objs);
}