// 0x07011474 - 0x0701152E
const Collision bob_seg7_collision_gate[] = {
    COL_INIT(),
    COL_VERTEX_INIT(0xF),
    COL_VERTEX(320, 0, -20),
    COL_VERTEX(0, 0, -19),
    COL_VERTEX(0, 384, -19),
    COL_VERTEX(1, 384, 21),
    COL_VERTEX(1, 0, 21),
    COL_VERTEX(129, 640, 21),
    COL_VERTEX(128, 640, -19),
    COL_VERTEX(320, 640, -20),
    COL_VERTEX(321, 0, 20),
    COL_VERTEX(321, 640, 20),
    COL_VERTEX(0, 384, 21),
    COL_VERTEX(0, 0, 21),
    COL_VERTEX(320, 0, 20),
    COL_VERTEX(320, 640, 20),
    COL_VERTEX(128, 640, 21),
    COL_TRI_INIT(SURFACE_NO_CAM_COLLISION, 14),
    COL_TRI(9, 7, 6),
    COL_TRI(0, 1, 2),
    COL_TRI(3, 2, 1),
    COL_TRI(3, 1, 4),
    COL_TRI(5, 6, 2),
    COL_TRI(5, 2, 3),
    COL_TRI(6, 7, 2),
    COL_TRI(7, 0, 2),
    COL_TRI(8, 0, 7),
    COL_TRI(8, 7, 9),
    COL_TRI(9, 6, 5),
    COL_TRI(10, 12, 13),
    COL_TRI(10, 11, 12),
    COL_TRI(10, 13, 14),
    COL_TRI_STOP(),
    COL_END(),
};
