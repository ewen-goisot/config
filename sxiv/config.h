#ifdef _WINDOW_CONFIG

// I canged two lines in window.c :
//	bg = win_res(db, RES_CLASS ".background", "black");
//	fg = win_res(db, RES_CLASS ".foreground", "white");
/* default window dimensions (overwritten via -g option): */
enum {
	WIN_WIDTH  = 800,
	WIN_HEIGHT = 600
};

/* colors and font are configured with 'background', 'foreground' and
 * 'font' X resource properties.
 * See X(7) section Resources and xrdb(1) for more information.
 */

#endif
#ifdef _IMAGE_CONFIG

/* levels (in percent) to use when zooming via '-' and '+':
 * (first/last value is used as min/max zoom level)
 */
static const float zoom_levels[] = {
	//12.5,  18.75, 25.0,  37.5, 50.0,  62.5, 75.0,
	//100.0, 125.0, 150.0, 200.0, 300.0, 400.0, 500.0, 600.0, 800.0
	12.5, 15.7, 19.8, 25.0, 31.5, 39.7, 50.0, 63.0, 79.4,
	100.0, 126.0, 158.7, 200.0, 252.0, 317.5, 400.0, 504.0, 635.0, 800.0
};

/* default slideshow delay (in sec, overwritten via -S option): */
enum { SLIDESHOW_DELAY = 5 };

/* gamma correction: the user-visible ranges [-GAMMA_RANGE, 0] and
 * (0, GAMMA_RANGE] are mapped to the ranges [0, 1], and (1, GAMMA_MAX].
 * */
static const double GAMMA_MAX   = 10.0;
static const int    GAMMA_RANGE = 32;

/* command i_scroll pans image 1/PAN_FRACTION of screen width/height */
static const int PAN_FRACTION = 5;

/* if false, pixelate images at zoom level != 100%,
 * toggled with 'a' key binding
 */
static const bool ANTI_ALIAS = true;

/* if true, use a checkerboard background for alpha layer,
 * toggled with 'A' key binding
 */
static const bool ALPHA_LAYER = false;

#endif
#ifdef _THUMBS_CONFIG

/* thumbnail sizes in pixels (width == height): */
static const int thumb_sizes[] = { 32, 64, 96, 128, 160 };

/* thumbnail size at startup, index into thumb_sizes[]: */
static const int THUMB_SIZE = 3;

#endif
#ifdef _MAPPINGS_CONFIG

