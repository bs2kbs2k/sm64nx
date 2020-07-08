// 0x07003284 - 0x07003330
const MacroObject sa_seg7_macro_objs[] = {
    MACRO_OBJECT(/*preset*/ macro_red_coin,                    /*yaw*/   0, /*pos*/ -2400, -4607, -2400),
    MACRO_OBJECT(/*preset*/ macro_red_coin,                    /*yaw*/   0, /*pos*/ -2400, -4607,  2400),
    MACRO_OBJECT(/*preset*/ macro_red_coin,                    /*yaw*/   0, /*pos*/  2400, -4607,  2400),
    MACRO_OBJECT(/*preset*/ macro_red_coin,                    /*yaw*/   0, /*pos*/  2400, -4607, -2400),
    MACRO_OBJECT(/*preset*/ macro_red_coin,                    /*yaw*/   0, /*pos*/     0, -2200, -1500),
    MACRO_OBJECT(/*preset*/ macro_red_coin,                    /*yaw*/   0, /*pos*/ -1500, -2200,     0),
    MACRO_OBJECT(/*preset*/ macro_red_coin,                    /*yaw*/   0, /*pos*/     0, -2200,  1500),
    MACRO_OBJECT(/*preset*/ macro_red_coin,                    /*yaw*/   0, /*pos*/  1500, -2200,     0),
    MACRO_OBJECT(/*preset*/ macro_fish_group,                  /*yaw*/   0, /*pos*/  1927, -2909,     0),
    MACRO_OBJECT(/*preset*/ macro_coin_ring_vertical,          /*yaw*/  90, /*pos*/     0, -2400, -1500),
    MACRO_OBJECT(/*preset*/ macro_coin_ring_vertical,          /*yaw*/   0, /*pos*/ -1500, -2400,     0),
    MACRO_OBJECT(/*preset*/ macro_coin_ring_vertical,          /*yaw*/  90, /*pos*/     0, -2400,  1500),
    MACRO_OBJECT(/*preset*/ macro_coin_ring_vertical,          /*yaw*/   0, /*pos*/  1500, -2400,     0),
    MACRO_OBJECT(/*preset*/ macro_hidden_1up_trigger,          /*yaw*/   0, /*pos*/     0, -3500,     0),
    MACRO_OBJECT_WITH_BEH_PARAM(/*preset*/ macro_hidden_1up,                  /*yaw*/   0, /*pos*/     0, -3800,     0, /*behParam*/ 1),
    MACRO_OBJECT(/*preset*/ macro_coin_ring_horizontal_flying, /*yaw*/   0, /*pos*/     0, -3500,     0),
    MACRO_OBJECT(/*preset*/ macro_fish_group_2,                /*yaw*/   0, /*pos*/ -1000, -4080, -1740),
    MACRO_OBJECT_END(),
};

#include "game/debug.h"

namespace sm64::macro
{
	EXPORT_MACRO(sa_seg7_macro_objs);
}
