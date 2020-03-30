////////////////////////////////////////////////////
////////////////      MACROS       ////////////////
//////////////////////////////////////////////////

// Screen dimmensions
`define WIDTH 96
`define HEIGHT 64
// Colors
`define BLACK 16'b0
`define WHITE ~`BLACK
`define MAGENTA 16'b11111_000000_11111
`define CYAN 16'b00000_111111_11111
`define YELLOW 16'b11111_111111_00000
`define GREEN 16'b00000_111111_00000
`define RED 16'b11111_000000_00000
`define BLUE 16'b00000_000000_11111
`define ORANGE 16'b11110_111100_00000



////////////////////////////////////////////////////
////////////////      VOL BAR      ////////////////
//////////////////////////////////////////////////

// Vol Bar Levels
`define LVLD 4
`define LVLH 2
`define LVL1 60
`define LVL2 (`LVL1 - `LVLD)
`define LVL3 (`LVL2 - `LVLD)
`define LVL4 (`LVL3 - `LVLD)
`define LVL5 (`LVL4 - `LVLD)
`define LVL6 (`LVL5 - `LVLD)
`define LVL7 (`LVL6 - `LVLD)
`define LVL8 (`LVL7 - `LVLD)
`define LVL9 (`LVL8 - `LVLD)
`define LVL10 (`LVL9 - `LVLD)
`define LVL11 (`LVL10 - `LVLD)
`define LVL12 (`LVL11 - `LVLD)
`define LVL13 (`LVL12 - `LVLD)
`define LVL14 (`LVL13 - `LVLD)
`define LVL15 (`LVL14 - `LVLD)



////////////////////////////////////////////////////
////////////////     PING PONG     ////////////////
//////////////////////////////////////////////////

//paddle dimmensions for ping pong
`define PADDLEWIDTH 3
`define PADDLEHEIGHT 20
`define PADWIDTH 2
//ball dimmensions for ping pong
`define BALLSIZE 2
//edge definitions for ping pong
`define XPADLEFT 4
`define XPADRIGHT 91
`define BORDER 3 //dist from edge
//movement definitions for ping pong
`define PIXELMOVE 6 //each button press moves 6 pixels 
`define AUDIOMOVE 3 //each increament in audio (0-15) moves the paddles by 3



////////////////////////////////////////////////////
////////////////      TETRIS       ////////////////
//////////////////////////////////////////////////

// How many pixels wide/high each block is
`define BLOCKSIZE 4

//// How many blocks wide the game board is
//`define BLOCKS_WIDE 10

//// How many blocks high the game board is
//`define BLOCKS_HIGH 22

//// Width of the game board in pixels
//`define BOARD_WIDTH (`BLOCKS_WIDE * `BLOCK_SIZE)
//// Starting x pixel for the game board
//`define BOARD_X (((`PIXEL_WIDTH - `BOARD_WIDTH) / 2) - 1)

//// Height of the game board in pixels
//`define BOARD_HEIGHT (`BLOCKS_HIGH * `BLOCK_SIZE)
//// Starting y pixel for the game board
//`define BOARD_Y (((`PIXEL_HEIGHT - `BOARD_HEIGHT) / 2) - 1)

//// The number of bits used to store a block position
//`define BITS_BLK_POS 8
//// The number of bits used to store an X position
//`define BITS_X_POS 4
//// The number of bits used to store a Y position
//`define BITS_Y_POS 5
//// The number of bits used to store a rotation
//`define BITS_ROT 2
//// The number of bits used to store how wide / long a block is (max of decimal 4)
//`define BITS_BLK_SIZE 3
//// The number of bits for the score. The score goes up to 10000
//`define BITS_SCORE 14
//// The number of bits used to store each block
//`define BITS_PER_BLOCK 3

// The type of each block
`define NIL 2'b00
`define I 2'b01
`define L 2'b10
//`define J 3'b011
//`define O 3'b100
//`define S 3'b101
//`define T 3'b110
//`define Z 3'b111

//// Error value
//`define ERR_BLK_POS 8'b11111111

//// Modes
//`define MODE_BITS 3
//`define MODE_PLAY 0
//`define MODE_DROP 1
//`define MODE_PAUSE 2
//`define MODE_IDLE 3
//`define MODE_SHIFT 4

//// The maximum value of the drop timer
//`define DROP_TIMER_MAX 10000