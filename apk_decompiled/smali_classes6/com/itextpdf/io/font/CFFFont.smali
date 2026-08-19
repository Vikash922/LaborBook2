.class public Lcom/itextpdf/io/font/CFFFont;
.super Ljava/lang/Object;
.source "CFFFont.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/font/CFFFont$Font;,
        Lcom/itextpdf/io/font/CFFFont$MarkerItem;,
        Lcom/itextpdf/io/font/CFFFont$DictNumberItem;,
        Lcom/itextpdf/io/font/CFFFont$StringItem;,
        Lcom/itextpdf/io/font/CFFFont$UInt8Item;,
        Lcom/itextpdf/io/font/CFFFont$UInt16Item;,
        Lcom/itextpdf/io/font/CFFFont$UInt32Item;,
        Lcom/itextpdf/io/font/CFFFont$UInt24Item;,
        Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;,
        Lcom/itextpdf/io/font/CFFFont$SubrMarkerItem;,
        Lcom/itextpdf/io/font/CFFFont$IndexMarkerItem;,
        Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;,
        Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;,
        Lcom/itextpdf/io/font/CFFFont$RangeItem;,
        Lcom/itextpdf/io/font/CFFFont$OffsetItem;,
        Lcom/itextpdf/io/font/CFFFont$Item;
    }
.end annotation


