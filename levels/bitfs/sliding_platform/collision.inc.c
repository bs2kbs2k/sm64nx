// 0x07015768 - 0x070157E0
const Collision bitfs_seg7_collision_07015768[] = {
    COL_INIT(),
    COL_VERTEX_INIT(0x8),
    COL_VERTEX(-361, 109, 179),
    COL_VERTEX(355, 109, 179),
    COL_VERTEX(355, 109, -188),
    COL_VERTEX(355, 7, 179),
    COL_VERTEX(355, 7, -188),
    COL_VERTEX(-361, 7, 179),
    COL_VERTEX(-361, 7, -188),
    COL_VERTEX(-361, 109, -188),
    COL_TRI_INIT(SURFACE_DEFAULT, 10),
    COL_TRI(0, 1, 2),
    COL_TRI(1, 3, 4),
    COL_TRI(1, 4, 2),
    COL_TRI(0, 3, 1),
    COL_TRI(0, 5, 3),
    COL_TRI(2, 4, 6),
    COL_TRI(2, 6, 7),
    COL_TRI(0, 2, 7),
    COL_TRI(7, 5, 0),
    COL_TRI(7, 6, 5),
    COL_TRI_STOP(),
    COL_END(),
};
