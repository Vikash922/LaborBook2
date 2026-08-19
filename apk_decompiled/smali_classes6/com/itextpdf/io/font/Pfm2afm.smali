.class public final Lcom/itextpdf/io/font/Pfm2afm;
.super Ljava/lang/Object;
.source "Pfm2afm.java"


# instance fields
.field private Win2PSStd:[I

.field private WinChars:[Ljava/lang/String;

.field private ascender:S

.field private ascent:S

.field private avgwidth:S

.field private bitoff:I

.field private bits:I

.field private brkchar:B

.field private capheight:S

.field private charset:B

.field private chartab:I

.field private copyright:Ljava/lang/String;

.field private defchar:B

.field private descender:S

.field private device:I

.field private extleading:S

.field private extlen:S

.field private face:I

.field private firstchar:I

.field private fontname:I

.field private h_len:I

.field private horres:S

.field private input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

.field private intleading:S

.field private isMono:Z

.field private italic:B

.field private kernpairs:I

.field private kind:B

.field private lastchar:I

.field private maxwidth:S

.field private output:Ljava/io/PrintWriter;

.field private overs:B

.field private pixheight:S

.field private pixwidth:S

.field private points:S

.field private psext:I

.field private res1:I

.field private res2:I

.field private type:S

.field private uline:B

.field private verres:S

.field private vers:S

.field private weight:S

.field private widthby:S

.field private xheight:S


# direct methods
.method private constructor <init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 494
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->Win2PSStd:[I

    const/16 v0, 0x100

    .line 541
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "W00"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "W01"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "W02"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "W03"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "macron"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "breve"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dotaccent"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "W07"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ring"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "W09"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "W0a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "W0b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "W0c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "W0d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "W0e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "W0f"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "hungarumlaut"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ogonek"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "caron"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "W13"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "W14"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "W15"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W16"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W17"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "W18"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "W19"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "W1a"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "W1b"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "W1c"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "W1d"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "W1e"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "W1f"

    aput-object v2, v0, v1

    const-string v1, "space"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "exclam"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "quotedbl"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "numbersign"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "dollar"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "percent"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "ampersand"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const/16 v1, 0x27

    const-string v2, "quotesingle"

    aput-object v2, v0, v1

    const-string v1, "parenleft"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "parenright"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "asterisk"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "plus"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "comma"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "hyphen"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const/16 v1, 0x2e

    const-string v2, "period"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "slash"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "zero"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "one"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "two"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "three"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "four"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "five"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "six"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "seven"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "eight"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "nine"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "colon"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "semicolon"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "less"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "equal"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "greater"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "question"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "at"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "A"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "B"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "C"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "D"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "bracketleft"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "backslash"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "bracketright"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "asciicircum"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "underscore"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "grave"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "braceleft"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "bar"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "braceright"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "asciitilde"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "W7f"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "euro"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "W81"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "quotesinglbase"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "florin"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "quotedblbase"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "ellipsis"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "dagger"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "daggerdbl"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "circumflex"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "perthousand"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Scaron"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "guilsinglleft"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "OE"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "W8d"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Zcaron"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "W8f"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "W90"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "quoteleft"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "quoteright"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "quotedblleft"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "quotedblright"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "bullet"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "endash"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "emdash"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "tilde"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "trademark"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "scaron"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "guilsinglright"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "oe"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "W9d"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "zcaron"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "Ydieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "reqspace"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "exclamdown"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "cent"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "sterling"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "currency"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "yen"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "brokenbar"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "section"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "dieresis"

    aput-object v2, v0, v1

    const-string v1, "copyright"

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    const/16 v1, 0xaa

    const-string v2, "ordfeminine"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "guillemotleft"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "logicalnot"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "syllable"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "registered"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "macron"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "degree"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "plusminus"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "twosuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "threesuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "acute"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "mu"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "paragraph"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "periodcentered"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "cedilla"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "onesuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "ordmasculine"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "guillemotright"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "onequarter"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "onehalf"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "threequarters"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "questiondown"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "Agrave"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "Aacute"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "Acircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "Atilde"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "Adieresis"

    aput-object v2, v0, v1

    const-string v1, "Aring"

    const/16 v2, 0xc5

    aput-object v1, v0, v2

    const-string v1, "AE"

    const/16 v2, 0xc6

    aput-object v1, v0, v2

    const-string v1, "Ccedilla"

    const/16 v2, 0xc7

    aput-object v1, v0, v2

    const/16 v1, 0xc8

    const-string v2, "Egrave"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "Eacute"

    aput-object v2, v0, v1

    const-string v1, "Ecircumflex"

    const/16 v2, 0xca

    aput-object v1, v0, v2

    const/16 v1, 0xcb

    const-string v2, "Edieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "Igrave"

    aput-object v2, v0, v1

    const-string v1, "Iacute"

    const/16 v2, 0xcd

    aput-object v1, v0, v2

    const-string v1, "Icircumflex"

    const/16 v2, 0xce

    aput-object v1, v0, v2

    const-string v1, "Idieresis"

    const/16 v2, 0xcf

    aput-object v1, v0, v2

    const/16 v1, 0xd0

    const-string v2, "Eth"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "Ntilde"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "Ograve"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "Oacute"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "Ocircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "Otilde"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "Odieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "multiply"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "Oslash"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "Ugrave"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "Uacute"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "Ucircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "Udieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "Yacute"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "Thorn"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "germandbls"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "agrave"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "aacute"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "acircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "atilde"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "adieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "aring"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "ae"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "ccedilla"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "egrave"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "eacute"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "ecircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "edieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "igrave"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "iacute"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "icircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "idieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "eth"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "ntilde"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "ograve"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "oacute"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "ocircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "otilde"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "odieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "divide"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "oslash"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "ugrave"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "uacute"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "ucircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "udieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "yacute"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "thorn"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "ydieresis"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->WinChars:[Ljava/lang/String;

    .line 154
    iput-object p1, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 155
    const-string p1, "ISO-8859-1"

    invoke-static {p2, p1}, Lcom/itextpdf/commons/utils/FileUtil;->createPrintWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0xc5
        0xc6
        0xc7
        0x0
        0xca
        0x0
        0xcd
        0xce
        0xcf
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0xa9
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0x5c
        0x5d
        0x5e
        0x5f
        0xc1
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
        0x7b
        0x7c
        0x7d
        0x7e
        0x7f
        0x80
        0x0
        0xb8
        0xa6
        0xb9
        0xbc
        0xb2
        0xb3
        0xc3
        0xbd
        0x0
        0xac
        0xea
        0x0
        0x0
        0x0
        0x0
        0x60
        0x0
        0xaa
        0xba
        0xb7
        0xb1
        0xd0
        0xc4
        0x0
        0x0
        0xad
        0xfa
        0x0
        0x0
        0x0
        0x0
        0xa1
        0xa2
        0xa3
        0xa8
        0xa5
        0x0
        0xa7
        0xc8
        0x0
        0xe3
        0xab
        0x0
        0x0
        0x0
        0xc5
        0x0
        0x0
        0x0
        0x0
        0xc2
        0x0
        0xb6
        0xb4
        0xcb
        0x0
        0xeb
        0xbb
        0x0
        0x0
        0x0
        0xbf
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xe1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xe9
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xfb
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xf1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xf9
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static convert(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    new-instance v0, Lcom/itextpdf/io/font/Pfm2afm;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/io/font/Pfm2afm;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Ljava/io/OutputStream;)V

    .line 166
    invoke-direct {v0}, Lcom/itextpdf/io/font/Pfm2afm;->openpfm()V

    .line 167
    invoke-direct {v0}, Lcom/itextpdf/io/font/Pfm2afm;->putheader()V

    .line 168
    invoke-direct {v0}, Lcom/itextpdf/io/font/Pfm2afm;->putchartab()V

    .line 169
    invoke-direct {v0}, Lcom/itextpdf/io/font/Pfm2afm;->putkerntab()V

    .line 170
    invoke-direct {v0}, Lcom/itextpdf/io/font/Pfm2afm;->puttrailer()V

    .line 171
    iget-object p0, v0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method private openpfm()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 218
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->vers:S

    .line 219
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->h_len:I

    const/16 v0, 0x3c

    .line 220
    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/Pfm2afm;->readString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->copyright:Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->type:S

    .line 222
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->points:S

    .line 223
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->verres:S

    .line 224
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->horres:S

    .line 225
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->ascent:S

    .line 226
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->intleading:S

    .line 227
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->extleading:S

    .line 228
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->italic:B

    .line 229
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->uline:B

    .line 230
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->overs:B

    .line 231
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->weight:S

    .line 232
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->charset:B

    .line 233
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->pixwidth:S

    .line 234
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->pixheight:S

    .line 235
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->kind:B

    .line 236
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->avgwidth:S

    .line 237
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->maxwidth:S

    .line 238
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->firstchar:I

    .line 239
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->lastchar:I

    .line 240
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->defchar:B

    .line 241
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->brkchar:B

    .line 242
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->widthby:S

    .line 243
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->device:I

    .line 244
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->face:I

    .line 245
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->bits:I

    .line 246
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->bitoff:I

    .line 247
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->extlen:S

    .line 248
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->psext:I

    .line 249
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->chartab:I

    .line 250
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->res1:I

    .line 251
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->kernpairs:I

    .line 252
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->res2:I

    .line 253
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->fontname:I

    .line 254
    iget v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->h_len:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->extlen:S

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->fontname:I

    const/16 v1, 0x4b

    if-lt v0, v1, :cond_0

    const/16 v1, 0x200

    if-gt v0, v1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget v1, p0, Lcom/itextpdf/io/font/Pfm2afm;->psext:I

    add-int/lit8 v1, v1, 0xe

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 258
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->capheight:S

    .line 259
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->xheight:S

    .line 260
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->ascender:S

    .line 261
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->descender:S

    return-void

    .line 255
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not.a.valid.pfm.file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private outchar(IILjava/lang/String;)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v1, "C "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 206
    invoke-direct {p0, p1}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 207
    iget-object p1, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v0, " ; WX "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    invoke-direct {p0, p2}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    if-eqz p3, :cond_0

    .line 210
    iget-object p1, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string p2, " ; N "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 211
    iget-object p1, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string p2, " ;\n"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private outval(I)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 198
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(I)V

    return-void
.end method

.method private putchartab()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    iget v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->lastchar:I

    iget v1, p0, Lcom/itextpdf/io/font/Pfm2afm;->firstchar:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 355
    new-array v1, v0, [I

    .line 356
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget v3, p0, Lcom/itextpdf/io/font/Pfm2afm;->chartab:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 358
    iget-object v4, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShortLE()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x100

    .line 360
    new-array v4, v3, [I

    .line 361
    iget-byte v5, p0, Lcom/itextpdf/io/font/Pfm2afm;->charset:B

    if-nez v5, :cond_2

    .line 362
    iget v5, p0, Lcom/itextpdf/io/font/Pfm2afm;->firstchar:I

    :goto_1
    iget v6, p0, Lcom/itextpdf/io/font/Pfm2afm;->lastchar:I

    if-gt v5, v6, :cond_2

    .line 363
    iget-object v6, p0, Lcom/itextpdf/io/font/Pfm2afm;->Win2PSStd:[I

    aget v6, v6, v5

    if-eqz v6, :cond_1

    .line 364
    aput v5, v4, v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 369
    :cond_2
    iget-object v5, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v6, "StartCharMetrics"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 371
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 374
    iget-byte v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->charset:B

    if-eqz v0, :cond_4

    .line 379
    iget v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->firstchar:I

    :goto_2
    iget v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->lastchar:I

    if-gt v0, v2, :cond_8

    .line 380
    iget v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->firstchar:I

    sub-int v3, v0, v2

    aget v3, v1, v3

    if-eqz v3, :cond_3

    sub-int v2, v0, v2

    .line 381
    aget v2, v1, v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/itextpdf/io/font/Pfm2afm;->outchar(IILjava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_3
    if-ge v0, v3, :cond_6

    .line 386
    aget v5, v4, v0

    if-eqz v5, :cond_5

    .line 388
    iget v6, p0, Lcom/itextpdf/io/font/Pfm2afm;->firstchar:I

    sub-int v6, v5, v6

    aget v6, v1, v6

    iget-object v7, p0, Lcom/itextpdf/io/font/Pfm2afm;->WinChars:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-direct {p0, v0, v6, v7}, Lcom/itextpdf/io/font/Pfm2afm;->outchar(IILjava/lang/String;)V

    .line 389
    iget v6, p0, Lcom/itextpdf/io/font/Pfm2afm;->firstchar:I

    sub-int/2addr v5, v6

    aput v2, v1, v5

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 393
    :cond_6
    iget v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->firstchar:I

    :goto_4
    iget v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->lastchar:I

    if-gt v0, v2, :cond_8

    .line 394
    iget v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->firstchar:I

    sub-int v3, v0, v2

    aget v3, v1, v3

    if-eqz v3, :cond_7

    sub-int v2, v0, v2

    .line 395
    aget v2, v1, v2

    iget-object v3, p0, Lcom/itextpdf/io/font/Pfm2afm;->WinChars:[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, -0x1

    invoke-direct {p0, v4, v2, v3}, Lcom/itextpdf/io/font/Pfm2afm;->outchar(IILjava/lang/String;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 400
    :cond_8
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v1, "EndCharMetrics\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private putheader()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v1, "StartFontMetrics 2.0\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->copyright:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Comment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/itextpdf/io/font/Pfm2afm;->copyright:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v2, "FontName "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->fontname:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 270
    invoke-direct {p0}, Lcom/itextpdf/io/font/Pfm2afm;->readString()Ljava/lang/String;

    move-result-object v0

    .line 271
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 272
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "\nEncodingScheme "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    iget-byte v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->charset:B

    if-eqz v2, :cond_1

    .line 274
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "FontSpecific\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "AdobeStandardEncoding\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 283
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FullName "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2d

    const/16 v5, 0x20

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    iget v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->face:I

    if-eqz v2, :cond_2

    .line 285
    iget-object v3, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 286
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\nFamilyName "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/itextpdf/io/font/Pfm2afm;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 289
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "\nWeight "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    iget-short v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->weight:S

    const/16 v3, 0x1db

    if-gt v2, v3, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bold"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 292
    :cond_3
    iget-short v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->weight:S

    const/16 v3, 0x145

    if-ge v2, v3, :cond_4

    if-nez v2, :cond_5

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "light"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 293
    :cond_5
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "Light"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 294
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "black"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 295
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "Black"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 297
    :cond_7
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "Medium"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 291
    :cond_8
    :goto_1
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "Bold"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 300
    :goto_2
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "\nItalicAngle "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    iget-byte v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->italic:B

    if-nez v2, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "italic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    .line 306
    :cond_9
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 302
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v2, "-12.00"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    :goto_4
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v2, "\nIsFixedPitch "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    iget-byte v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->kind:B

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_c

    iget-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->avgwidth:S

    iget-short v3, p0, Lcom/itextpdf/io/font/Pfm2afm;->maxwidth:S

    if-ne v0, v3, :cond_b

    goto :goto_5

    .line 320
    :cond_b
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 321
    iput-boolean v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->isMono:Z

    goto :goto_6

    .line 316
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    iput-boolean v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->isMono:Z

    .line 329
    :goto_6
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v2, "\nFontBBox"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    iget-boolean v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->isMono:Z

    if-eqz v0, :cond_d

    const/16 v0, -0x14

    .line 331
    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    goto :goto_7

    :cond_d
    const/16 v0, -0x64

    .line 333
    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 335
    :goto_7
    iget-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->descender:S

    add-int/lit8 v0, v0, 0x5

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 336
    iget-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->maxwidth:S

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 337
    iget-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->ascent:S

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 342
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v2, "\nCapHeight"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 343
    iget-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->capheight:S

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 344
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v2, "\nXHeight"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 345
    iget-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->xheight:S

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 346
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v2, "\nDescender"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    iget-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->descender:S

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 348
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v2, "\nAscender"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 349
    iget-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->ascender:S

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 350
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method

.method private putkerntab()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    iget v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->kernpairs:I

    if-nez v0, :cond_0

    return-void

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 409
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShortLE()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 411
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_1
    :goto_0
    if-ge v3, v0, :cond_2

    add-int/lit8 v5, v3, 0x1

    .line 413
    iget-object v6, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v6

    aput v6, v1, v3

    add-int/lit8 v6, v3, 0x2

    .line 414
    iget-object v7, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v7

    aput v7, v1, v5

    add-int/lit8 v3, v3, 0x3

    .line 415
    iget-object v5, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v5

    aput v5, v1, v6

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    return-void

    .line 421
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v5, "StartKernData\nStartKernPairs"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 422
    invoke-direct {p0, v4}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 423
    iget-object v3, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(C)V

    :goto_1
    if-ge v2, v0, :cond_5

    add-int/lit8 v3, v2, 0x2

    .line 425
    aget v5, v1, v3

    if-eqz v5, :cond_4

    .line 426
    iget-object v5, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v6, "KPX "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 427
    iget-object v5, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    iget-object v6, p0, Lcom/itextpdf/io/font/Pfm2afm;->WinChars:[Ljava/lang/String;

    aget v7, v1, v2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 428
    iget-object v5, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 429
    iget-object v5, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    iget-object v6, p0, Lcom/itextpdf/io/font/Pfm2afm;->WinChars:[Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    aget v7, v1, v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 430
    aget v3, v1, v3

    invoke-direct {p0, v3}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 431
    iget-object v3, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(C)V

    :cond_4
    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    .line 435
    :cond_5
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v1, "EndKernPairs\nEndKernData\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private puttrailer()V
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v1, "EndFontMetrics\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private readString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v1

    if-gtz v1, :cond_0

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    int-to-char v1, v1

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private readString(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    new-array v0, p1, [B

    .line 176
    iget-object v1, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    .line 179
    aget-byte v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-direct {p1, v0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object p1
.end method
