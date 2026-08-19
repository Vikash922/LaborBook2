.class public Lcom/itextpdf/io/codec/CCITTG4Encoder;
.super Ljava/lang/Object;
.source "CCITTG4Encoder.java"


# static fields
.field private static final CODE:I = 0x1

.field private static final EOL:I = 0x1

.field private static final G3CODE_EOF:I = -0x3

.field private static final G3CODE_EOL:I = -0x1

.field private static final G3CODE_INCOMP:I = -0x4

.field private static final G3CODE_INVALID:I = -0x2

.field private static final LENGTH:I = 0x0

.field private static final RUNLEN:I = 0x2

.field private static oneruns:[B

.field private static zeroruns:[B


# instance fields
.field private TIFFFaxBlackCodes:[[I

.field private TIFFFaxWhiteCodes:[[I

.field private bit:I

.field private data:I

.field private dataBp:[B

.field private horizcode:[I

.field private msbmask:[I

.field private offsetData:I

.field private outBuf:Lcom/itextpdf/io/source/ByteBuffer;

.field private passcode:[I

.field private refline:[B

.field private rowbytes:I

.field private rowpixels:I

.field private sizeData:I

.field private vcodes:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x100

    .line 307
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/itextpdf/io/codec/CCITTG4Encoder;->zeroruns:[B

    .line 326
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->oneruns:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x8t
        0x7t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x7t
        0x8t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 223

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x8

    .line 55
    iput v2, v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->bit:I

    .line 58
    new-instance v3, Lcom/itextpdf/io/source/ByteBuffer;

    const/16 v4, 0x400

    invoke-direct {v3, v4}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    iput-object v3, v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    const/16 v3, 0x35

    const/4 v4, 0x0

    .line 357
    filled-new-array {v2, v3, v4}, [I

    move-result-object v5

    const/4 v3, 0x6

    const/4 v15, 0x7

    const/4 v14, 0x1

    filled-new-array {v3, v15, v14}, [I

    move-result-object v6

    const/4 v13, 0x4

    const/4 v12, 0x2

    filled-new-array {v13, v15, v12}, [I

    move-result-object v7

    const/4 v11, 0x3

    filled-new-array {v13, v2, v11}, [I

    move-result-object v8

    const/16 v10, 0xb

    filled-new-array {v13, v10, v13}, [I

    move-result-object v9

    const/16 v4, 0xc

    const/4 v2, 0x5

    filled-new-array {v13, v4, v2}, [I

    move-result-object v16

    move v4, v10

    move-object/from16 v10, v16

    const/16 v11, 0xe

    filled-new-array {v13, v11, v3}, [I

    move-result-object v11

    const/16 v12, 0xf

    filled-new-array {v13, v12, v15}, [I

    move-result-object v12

    const/16 v3, 0x13

    const/16 v4, 0x8

    filled-new-array {v2, v3, v4}, [I

    move-result-object v16

    move-object/from16 v13, v16

    const/16 v3, 0x14

    const/16 v4, 0x9

    filled-new-array {v2, v3, v4}, [I

    move-result-object v16

    move-object/from16 v14, v16

    const/16 v4, 0xa

    filled-new-array {v2, v15, v4}, [I

    move-result-object v16

    move v4, v15

    move-object/from16 v15, v16

    const/16 v3, 0x8

    const/16 v4, 0xb

    filled-new-array {v2, v3, v4}, [I

    move-result-object v16

    const/16 v2, 0xc

    const/4 v4, 0x6

    filled-new-array {v4, v3, v2}, [I

    move-result-object v17

    const/16 v2, 0xd

    const/4 v3, 0x3

    filled-new-array {v4, v3, v2}, [I

    move-result-object v18

    const/16 v2, 0x34

    const/16 v3, 0xe

    filled-new-array {v4, v2, v3}, [I

    move-result-object v19

    const/16 v2, 0x35

    const/16 v3, 0xf

    filled-new-array {v4, v2, v3}, [I

    move-result-object v20

    const/16 v2, 0x2a

    const/16 v3, 0x10

    filled-new-array {v4, v2, v3}, [I

    move-result-object v21

    const/16 v2, 0x11

    const/16 v3, 0x2b

    filled-new-array {v4, v3, v2}, [I

    move-result-object v22

    const/16 v2, 0x27

    const/16 v4, 0x12

    const/4 v3, 0x7

    filled-new-array {v3, v2, v4}, [I

    move-result-object v23

    const/16 v2, 0xc

    const/16 v4, 0x13

    filled-new-array {v3, v2, v4}, [I

    move-result-object v24

    const/16 v2, 0x8

    const/16 v4, 0x14

    filled-new-array {v3, v2, v4}, [I

    move-result-object v25

    const/16 v2, 0x15

    const/16 v4, 0x17

    filled-new-array {v3, v4, v2}, [I

    move-result-object v26

    const/16 v2, 0x16

    const/4 v4, 0x3

    filled-new-array {v3, v4, v2}, [I

    move-result-object v27

    const/4 v2, 0x4

    const/16 v4, 0x17

    filled-new-array {v3, v2, v4}, [I

    move-result-object v28

    const/16 v4, 0x28

    const/16 v2, 0x18

    filled-new-array {v3, v4, v2}, [I

    move-result-object v29

    const/16 v4, 0x19

    const/16 v2, 0x2b

    filled-new-array {v3, v2, v4}, [I

    move-result-object v30

    const/16 v2, 0x1a

    const/16 v4, 0x13

    filled-new-array {v3, v4, v2}, [I

    move-result-object v31

    const/16 v2, 0x24

    const/16 v4, 0x1b

    filled-new-array {v3, v2, v4}, [I

    move-result-object v32

    const/16 v2, 0x1c

    const/16 v4, 0x18

    filled-new-array {v3, v4, v2}, [I

    move-result-object v33

    const/16 v2, 0x1d

    const/16 v3, 0x8

    const/4 v4, 0x2

    filled-new-array {v3, v4, v2}, [I

    move-result-object v34

    const/16 v2, 0x1e

    const/4 v4, 0x3

    filled-new-array {v3, v4, v2}, [I

    move-result-object v35

    const/16 v2, 0x1a

    const/16 v4, 0x1f

    filled-new-array {v3, v2, v4}, [I

    move-result-object v36

    const/16 v2, 0x1b

    const/16 v4, 0x20

    filled-new-array {v3, v2, v4}, [I

    move-result-object v37

    const/16 v2, 0x21

    const/16 v4, 0x12

    filled-new-array {v3, v4, v2}, [I

    move-result-object v38

    const/16 v2, 0x22

    const/16 v4, 0x13

    filled-new-array {v3, v4, v2}, [I

    move-result-object v39

    const/16 v2, 0x23

    const/16 v4, 0x14

    filled-new-array {v3, v4, v2}, [I

    move-result-object v40

    const/16 v2, 0x15

    const/16 v4, 0x24

    filled-new-array {v3, v2, v4}, [I

    move-result-object v41

    const/16 v2, 0x16

    const/16 v4, 0x25

    filled-new-array {v3, v2, v4}, [I

    move-result-object v42

    const/16 v2, 0x26

    const/16 v4, 0x17

    filled-new-array {v3, v4, v2}, [I

    move-result-object v43

    const/16 v2, 0x28

    const/16 v4, 0x27

    filled-new-array {v3, v2, v4}, [I

    move-result-object v44

    const/16 v2, 0x29

    const/16 v4, 0x28

    filled-new-array {v3, v2, v4}, [I

    move-result-object v45

    const/16 v2, 0x2a

    const/16 v4, 0x29

    filled-new-array {v3, v2, v4}, [I

    move-result-object v46

    const/16 v4, 0x2b

    filled-new-array {v3, v4, v2}, [I

    move-result-object v47

    const/16 v2, 0x2c

    filled-new-array {v3, v2, v4}, [I

    move-result-object v48

    const/16 v2, 0x2d

    const/16 v4, 0x2c

    filled-new-array {v3, v2, v4}, [I

    move-result-object v49

    const/4 v4, 0x4

    filled-new-array {v3, v4, v2}, [I

    move-result-object v50

    const/16 v2, 0x2e

    const/4 v4, 0x5

    filled-new-array {v3, v4, v2}, [I

    move-result-object v51

    const/16 v2, 0x2f

    const/16 v4, 0xa

    filled-new-array {v3, v4, v2}, [I

    move-result-object v52

    const/16 v2, 0x30

    const/16 v4, 0xb

    filled-new-array {v3, v4, v2}, [I

    move-result-object v53

    const/16 v2, 0x52

    const/16 v4, 0x31

    filled-new-array {v3, v2, v4}, [I

    move-result-object v54

    const/16 v2, 0x53

    const/16 v4, 0x32

    filled-new-array {v3, v2, v4}, [I

    move-result-object v55

    const/16 v2, 0x54

    const/16 v4, 0x33

    filled-new-array {v3, v2, v4}, [I

    move-result-object v56

    const/16 v2, 0x55

    const/16 v4, 0x34

    filled-new-array {v3, v2, v4}, [I

    move-result-object v57

    const/16 v2, 0x24

    const/16 v4, 0x35

    filled-new-array {v3, v2, v4}, [I

    move-result-object v58

    const/16 v2, 0x25

    const/16 v4, 0x36

    filled-new-array {v3, v2, v4}, [I

    move-result-object v59

    const/16 v2, 0x58

    const/16 v4, 0x37

    filled-new-array {v3, v2, v4}, [I

    move-result-object v60

    const/16 v2, 0x59

    const/16 v4, 0x38

    filled-new-array {v3, v2, v4}, [I

    move-result-object v61

    const/16 v2, 0x5a

    const/16 v4, 0x39

    filled-new-array {v3, v2, v4}, [I

    move-result-object v62

    const/16 v2, 0x5b

    const/16 v4, 0x3a

    filled-new-array {v3, v2, v4}, [I

    move-result-object v63

    const/16 v2, 0x4a

    const/16 v4, 0x3b

    filled-new-array {v3, v2, v4}, [I

    move-result-object v64

    const/16 v2, 0x4b

    const/16 v4, 0x3c

    filled-new-array {v3, v2, v4}, [I

    move-result-object v65

    const/16 v2, 0x32

    const/16 v4, 0x3d

    filled-new-array {v3, v2, v4}, [I

    move-result-object v66

    const/16 v2, 0x33

    const/16 v4, 0x3e

    filled-new-array {v3, v2, v4}, [I

    move-result-object v67

    const/16 v2, 0x34

    const/16 v4, 0x3f

    filled-new-array {v3, v2, v4}, [I

    move-result-object v68

    const/16 v2, 0x1b

    const/16 v3, 0x40

    const/4 v4, 0x5

    filled-new-array {v4, v2, v3}, [I

    move-result-object v69

    const/16 v2, 0x80

    const/16 v3, 0x12

    filled-new-array {v4, v3, v2}, [I

    move-result-object v70

    const/16 v2, 0xc0

    const/4 v3, 0x6

    const/16 v4, 0x17

    filled-new-array {v3, v4, v2}, [I

    move-result-object v71

    const/16 v2, 0x100

    const/4 v3, 0x7

    const/16 v4, 0x37

    filled-new-array {v3, v4, v2}, [I

    move-result-object v72

    const/16 v2, 0x36

    const/16 v3, 0x140

    const/16 v4, 0x8

    filled-new-array {v4, v2, v3}, [I

    move-result-object v73

    const/16 v2, 0x180

    const/16 v3, 0x37

    filled-new-array {v4, v3, v2}, [I

    move-result-object v74

    const/16 v2, 0x64

    const/16 v3, 0x1c0

    filled-new-array {v4, v2, v3}, [I

    move-result-object v75

    const/16 v2, 0x65

    const/16 v3, 0x200

    filled-new-array {v4, v2, v3}, [I

    move-result-object v76

    const/16 v2, 0x68

    const/16 v3, 0x240

    filled-new-array {v4, v2, v3}, [I

    move-result-object v77

    const/16 v2, 0x67

    const/16 v3, 0x280

    filled-new-array {v4, v2, v3}, [I

    move-result-object v78

    const/16 v2, 0xcc

    const/16 v3, 0x2c0

    const/16 v4, 0x9

    filled-new-array {v4, v2, v3}, [I

    move-result-object v79

    const/16 v2, 0xcd

    const/16 v3, 0x300

    filled-new-array {v4, v2, v3}, [I

    move-result-object v80

    const/16 v2, 0xd2

    const/16 v3, 0x340

    filled-new-array {v4, v2, v3}, [I

    move-result-object v81

    const/16 v2, 0xd3

    const/16 v3, 0x380

    filled-new-array {v4, v2, v3}, [I

    move-result-object v82

    const/16 v2, 0xd4

    const/16 v3, 0x3c0

    filled-new-array {v4, v2, v3}, [I

    move-result-object v83

    const/16 v2, 0xd5

    const/16 v3, 0x400

    filled-new-array {v4, v2, v3}, [I

    move-result-object v84

    const/16 v2, 0xd6

    const/16 v3, 0x440

    filled-new-array {v4, v2, v3}, [I

    move-result-object v85

    const/16 v2, 0xd7

    const/16 v3, 0x480

    filled-new-array {v4, v2, v3}, [I

    move-result-object v86

    const/16 v2, 0xd8

    const/16 v3, 0x4c0

    filled-new-array {v4, v2, v3}, [I

    move-result-object v87

    const/16 v2, 0xd9

    const/16 v3, 0x500

    filled-new-array {v4, v2, v3}, [I

    move-result-object v88

    const/16 v2, 0xda

    const/16 v3, 0x540

    filled-new-array {v4, v2, v3}, [I

    move-result-object v89

    const/16 v2, 0xdb

    const/16 v3, 0x580

    filled-new-array {v4, v2, v3}, [I

    move-result-object v90

    const/16 v2, 0x98

    const/16 v3, 0x5c0

    filled-new-array {v4, v2, v3}, [I

    move-result-object v91

    const/16 v2, 0x99

    const/16 v3, 0x600

    filled-new-array {v4, v2, v3}, [I

    move-result-object v92

    const/16 v2, 0x9a

    const/16 v3, 0x640

    filled-new-array {v4, v2, v3}, [I

    move-result-object v93

    const/16 v2, 0x680

    const/4 v3, 0x6

    const/16 v4, 0x18

    filled-new-array {v3, v4, v2}, [I

    move-result-object v94

    const/16 v2, 0x9b

    const/16 v3, 0x6c0

    const/16 v4, 0x9

    filled-new-array {v4, v2, v3}, [I

    move-result-object v95

    const/16 v2, 0x700

    const/16 v3, 0x8

    const/16 v4, 0xb

    filled-new-array {v4, v3, v2}, [I

    move-result-object v96

    const/16 v2, 0x740

    const/16 v3, 0xc

    filled-new-array {v4, v3, v2}, [I

    move-result-object v97

    const/16 v2, 0x780

    const/16 v3, 0xd

    filled-new-array {v4, v3, v2}, [I

    move-result-object v98

    const/16 v2, 0x7c0

    const/16 v3, 0xc

    const/16 v4, 0x12

    filled-new-array {v3, v4, v2}, [I

    move-result-object v99

    const/16 v2, 0x800

    const/16 v4, 0x13

    filled-new-array {v3, v4, v2}, [I

    move-result-object v100

    const/16 v2, 0x840

    const/16 v4, 0x14

    filled-new-array {v3, v4, v2}, [I

    move-result-object v101

    const/16 v2, 0x15

    const/16 v4, 0x880

    filled-new-array {v3, v2, v4}, [I

    move-result-object v102

    const/16 v2, 0x16

    const/16 v4, 0x8c0

    filled-new-array {v3, v2, v4}, [I

    move-result-object v103

    const/16 v2, 0x900

    const/16 v4, 0x17

    filled-new-array {v3, v4, v2}, [I

    move-result-object v104

    const/16 v2, 0x1c

    const/16 v4, 0x940

    filled-new-array {v3, v2, v4}, [I

    move-result-object v105

    const/16 v2, 0x1d

    const/16 v4, 0x980

    filled-new-array {v3, v2, v4}, [I

    move-result-object v106

    const/16 v2, 0x1e

    const/16 v4, 0x9c0

    filled-new-array {v3, v2, v4}, [I

    move-result-object v107

    const/16 v2, 0x1f

    const/16 v4, 0xa00

    filled-new-array {v3, v2, v4}, [I

    move-result-object v108

    const/4 v2, -0x1

    const/4 v4, 0x1

    filled-new-array {v3, v4, v2}, [I

    move-result-object v109

    const/4 v2, -0x2

    const/16 v3, 0x9

    filled-new-array {v3, v4, v2}, [I

    move-result-object v110

    const/16 v3, 0xa

    filled-new-array {v3, v4, v2}, [I

    move-result-object v111

    const/16 v3, 0xb

    filled-new-array {v3, v4, v2}, [I

    move-result-object v112

    const/4 v3, 0x0

    const/16 v4, 0xc

    filled-new-array {v4, v3, v2}, [I

    move-result-object v113

    filled-new-array/range {v5 .. v113}, [[I

    move-result-object v4

    iput-object v4, v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->TIFFFaxWhiteCodes:[[I

    const/16 v4, 0xa

    const/16 v5, 0x37

    .line 469
    filled-new-array {v4, v5, v3}, [I

    move-result-object v114

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    filled-new-array {v5, v4, v3}, [I

    move-result-object v115

    filled-new-array {v4, v5, v4}, [I

    move-result-object v116

    filled-new-array {v4, v4, v5}, [I

    move-result-object v117

    const/4 v3, 0x4

    filled-new-array {v5, v5, v3}, [I

    move-result-object v118

    const/4 v6, 0x5

    filled-new-array {v3, v5, v6}, [I

    move-result-object v119

    const/4 v7, 0x6

    filled-new-array {v3, v4, v7}, [I

    move-result-object v120

    const/4 v4, 0x7

    filled-new-array {v6, v5, v4}, [I

    move-result-object v121

    const/16 v5, 0x8

    filled-new-array {v7, v6, v5}, [I

    move-result-object v122

    const/16 v8, 0x9

    filled-new-array {v7, v3, v8}, [I

    move-result-object v123

    const/16 v7, 0xa

    filled-new-array {v4, v3, v7}, [I

    move-result-object v124

    const/16 v7, 0xb

    filled-new-array {v4, v6, v7}, [I

    move-result-object v125

    const/16 v6, 0xc

    filled-new-array {v4, v4, v6}, [I

    move-result-object v126

    const/16 v6, 0xd

    filled-new-array {v5, v3, v6}, [I

    move-result-object v127

    const/16 v3, 0xe

    filled-new-array {v5, v4, v3}, [I

    move-result-object v128

    const/16 v3, 0xf

    const/16 v4, 0x9

    const/16 v6, 0x18

    filled-new-array {v4, v6, v3}, [I

    move-result-object v129

    const/16 v3, 0x10

    const/16 v4, 0xa

    const/16 v7, 0x17

    filled-new-array {v4, v7, v3}, [I

    move-result-object v130

    const/16 v3, 0x11

    filled-new-array {v4, v6, v3}, [I

    move-result-object v131

    const/16 v3, 0x12

    filled-new-array {v4, v5, v3}, [I

    move-result-object v132

    const/16 v3, 0x67

    const/16 v4, 0xb

    const/16 v5, 0x13

    filled-new-array {v4, v3, v5}, [I

    move-result-object v133

    const/16 v3, 0x68

    const/16 v5, 0x14

    filled-new-array {v4, v3, v5}, [I

    move-result-object v134

    const/16 v3, 0x6c

    const/16 v5, 0x15

    filled-new-array {v4, v3, v5}, [I

    move-result-object v135

    const/16 v3, 0x16

    const/16 v5, 0x37

    filled-new-array {v4, v5, v3}, [I

    move-result-object v136

    const/16 v3, 0x28

    const/16 v5, 0x17

    filled-new-array {v4, v3, v5}, [I

    move-result-object v137

    const/16 v3, 0x18

    filled-new-array {v4, v5, v3}, [I

    move-result-object v138

    const/16 v5, 0x19

    filled-new-array {v4, v3, v5}, [I

    move-result-object v139

    const/16 v3, 0xca

    const/16 v4, 0x1a

    const/16 v5, 0xc

    filled-new-array {v5, v3, v4}, [I

    move-result-object v140

    const/16 v3, 0xcb

    const/16 v4, 0x1b

    filled-new-array {v5, v3, v4}, [I

    move-result-object v141

    const/16 v3, 0xcc

    const/16 v4, 0x1c

    filled-new-array {v5, v3, v4}, [I

    move-result-object v142

    const/16 v3, 0xcd

    const/16 v4, 0x1d

    filled-new-array {v5, v3, v4}, [I

    move-result-object v143

    const/16 v3, 0x68

    const/16 v4, 0x1e

    filled-new-array {v5, v3, v4}, [I

    move-result-object v144

    const/16 v3, 0x69

    const/16 v4, 0x1f

    filled-new-array {v5, v3, v4}, [I

    move-result-object v145

    const/16 v3, 0x6a

    const/16 v4, 0x20

    filled-new-array {v5, v3, v4}, [I

    move-result-object v146

    const/16 v3, 0x6b

    const/16 v4, 0x21

    filled-new-array {v5, v3, v4}, [I

    move-result-object v147

    const/16 v3, 0xd2

    const/16 v4, 0x22

    filled-new-array {v5, v3, v4}, [I

    move-result-object v148

    const/16 v3, 0xd3

    const/16 v4, 0x23

    filled-new-array {v5, v3, v4}, [I

    move-result-object v149

    const/16 v3, 0xd4

    const/16 v4, 0x24

    filled-new-array {v5, v3, v4}, [I

    move-result-object v150

    const/16 v3, 0xd5

    const/16 v4, 0x25

    filled-new-array {v5, v3, v4}, [I

    move-result-object v151

    const/16 v3, 0xd6

    const/16 v4, 0x26

    filled-new-array {v5, v3, v4}, [I

    move-result-object v152

    const/16 v3, 0xd7

    const/16 v4, 0x27

    filled-new-array {v5, v3, v4}, [I

    move-result-object v153

    const/16 v3, 0x6c

    const/16 v4, 0x28

    filled-new-array {v5, v3, v4}, [I

    move-result-object v154

    const/16 v3, 0x6d

    const/16 v4, 0x29

    filled-new-array {v5, v3, v4}, [I

    move-result-object v155

    const/16 v3, 0xda

    const/16 v4, 0x2a

    filled-new-array {v5, v3, v4}, [I

    move-result-object v156

    const/16 v3, 0xdb

    const/16 v4, 0x2b

    filled-new-array {v5, v3, v4}, [I

    move-result-object v157

    const/16 v3, 0x54

    const/16 v4, 0x2c

    filled-new-array {v5, v3, v4}, [I

    move-result-object v158

    const/16 v3, 0x55

    const/16 v4, 0x2d

    filled-new-array {v5, v3, v4}, [I

    move-result-object v159

    const/16 v3, 0x56

    const/16 v4, 0x2e

    filled-new-array {v5, v3, v4}, [I

    move-result-object v160

    const/16 v3, 0x57

    const/16 v4, 0x2f

    filled-new-array {v5, v3, v4}, [I

    move-result-object v161

    const/16 v3, 0x64

    const/16 v4, 0x30

    filled-new-array {v5, v3, v4}, [I

    move-result-object v162

    const/16 v3, 0x65

    const/16 v4, 0x31

    filled-new-array {v5, v3, v4}, [I

    move-result-object v163

    const/16 v3, 0x52

    const/16 v4, 0x32

    filled-new-array {v5, v3, v4}, [I

    move-result-object v164

    const/16 v3, 0x53

    const/16 v4, 0x33

    filled-new-array {v5, v3, v4}, [I

    move-result-object v165

    const/16 v3, 0x24

    const/16 v4, 0x34

    filled-new-array {v5, v3, v4}, [I

    move-result-object v166

    const/16 v3, 0x35

    const/16 v4, 0x37

    filled-new-array {v5, v4, v3}, [I

    move-result-object v167

    const/16 v3, 0x38

    const/16 v6, 0x36

    filled-new-array {v5, v3, v6}, [I

    move-result-object v168

    const/16 v3, 0x27

    filled-new-array {v5, v3, v4}, [I

    move-result-object v169

    const/16 v3, 0x28

    const/16 v4, 0x38

    filled-new-array {v5, v3, v4}, [I

    move-result-object v170

    const/16 v3, 0x58

    const/16 v4, 0x39

    filled-new-array {v5, v3, v4}, [I

    move-result-object v171

    const/16 v3, 0x59

    const/16 v4, 0x3a

    filled-new-array {v5, v3, v4}, [I

    move-result-object v172

    const/16 v3, 0x3b

    const/16 v4, 0x2b

    filled-new-array {v5, v4, v3}, [I

    move-result-object v173

    const/16 v3, 0x2c

    const/16 v4, 0x3c

    filled-new-array {v5, v3, v4}, [I

    move-result-object v174

    const/16 v3, 0x5a

    const/16 v4, 0x3d

    filled-new-array {v5, v3, v4}, [I

    move-result-object v175

    const/16 v3, 0x66

    const/16 v4, 0x3e

    filled-new-array {v5, v3, v4}, [I

    move-result-object v176

    const/16 v3, 0x67

    const/16 v4, 0x3f

    filled-new-array {v5, v3, v4}, [I

    move-result-object v177

    const/16 v3, 0xf

    const/16 v4, 0x40

    const/16 v6, 0xa

    filled-new-array {v6, v3, v4}, [I

    move-result-object v178

    const/16 v3, 0xc8

    const/16 v4, 0x80

    filled-new-array {v5, v3, v4}, [I

    move-result-object v179

    const/16 v3, 0xc9

    const/16 v4, 0xc0

    filled-new-array {v5, v3, v4}, [I

    move-result-object v180

    const/16 v3, 0x5b

    const/16 v4, 0x100

    filled-new-array {v5, v3, v4}, [I

    move-result-object v181

    const/16 v3, 0x33

    const/16 v4, 0x140

    filled-new-array {v5, v3, v4}, [I

    move-result-object v182

    const/16 v3, 0x34

    const/16 v4, 0x180

    filled-new-array {v5, v3, v4}, [I

    move-result-object v183

    const/16 v3, 0x35

    const/16 v4, 0x1c0

    filled-new-array {v5, v3, v4}, [I

    move-result-object v184

    const/16 v3, 0x6c

    const/16 v4, 0x200

    const/16 v5, 0xd

    filled-new-array {v5, v3, v4}, [I

    move-result-object v185

    const/16 v3, 0x6d

    const/16 v4, 0x240

    filled-new-array {v5, v3, v4}, [I

    move-result-object v186

    const/16 v3, 0x4a

    const/16 v4, 0x280

    filled-new-array {v5, v3, v4}, [I

    move-result-object v187

    const/16 v3, 0x4b

    const/16 v4, 0x2c0

    filled-new-array {v5, v3, v4}, [I

    move-result-object v188

    const/16 v3, 0x4c

    const/16 v4, 0x300

    filled-new-array {v5, v3, v4}, [I

    move-result-object v189

    const/16 v3, 0x4d

    const/16 v4, 0x340

    filled-new-array {v5, v3, v4}, [I

    move-result-object v190

    const/16 v3, 0x72

    const/16 v4, 0x380

    filled-new-array {v5, v3, v4}, [I

    move-result-object v191

    const/16 v3, 0x73

    const/16 v4, 0x3c0

    filled-new-array {v5, v3, v4}, [I

    move-result-object v192

    const/16 v3, 0x74

    const/16 v4, 0x400

    filled-new-array {v5, v3, v4}, [I

    move-result-object v193

    const/16 v3, 0x75

    const/16 v4, 0x440

    filled-new-array {v5, v3, v4}, [I

    move-result-object v194

    const/16 v3, 0x76

    const/16 v4, 0x480

    filled-new-array {v5, v3, v4}, [I

    move-result-object v195

    const/16 v3, 0x77

    const/16 v4, 0x4c0

    filled-new-array {v5, v3, v4}, [I

    move-result-object v196

    const/16 v3, 0x52

    const/16 v4, 0x500

    filled-new-array {v5, v3, v4}, [I

    move-result-object v197

    const/16 v3, 0x53

    const/16 v4, 0x540

    filled-new-array {v5, v3, v4}, [I

    move-result-object v198

    const/16 v3, 0x54

    const/16 v4, 0x580

    filled-new-array {v5, v3, v4}, [I

    move-result-object v199

    const/16 v3, 0x55

    const/16 v4, 0x5c0

    filled-new-array {v5, v3, v4}, [I

    move-result-object v200

    const/16 v3, 0x5a

    const/16 v4, 0x600

    filled-new-array {v5, v3, v4}, [I

    move-result-object v201

    const/16 v3, 0x5b

    const/16 v4, 0x640

    filled-new-array {v5, v3, v4}, [I

    move-result-object v202

    const/16 v3, 0x64

    const/16 v4, 0x680

    filled-new-array {v5, v3, v4}, [I

    move-result-object v203

    const/16 v3, 0x65

    const/16 v4, 0x6c0

    filled-new-array {v5, v3, v4}, [I

    move-result-object v204

    const/16 v3, 0x700

    const/16 v4, 0x8

    const/16 v6, 0xb

    filled-new-array {v6, v4, v3}, [I

    move-result-object v205

    const/16 v3, 0x740

    const/16 v4, 0xc

    filled-new-array {v6, v4, v3}, [I

    move-result-object v206

    const/16 v3, 0x780

    filled-new-array {v6, v5, v3}, [I

    move-result-object v207

    const/16 v3, 0x7c0

    const/16 v5, 0x12

    filled-new-array {v4, v5, v3}, [I

    move-result-object v208

    const/16 v3, 0x800

    const/16 v5, 0x13

    filled-new-array {v4, v5, v3}, [I

    move-result-object v209

    const/16 v3, 0x840

    const/16 v5, 0x14

    filled-new-array {v4, v5, v3}, [I

    move-result-object v210

    const/16 v3, 0x15

    const/16 v5, 0x880

    filled-new-array {v4, v3, v5}, [I

    move-result-object v211

    const/16 v3, 0x16

    const/16 v5, 0x8c0

    filled-new-array {v4, v3, v5}, [I

    move-result-object v212

    const/16 v3, 0x900

    const/16 v5, 0x17

    filled-new-array {v4, v5, v3}, [I

    move-result-object v213

    const/16 v3, 0x1c

    const/16 v5, 0x940

    filled-new-array {v4, v3, v5}, [I

    move-result-object v214

    const/16 v3, 0x1d

    const/16 v5, 0x980

    filled-new-array {v4, v3, v5}, [I

    move-result-object v215

    const/16 v3, 0x1e

    const/16 v5, 0x9c0

    filled-new-array {v4, v3, v5}, [I

    move-result-object v216

    const/16 v3, 0x1f

    const/16 v5, 0xa00

    filled-new-array {v4, v3, v5}, [I

    move-result-object v217

    const/4 v3, -0x1

    const/4 v5, 0x1

    filled-new-array {v4, v5, v3}, [I

    move-result-object v218

    const/16 v3, 0x9

    filled-new-array {v3, v5, v2}, [I

    move-result-object v219

    const/16 v3, 0xa

    filled-new-array {v3, v5, v2}, [I

    move-result-object v220

    const/16 v3, 0xb

    filled-new-array {v3, v5, v2}, [I

    move-result-object v221

    const/4 v3, 0x0

    filled-new-array {v4, v3, v2}, [I

    move-result-object v222

    filled-new-array/range {v114 .. v222}, [[I

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->TIFFFaxBlackCodes:[[I

    const/4 v2, 0x3

    .line 581
    filled-new-array {v2, v5, v3}, [I

    move-result-object v4

    iput-object v4, v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->horizcode:[I

    const/4 v4, 0x4

    .line 583
    filled-new-array {v4, v5, v3}, [I

    move-result-object v4

    iput-object v4, v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->passcode:[I

    const/4 v4, 0x7

    .line 585
    filled-new-array {v4, v2, v3}, [I

    move-result-object v6

    const/4 v7, 0x6

    filled-new-array {v7, v2, v3}, [I

    move-result-object v8

    filled-new-array {v2, v2, v3}, [I

    move-result-object v9

    filled-new-array {v5, v5, v3}, [I

    move-result-object v5

    const/4 v10, 0x2

    filled-new-array {v2, v10, v3}, [I

    move-result-object v2

    filled-new-array {v7, v10, v3}, [I

    move-result-object v11

    filled-new-array {v4, v10, v3}, [I

    move-result-object v12

    move-object v7, v8

    move-object v8, v9

    move-object v9, v5

    move-object v10, v2

    filled-new-array/range {v6 .. v12}, [[I

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->vcodes:[[I

    const/16 v2, 0x9

    .line 594
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->msbmask:[I

    .line 68
    iput v1, v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowpixels:I

    const/4 v2, 0x7

    add-int/2addr v1, v2

    const/16 v2, 0x8

    .line 69
    div-int/2addr v1, v2

    iput v1, v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowbytes:I

    .line 70
    new-array v1, v1, [B

    iput-object v1, v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->refline:[B

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
    .end array-data
.end method

.method private Fax3Encode2DRow()V
    .locals 8

    .line 159
    iget-object v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->dataBp:[B

    iget v1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->offsetData:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->pixel([BII)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->dataBp:[B

    iget v1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->offsetData:I

    iget v3, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowpixels:I

    invoke-static {v0, v1, v2, v3, v2}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->finddiff([BIIII)I

    move-result v0

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->refline:[B

    invoke-direct {p0, v1, v2, v2}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->pixel([BII)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->refline:[B

    iget v3, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowpixels:I

    invoke-static {v1, v2, v2, v3, v2}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->finddiff([BIIII)I

    move-result v1

    :goto_1
    move v3, v2

    .line 164
    :goto_2
    iget-object v4, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->refline:[B

    iget v5, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowpixels:I

    invoke-direct {p0, v4, v2, v1}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->pixel([BII)I

    move-result v6

    invoke-static {v4, v2, v1, v5, v6}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->finddiff2([BIIII)I

    move-result v4

    if-lt v4, v0, :cond_6

    sub-int/2addr v1, v0

    const/4 v4, -0x3

    if-gt v4, v1, :cond_3

    const/4 v4, 0x3

    if-le v1, v4, :cond_2

    goto :goto_3

    .line 179
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->vcodes:[[I

    add-int/lit8 v1, v1, 0x3

    aget-object v1, v3, v1

    invoke-direct {p0, v1}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putcode([I)V

    goto :goto_6

    .line 168
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->dataBp:[B

    iget v4, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->offsetData:I

    iget v5, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowpixels:I

    invoke-direct {p0, v1, v4, v0}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->pixel([BII)I

    move-result v6

    invoke-static {v1, v4, v0, v5, v6}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->finddiff2([BIIII)I

    move-result v1

    .line 169
    iget-object v4, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->horizcode:[I

    invoke-direct {p0, v4}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putcode([I)V

    add-int v4, v3, v0

    if-eqz v4, :cond_5

    .line 170
    iget-object v4, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->dataBp:[B

    iget v5, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->offsetData:I

    invoke-direct {p0, v4, v5, v3}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->pixel([BII)I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    sub-int v3, v0, v3

    .line 174
    iget-object v4, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->TIFFFaxBlackCodes:[[I

    invoke-direct {p0, v3, v4}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putspan(I[[I)V

    sub-int v0, v1, v0

    .line 175
    iget-object v3, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->TIFFFaxWhiteCodes:[[I

    invoke-direct {p0, v0, v3}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putspan(I[[I)V

    goto :goto_5

    :cond_5
    :goto_4
    sub-int v3, v0, v3

    .line 171
    iget-object v4, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->TIFFFaxWhiteCodes:[[I

    invoke-direct {p0, v3, v4}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putspan(I[[I)V

    sub-int v0, v1, v0

    .line 172
    iget-object v3, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->TIFFFaxBlackCodes:[[I

    invoke-direct {p0, v0, v3}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putspan(I[[I)V

    :goto_5
    move v0, v1

    :goto_6
    move v3, v0

    goto :goto_7

    .line 183
    :cond_6
    iget-object v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->passcode:[I

    invoke-direct {p0, v0}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putcode([I)V

    move v3, v4

    .line 186
    :goto_7
    iget v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowpixels:I

    if-lt v3, v0, :cond_7

    return-void

    .line 188
    :cond_7
    iget-object v1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->dataBp:[B

    iget v4, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->offsetData:I

    invoke-direct {p0, v1, v4, v3}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->pixel([BII)I

    move-result v5

    invoke-static {v1, v4, v3, v0, v5}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->finddiff([BIIII)I

    move-result v0

    .line 189
    iget-object v1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->refline:[B

    iget v4, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowpixels:I

    iget-object v5, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->dataBp:[B

    iget v6, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->offsetData:I

    invoke-direct {p0, v5, v6, v3}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->pixel([BII)I

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->finddiff([BIIII)I

    move-result v1

    .line 190
    iget-object v4, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->refline:[B

    iget v5, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowpixels:I

    iget-object v6, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->dataBp:[B

    iget v7, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->offsetData:I

    invoke-direct {p0, v6, v7, v3}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->pixel([BII)I

    move-result v6

    invoke-static {v4, v2, v1, v5, v6}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->finddiff([BIIII)I

    move-result v1

    goto/16 :goto_2
.end method

.method private Fax4PostEncode()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xc

    .line 195
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putBits(II)V

    .line 196
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putBits(II)V

    .line 197
    iget v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->bit:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    iget v2, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->data:I

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    const/4 v0, 0x0

    .line 199
    iput v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->data:I

    .line 200
    iput v1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->bit:I

    :cond_0
    return-void
.end method

.method public static compress([BII)[B
    .locals 1

    .line 100
    new-instance v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;

    invoke-direct {v0, p1}, Lcom/itextpdf/io/codec/CCITTG4Encoder;-><init>(I)V

    .line 101
    iget p1, v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowbytes:I

    mul-int/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {v0, p0, p2, p1}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->fax4Encode([BII)V

    .line 102
    invoke-virtual {v0}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->close()[B

    move-result-object p0

    return-object p0
.end method

.method private static find0span([BIII)I
    .locals 3

    sub-int/2addr p3, p2

    shr-int/lit8 v0, p2, 0x3

    add-int/2addr p1, v0

    const/16 v0, 0x8

    if-lez p3, :cond_3

    and-int/lit8 p2, p2, 0x7

    if-eqz p2, :cond_3

    .line 268
    sget-object v1, Lcom/itextpdf/io/codec/CCITTG4Encoder;->zeroruns:[B

    aget-byte v2, p0, p1

    shl-int/2addr v2, p2

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    rsub-int/lit8 v2, p2, 0x8

    if-le v1, v2, :cond_0

    move v1, v2

    :cond_0
    if-le v1, p3, :cond_1

    move v1, p3

    :cond_1
    add-int/2addr p2, v1

    if-ge p2, v0, :cond_2

    return v1

    :cond_2
    sub-int/2addr p3, v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-lt p3, v0, :cond_5

    .line 283
    aget-byte p2, p0, p1

    if-eqz p2, :cond_4

    .line 284
    sget-object p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->zeroruns:[B

    and-int/lit16 p1, p2, 0xff

    aget-byte p0, p0, p1

    add-int/2addr v1, p0

    return v1

    :cond_4
    add-int/lit8 v1, v1, 0x8

    add-int/lit8 p3, p3, -0x8

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    if-lez p3, :cond_7

    .line 293
    sget-object p2, Lcom/itextpdf/io/codec/CCITTG4Encoder;->zeroruns:[B

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    aget-byte p0, p2, p0

    if-le p0, p3, :cond_6

    goto :goto_2

    :cond_6
    move p3, p0

    :goto_2
    add-int/2addr v1, p3

    :cond_7
    return v1
.end method

.method private static find1span([BIII)I
    .locals 3

    sub-int/2addr p3, p2

    shr-int/lit8 v0, p2, 0x3

    add-int/2addr p1, v0

    const/16 v0, 0x8

    if-lez p3, :cond_3

    and-int/lit8 p2, p2, 0x7

    if-eqz p2, :cond_3

    .line 228
    sget-object v1, Lcom/itextpdf/io/codec/CCITTG4Encoder;->oneruns:[B

    aget-byte v2, p0, p1

    shl-int/2addr v2, p2

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    rsub-int/lit8 v2, p2, 0x8

    if-le v1, v2, :cond_0

    move v1, v2

    :cond_0
    if-le v1, p3, :cond_1

    move v1, p3

    :cond_1
    add-int/2addr p2, v1

    if-ge p2, v0, :cond_2

    return v1

    :cond_2
    sub-int/2addr p3, v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-lt p3, v0, :cond_5

    .line 243
    aget-byte p2, p0, p1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_4

    .line 244
    sget-object p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->oneruns:[B

    and-int/lit16 p1, p2, 0xff

    aget-byte p0, p0, p1

    add-int/2addr v1, p0

    return v1

    :cond_4
    add-int/lit8 v1, v1, 0x8

    add-int/lit8 p3, p3, -0x8

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    if-lez p3, :cond_7

    .line 253
    sget-object p2, Lcom/itextpdf/io/codec/CCITTG4Encoder;->oneruns:[B

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    aget-byte p0, p2, p0

    if-le p0, p3, :cond_6

    goto :goto_2

    :cond_6
    move p3, p0

    :goto_2
    add-int/2addr v1, p3

    :cond_7
    return v1
.end method

.method private static finddiff([BIIII)I
    .locals 0

    if-eqz p4, :cond_0

    .line 300
    invoke-static {p0, p1, p2, p3}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->find1span([BIII)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->find0span([BIII)I

    move-result p0

    :goto_0
    add-int/2addr p2, p0

    return p2
.end method

.method private static finddiff2([BIIII)I
    .locals 0

    if-ge p2, p3, :cond_0

    .line 304
    invoke-static {p0, p1, p2, p3, p4}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->finddiff([BIIII)I

    move-result p3

    :cond_0
    return p3
.end method

.method private pixel([BII)I
    .locals 1

    .line 214
    iget v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowpixels:I

    if-lt p3, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    shr-int/lit8 v0, p3, 0x3

    add-int/2addr p2, v0

    .line 216
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    and-int/lit8 p2, p3, 0x7

    rsub-int/lit8 p2, p2, 0x7

    shr-int/2addr p1, p2

    and-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private putBits(II)V
    .locals 5

    .line 141
    :goto_0
    iget v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->bit:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-le p2, v0, :cond_0

    .line 142
    iget v3, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->data:I

    sub-int v4, p2, v0

    shr-int v4, p1, v4

    or-int/2addr v3, v4

    iput v3, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->data:I

    sub-int/2addr p2, v0

    .line 144
    iget-object v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 145
    iput v2, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->data:I

    .line 146
    iput v1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->bit:I

    goto :goto_0

    .line 148
    :cond_0
    iget v3, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->data:I

    iget-object v4, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->msbmask:[I

    aget v4, v4, p2

    and-int/2addr p1, v4

    sub-int v4, v0, p2

    shl-int/2addr p1, v4

    or-int/2addr p1, v3

    iput p1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->data:I

    sub-int/2addr v0, p2

    .line 149
    iput v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->bit:I

    if-nez v0, :cond_1

    .line 151
    iget-object p2, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {p2, p1}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 152
    iput v2, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->data:I

    .line 153
    iput v1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->bit:I

    :cond_1
    return-void
.end method

.method private putcode([I)V
    .locals 2

    const/4 v0, 0x1

    .line 115
    aget v0, p1, v0

    const/4 v1, 0x0

    aget p1, p1, v1

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putBits(II)V

    return-void
.end method

.method private putspan(I[[I)V
    .locals 6

    :goto_0
    const/16 v0, 0xa40

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x67

    .line 122
    aget-object v0, p2, v0

    .line 123
    aget v3, v0, v3

    .line 124
    aget v2, v0, v2

    .line 125
    invoke-direct {p0, v3, v2}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putBits(II)V

    .line 126
    aget v0, v0, v1

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    if-lt p1, v0, :cond_1

    shr-int/lit8 v0, p1, 0x6

    add-int/lit8 v0, v0, 0x3f

    .line 129
    aget-object v0, p2, v0

    .line 130
    aget v4, v0, v3

    .line 131
    aget v5, v0, v2

    .line 132
    invoke-direct {p0, v4, v5}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putBits(II)V

    .line 133
    aget v0, v0, v1

    sub-int/2addr p1, v0

    .line 135
    :cond_1
    aget-object p1, p2, p1

    aget p2, p1, v3

    .line 136
    aget p1, p1, v2

    .line 137
    invoke-direct {p0, p2, p1}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putBits(II)V

    return-void
.end method


# virtual methods
.method public close()[B
    .locals 1

    .line 209
    invoke-direct {p0}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->Fax4PostEncode()V

    .line 210
    iget-object v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public fax4Encode([BI)V
    .locals 1

    .line 111
    iget v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowbytes:I

    mul-int/2addr v0, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->fax4Encode([BII)V

    return-void
.end method

.method public fax4Encode([BII)V
    .locals 2

    .line 80
    iput-object p1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->dataBp:[B

    .line 81
    iput p2, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->offsetData:I

    .line 82
    iput p3, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->sizeData:I

    .line 83
    :goto_0
    iget p1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->sizeData:I

    if-lez p1, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->Fax3Encode2DRow()V

    .line 85
    iget-object p1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->dataBp:[B

    iget p2, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->offsetData:I

    iget-object p3, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->refline:[B

    const/4 v0, 0x0

    iget v1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowbytes:I

    invoke-static {p1, p2, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iget p1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->offsetData:I

    iget p2, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowbytes:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->offsetData:I

    .line 87
    iget p1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->sizeData:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->sizeData:I

    goto :goto_0

    :cond_0
    return-void
.end method
