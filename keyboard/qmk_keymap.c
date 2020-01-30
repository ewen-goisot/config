#include QMK_KEYBOARD_H
#include "version.h"
#include "keymap_german.h"
#include "keymap_nordic.h"
#include "keymap_french.h"

#define KC_MAC_UNDO LGUI(KC_Z)
#define KC_MAC_CUT LGUI(KC_X)
#define KC_MAC_COPY LGUI(KC_C)
#define KC_MAC_PASTE LGUI(KC_V)
#define KC_PC_UNDO LCTL(KC_Z)
#define KC_PC_CUT LCTL(KC_X)
#define KC_PC_COPY LCTL(KC_C)
#define KC_PC_PASTE LCTL(KC_V)
#define ES_LESS_MAC KC_GRAVE
#define ES_GRTR_MAC LSFT(KC_GRAVE)
#define ES_BSLS_MAC ALGR(KC_6)
#define NO_PIPE_ALT KC_GRAVE
#define NO_BSLS_ALT KC_EQUAL

enum custom_keycodes {
  RGB_SLD = SAFE_RANGE,
};

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
  [0] = LAYOUT_ergodox_pretty(
    KC_GRAVE,       KC_1,           KC_2,           KC_3,           KC_4,           KC_5,           KC_INSERT,                                      KC_DELETE,      KC_MEDIA_PLAY_PAUSE,KC_6,           KC_7,           KC_8,           KC_9,           KC_0,
    KC_LBRACKET,    KC_Q,           KC_W,           KC_E,           KC_R,           KC_T,           KC_TAB,                                         KC_BSPACE,      KC_Y,           KC_U,           KC_I,           KC_O,           KC_P,           KC_MINUS,
    KC_RBRACKET,    KC_A,           KC_S,           KC_D,           KC_F,           KC_G,                                                                           KC_H,           KC_J,           KC_K,           KC_L,           KC_SCOLON,      KC_EQUAL,
    KC_QUOTE,       KC_Z,           KC_X,           KC_C,           KC_V,           KC_B,           LCTL(KC_PGUP),                                  LCTL(KC_PGDOWN),KC_N,           KC_M,           KC_COMMA,       KC_DOT,         KC_SLASH,       KC_BSLASH,
    KC_PSCREEN,     KC_AUDIO_VOL_UP,KC_AUDIO_VOL_DOWN,KC_UP,          KC_DOWN,                                                                                                        KC_LEFT,        KC_RIGHT,       KC_F11,         KC_F13,         KC_F14,
                                                                                                    KC_PGUP,        KC_PGDOWN,      KC_HOME,        KC_END,
                                                                                                                    KC_CAPSLOCK,    TO(2),
                                                                                    KC_NONUS_BSLASH,KC_ESCAPE,      KC_NUMLOCK,     TO(1),          KC_ENTER,       KC_SPACE
  ),
  [1] = LAYOUT_ergodox_pretty(
    KC_F5,          KC_F6,          LCTL_T(KC_F7),  LALT_T(KC_F8),  LSFT_T(KC_F9),  KC_F10,         LGUI(KC_PGUP),                                  LGUI(KC_HOME),  LGUI(KC_H),     LSFT_T(KC_F12), LALT_T(KC_F1),  LCTL_T(KC_F2),  KC_F3,          KC_F4,
    LGUI(KC_P),     LGUI(KC_U),     LGUI(KC_O),     KC_MS_UP,       LGUI(KC_J),     LGUI(KC_L),     LGUI(KC_PGDOWN),                                LGUI(KC_END),   LCTL(KC_J),     LCTL(KC_SCOLON),KC_MS_WH_UP,    LGUI(KC_I),     LGUI(KC_K),     LCTL(LSFT(KC_J)),
    LGUI(KC_SCOLON),KC_DELETE,      KC_MS_LEFT,     KC_MS_DOWN,     KC_MS_RIGHT,    LCTL(KC_INSERT),                                                                LSFT(KC_INSERT),KC_MS_WH_LEFT,  KC_MS_WH_DOWN,  KC_MS_WH_RIGHT, LGUI(KC_M),     LGUI(KC_COMMA),
    LALT(KC_HOME),  LCTL(KC_Z),     LCTL(KC_X),     LALT(KC_LEFT),  LALT(KC_RIGHT), LCTL(KC_S),     LCTL(KC_PGUP),                                  LCTL(KC_PGDOWN),LCTL(KC_SLASH), KC_MS_BTN1,     KC_MS_BTN3,     KC_MS_BTN2,     LGUI(KC_DOT),   LGUI(KC_SLASH),
    KC_PSCREEN,     KC_AUDIO_VOL_UP,KC_AUDIO_VOL_DOWN,KC_UP,          KC_DOWN,                                                                                                        KC_LEFT,        KC_RIGHT,       KC_F11,         KC_F13,         KC_F14,
                                                                                                    KC_PGUP,        KC_PGDOWN,      KC_HOME,        KC_HOME,
                                                                                                                    LSFT_T(KC_BSPACE),TO(4),
                                                                                    KC_NONUS_BSLASH,LGUI_T(KC_ESCAPE),LALT_T(KC_TAB), TT(2),          LCTL_T(KC_ENTER),KC_SPACE
  ),
  [2] = LAYOUT_ergodox_pretty(
    KC_GRAVE,       KC_1,           RCTL_T(KC_2),   RALT_T(KC_3),   RSFT_T(KC_4),   KC_5,           KC_INSERT,                                      KC_DELETE,      KC_MEDIA_PLAY_PAUSE,LSFT_T(KC_6),   RALT_T(KC_7),   RCTL_T(KC_8),   KC_9,           KC_0,
    KC_LBRACKET,    KC_Q,           KC_W,           KC_E,           KC_R,           KC_T,           KC_TAB,                                         KC_BSPACE,      KC_Y,           KC_U,           KC_I,           KC_O,           KC_P,           KC_MINUS,
    KC_RBRACKET,    KC_A,           KC_S,           KC_D,           KC_F,           KC_G,                                                                           KC_H,           KC_J,           KC_K,           KC_L,           KC_SCOLON,      KC_EQUAL,
    LCTL_T(KC_QUOTE),KC_Z,           RCTL_T(KC_X),   RALT_T(KC_C),   RSFT_T(KC_V),   KC_B,           LCTL(KC_PGUP),                                  LCTL(KC_PGDOWN),KC_N,           LSFT_T(KC_M),   RALT_T(KC_COMMA),RCTL_T(KC_DOT), KC_SLASH,       LGUI_T(KC_BSLASH),
    KC_PSCREEN,     KC_AUDIO_VOL_UP,KC_AUDIO_VOL_DOWN,KC_UP,          KC_DOWN,                                                                                                        KC_LEFT,        KC_RIGHT,       KC_F11,         KC_F13,         KC_F14,
                                                                                                    KC_PGUP,        KC_PGDOWN,      KC_HOME,        KC_END,
                                                                                                                    RGUI_T(KC_CAPSLOCK),TO(0),
                                                                                    KC_NONUS_BSLASH,LGUI_T(KC_ESCAPE),LALT_T(KC_NUMLOCK),TO(1),          LCTL_T(KC_ENTER),KC_SPACE
  ),
  [3] = LAYOUT_ergodox_pretty(
    LGUI_T(KC_0),   KC_9,           LCTL_T(KC_8),   LALT_T(KC_7),   LSFT_T(KC_6),   LCTL(KC_Z),     LCTL(KC_X),                                     KC_DELETE,      LGUI(KC_L),     LGUI(KC_J),     LGUI(KC_O),     LGUI(KC_U),     LCTL(KC_J),     LCTL(LSFT(KC_J)),
    KC_GRAVE,       KC_1,           KC_2,           KC_3,           KC_4,           KC_5,           KC_AUDIO_VOL_UP,                                KC_BSPACE,      LCTL(KC_INSERT),LSFT(KC_INSERT),KC_MS_UP,       LCTL(KC_SCOLON),LCTL(KC_SLASH), LGUI(KC_H),
    KC_KP_4,        KC_KP_3,        KC_KP_2,        KC_KP_1,        KC_KP_0,        KC_QUOTE,                                                                       KC_MS_WH_UP,    KC_MS_LEFT,     KC_MS_DOWN,     KC_MS_RIGHT,    KC_ENTER,       LGUI(KC_I),
    KC_KP_9,        KC_KP_8,        KC_KP_7,        KC_KP_6,        KC_KP_5,        LALT_T(KC_ESCAPE),KC_AUDIO_VOL_DOWN,                                KC_TAB,         KC_MS_WH_DOWN,  LALT(KC_LEFT),  LALT(KC_RIGHT), KC_MS_WH_LEFT,  KC_MS_WH_RIGHT, LGUI(KC_K),
    KC_F13,         KC_UP,          KC_DOWN,        KC_LEFT,        KC_RIGHT,                                                                                                       KC_MS_BTN3,     LGUI(KC_PGDOWN),KC_UP,          KC_DOWN,        KC_PSCREEN,
                                                                                                    LCTL(KC_MINUS), LCTL(KC_T),     LALT_T(KC_Y),   LCTL_T(KC_U),
                                                                                                                    TO(1),          LSFT_T(KC_S),
                                                                                    LSFT_T(KC_SPACE),LCTL_T(KC_ENTER),TO(5),          TO(4),          KC_MS_BTN2,     KC_MS_BTN1
  ),
  [4] = LAYOUT_ergodox_pretty(
    LGUI_T(KC_F4),  KC_F3,          LCTL_T(KC_F2),  LALT_T(KC_F1),  LSFT_T(KC_F12), KC_MEDIA_PLAY_PAUSE,KC_DELETE,                                      LCTL(KC_X),     LCTL(KC_Z),     LSFT_T(KC_6),   LALT_T(KC_7),   LCTL_T(KC_8),   KC_9,           LGUI_T(KC_0),
    LCA_T(KC_PGUP), KC_A,           KC_F,           KC_K,           KC_SCOLON,      KC_U,           LCTL(KC_PGUP),                                  KC_AUDIO_VOL_UP,KC_5,           KC_4,           KC_3,           KC_2,           KC_1,           KC_GRAVE,
    C_S_T(KC_PGDOWN),KC_S,           KC_NONUS_BSLASH,KC_J,           KC_G,           KC_O,                                                                           KC_QUOTE,       KC_KP_0,        KC_KP_1,        KC_KP_2,        KC_KP_3,        KC_KP_4,
    LALT(KC_LSHIFT),KC_H,           KC_D,           KC_M,           KC_L,           LALT_T(KC_ESCAPE),LCTL(KC_PGDOWN),                                KC_AUDIO_VOL_DOWN,LALT_T(KC_ESCAPE),KC_KP_5,        KC_KP_6,        KC_KP_7,        KC_KP_8,        KC_KP_9,
    KC_F11,         KC_P,           KC_SLASH,       KC_N,           KC_I,                                                                                                           KC_LEFT,        KC_RIGHT,       KC_UP,          KC_DOWN,        KC_F13,
                                                                                                    KC_SCROLLLOCK,  TO(6),          LCTL(KC_T),     LCTL(KC_MINUS),
                                                                                                                    OSL(6),         TO(1),
                                                                                    LSFT_T(KC_SPACE),LCTL_T(KC_ENTER),TO(3),          TO(5),          LCTL_T(KC_ENTER),LSFT_T(KC_SPACE)
  ),
  [5] = LAYOUT_ergodox_pretty(
    LCTL(LSFT(KC_J)),LCTL(KC_J),     LGUI(KC_U),     LGUI(KC_O),     LGUI(KC_J),     LGUI(KC_L),     KC_DELETE,                                      KC_DELETE,      KC_MEDIA_PLAY_PAUSE,LSFT_T(KC_F12), LALT_T(KC_F1),  LCTL_T(KC_F2),  KC_F3,          LGUI_T(KC_F4),
    LGUI(KC_H),     LCTL(KC_SLASH), LCTL(KC_SCOLON),KC_MS_UP,       LSFT(KC_INSERT),LCTL(KC_INSERT),KC_BSPACE,                                      LCTL(KC_PGUP),  KC_U,           KC_SCOLON,      KC_K,           KC_F,           KC_A,           LCA_T(KC_PGUP),
    LGUI(KC_I),     KC_ENTER,       KC_MS_LEFT,     KC_MS_DOWN,     KC_MS_RIGHT,    KC_MS_WH_UP,                                                                    KC_O,           KC_G,           KC_J,           KC_NONUS_BSLASH,KC_S,           C_S_T(KC_PGDOWN),
    LGUI(KC_K),     KC_MS_WH_LEFT,  KC_MS_WH_RIGHT, LALT(KC_LEFT),  LALT(KC_RIGHT), KC_MS_WH_DOWN,  KC_TAB,                                         LCTL(KC_PGDOWN),LALT_T(KC_ESCAPE),KC_L,           KC_M,           KC_D,           KC_H,           LALT(KC_LSHIFT),
    KC_PSCREEN,     KC_UP,          KC_DOWN,        LGUI(KC_PGDOWN),KC_MS_BTN3,                                                                                                     KC_I,           KC_N,           KC_SLASH,       KC_P,           KC_F11,
                                                                                                    LCTL_T(KC_U),   LALT_T(KC_Y),   TO(6),          KC_SCROLLLOCK,
                                                                                                                    LSFT_T(KC_S),   OSL(6),
                                                                                    KC_MS_BTN1,     KC_MS_BTN2,     TO(4),          TO(3),          LCTL_T(KC_ENTER),LSFT_T(KC_SPACE)
  ),
  [6] = LAYOUT_ergodox_pretty(
    LGUI_T(KC_F5),  KC_F6,          LCTL_T(KC_F7),  LALT_T(KC_F8),  LSFT_T(KC_F9),  KC_F10,         KC_F15,                                         KC_F15,         KC_F10,         LSFT_T(KC_F9),  LALT_T(KC_F8),  LCTL_T(KC_F7),  KC_F6,          LGUI_T(KC_F5),
    LCA_T(KC_HOME), KC_Q,           KC_W,           KC_E,           KC_R,           KC_T,           KC_F16,                                         KC_F16,         KC_T,           KC_R,           KC_E,           KC_W,           KC_Q,           LCA_T(KC_HOME),
    C_S_T(KC_END),  KC_DOT,         KC_Y,           KC_COMMA,       KC_EQUAL,       KC_MINUS,                                                                       KC_MINUS,       KC_EQUAL,       KC_COMMA,       KC_Y,           KC_DOT,         C_S_T(KC_END),
    LALT(KC_LSHIFT),KC_Z,           KC_X,           KC_C,           KC_V,           LALT_T(KC_INSERT),KC_F17,                                         KC_F17,         LALT_T(KC_INSERT),KC_V,           KC_C,           KC_X,           KC_Z,           LALT(KC_LSHIFT),
    KC_F14,         KC_LBRACKET,    KC_RBRACKET,    KC_BSLASH,      KC_B,                                                                                                           KC_B,           KC_BSLASH,      KC_RBRACKET,    KC_LBRACKET,    KC_F14,
                                                                                                    KC_SCROLLLOCK,  TO(4),          TO(5),          KC_SCROLLLOCK,
                                                                                                                    KC_NO,          KC_NO,
                                                                                    LSFT_T(KC_NUMLOCK),LCTL_T(KC_CAPSLOCK),KC_PAUSE,       KC_PAUSE,       LCTL_T(KC_CAPSLOCK),LSFT_T(KC_NUMLOCK)
  ),
};


bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
  }
  return true;
}

uint32_t layer_state_set_user(uint32_t state) {
  uint8_t layer = biton32(state);
  ergodox_board_led_off();
  ergodox_right_led_1_off();
  ergodox_right_led_2_off();
  ergodox_right_led_3_off();
  switch (layer) {
    case 0:
      ergodox_right_led_2_on();
      break;
    case 1:
      ergodox_right_led_1_on();
      break;
    case 2:
      // default
      break;
    case 3:
      ergodox_right_led_1_on();
      ergodox_right_led_2_on();
      break;
    case 4:
      ergodox_right_led_2_on();
      ergodox_right_led_3_on();
      break;
    case 5:
      ergodox_right_led_1_on();
      ergodox_right_led_3_on();
      break;
    case 6:
      ergodox_right_led_3_on();
      break;
    default:
      break;
  }
  return state;
};