/* keyboard mappings for image and thumbnail mode: */
static const keymap_t keys[] = {
	/* modifiers    key               function              argument */
	{ 0,            XK_q,             g_quit,               None },
	{ 0,            XK_Return,        g_switch_mode,        None },
	{ 0,            XK_F11,           g_toggle_fullscreen,  None },
	{ 0,            XK_comma,         g_toggle_bar,         None },
	{ 0,            XK_colon,         g_prefix_external,    None },
	{ ControlMask,  XK_x,             g_prefix_external,    None },
	{ 0,            XK_eacute,        g_first,              None },
	{ 0,            XK_apostrophe,    g_n_or_last,          None },
	{ ControlMask,  XK_r,             g_reload_image,       None },
	{ ControlMask,  XK_l,             t_reload_all,         None },
	{ 0,            XK_g,             g_remove_image,       None },

	{ 0,            XK_c,             g_scroll_screen,      DIR_LEFT },
	{ 0,            XK_r,             g_scroll_screen,      DIR_DOWN },
	{ 0,            XK_f,             g_scroll_screen,      DIR_UP },
	{ 0,            XK_l,             g_scroll_screen,      DIR_RIGHT },
	//{ ControlMask,  XK_Left,          g_scroll_screen,      DIR_LEFT },
	//{ ControlMask,  XK_Down,          g_scroll_screen,      DIR_DOWN },
	//{ ControlMask,  XK_Up,            g_scroll_screen,      DIR_UP },
	//{ ControlMask,  XK_Right,         g_scroll_screen,      DIR_RIGHT },
	{ 0,            XK_T,             i_scroll_to_edge,     DIR_LEFT },
	{ 0,            XK_S,             i_scroll_to_edge,     DIR_DOWN },
	{ 0,            XK_M,             i_scroll_to_edge,     DIR_UP },
	{ 0,            XK_N,             i_scroll_to_edge,     DIR_RIGHT },
	{ 0,            XK_D,             i_scroll_to_edge,     DIR_LEFT | DIR_UP },
	{ 0,            XK_V,             i_scroll_to_edge,     DIR_RIGHT | DIR_UP },
	{ 0,            XK_J,             i_scroll_to_edge,     DIR_LEFT | DIR_DOWN },
	{ 0,            XK_W,             i_scroll_to_edge,     DIR_RIGHT | DIR_DOWN },
	{ 0,            XK_t,             i_scroll,             DIR_LEFT },
	{ 0,            XK_s,             i_scroll,             DIR_DOWN },
	{ 0,            XK_m,             i_scroll,             DIR_UP },
	{ 0,            XK_n,             i_scroll,             DIR_RIGHT },
	{ 0,            XK_Left,          i_scroll,             DIR_LEFT },
	{ 0,            XK_Down,          i_scroll,             DIR_DOWN },
	{ 0,            XK_Up,            i_scroll,             DIR_UP },
	{ 0,            XK_Right,         i_scroll,             DIR_RIGHT },

	{ 0,            XK_t,             t_move_sel,           DIR_LEFT },
	{ 0,            XK_s,             t_move_sel,           DIR_DOWN },
	{ 0,            XK_m,             t_move_sel,           DIR_UP },
	{ 0,            XK_n,             t_move_sel,           DIR_RIGHT },
	{ 0,            XK_Left,          t_move_sel,           DIR_LEFT },
	{ 0,            XK_Down,          t_move_sel,           DIR_DOWN },
	{ 0,            XK_Up,            t_move_sel,           DIR_UP },
	{ 0,            XK_Right,         t_move_sel,           DIR_RIGHT },


	{ ControlMask,  XK_plus,          g_zoom,               +1 },
	{ ControlMask,  XK_minus,         g_zoom,               -1 },
	{ 0,            XK_plus,          g_zoom,               +1 },
	{ 0,            XK_minus,         g_zoom,               -1 },
	{ 0,            XK_KP_Add,        g_zoom,               +1 },
	{ 0,            XK_KP_Subtract,   g_zoom,               -1 },
	{ 0,            XK_k,             g_toggle_image_mark,  None },
	{ 0,            XK_K,             g_mark_range,         None },
	{ 0,            XK_h,             g_reverse_marks,      None }, // XK_notequal udf
	{ 0,            XK_H,             g_unmark_all,         None },
	{ 0,            XK_i,             g_navigate_marked,    +1 },
	{ 0,            XK_p,             g_navigate_marked,    -1 },
	{ 0,            XK_greater,       g_change_gamma,       -1 },
	{ 0,            XK_less,          g_change_gamma,       +1 },
	{ 0,            XK_numbersign,    g_change_gamma,        0 },


	{ 0,            XK_u,             i_navigate,           +1 },
	//{ 0,            XK_space,         i_navigate,           +1 },
	{ 0,            XK_a,             i_navigate,           -1 },
	//{ 0,            XK_BackSpace,     i_navigate,           -1 },
	{ 0,            XK_o,             i_navigate,           +10 },
	{ 0,            XK_egrave,        i_navigate,           -10 },
	{ 0,            XK_underscore,    i_alternate,          None },
	{ 0,            XK_X,             i_navigate_frame,     +10 },
	{ 0,            XK_Z,             i_navigate_frame,     -10 },
	{ 0,            XK_x,             i_navigate_frame,     +1 },
	{ 0,            XK_z,             i_navigate_frame,     -1 },
	{ 0,            XK_space,         i_toggle_animation,   None },
	{ 0,            XK_period,        i_set_zoom,           100 },
	{ ControlMask,  XK_period,        i_set_zoom,           100 },
	{ 0,            XK_w,             i_fit_to_win,         SCALE_DOWN },
	{ 0,            XK_j,             i_fit_to_win,         SCALE_FIT },
	{ 0,            XK_d,             i_fit_to_win,         SCALE_WIDTH },
	{ 0,            XK_v,             i_fit_to_win,         SCALE_HEIGHT },
	{ 0,            XK_b,             i_rotate,             DEGREE_270 },
	{ 0,            XK_B,             i_rotate,             DEGREE_90 },
	{ 0,            XK_G,             i_rotate,             DEGREE_180 },
	{ 0,            XK_C,             i_flip,               FLIP_HORIZONTAL },
	{ 0,            XK_L,             i_flip,               FLIP_VERTICAL },
	{ 0,            XK_question,      i_toggle_antialias,   None },
	{ 0,            XK_exclam,        i_toggle_alpha,       None },
	{ 0,            XK_e,             i_slideshow,          None },
};

/* mouse button mappings for image mode: */
static const button_t buttons[] = {
	/* modifiers    button            function              argument */
	{ 0,            1,                i_cursor_navigate,    None },
	{ 0,            2,                i_drag,               DRAG_ABSOLUTE },
	{ 0,            3,                g_switch_mode,        None },
	{ 0,            4,                g_zoom,               +1 },
	{ 0,            5,                g_zoom,               -1 },
};

#endif