# static fields
.field static final operatorNames:[Ljava/lang/String;

.field static final standardStrings:[Ljava/lang/String;


# instance fields
.field protected arg_count:I

.field protected args:[Ljava/lang/Object;

.field protected buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

.field protected fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

.field protected gsubrIndexOffset:I

.field protected gsubrOffsets:[I

.field protected key:Ljava/lang/String;

.field protected nameIndexOffset:I

.field protected nameOffsets:[I

.field nextIndexOffset:I

.field private offSize:I

.field rasFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;

.field protected stringIndexOffset:I

.field protected stringOffsets:[I

.field protected topdictIndexOffset:I

.field protected topdictOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const/16 v0, 0x47

    .line 54
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "version"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Notice"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "FullName"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "FamilyName"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "Weight"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "FontBBox"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "BlueValues"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "OtherBlues"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "FamilyBlues"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "FamilyOtherBlues"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "StdHW"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "StdVW"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-string v2, "UNKNOWN_12"

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const-string v2, "UniqueID"

    const/16 v16, 0xd

    aput-object v2, v1, v16

    const-string v2, "XUID"

    const/16 v17, 0xe

    aput-object v2, v1, v17

    const-string v2, "charset"

    const/16 v18, 0xf

    aput-object v2, v1, v18

    const-string v2, "Encoding"

    const/16 v19, 0x10

    aput-object v2, v1, v19

    const-string v2, "CharStrings"

    const/16 v20, 0x11

    aput-object v2, v1, v20

    const-string v2, "Private"

    const/16 v21, 0x12

    aput-object v2, v1, v21

    const-string v2, "Subrs"

    const/16 v22, 0x13

    aput-object v2, v1, v22

    const-string v2, "defaultWidthX"

    const/16 v23, 0x14

    aput-object v2, v1, v23

    const/16 v2, 0x15

    const-string v24, "nominalWidthX"

    aput-object v24, v1, v2

    const/16 v2, 0x16

    const-string v24, "UNKNOWN_22"

    aput-object v24, v1, v2

    const/16 v2, 0x17

    const-string v24, "UNKNOWN_23"

    aput-object v24, v1, v2

    const/16 v2, 0x18

    const-string v24, "UNKNOWN_24"

    aput-object v24, v1, v2

    const/16 v2, 0x19

    const-string v24, "UNKNOWN_25"

    aput-object v24, v1, v2

    const/16 v2, 0x1a

    const-string v24, "UNKNOWN_26"

    aput-object v24, v1, v2

    const/16 v2, 0x1b

    const-string v24, "UNKNOWN_27"

    aput-object v24, v1, v2

    const/16 v2, 0x1c

    const-string v24, "UNKNOWN_28"

    aput-object v24, v1, v2

    const/16 v2, 0x1d

    const-string v24, "UNKNOWN_29"

    aput-object v24, v1, v2

    const/16 v2, 0x1e

    const-string v24, "UNKNOWN_30"

    aput-object v24, v1, v2

    const/16 v2, 0x1f

    const-string v24, "UNKNOWN_31"

    aput-object v24, v1, v2

    const/16 v2, 0x20

    const-string v24, "Copyright"

    aput-object v24, v1, v2

    const/16 v2, 0x21

    const-string v24, "isFixedPitch"

    aput-object v24, v1, v2

    const/16 v2, 0x22

    const-string v24, "ItalicAngle"

    aput-object v24, v1, v2

    const/16 v2, 0x23

    const-string v24, "UnderlinePosition"

    aput-object v24, v1, v2

    const/16 v2, 0x24

    const-string v24, "UnderlineThickness"

    aput-object v24, v1, v2

    const/16 v2, 0x25

    const-string v24, "PaintType"

    aput-object v24, v1, v2

    const/16 v2, 0x26

    const-string v24, "CharstringType"

    aput-object v24, v1, v2

    const/16 v2, 0x27

    const-string v24, "FontMatrix"

    aput-object v24, v1, v2

    const/16 v2, 0x28

    const-string v24, "StrokeWidth"

    aput-object v24, v1, v2

    const/16 v2, 0x29

    const-string v24, "BlueScale"

    aput-object v24, v1, v2

    const/16 v2, 0x2a

    const-string v24, "BlueShift"

    aput-object v24, v1, v2

    const/16 v2, 0x2b

    const-string v24, "BlueFuzz"

    aput-object v24, v1, v2

    const/16 v2, 0x2c

    const-string v24, "StemSnapH"

    aput-object v24, v1, v2

    const/16 v2, 0x2d

    const-string v24, "StemSnapV"

    aput-object v24, v1, v2

    const/16 v2, 0x2e

    const-string v24, "ForceBold"

    aput-object v24, v1, v2

    const/16 v2, 0x2f

    const-string v24, "UNKNOWN_12_15"

    aput-object v24, v1, v2

    const/16 v2, 0x30

    const-string v24, "UNKNOWN_12_16"

    aput-object v24, v1, v2

    const/16 v2, 0x31

    const-string v24, "LanguageGroup"

    aput-object v24, v1, v2

    const/16 v2, 0x32

    const-string v24, "ExpansionFactor"

    aput-object v24, v1, v2

    const/16 v2, 0x33

    const-string v24, "initialRandomSeed"

    aput-object v24, v1, v2

    const/16 v2, 0x34

    const-string v24, "SyntheticBase"

    aput-object v24, v1, v2

    const/16 v2, 0x35

    const-string v24, "PostScript"

    aput-object v24, v1, v2

    const/16 v2, 0x36

    const-string v24, "BaseFontName"

    aput-object v24, v1, v2

    const/16 v2, 0x37

    const-string v24, "BaseFontBlend"

    aput-object v24, v1, v2

    const/16 v2, 0x38

    const-string v24, "UNKNOWN_12_24"

    aput-object v24, v1, v2

    const/16 v2, 0x39

    const-string v24, "UNKNOWN_12_25"

    aput-object v24, v1, v2

    const/16 v2, 0x3a

    const-string v24, "UNKNOWN_12_26"

    aput-object v24, v1, v2

    const/16 v2, 0x3b

    const-string v24, "UNKNOWN_12_27"

    aput-object v24, v1, v2

    const/16 v2, 0x3c

    const-string v24, "UNKNOWN_12_28"

    aput-object v24, v1, v2

    const/16 v2, 0x3d

    const-string v24, "UNKNOWN_12_29"

    aput-object v24, v1, v2

    const/16 v2, 0x3e

    const-string v24, "ROS"

    aput-object v24, v1, v2

    const/16 v2, 0x3f

    const-string v24, "CIDFontVersion"

    aput-object v24, v1, v2

    const/16 v2, 0x40

    const-string v24, "CIDFontRevision"

    aput-object v24, v1, v2

    const/16 v2, 0x41

    const-string v24, "CIDFontType"

    aput-object v24, v1, v2

    const/16 v2, 0x42

    const-string v24, "CIDCount"

    aput-object v24, v1, v2

    const/16 v2, 0x43

    const-string v24, "UIDBase"

    aput-object v24, v1, v2

    const/16 v2, 0x44

    const-string v24, "FDArray"

    aput-object v24, v1, v2

    const/16 v2, 0x45

    const-string v24, "FDSelect"

    aput-object v24, v1, v2

    const/16 v2, 0x46

    const-string v24, "FontName"

    aput-object v24, v1, v2

    sput-object v1, Lcom/itextpdf/io/font/CFFFont;->operatorNames:[Ljava/lang/String;

    const/16 v1, 0x187

    .line 75
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ".notdef"

    aput-object v2, v1, v3

    const-string v2, "space"

    aput-object v2, v1, v4

    const-string v2, "exclam"

    aput-object v2, v1, v5

    const-string v2, "quotedbl"

    aput-object v2, v1, v6

    const-string v2, "numbersign"

    aput-object v2, v1, v7

    const-string v2, "dollar"

    aput-object v2, v1, v8

    const-string v2, "percent"

    aput-object v2, v1, v9

    const-string v2, "ampersand"

    aput-object v2, v1, v10

    const-string v2, "quoteright"

    aput-object v2, v1, v11

    const-string v2, "parenleft"

    aput-object v2, v1, v12

    const-string v2, "parenright"

    aput-object v2, v1, v13

    const-string v2, "asterisk"

    aput-object v2, v1, v14

    const-string v2, "plus"

    aput-object v2, v1, v15

    const-string v2, "comma"

    aput-object v2, v1, v16

    const-string v2, "hyphen"

    aput-object v2, v1, v17

    const-string v2, "period"

    aput-object v2, v1, v18

    const-string v2, "slash"

    aput-object v2, v1, v19

    const-string v2, "zero"

    aput-object v2, v1, v20

    const-string v2, "one"

    aput-object v2, v1, v21

    const-string v2, "two"

    aput-object v2, v1, v22

    const-string v2, "three"

    aput-object v2, v1, v23

    const/16 v2, 0x15

    const-string v3, "four"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "five"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "six"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "seven"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "eight"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "nine"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "colon"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "semicolon"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "less"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "equal"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "greater"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "question"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "at"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "A"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "B"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "C"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "D"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "E"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "F"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "G"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "H"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "I"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "J"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "K"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "L"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "M"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "N"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "O"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "P"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "Q"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "R"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "S"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "T"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "U"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "V"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "W"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "X"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "Y"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "Z"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "bracketleft"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "backslash"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "bracketright"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "asciicircum"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "underscore"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "quoteleft"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "a"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "b"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "c"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "d"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "e"

    aput-object v3, v1, v2

    const-string v2, "f"

    aput-object v2, v1, v0

    const/16 v0, 0x48

    const-string v2, "g"

    aput-object v2, v1, v0

    const/16 v0, 0x49

    const-string v2, "h"

    aput-object v2, v1, v0

    const/16 v0, 0x4a

    const-string v2, "i"

    aput-object v2, v1, v0

    const/16 v0, 0x4b

    const-string v2, "j"

    aput-object v2, v1, v0

    const/16 v0, 0x4c

    const-string v2, "k"

    aput-object v2, v1, v0

    const/16 v0, 0x4d

    const-string v2, "l"

    aput-object v2, v1, v0

    const/16 v0, 0x4e

    const-string v2, "m"

    aput-object v2, v1, v0

    const/16 v0, 0x4f

    const-string v2, "n"

    aput-object v2, v1, v0

    const/16 v0, 0x50

    const-string v2, "o"

    aput-object v2, v1, v0

    const/16 v0, 0x51

    const-string v2, "p"

    aput-object v2, v1, v0

    const/16 v0, 0x52

    const-string v2, "q"

    aput-object v2, v1, v0

    const/16 v0, 0x53

    const-string v2, "r"

    aput-object v2, v1, v0

    const/16 v0, 0x54

    const-string v2, "s"

    aput-object v2, v1, v0

    const/16 v0, 0x55

    const-string v2, "t"

    aput-object v2, v1, v0

    const/16 v0, 0x56

    const-string v2, "u"

    aput-object v2, v1, v0

    const/16 v0, 0x57

    const-string v2, "v"

    aput-object v2, v1, v0

    const/16 v0, 0x58

    const-string v2, "w"

    aput-object v2, v1, v0

    const/16 v0, 0x59

    const-string v2, "x"

    aput-object v2, v1, v0

    const/16 v0, 0x5a

    const-string v2, "y"

    aput-object v2, v1, v0

    const/16 v0, 0x5b

    const-string v2, "z"

    aput-object v2, v1, v0

    const/16 v0, 0x5c

    const-string v2, "braceleft"

    aput-object v2, v1, v0

    const/16 v0, 0x5d

    const-string v2, "bar"

    aput-object v2, v1, v0

    const/16 v0, 0x5e

    const-string v2, "braceright"

    aput-object v2, v1, v0

    const/16 v0, 0x5f

    const-string v2, "asciitilde"

    aput-object v2, v1, v0

    const/16 v0, 0x60

    const-string v2, "exclamdown"

    aput-object v2, v1, v0

    const/16 v0, 0x61

    const-string v2, "cent"

    aput-object v2, v1, v0

    const/16 v0, 0x62

    const-string v2, "sterling"

    aput-object v2, v1, v0

    const/16 v0, 0x63

    const-string v2, "fraction"

    aput-object v2, v1, v0

    const/16 v0, 0x64

    const-string v2, "yen"

    aput-object v2, v1, v0

    const/16 v0, 0x65

    const-string v2, "florin"

    aput-object v2, v1, v0

    const/16 v0, 0x66

    const-string v2, "section"

    aput-object v2, v1, v0

    const/16 v0, 0x67

    const-string v2, "currency"

    aput-object v2, v1, v0

    const/16 v0, 0x68

    const-string v2, "quotesingle"

    aput-object v2, v1, v0

    const/16 v0, 0x69

    const-string v2, "quotedblleft"

    aput-object v2, v1, v0

    const/16 v0, 0x6a

    const-string v2, "guillemotleft"

    aput-object v2, v1, v0

    const/16 v0, 0x6b

    const-string v2, "guilsinglleft"

    aput-object v2, v1, v0

    const/16 v0, 0x6c

    const-string v2, "guilsinglright"

    aput-object v2, v1, v0

    const/16 v0, 0x6d

    const-string v2, "fi"

    aput-object v2, v1, v0

    const/16 v0, 0x6e

    const-string v2, "fl"

    aput-object v2, v1, v0

    const/16 v0, 0x6f

    const-string v2, "endash"

    aput-object v2, v1, v0

    const/16 v0, 0x70

    const-string v2, "dagger"

    aput-object v2, v1, v0

    const/16 v0, 0x71

    const-string v2, "daggerdbl"

    aput-object v2, v1, v0

    const/16 v0, 0x72

    const-string v2, "periodcentered"

    aput-object v2, v1, v0

    const/16 v0, 0x73

    const-string v2, "paragraph"

    aput-object v2, v1, v0

    const/16 v0, 0x74

    const-string v2, "bullet"

    aput-object v2, v1, v0

    const/16 v0, 0x75

    const-string v2, "quotesinglbase"

    aput-object v2, v1, v0

    const/16 v0, 0x76

    const-string v2, "quotedblbase"

    aput-object v2, v1, v0

    const/16 v0, 0x77

    const-string v2, "quotedblright"

    aput-object v2, v1, v0

    const/16 v0, 0x78

    const-string v2, "guillemotright"

    aput-object v2, v1, v0

    const/16 v0, 0x79

    const-string v2, "ellipsis"

    aput-object v2, v1, v0

    const/16 v0, 0x7a

    const-string v2, "perthousand"

    aput-object v2, v1, v0

    const/16 v0, 0x7b

    const-string v2, "questiondown"

    aput-object v2, v1, v0

    const/16 v0, 0x7c

    const-string v2, "grave"

    aput-object v2, v1, v0

    const/16 v0, 0x7d

    const-string v2, "acute"

    aput-object v2, v1, v0

    const/16 v0, 0x7e

    const-string v2, "circumflex"

    aput-object v2, v1, v0

    const/16 v0, 0x7f

    const-string v2, "tilde"

    aput-object v2, v1, v0

    const/16 v0, 0x80

    const-string v2, "macron"

    aput-object v2, v1, v0

    const/16 v0, 0x81

    const-string v2, "breve"

    aput-object v2, v1, v0

    const/16 v0, 0x82

    const-string v2, "dotaccent"

    aput-object v2, v1, v0

    const/16 v0, 0x83

    const-string v2, "dieresis"

    aput-object v2, v1, v0

    const/16 v0, 0x84

    const-string v2, "ring"

    aput-object v2, v1, v0

    const/16 v0, 0x85

    const-string v2, "cedilla"

    aput-object v2, v1, v0

    const/16 v0, 0x86

    const-string v2, "hungarumlaut"

    aput-object v2, v1, v0

    const/16 v0, 0x87

    const-string v2, "ogonek"

    aput-object v2, v1, v0

    const/16 v0, 0x88

    const-string v2, "caron"

    aput-object v2, v1, v0

    const/16 v0, 0x89

    const-string v2, "emdash"

    aput-object v2, v1, v0

    const/16 v0, 0x8a

    const-string v2, "AE"

    aput-object v2, v1, v0

    const/16 v0, 0x8b

    const-string v2, "ordfeminine"

    aput-object v2, v1, v0

    const/16 v0, 0x8c

    const-string v2, "Lslash"

    aput-object v2, v1, v0

    const/16 v0, 0x8d

    const-string v2, "Oslash"

    aput-object v2, v1, v0

    const/16 v0, 0x8e

    const-string v2, "OE"

    aput-object v2, v1, v0

    const/16 v0, 0x8f

    const-string v2, "ordmasculine"

    aput-object v2, v1, v0

    const/16 v0, 0x90

    const-string v2, "ae"

    aput-object v2, v1, v0

    const/16 v0, 0x91

    const-string v2, "dotlessi"

    aput-object v2, v1, v0

    const/16 v0, 0x92

    const-string v2, "lslash"

    aput-object v2, v1, v0

    const/16 v0, 0x93

    const-string v2, "oslash"

    aput-object v2, v1, v0

    const/16 v0, 0x94

    const-string v2, "oe"

    aput-object v2, v1, v0

    const/16 v0, 0x95

    const-string v2, "germandbls"

    aput-object v2, v1, v0

    const/16 v0, 0x96

    const-string v2, "onesuperior"

    aput-object v2, v1, v0

    const/16 v0, 0x97

    const-string v2, "logicalnot"

    aput-object v2, v1, v0

    const/16 v0, 0x98

    const-string v2, "mu"

    aput-object v2, v1, v0

    const/16 v0, 0x99

    const-string v2, "trademark"

    aput-object v2, v1, v0

    const/16 v0, 0x9a

    const-string v2, "Eth"

    aput-object v2, v1, v0

    const/16 v0, 0x9b

    const-string v2, "onehalf"

    aput-object v2, v1, v0

    const/16 v0, 0x9c

    const-string v2, "plusminus"

    aput-object v2, v1, v0

    const/16 v0, 0x9d

    const-string v2, "Thorn"

    aput-object v2, v1, v0

    const/16 v0, 0x9e

    const-string v2, "onequarter"

    aput-object v2, v1, v0

    const/16 v0, 0x9f

    const-string v2, "divide"

    aput-object v2, v1, v0

    const/16 v0, 0xa0

    const-string v2, "brokenbar"

    aput-object v2, v1, v0

    const/16 v0, 0xa1

    const-string v2, "degree"

    aput-object v2, v1, v0

    const/16 v0, 0xa2

    const-string v2, "thorn"

    aput-object v2, v1, v0

    const/16 v0, 0xa3

    const-string v2, "threequarters"

    aput-object v2, v1, v0

    const/16 v0, 0xa4

    const-string v2, "twosuperior"

    aput-object v2, v1, v0

    const/16 v0, 0xa5

    const-string v2, "registered"

    aput-object v2, v1, v0

    const/16 v0, 0xa6

    const-string v2, "minus"

    aput-object v2, v1, v0

    const/16 v0, 0xa7

    const-string v2, "eth"

    aput-object v2, v1, v0

    const/16 v0, 0xa8

    const-string v2, "multiply"

    aput-object v2, v1, v0

    const/16 v0, 0xa9

    const-string v2, "threesuperior"

    aput-object v2, v1, v0

    const/16 v0, 0xaa

    const-string v2, "copyright"

    aput-object v2, v1, v0

    const/16 v0, 0xab

    const-string v2, "Aacute"

    aput-object v2, v1, v0

    const/16 v0, 0xac

    const-string v2, "Acircumflex"

    aput-object v2, v1, v0

    const/16 v0, 0xad

    const-string v2, "Adieresis"

    aput-object v2, v1, v0

    const/16 v0, 0xae

    const-string v2, "Agrave"

    aput-object v2, v1, v0

    const/16 v0, 0xaf

    const-string v2, "Aring"

    aput-object v2, v1, v0

    const/16 v0, 0xb0

    const-string v2, "Atilde"

    aput-object v2, v1, v0

    const/16 v0, 0xb1

    const-string v2, "Ccedilla"

    aput-object v2, v1, v0

    const/16 v0, 0xb2

    const-string v2, "Eacute"

    aput-object v2, v1, v0

    const/16 v0, 0xb3

    const-string v2, "Ecircumflex"

    aput-object v2, v1, v0

    const/16 v0, 0xb4

    const-string v2, "Edieresis"

    aput-object v2, v1, v0

    const/16 v0, 0xb5

    const-string v2, "Egrave"

    aput-object v2, v1, v0

    const/16 v0, 0xb6

    const-string v2, "Iacute"

    aput-object v2, v1, v0

    const/16 v0, 0xb7

    const-string v2, "Icircumflex"

    aput-object v2, v1, v0

    const/16 v0, 0xb8

    const-string v2, "Idieresis"

    aput-object v2, v1, v0

    const/16 v0, 0xb9

    const-string v2, "Igrave"

    aput-object v2, v1, v0

    const/16 v0, 0xba

    const-string v2, "Ntilde"

    aput-object v2, v1, v0

    const/16 v0, 0xbb

    const-string v2, "Oacute"

    aput-object v2, v1, v0

    const/16 v0, 0xbc

    const-string v2, "Ocircumflex"

    aput-object v2, v1, v0

    const/16 v0, 0xbd

    const-string v2, "Odieresis"

    aput-object v2, v1, v0

    const/16 v0, 0xbe

    const-string v2, "Ograve"

    aput-object v2, v1, v0

    const/16 v0, 0xbf

    const-string v2, "Otilde"

    aput-object v2, v1, v0

    const/16 v0, 0xc0

    const-string v2, "Scaron"

    aput-object v2, v1, v0

    const/16 v0, 0xc1

    const-string v2, "Uacute"

    aput-object v2, v1, v0

    const/16 v0, 0xc2

    const-string v2, "Ucircumflex"

    aput-object v2, v1, v0

    const/16 v0, 0xc3

    const-string v2, "Udieresis"

    aput-object v2, v1, v0

    const/16 v0, 0xc4

    const-string v2, "Ugrave"

    aput-object v2, v1, v0

    const/16 v0, 0xc5

    const-string v2, "Yacute"

    aput-object v2, v1, v0

    const/16 v0, 0xc6

    const-string v2, "Ydieresis"

    aput-object v2, v1, v0

    const/16 v0, 0xc7

    const-string v2, "Zcaron"

    aput-object v2, v1, v0

    const/16 v0, 0xc8

    const-string v2, "aacute"

    aput-object v2, v1, v0

    const/16 v0, 0xc9

    const-string v2, "acircumflex"

    aput-object v2, v1, v0

    const/16 v0, 0xca

    const-string v2, "adieresis"

    aput-object v2, v1, v0

    const/16 v0, 0xcb

    const-string v2, "agrave"

    aput-object v2, v1, v0

    const/16 v0, 0xcc

    const-string v2, "aring"

    aput-object v2, v1, v0

    const/16 v0, 0xcd

    const-string v2, "atilde"

    aput-object v2, v1, v0

    const/16 v0, 0xce

    const-string v2, "ccedilla"

    aput-object v2, v1, v0

    const/16 v0, 0xcf

    const-string v2, "eacute"

    aput-object v2, v1, v0

    const/16 v0, 0xd0

    const-string v2, "ecircumflex"

    aput-object v2, v1, v0

    const/16 v0, 0xd1

    const-string v2, "edieresis"

    aput-object v2, v1, v0

    const/16 v0, 0xd2

    const-string v2, "egrave"

    aput-object v2, v1, v0

    const/16 v0, 0xd3

    const-string v2, "iacute"

    aput-object v2, v1, v0

    const/16 v0, 0xd4

    const-string v2, "icircumflex"

    aput-object v2, v1, v0

    const/16 v0, 0xd5

    const-string v2, "idieresis"

    aput-object v2, v1, v0

    const/16 v0, 0xd6

    const-string v2, "igrave"

    aput-object v2, v1, v0

    const/16 v0, 0xd7

    const-string v2, "ntilde"

    aput-object v2, v1, v0

    const/16 v0, 0xd8

    const-string v2, "oacute"

    aput-object v2, v1, v0

    const/16 v0, 0xd9

    const-string v2, "ocircumflex"

    aput-object v2, v1, v0

    const/16 v0, 0xda

    const-string v2, "odieresis"

    aput-object v2, v1, v0

    const/16 v0, 0xdb

    const-string v2, "ograve"

    aput-object v2, v1, v0

    const/16 v0, 0xdc

    const-string v2, "otilde"

    aput-object v2, v1, v0

    const/16 v0, 0xdd

    const-string v2, "scaron"

    aput-object v2, v1, v0

    const/16 v0, 0xde

    const-string v2, "uacute"

    aput-object v2, v1, v0

    const/16 v0, 0xdf

    const-string v2, "ucircumflex"

    aput-object v2, v1, v0

    const/16 v0, 0xe0

    const-string v2, "udieresis"

    aput-object v2, v1, v0

    const/16 v0, 0xe1

    const-string v2, "ugrave"

    aput-object v2, v1, v0

    const/16 v0, 0xe2

    const-string v2, "yacute"

    aput-object v2, v1, v0

    const/16 v0, 0xe3

    const-string v2, "ydieresis"

    aput-object v2, v1, v0

    const/16 v0, 0xe4

    const-string v2, "zcaron"

    aput-object v2, v1, v0

    const/16 v0, 0xe5

    const-string v2, "exclamsmall"

    aput-object v2, v1, v0

    const/16 v0, 0xe6

    const-string v2, "Hungarumlautsmall"

    aput-object v2, v1, v0

    const/16 v0, 0xe7

    const-string v2, "dollaroldstyle"

    aput-object v2, v1, v0

    const/16 v0, 0xe8

    const-string v2, "dollarsuperior"

    aput-object v2, v1, v0

    const/16 v0, 0xe9

    const-string v2, "ampersandsmall"

    aput-object v2, v1, v0

    const/16 v0, 0xea

    const-string v2, "Acutesmall"

    aput-object v2, v1, v0

    const/16 v0, 0xeb

    const-string v2, "parenleftsuperior"

    aput-object v2, v1, v0

    const/16 v0, 0xec

    const-string v2, "parenrightsuperior"

    aput-object v2, v1, v0

    const/16 v0, 0xed

    const-string v2, "twodotenleader"

    aput-object v2, v1, v0

    const/16 v0, 0xee

    const-string v2, "onedotenleader"

    aput-object v2, v1, v0

    const/16 v0, 0xef

    const-string v2, "zerooldstyle"

    aput-object v2, v1, v0

    const/16 v0, 0xf0

    const-string v2, "oneoldstyle"

    aput-object v2, v1, v0

    const/16 v0, 0xf1

    const-string v2, "twooldstyle"

    aput-object v2, v1, v0

    const/16 v0, 0xf2

    const-string v2, "threeoldstyle"

    aput-object v2, v1, v0

    const/16 v0, 0xf3

    const-string v2, "fouroldstyle"

    aput-object v2, v1, v0

    const/16 v0, 0xf4

    const-string v2, "fiveoldstyle"

    aput-object v2, v1, v0

    const/16 v0, 0xf5

    const-string v2, "sixoldstyle"

    aput-object v2, v1, v0

    const/16 v0, 0xf6

    const-string v2, "sevenoldstyle"

    aput-object v2, v1, v0

    const/16 v0, 0xf7

    const-string v2, "eightoldstyle"

    aput-object v2, v1, v0

    const/16 v0, 0xf8

    const-string v2, "nineoldstyle"

    aput-object v2, v1, v0

    const/16 v0, 0xf9

    const-string v2, "commasuperior"

    aput-object v2, v1, v0

    const/16 v0, 0xfa

    const-string v2, "threequartersemdash"

    aput-object v2, v1, v0

    const/16 v0, 0xfb

    const-string v2, "periodsuperior"

    aput-object v2, v1, v0

    const/16 v0, 0xfc

    const-string v2, "questionsmall"

    aput-object v2, v1, v0

    const/16 v0, 0xfd

    const-string v2, "asuperior"

    aput-object v2, v1, v0

    const/16 v0, 0xfe

    const-string v2, "bsuperior"

    aput-object v2, v1, v0

    const/16 v0, 0xff

    const-string v2, "centsuperior"

    aput-object v2, v1, v0

    const/16 v0, 0x100

    const-string v2, "dsuperior"

    aput-object v2, v1, v0

    const/16 v0, 0x101

    const-string v2, "esuperior"

    aput-object v2, v1, v0

    const/16 v0, 0x102

    const-string v2, "isuperior"

    aput-object v2, v1, v0

    const/16 v0, 0x103

    const-string v2, "lsuperior"

    aput-object v2, v1, v0

    const/16 v0, 0x104

    const-string v2, "msuperior"

    aput-object v2, v1, v0

    const/16 v0, 0x105

    const-string v2, "nsuperior"

    aput-object v2, v1, v0

    const/16 v0, 0x106

    const-string v2, "osuperior"

    aput-object v2, v1, v0

    const/16 v0, 0x107

    const-string v2, "rsuperior"

    aput-object v2, v1, v0

    const/16 v0, 0x108

    const-string v2, "ssuperior"

    aput-object v2, v1, v0

    const/16 v0, 0x109

    const-string v2, "tsuperior"

    aput-object v2, v1, v0

    const/16 v0, 0x10a

    const-string v2, "ff"

    aput-object v2, v1, v0

    const/16 v0, 0x10b

    const-string v2, "ffi"

    aput-object v2, v1, v0

    const/16 v0, 0x10c

    const-string v2, "ffl"

    aput-object v2, v1, v0

    const/16 v0, 0x10d

    const-string v2, "parenleftinferior"

    aput-object v2, v1, v0

    const/16 v0, 0x10e

    const-string v2, "parenrightinferior"

    aput-object v2, v1, v0

    const/16 v0, 0x10f

    const-string v2, "Circumflexsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x110

    const-string v2, "hyphensuperior"

    aput-object v2, v1, v0

    const/16 v0, 0x111

    const-string v2, "Gravesmall"

    aput-object v2, v1, v0

    const/16 v0, 0x112

    const-string v2, "Asmall"

    aput-object v2, v1, v0

    const/16 v0, 0x113

    const-string v2, "Bsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x114

    const-string v2, "Csmall"

    aput-object v2, v1, v0

    const/16 v0, 0x115

    const-string v2, "Dsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x116

    const-string v2, "Esmall"

    aput-object v2, v1, v0

    const/16 v0, 0x117

    const-string v2, "Fsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x118

    const-string v2, "Gsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x119

    const-string v2, "Hsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x11a

    const-string v2, "Ismall"

    aput-object v2, v1, v0

    const/16 v0, 0x11b

    const-string v2, "Jsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x11c

    const-string v2, "Ksmall"

    aput-object v2, v1, v0

    const/16 v0, 0x11d

    const-string v2, "Lsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x11e

    const-string v2, "Msmall"

    aput-object v2, v1, v0

    const/16 v0, 0x11f

    const-string v2, "Nsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x120

    const-string v2, "Osmall"

    aput-object v2, v1, v0

    const/16 v0, 0x121

    const-string v2, "Psmall"

    aput-object v2, v1, v0

    const/16 v0, 0x122

    const-string v2, "Qsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x123

    const-string v2, "Rsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x124

    const-string v2, "Ssmall"

    aput-object v2, v1, v0

    const/16 v0, 0x125

    const-string v2, "Tsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x126

    const-string v2, "Usmall"

    aput-object v2, v1, v0

    const/16 v0, 0x127

    const-string v2, "Vsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x128

    const-string v2, "Wsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x129

    const-string v2, "Xsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x12a

    const-string v2, "Ysmall"

    aput-object v2, v1, v0

    const/16 v0, 0x12b

    const-string v2, "Zsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x12c

    const-string v2, "colonmonetary"

    aput-object v2, v1, v0

    const/16 v0, 0x12d

    const-string v2, "onefitted"

    aput-object v2, v1, v0

    const/16 v0, 0x12e

    const-string v2, "rupiah"

    aput-object v2, v1, v0

    const/16 v0, 0x12f

    const-string v2, "Tildesmall"

    aput-object v2, v1, v0

    const/16 v0, 0x130

    const-string v2, "exclamdownsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x131

    const-string v2, "centoldstyle"

    aput-object v2, v1, v0

    const/16 v0, 0x132

    const-string v2, "Lslashsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x133

    const-string v2, "Scaronsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x134

    const-string v2, "Zcaronsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x135

    const-string v2, "Dieresissmall"

    aput-object v2, v1, v0

    const/16 v0, 0x136

    const-string v2, "Brevesmall"

    aput-object v2, v1, v0

    const/16 v0, 0x137

    const-string v2, "Caronsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x138

    const-string v2, "Dotaccentsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x139

    const-string v2, "Macronsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x13a

    const-string v2, "figuredash"

    aput-object v2, v1, v0

    const/16 v0, 0x13b

    const-string v2, "hypheninferior"

    aput-object v2, v1, v0

    const/16 v0, 0x13c

    const-string v2, "Ogoneksmall"

    aput-object v2, v1, v0

    const/16 v0, 0x13d

    const-string v2, "Ringsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x13e

    const-string v2, "Cedillasmall"

    aput-object v2, v1, v0

    const/16 v0, 0x13f

    const-string v2, "questiondownsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x140

    const-string v2, "oneeighth"

    aput-object v2, v1, v0

    const/16 v0, 0x141

    const-string v2, "threeeighths"

    aput-object v2, v1, v0

    const/16 v0, 0x142

    const-string v2, "fiveeighths"

    aput-object v2, v1, v0

    const/16 v0, 0x143

    const-string v2, "seveneighths"

    aput-object v2, v1, v0

    const/16 v0, 0x144

    const-string v2, "onethird"

    aput-object v2, v1, v0

    const/16 v0, 0x145

    const-string v2, "twothirds"

    aput-object v2, v1, v0

    const/16 v0, 0x146

    const-string v2, "zerosuperior"

    aput-object v2, v1, v0

    const/16 v0, 0x147

    const-string v2, "foursuperior"

    aput-object v2, v1, v0

    const/16 v0, 0x148

    const-string v2, "fivesuperior"

    aput-object v2, v1, v0

    const/16 v0, 0x149

    const-string v2, "sixsuperior"

    aput-object v2, v1, v0

    const/16 v0, 0x14a

    const-string v2, "sevensuperior"

    aput-object v2, v1, v0

    const/16 v0, 0x14b

    const-string v2, "eightsuperior"

    aput-object v2, v1, v0

    const/16 v0, 0x14c

    const-string v2, "ninesuperior"

    aput-object v2, v1, v0

    const/16 v0, 0x14d

    const-string v2, "zeroinferior"

    aput-object v2, v1, v0

    const/16 v0, 0x14e

    const-string v2, "oneinferior"

    aput-object v2, v1, v0

    const/16 v0, 0x14f

    const-string v2, "twoinferior"

    aput-object v2, v1, v0

    const/16 v0, 0x150

    const-string v2, "threeinferior"

    aput-object v2, v1, v0

    const/16 v0, 0x151

    const-string v2, "fourinferior"

    aput-object v2, v1, v0

    const/16 v0, 0x152

    const-string v2, "fiveinferior"

    aput-object v2, v1, v0

    const/16 v0, 0x153

    const-string v2, "sixinferior"

    aput-object v2, v1, v0

    const/16 v0, 0x154

    const-string v2, "seveninferior"

    aput-object v2, v1, v0

    const/16 v0, 0x155

    const-string v2, "eightinferior"

    aput-object v2, v1, v0

    const/16 v0, 0x156

    const-string v2, "nineinferior"

    aput-object v2, v1, v0

    const/16 v0, 0x157

    const-string v2, "centinferior"

    aput-object v2, v1, v0

    const/16 v0, 0x158

    const-string v2, "dollarinferior"

    aput-object v2, v1, v0

    const/16 v0, 0x159

    const-string v2, "periodinferior"

    aput-object v2, v1, v0

    const/16 v0, 0x15a

    const-string v2, "commainferior"

    aput-object v2, v1, v0

    const/16 v0, 0x15b

    const-string v2, "Agravesmall"

    aput-object v2, v1, v0

    const/16 v0, 0x15c

    const-string v2, "Aacutesmall"

    aput-object v2, v1, v0

    const/16 v0, 0x15d

    const-string v2, "Acircumflexsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x15e

    const-string v2, "Atildesmall"

    aput-object v2, v1, v0

    const/16 v0, 0x15f

    const-string v2, "Adieresissmall"

    aput-object v2, v1, v0

    const/16 v0, 0x160

    const-string v2, "Aringsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x161

    const-string v2, "AEsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x162

    const-string v2, "Ccedillasmall"

    aput-object v2, v1, v0

    const/16 v0, 0x163

    const-string v2, "Egravesmall"

    aput-object v2, v1, v0

    const/16 v0, 0x164

    const-string v2, "Eacutesmall"

    aput-object v2, v1, v0

    const/16 v0, 0x165

    const-string v2, "Ecircumflexsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x166

    const-string v2, "Edieresissmall"

    aput-object v2, v1, v0

    const/16 v0, 0x167

    const-string v2, "Igravesmall"

    aput-object v2, v1, v0

    const/16 v0, 0x168

    const-string v2, "Iacutesmall"

    aput-object v2, v1, v0

    const/16 v0, 0x169

    const-string v2, "Icircumflexsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x16a

    const-string v2, "Idieresissmall"

    aput-object v2, v1, v0

    const/16 v0, 0x16b

    const-string v2, "Ethsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x16c

    const-string v2, "Ntildesmall"

    aput-object v2, v1, v0

    const/16 v0, 0x16d

    const-string v2, "Ogravesmall"

    aput-object v2, v1, v0

    const/16 v0, 0x16e

    const-string v2, "Oacutesmall"

    aput-object v2, v1, v0

    const/16 v0, 0x16f

    const-string v2, "Ocircumflexsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x170

    const-string v2, "Otildesmall"

    aput-object v2, v1, v0

    const/16 v0, 0x171

    const-string v2, "Odieresissmall"

    aput-object v2, v1, v0

    const/16 v0, 0x172

    const-string v2, "OEsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x173

    const-string v2, "Oslashsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x174

    const-string v2, "Ugravesmall"

    aput-object v2, v1, v0

    const/16 v0, 0x175

    const-string v2, "Uacutesmall"

    aput-object v2, v1, v0

    const/16 v0, 0x176

    const-string v2, "Ucircumflexsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x177

    const-string v2, "Udieresissmall"

    aput-object v2, v1, v0

    const/16 v0, 0x178

    const-string v2, "Yacutesmall"

    aput-object v2, v1, v0

    const/16 v0, 0x179

    const-string v2, "Thornsmall"

    aput-object v2, v1, v0

    const/16 v0, 0x17a

    const-string v2, "Ydieresissmall"

    aput-object v2, v1, v0

    const/16 v0, 0x17b

    const-string v2, "001.000"

    aput-object v2, v1, v0

    const/16 v0, 0x17c

    const-string v2, "001.001"

    aput-object v2, v1, v0

    const/16 v0, 0x17d

    const-string v2, "001.002"

    aput-object v2, v1, v0

    const/16 v0, 0x17e

    const-string v2, "001.003"

    aput-object v2, v1, v0

    const/16 v0, 0x17f

    const-string v2, "Black"

    aput-object v2, v1, v0

    const/16 v0, 0x180

    const-string v2, "Bold"

    aput-object v2, v1, v0

    const/16 v0, 0x181

    const-string v2, "Book"

    aput-object v2, v1, v0

    const/16 v0, 0x182

    const-string v2, "Light"

    aput-object v2, v1, v0

    const/16 v0, 0x183

    const-string v2, "Medium"

    aput-object v2, v1, v0

    const/16 v0, 0x184

    const-string v2, "Regular"

    aput-object v2, v1, v0

    const/16 v0, 0x185

    const-string v2, "Roman"

    aput-object v2, v1, v0

    const/16 v0, 0x186

    const-string v2, "Semibold"

    aput-object v2, v1, v0

    sput-object v1, Lcom/itextpdf/io/font/CFFFont;->standardStrings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 9

    .line 1035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x30

    .line 251
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 252
    iput v0, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    .line 1033
    new-instance v1, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->rasFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    .line 1037
    new-instance v1, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFont;->rasFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-virtual {v2, p1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    iput-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 1038
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 1041
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    .line 1042
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    .line 1046
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result p1

    .line 1048
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v1

    iput v1, p0, Lcom/itextpdf/io/font/CFFFont;->offSize:I

    .line 1054
    iput p1, p0, Lcom/itextpdf/io/font/CFFFont;->nameIndexOffset:I

    .line 1055
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFont;->getIndex(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/font/CFFFont;->nameOffsets:[I

    .line 1056
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget p1, p1, v1

    iput p1, p0, Lcom/itextpdf/io/font/CFFFont;->topdictIndexOffset:I

    .line 1057
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFont;->getIndex(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/font/CFFFont;->topdictOffsets:[I

    .line 1058
    array-length v1, p1

    sub-int/2addr v1, v2

    aget p1, p1, v1

    iput p1, p0, Lcom/itextpdf/io/font/CFFFont;->stringIndexOffset:I

    .line 1059
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFont;->getIndex(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/font/CFFFont;->stringOffsets:[I

    .line 1060
    array-length v1, p1

    sub-int/2addr v1, v2

    aget p1, p1, v1

    iput p1, p0, Lcom/itextpdf/io/font/CFFFont;->gsubrIndexOffset:I

    .line 1061
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFont;->getIndex(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/font/CFFFont;->gsubrOffsets:[I

    .line 1063
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFont;->nameOffsets:[I

    array-length p1, p1

    sub-int/2addr p1, v2

    new-array p1, p1, [Lcom/itextpdf/io/font/CFFFont$Font;

    iput-object p1, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    move p1, v0

    .line 1077
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->nameOffsets:[I

    array-length v1, v1

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_1

    .line 1078
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    new-instance v3, Lcom/itextpdf/io/font/CFFFont$Font;

    invoke-direct {v3, p0}, Lcom/itextpdf/io/font/CFFFont$Font;-><init>(Lcom/itextpdf/io/font/CFFFont;)V

    aput-object v3, v1, p1

    .line 1079
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->nameOffsets:[I

    aget v1, v1, p1

    invoke-virtual {p0, v1}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 1080
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    const-string v3, ""

    iput-object v3, v1, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    .line 1081
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->nameOffsets:[I

    aget v1, v1, p1

    :goto_1
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFont;->nameOffsets:[I

    add-int/lit8 v4, p1, 0x1

    aget v3, v3, v4

    if-ge v1, v3, :cond_0

    .line 1082
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v4, v4, p1

    iget-object v5, v4, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move p1, v4

    goto :goto_0

    :cond_1
    move p1, v0

    .line 1106
    :goto_2
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->topdictOffsets:[I

    array-length v3, v1

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_10

    .line 1107
    aget v1, v1, p1

    invoke-virtual {p0, v1}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 1108
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getPosition()I

    move-result v1

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFont;->topdictOffsets:[I

    add-int/lit8 v4, p1, 0x1

    aget v3, v3, v4

    const-string v5, "Private"

    if-ge v1, v3, :cond_a

    .line 1109
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getDictItem()V

    .line 1110
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->key:Ljava/lang/String;

    const-string v3, "FullName"

    if-ne v1, v3, :cond_3

    .line 1112
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Lcom/itextpdf/io/font/CFFFont;->getString(C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/itextpdf/io/font/CFFFont$Font;->fullName:Ljava/lang/String;

    goto :goto_3

    .line 1114
    :cond_3
    const-string v3, "ROS"

    if-ne v1, v3, :cond_4

    .line 1115
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iput-boolean v2, v1, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    goto :goto_3

    :cond_4
    if-ne v1, v5, :cond_5

    .line 1117
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/itextpdf/io/font/CFFFont$Font;->privateLength:I

    .line 1118
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    aget-object v3, v3, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/itextpdf/io/font/CFFFont$Font;->privateOffset:I

    goto :goto_3

    .line 1120
    :cond_5
    const-string v3, "charset"

    if-ne v1, v3, :cond_6

    .line 1121
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/itextpdf/io/font/CFFFont$Font;->charsetOffset:I

    goto :goto_3

    .line 1131
    :cond_6
    const-string v3, "CharStrings"

    if-ne v1, v3, :cond_7

    .line 1132
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/itextpdf/io/font/CFFFont$Font;->charstringsOffset:I

    .line 1135
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getPosition()I

    move-result v1

    .line 1136
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v3, v3, p1

    iget v4, v3, Lcom/itextpdf/io/font/CFFFont$Font;->charstringsOffset:I

    invoke-virtual {p0, v4}, Lcom/itextpdf/io/font/CFFFont;->getIndex(I)[I

    move-result-object v4

    iput-object v4, v3, Lcom/itextpdf/io/font/CFFFont$Font;->charstringsOffsets:[I

    .line 1137
    invoke-virtual {p0, v1}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    goto/16 :goto_3

    .line 1138
    :cond_7
    const-string v3, "FDArray"

    if-ne v1, v3, :cond_8

    .line 1139
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/itextpdf/io/font/CFFFont$Font;->fdarrayOffset:I

    goto/16 :goto_3

    .line 1140
    :cond_8
    const-string v3, "FDSelect"

    if-ne v1, v3, :cond_9

    .line 1141
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/itextpdf/io/font/CFFFont$Font;->fdselectOffset:I

    goto/16 :goto_3

    .line 1142
    :cond_9
    const-string v3, "CharstringType"

    if-ne v1, v3, :cond_2

    .line 1143
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/itextpdf/io/font/CFFFont$Font;->CharstringType:I

    goto/16 :goto_3

    .line 1147
    :cond_a
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->privateOffset:I

    if-ltz v1, :cond_c

    .line 1149
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->privateOffset:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 1150
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getPosition()I

    move-result v1

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/itextpdf/io/font/CFFFont$Font;->privateOffset:I

    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v6, v6, p1

    iget v6, v6, Lcom/itextpdf/io/font/CFFFont$Font;->privateLength:I

    add-int/2addr v3, v6

    if-ge v1, v3, :cond_c

    .line 1151
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getDictItem()V

    .line 1152
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->key:Ljava/lang/String;

    const-string v3, "Subrs"

    if-ne v1, v3, :cond_b

    .line 1155
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v6, v6, p1

    iget v6, v6, Lcom/itextpdf/io/font/CFFFont$Font;->privateOffset:I

    add-int/2addr v3, v6

    iput v3, v1, Lcom/itextpdf/io/font/CFFFont$Font;->privateSubrs:I

    goto :goto_4

    .line 1160
    :cond_c
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->fdarrayOffset:I

    if-ltz v1, :cond_f

    .line 1161
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->fdarrayOffset:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/io/font/CFFFont;->getIndex(I)[I

    move-result-object v1

    .line 1163
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v3, v3, p1

    array-length v6, v1

    sub-int/2addr v6, v2

    new-array v6, v6, [I

    iput-object v6, v3, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    .line 1164
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v3, v3, p1

    array-length v6, v1

    sub-int/2addr v6, v2

    new-array v6, v6, [I

    iput-object v6, v3, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateLengths:[I

    move v3, v0

    .line 1168
    :goto_5
    array-length v6, v1

    sub-int/2addr v6, v2

    if-ge v3, v6, :cond_f

    .line 1169
    aget v6, v1, v3

    invoke-virtual {p0, v6}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 1170
    :cond_d
    :goto_6
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getPosition()I

    move-result v6

    add-int/lit8 v7, v3, 0x1

    aget v8, v1, v7

    if-ge v6, v8, :cond_e

    .line 1171
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getDictItem()V

    .line 1172
    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFont;->key:Ljava/lang/String;

    if-ne v6, v5, :cond_d

    .line 1173
    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v6, v6, p1

    iget-object v6, v6, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateLengths:[I

    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    aget-object v7, v7, v0

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v3

    .line 1174
    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v6, v6, p1

    iget-object v6, v6, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    aget-object v7, v7, v2

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v3

    goto :goto_6

    :cond_e
    move v3, v7

    goto :goto_5

    :cond_f
    move p1, v4

    goto/16 :goto_2

    :cond_10
    return-void
.end method


# virtual methods
.method ReadEncoding(I)V
    .locals 0

    .line 1187
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 1188
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    return-void
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 964
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 965
    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getCID(Ljava/lang/String;)[B
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    .line 677
    :goto_0
    iget-object v3, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 678
    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 679
    :cond_1
    :goto_1
    iget-object v3, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    array-length v3, v3

    if-ne v2, v3, :cond_2

    const/4 v1, 0x0

    return-object v1

    .line 681
    :cond_2
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 685
    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    .line 689
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v4

    .line 690
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    .line 691
    iput v4, v0, Lcom/itextpdf/io/font/CFFFont;->nextIndexOffset:I

    .line 693
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v6, v0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-direct {v5, v6, v1, v4}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 696
    iget-object v4, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    if-nez v4, :cond_3

    .line 698
    iget-object v4, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/itextpdf/io/font/CFFFont$Font;->charstringsOffset:I

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 699
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFont;->getCard16()C

    move-result v4

    .line 700
    iget v5, v0, Lcom/itextpdf/io/font/CFFFont;->stringIndexOffset:I

    invoke-virtual {v0, v5}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 701
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFont;->getCard16()C

    move-result v5

    sget-object v6, Lcom/itextpdf/io/font/CFFFont;->standardStrings:[Ljava/lang/String;

    array-length v6, v6

    add-int/2addr v5, v6

    goto :goto_2

    :cond_3
    const/4 v4, -0x1

    move v5, v4

    .line 708
    :goto_2
    new-instance v6, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 710
    new-instance v6, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    invoke-direct {v6, v7}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 712
    new-instance v6, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    invoke-direct {v6, v7}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 713
    new-instance v6, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    iget-object v8, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    int-to-char v8, v8

    invoke-direct {v6, v8}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 714
    new-instance v6, Lcom/itextpdf/io/font/CFFFont$StringItem;

    iget-object v8, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    invoke-direct {v6, v8}, Lcom/itextpdf/io/font/CFFFont$StringItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 719
    new-instance v6, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    invoke-direct {v6, v7}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 721
    new-instance v6, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/4 v8, 0x2

    invoke-direct {v6, v8}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 723
    new-instance v6, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    invoke-direct {v6, v7}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 724
    new-instance v6, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    invoke-direct {v6, v8}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(I)V

    .line 725
    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 726
    new-instance v9, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;

    invoke-direct {v9}, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;-><init>()V

    .line 727
    invoke-virtual {v3, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 739
    new-instance v10, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct {v10}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    .line 740
    new-instance v11, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct {v11}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    .line 741
    new-instance v12, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct {v12}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    .line 742
    new-instance v13, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct {v13}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    .line 744
    iget-object v14, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v14, v14, v2

    iget-boolean v14, v14, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    const/16 v15, 0xc

    if-nez v14, :cond_4

    .line 747
    new-instance v14, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;

    invoke-direct {v14, v5}, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual {v3, v14}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 748
    new-instance v14, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;

    add-int/2addr v5, v7

    invoke-direct {v14, v5}, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual {v3, v14}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 749
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;

    invoke-direct {v5, v1}, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 750
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    invoke-direct {v5, v15}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 751
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v14, 0x1e

    invoke-direct {v5, v14}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 754
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;

    invoke-direct {v5, v4}, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 755
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    invoke-direct {v5, v15}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 756
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v14, 0x22

    invoke-direct {v5, v14}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 763
    :cond_4
    invoke-virtual {v3, v12}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 764
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    invoke-direct {v5, v15}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 765
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v14, 0x24

    invoke-direct {v5, v14}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 768
    invoke-virtual {v3, v13}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 769
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    invoke-direct {v5, v15}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 770
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v14, 0x25

    invoke-direct {v5, v14}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 773
    invoke-virtual {v3, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 774
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v14, 0xf

    invoke-direct {v5, v14}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 777
    invoke-virtual {v3, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 778
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v14, 0x11

    invoke-direct {v5, v14}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 780
    iget-object v5, v0, Lcom/itextpdf/io/font/CFFFont;->topdictOffsets:[I

    aget v5, v5, v2

    invoke-virtual {v0, v5}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 781
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFont;->getPosition()I

    move-result v5

    iget-object v14, v0, Lcom/itextpdf/io/font/CFFFont;->topdictOffsets:[I

    add-int/lit8 v15, v2, 0x1

    aget v14, v14, v15

    if-ge v5, v14, :cond_7

    .line 782
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFont;->getPosition()I

    move-result v5

    .line 783
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFont;->getDictItem()V

    .line 784
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFont;->getPosition()I

    move-result v14

    .line 785
    const-string v15, "Encoding"

    iget-object v8, v0, Lcom/itextpdf/io/font/CFFFont;->key:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "Private"

    iget-object v15, v0, Lcom/itextpdf/io/font/CFFFont;->key:Ljava/lang/String;

    .line 786
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "FDSelect"

    iget-object v15, v0, Lcom/itextpdf/io/font/CFFFont;->key:Ljava/lang/String;

    .line 787
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "FDArray"

    iget-object v15, v0, Lcom/itextpdf/io/font/CFFFont;->key:Ljava/lang/String;

    .line 788
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "charset"

    iget-object v15, v0, Lcom/itextpdf/io/font/CFFFont;->key:Ljava/lang/String;

    .line 789
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "CharStrings"

    iget-object v15, v0, Lcom/itextpdf/io/font/CFFFont;->key:Ljava/lang/String;

    .line 790
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    .line 795
    :cond_5
    new-instance v8, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v15, v0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    sub-int/2addr v14, v5

    invoke-direct {v8, v15, v5, v14}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_6
    :goto_4
    const/4 v8, 0x2

    goto :goto_3

    .line 799
    :cond_7
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$IndexMarkerItem;

    invoke-direct {v5, v6, v9}, Lcom/itextpdf/io/font/CFFFont$IndexMarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 805
    iget-object v5, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, v2

    iget-boolean v5, v5, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    if-eqz v5, :cond_8

    .line 806
    iget v5, v0, Lcom/itextpdf/io/font/CFFFont;->stringIndexOffset:I

    invoke-virtual {v0, v5}, Lcom/itextpdf/io/font/CFFFont;->getEntireIndexRange(I)Lcom/itextpdf/io/font/CFFFont$RangeItem;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 808
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "-OneRange"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 809
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x7f

    if-le v8, v9, :cond_9

    .line 810
    invoke-virtual {v5, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 811
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "AdobeIdentity"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 813
    iget-object v9, v0, Lcom/itextpdf/io/font/CFFFont;->stringOffsets:[I

    array-length v14, v9

    sub-int/2addr v14, v7

    aget v14, v9, v14

    aget v9, v9, v1

    sub-int/2addr v14, v9

    sub-int/2addr v9, v7

    .line 818
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v14

    const/16 v6, 0xff

    if-gt v15, v6, :cond_a

    move v6, v7

    goto :goto_5

    .line 819
    :cond_a
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v14

    const v15, 0xffff

    if-gt v6, v15, :cond_b

    const/4 v6, 0x2

    goto :goto_5

    .line 820
    :cond_b
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v14

    const v15, 0xffffff

    if-gt v6, v15, :cond_c

    const/4 v6, 0x3

    goto :goto_5

    :cond_c
    const/4 v6, 0x4

    .line 824
    :goto_5
    new-instance v15, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    iget-object v1, v0, Lcom/itextpdf/io/font/CFFFont;->stringOffsets:[I

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    int-to-char v1, v1

    invoke-direct {v15, v1}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v3, v15}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 826
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    int-to-char v15, v6

    invoke-direct {v1, v15}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 827
    iget-object v1, v0, Lcom/itextpdf/io/font/CFFFont;->stringOffsets:[I

    array-length v15, v1

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v15, :cond_d

    aget v16, v1, v7

    move-object/from16 v17, v1

    .line 828
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    move/from16 v18, v15

    sub-int v15, v16, v9

    invoke-direct {v1, v6, v15}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v17

    move/from16 v15, v18

    goto :goto_6

    .line 830
    :cond_d
    iget-object v1, v0, Lcom/itextpdf/io/font/CFFFont;->stringOffsets:[I

    array-length v7, v1

    const/4 v15, 0x1

    sub-int/2addr v7, v15

    aget v1, v1, v7

    sub-int/2addr v1, v9

    .line 833
    const-string v7, "Adobe"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v1, v7

    .line 834
    new-instance v7, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    invoke-direct {v7, v6, v1}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 835
    const-string v7, "Identity"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v1, v7

    .line 836
    new-instance v7, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    invoke-direct {v7, v6, v1}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 837
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    .line 838
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    invoke-direct {v5, v6, v1}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(II)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 840
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v5, v0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v6, v0, Lcom/itextpdf/io/font/CFFFont;->stringOffsets:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-direct {v1, v5, v6, v14}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 841
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$StringItem;

    invoke-direct {v1, v8}, Lcom/itextpdf/io/font/CFFFont$StringItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 846
    :goto_7
    iget v1, v0, Lcom/itextpdf/io/font/CFFFont;->gsubrIndexOffset:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/CFFFont;->getEntireIndexRange(I)Lcom/itextpdf/io/font/CFFFont$RangeItem;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 850
    iget-object v1, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    if-eqz v1, :cond_e

    goto/16 :goto_8

    .line 854
    :cond_e
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v1, v13}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 856
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/4 v5, 0x3

    invoke-direct {v1, v5}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 858
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 861
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 863
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    invoke-direct {v1, v5}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 866
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    int-to-char v5, v4

    invoke-direct {v1, v5}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 871
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v1, v10}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 873
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/4 v5, 0x2

    invoke-direct {v1, v5}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 876
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 878
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    sub-int/2addr v4, v5

    int-to-char v4, v4

    invoke-direct {v1, v4}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 883
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v1, v12}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 884
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    invoke-direct {v1, v5}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 886
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    invoke-direct {v1, v5}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 888
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    invoke-direct {v1, v5}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 890
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    invoke-direct {v1, v5}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(I)V

    .line 891
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 892
    new-instance v4, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;

    invoke-direct {v4}, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;-><init>()V

    .line 893
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 902
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;

    iget-object v6, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/itextpdf/io/font/CFFFont$Font;->privateLength:I

    invoke-direct {v5, v6}, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 903
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct {v5}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    .line 904
    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 906
    new-instance v6, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v7, 0x12

    invoke-direct {v6, v7}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 908
    new-instance v6, Lcom/itextpdf/io/font/CFFFont$IndexMarkerItem;

    invoke-direct {v6, v1, v4}, Lcom/itextpdf/io/font/CFFFont$IndexMarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 912
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v1, v5}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 916
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v4, v0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v5, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/itextpdf/io/font/CFFFont$Font;->privateOffset:I

    iget-object v6, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/itextpdf/io/font/CFFFont$Font;->privateLength:I

    invoke-direct {v1, v4, v5, v6}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 917
    iget-object v1, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->privateSubrs:I

    if-ltz v1, :cond_f

    .line 919
    iget-object v1, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->privateSubrs:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/CFFFont;->getEntireIndexRange(I)Lcom/itextpdf/io/font/CFFFont$RangeItem;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 925
    :cond_f
    :goto_8
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v1, v11}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 926
    iget-object v1, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->charstringsOffset:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/CFFFont;->getEntireIndexRange(I)Lcom/itextpdf/io/font/CFFFont$RangeItem;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 931
    filled-new-array {v1}, [I

    move-result-object v2

    .line 933
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/io/font/CFFFont$Item;

    .line 934
    invoke-virtual {v4, v2}, Lcom/itextpdf/io/font/CFFFont$Item;->increment([I)V

    goto :goto_9

    .line 937
    :cond_10
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/io/font/CFFFont$Item;

    .line 938
    invoke-virtual {v4}, Lcom/itextpdf/io/font/CFFFont$Item;->xref()V

    goto :goto_a

    :cond_11
    const/4 v4, 0x0

    .line 941
    aget v1, v2, v4

    .line 942
    new-array v1, v1, [B

    .line 944
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/io/font/CFFFont$Item;

    .line 945
    invoke-virtual {v3, v1}, Lcom/itextpdf/io/font/CFFFont$Item;->emit([B)V

    goto :goto_b

    :cond_12
    return-object v1
.end method

.method getCard16()C
    .locals 3

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readChar()C

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 177
    new-instance v1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "I/O exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method getCard8()C
    .locals 3

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readByte()B

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    return v0

    :catch_0
    move-exception v0

    .line 169
    new-instance v1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "I/O exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getDictItem()V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    .line 255
    :goto_0
    iget v2, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_0
    iput v0, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    .line 257
    iput-object v3, p0, Lcom/itextpdf/io/font/CFFFont;->key:Ljava/lang/String;

    move v1, v0

    :cond_1
    :goto_1
    if-nez v1, :cond_e

    .line 261
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v2

    const/16 v3, 0x1d

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 263
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getInt()I

    move-result v2

    .line 264
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    iget v5, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    .line 265
    iget v2, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    goto :goto_1

    :cond_2
    const/16 v3, 0x1c

    if-ne v2, v3, :cond_3

    .line 270
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getShort()S

    move-result v2

    .line 271
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    iget v5, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    .line 272
    iget v2, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    goto :goto_1

    :cond_3
    const/16 v3, 0x20

    if-lt v2, v3, :cond_4

    const/16 v5, 0xf6

    if-gt v2, v5, :cond_4

    .line 277
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    iget v5, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    add-int/lit16 v2, v2, -0x8b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    .line 278
    iget v2, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    goto :goto_1

    :cond_4
    const/16 v5, 0xf7

    if-lt v2, v5, :cond_5

    const/16 v5, 0xfa

    if-gt v2, v5, :cond_5

    .line 283
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v3

    add-int/lit16 v2, v2, -0xf7

    mul-int/lit16 v2, v2, 0x100

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x6c

    int-to-short v2, v2

    .line 285
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    iget v5, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    .line 286
    iget v2, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    goto :goto_1

    :cond_5
    const/16 v5, 0xfb

    if-lt v2, v5, :cond_6

    const/16 v5, 0xfe

    if-gt v2, v5, :cond_6

    .line 291
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v3

    add-int/lit16 v2, v2, -0xfb

    neg-int v2, v2

    mul-int/lit16 v2, v2, 0x100

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x6c

    int-to-short v2, v2

    .line 293
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    iget v5, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    .line 294
    iget v2, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    goto/16 :goto_1

    :cond_6
    const/16 v5, 0x1e

    if-ne v2, v5, :cond_c

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v3, v0

    move v5, v3

    move v6, v5

    move v7, v6

    :goto_2
    if-nez v3, :cond_b

    const/4 v8, 0x2

    if-nez v5, :cond_7

    .line 306
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v6

    move v5, v8

    :cond_7
    if-ne v5, v4, :cond_8

    .line 307
    div-int/lit8 v7, v6, 0x10

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    :cond_8
    if-ne v5, v8, :cond_9

    .line 308
    rem-int/lit8 v7, v6, 0x10

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    :cond_9
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    if-ltz v7, :cond_a

    const/16 v8, 0x9

    if-gt v7, v8, :cond_a

    .line 317
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :goto_3
    :pswitch_1
    move v3, v4

    goto :goto_2

    .line 313
    :pswitch_2
    const-string v8, "-"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 312
    :pswitch_3
    const-string v8, "E-"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 311
    :pswitch_4
    const-string v8, "E"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 310
    :pswitch_5
    const-string v8, "."

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 319
    :cond_a
    const-string v3, "<NIBBLE ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v8, 0x3e

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 325
    :cond_b
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    iget v5, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    .line 326
    iget v2, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    goto/16 :goto_1

    :cond_c
    const/16 v5, 0x15

    if-gt v2, v5, :cond_1

    const/16 v1, 0xc

    if-eq v2, v1, :cond_d

    .line 332
    sget-object v1, Lcom/itextpdf/io/font/CFFFont;->operatorNames:[Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->key:Ljava/lang/String;

    goto :goto_4

    .line 333
    :cond_d
    sget-object v1, Lcom/itextpdf/io/font/CFFFont;->operatorNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v2

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->key:Ljava/lang/String;

    :goto_4
    move v1, v4

    goto/16 :goto_1

    :cond_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected getEntireIndexRange(I)Lcom/itextpdf/io/font/CFFFont$RangeItem;
    .locals 5

    .line 647
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 648
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard16()C

    move-result v0

    if-nez v0, :cond_0

    .line 650
    new-instance v0, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v2, 0x2

    invoke-direct {v0, v1, p1, v2}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    return-object v0

    .line 652
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v1

    add-int/lit8 v2, p1, 0x3

    mul-int v3, v0, v1

    add-int/2addr v2, v3

    .line 653
    invoke-virtual {p0, v2}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 654
    invoke-virtual {p0, v1}, Lcom/itextpdf/io/font/CFFFont;->getOffset(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 655
    new-instance v3, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v2

    invoke-direct {v3, v4, p1, v0}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    return-object v3
.end method

.method getIndex(I)[I
    .locals 7

    .line 221
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 222
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard16()C

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 223
    new-array v2, v1, [I

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    .line 226
    aput p1, v2, v3

    return-object v2

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v4

    :goto_0
    if-gt v3, v0, :cond_1

    add-int/lit8 v5, p1, 0x3

    mul-int v6, v1, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    .line 244
    invoke-virtual {p0, v4}, Lcom/itextpdf/io/font/CFFFont;->getOffset(I)I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method getInt()I
    .locals 3

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 206
    new-instance v1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "I/O exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNames()[Ljava/lang/String;
    .locals 4

    .line 971
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 972
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 973
    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getOffset(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_0

    mul-int/lit16 v1, v1, 0x100

    .line 185
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method getPosition()I
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method getShort()S
    .locals 3

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 198
    new-instance v1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "I/O exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getString(C)Ljava/lang/String;
    .locals 5

    .line 149
    sget-object v0, Lcom/itextpdf/io/font/CFFFont;->standardStrings:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p1, v0, p1

    return-object p1

    .line 150
    :cond_0
    array-length v1, v0

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFont;->stringOffsets:[I

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 151
    :cond_1
    array-length v0, v0

    sub-int/2addr p1, v0

    .line 153
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getPosition()I

    move-result v0

    .line 154
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->stringOffsets:[I

    aget v1, v1, p1

    invoke-virtual {p0, v1}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 155
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 156
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFont;->stringOffsets:[I

    aget v2, v2, p1

    :goto_0
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFont;->stringOffsets:[I

    add-int/lit8 v4, p1, 0x1

    aget v3, v3, v4

    if-ge v2, v3, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isCID()Z
    .locals 2

    .line 952
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getNames()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFont;->isCID(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCID(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 957
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 958
    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object p1, p1, v1

    iget-boolean p1, p1, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method seek(I)V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    return-void
.end method
