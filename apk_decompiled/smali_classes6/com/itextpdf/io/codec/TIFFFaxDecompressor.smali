.class public Lcom/itextpdf/io/codec/TIFFFaxDecompressor;
.super Ljava/lang/Object;
.source "TIFFFaxDecompressor.java"


# static fields
.field public static additionalMakeup:[S

.field static black:[S

.field static flipTable:[B

.field static initBlack:[S

.field static table1:[I

.field static table2:[I

.field static twoBitBlack:[S

.field static twoDCodes:[B

.field static white:[S


# instance fields
.field private bitPointer:I

.field private bitsPerScanline:I

.field private buffer:[B

.field private bytePointer:I

.field private changingElemSize:I

.field protected compression:I

.field private currChangingElems:[I

.field private data:[B

.field public fails:I

.field protected fillBits:I

.field protected fillOrder:I

.field private h:I

.field private lastChangingElement:I

.field private lineBitNum:I

.field private final lock:Ljava/lang/Object;

.field protected oneD:I

.field private prevChangingElems:[I

.field private t4Options:I

.field private t6Options:I

.field protected uncompressedMode:I

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    .line 97
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->table1:[I

    const/16 v0, 0x9

    .line 108
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->table2:[I

    const/16 v0, 0x100

    .line 120
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->flipTable:[B

    const/16 v0, 0x400

    .line 155
    new-array v0, v0, [S

    fill-array-data v0, :array_3

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->white:[S

    const/16 v0, 0x10

    .line 420
    new-array v0, v0, [S

    fill-array-data v0, :array_4

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->additionalMakeup:[S

    const/16 v0, 0x10

    .line 428
    new-array v0, v0, [S

    fill-array-data v0, :array_5

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->initBlack:[S

    const/4 v0, 0x4

    .line 435
    new-array v0, v0, [S

    fill-array-data v0, :array_6

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->twoBitBlack:[S

    const/16 v0, 0x200

    .line 437
    new-array v0, v0, [S

    fill-array-data v0, :array_7

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->black:[S

    const/16 v0, 0x80

    .line 566
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->twoDCodes:[B

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

    :array_1
    .array-data 4
        0x0
        0x80
        0xc0
        0xe0
        0xf0
        0xf8
        0xfc
        0xfe
        0xff
    .end array-data

    :array_2
    .array-data 1
        0x0t
        -0x80t
        0x40t
        -0x40t
        0x20t
        -0x60t
        0x60t
        -0x20t
        0x10t
        -0x70t
        0x50t
        -0x30t
        0x30t
        -0x50t
        0x70t
        -0x10t
        0x8t
        -0x78t
        0x48t
        -0x38t
        0x28t
        -0x58t
        0x68t
        -0x18t
        0x18t
        -0x68t
        0x58t
        -0x28t
        0x38t
        -0x48t
        0x78t
        -0x8t
        0x4t
        -0x7ct
        0x44t
        -0x3ct
        0x24t
        -0x5ct
        0x64t
        -0x1ct
        0x14t
        -0x6ct
        0x54t
        -0x2ct
        0x34t
        -0x4ct
        0x74t
        -0xct
        0xct
        -0x74t
        0x4ct
        -0x34t
        0x2ct
        -0x54t
        0x6ct
        -0x14t
        0x1ct
        -0x64t
        0x5ct
        -0x24t
        0x3ct
        -0x44t
        0x7ct
        -0x4t
        0x2t
        -0x7et
        0x42t
        -0x3et
        0x22t
        -0x5et
        0x62t
        -0x1et
        0x12t
        -0x6et
        0x52t
        -0x2et
        0x32t
        -0x4et
        0x72t
        -0xet
        0xat
        -0x76t
        0x4at
        -0x36t
        0x2at
        -0x56t
        0x6at
        -0x16t
        0x1at
        -0x66t
        0x5at
        -0x26t
        0x3at
        -0x46t
        0x7at
        -0x6t
        0x6t
        -0x7at
        0x46t
        -0x3at
        0x26t
        -0x5at
        0x66t
        -0x1at
        0x16t
        -0x6at
        0x56t
        -0x2at
        0x36t
        -0x4at
        0x76t
        -0xat
        0xet
        -0x72t
        0x4et
        -0x32t
        0x2et
        -0x52t
        0x6et
        -0x12t
        0x1et
        -0x62t
        0x5et
        -0x22t
        0x3et
        -0x42t
        0x7et
        -0x2t
        0x1t
        -0x7ft
        0x41t
        -0x3ft
        0x21t
        -0x5ft
        0x61t
        -0x1ft
        0x11t
        -0x6ft
        0x51t
        -0x2ft
        0x31t
        -0x4ft
        0x71t
        -0xft
        0x9t
        -0x77t
        0x49t
        -0x37t
        0x29t
        -0x57t
        0x69t
        -0x17t
        0x19t
        -0x67t
        0x59t
        -0x27t
        0x39t
        -0x47t
        0x79t
        -0x7t
        0x5t
        -0x7bt
        0x45t
        -0x3bt
        0x25t
        -0x5bt
        0x65t
        -0x1bt
        0x15t
        -0x6bt
        0x55t
        -0x2bt
        0x35t
        -0x4bt
        0x75t
        -0xbt
        0xdt
        -0x73t
        0x4dt
        -0x33t
        0x2dt
        -0x53t
        0x6dt
        -0x13t
        0x1dt
        -0x63t
        0x5dt
        -0x23t
        0x3dt
        -0x43t
        0x7dt
        -0x3t
        0x3t
        -0x7dt
        0x43t
        -0x3dt
        0x23t
        -0x5dt
        0x63t
        -0x1dt
        0x13t
        -0x6dt
        0x53t
        -0x2dt
        0x33t
        -0x4dt
        0x73t
        -0xdt
        0xbt
        -0x75t
        0x4bt
        -0x35t
        0x2bt
        -0x55t
        0x6bt
        -0x15t
        0x1bt
        -0x65t
        0x5bt
        -0x25t
        0x3bt
        -0x45t
        0x7bt
        -0x5t
        0x7t
        -0x79t
        0x47t
        -0x39t
        0x27t
        -0x59t
        0x67t
        -0x19t
        0x17t
        -0x69t
        0x57t
        -0x29t
        0x37t
        -0x49t
        0x77t
        -0x9t
        0xft
        -0x71t
        0x4ft
        -0x31t
        0x2ft
        -0x51t
        0x6ft
        -0x11t
        0x1ft
        -0x61t
        0x5ft
        -0x21t
        0x3ft
        -0x41t
        0x7ft
        -0x1t
    .end array-data

    :array_3
    .array-data 2
        0x191es
        0x1900s
        0x1900s
        0x1900s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0x3b0s
        0x3b0s
        0x3b0s
        0x3b0s
        0x3d0s
        0x3d0s
        0x3d0s
        0x3d0s
        0x5b0s
        0x5b0s
        0x5b0s
        0x5b0s
        0x5d0s
        0x5d0s
        0x5d0s
        0x5d0s
        0x2ces
        0x2ces
        0x2ces
        0x2ces
        0x2ces
        0x2ces
        0x2ces
        0x2ces
        0x2ees
        0x2ees
        0x2ees
        0x2ees
        0x2ees
        0x2ees
        0x2ees
        0x2ees
        0x5f0s
        0x5f0s
        0x5f0s
        0x5f0s
        0x610s
        0x610s
        0x610s
        0x610s
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x28es
        0x28es
        0x28es
        0x28es
        0x28es
        0x28es
        0x28es
        0x28es
        0x430s
        0x430s
        0x430s
        0x430s
        0x450s
        0x450s
        0x450s
        0x450s
        0x470s
        0x470s
        0x470s
        0x470s
        0x490s
        0x490s
        0x490s
        0x490s
        0x4b0s
        0x4b0s
        0x4b0s
        0x4b0s
        0x4d0s
        0x4d0s
        0x4d0s
        0x4d0s
        0x26es
        0x26es
        0x26es
        0x26es
        0x26es
        0x26es
        0x26es
        0x26es
        0x3f0s
        0x3f0s
        0x3f0s
        0x3f0s
        0x410s
        0x410s
        0x410s
        0x410s
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x6b0s
        0x6b0s
        0x6b0s
        0x6b0s
        0x6d0s
        0x6d0s
        0x6d0s
        0x6d0s
        0x34es
        0x34es
        0x34es
        0x34es
        0x34es
        0x34es
        0x34es
        0x34es
        0x4f0s
        0x4f0s
        0x4f0s
        0x4f0s
        0x510s
        0x510s
        0x510s
        0x510s
        0x530s
        0x530s
        0x530s
        0x530s
        0x550s
        0x550s
        0x550s
        0x550s
        0x570s
        0x570s
        0x570s
        0x570s
        0x590s
        0x590s
        0x590s
        0x590s
        0x2aes
        0x2aes
        0x2aes
        0x2aes
        0x2aes
        0x2aes
        0x2aes
        0x2aes
        0x38es
        0x38es
        0x38es
        0x38es
        0x38es
        0x38es
        0x38es
        0x38es
        0x7b0s
        0x7b0s
        0x7b0s
        0x7b0s
        0x7d0s
        0x7d0s
        0x7d0s
        0x7d0s
        0x7f0s
        0x7f0s
        0x7f0s
        0x7f0s
        0x10s
        0x10s
        0x10s
        0x10s
        0x2811s
        0x2811s
        0x2811s
        0x2811s
        0x3011s
        0x3011s
        0x3011s
        0x3011s
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x36es
        0x36es
        0x36es
        0x36es
        0x36es
        0x36es
        0x36es
        0x36es
        0x770s
        0x770s
        0x770s
        0x770s
        0x790s
        0x790s
        0x790s
        0x790s
        -0x47eds
        -0x47eds
        -0x3feds
        -0x3feds
        -0x37eds
        -0x37eds
        -0x27eds
        -0x27eds
        0x24es
        0x24es
        0x24es
        0x24es
        0x24es
        0x24es
        0x24es
        0x24es
        0x30es
        0x30es
        0x30es
        0x30es
        0x30es
        0x30es
        0x30es
        0x30es
        0x630s
        0x630s
        0x630s
        0x630s
        0x650s
        0x650s
        0x650s
        0x650s
        0x670s
        0x670s
        0x670s
        0x670s
        0x690s
        0x690s
        0x690s
        0x690s
        0x32es
        0x32es
        0x32es
        0x32es
        0x32es
        0x32es
        0x32es
        0x32es
        0x6f0s
        0x6f0s
        0x6f0s
        0x6f0s
        0x710s
        0x710s
        0x710s
        0x710s
        0x730s
        0x730s
        0x730s
        0x730s
        0x750s
        0x750s
        0x750s
        0x750s
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        0x3811s
        0x3811s
        0x3811s
        0x3811s
        0x4011s
        0x4011s
        0x4011s
        0x4011s
        0x5813s
        0x5813s
        0x6013s
        0x6013s
        0x5011s
        0x5011s
        0x5011s
        0x5011s
        0x4811s
        0x4811s
        0x4811s
        0x4811s
        0x6813s
        0x6813s
        0x7013s
        0x7013s
        0x7813s
        0x7813s
        -0x7feds
        -0x7feds
        -0x77eds
        -0x77eds
        -0x6feds
        -0x6feds
        -0x67eds
        -0x67eds
        -0x5feds
        -0x5feds
        -0x57eds
        -0x57eds
        -0x4feds
        -0x4feds
        0x200fs
        0x200fs
        0x200fs
        0x200fs
        0x200fs
        0x200fs
        0x200fs
        0x200fs
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
    .end array-data

    :array_4
    .array-data 2
        0x7007s
        0x7007s
        0x7c08s
        -0x7ff7s
        -0x7bf7s
        -0x77f7s
        -0x73f7s
        -0x6ff7s
        0x7407s
        0x7407s
        0x7807s
        0x7807s
        -0x6bf7s
        -0x67f7s
        -0x63f7s
        -0x5ff7s
    .end array-data

    :array_5
    .array-data 2
        0xc9as
        0x190cs
        0xc8s
        0xa8s
        0x26s
        0x26s
        0x86s
        0x86s
        0x64s
        0x64s
        0x64s
        0x64s
        0x44s
        0x44s
        0x44s
        0x44s
    .end array-data

    :array_6
    .array-data 2
        0x124s
        0x104s
        0xe2s
        0xe2s
    .end array-data

    :array_7
    .array-data 2
        0x3es
        0x3es
        0x1es
        0x1es
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0x24cs
        0x24cs
        0x24cs
        0x24cs
        0x24cs
        0x24cs
        0x24cs
        0x24cs
        0x690s
        0x690s
        0x5013s
        0x5813s
        0x6013s
        0x6813s
        0x6f0s
        0x6f0s
        0x710s
        0x710s
        -0x5feds
        -0x57eds
        -0x4feds
        -0x47eds
        0x770s
        0x770s
        0x790s
        0x790s
        -0x3feds
        -0x37eds
        0x30es
        0x30es
        0x30es
        0x30es
        0x32es
        0x32es
        0x32es
        0x32es
        -0x2feds
        -0x27eds
        0x2811s
        0x2811s
        0x3011s
        0x3011s
        0x3811s
        0x3811s
        0x4013s
        0x4813s
        0x6b0s
        0x6b0s
        0x6d0s
        0x6d0s
        0x7013s
        0x7813s
        -0x7feds
        -0x77eds
        -0x6feds
        -0x67eds
        0x80ds
        0x80ds
        0x80ds
        0x80ds
        0x80ds
        0x80ds
        0x80ds
        0x80ds
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x2ees
        0x2ees
        0x2ees
        0x2ees
        0x650s
        0x650s
        0x670s
        0x670s
        0x590s
        0x590s
        0x5b0s
        0x5b0s
        0x5d0s
        0x5d0s
        0x5f0s
        0x5f0s
        0x730s
        0x730s
        0x750s
        0x750s
        0x7b0s
        0x7b0s
        0x2011s
        0x2011s
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x610s
        0x610s
        0x630s
        0x630s
        0x7d0s
        0x7d0s
        0x7f0s
        0x7f0s
        0x3d0s
        0x3d0s
        0x3f0s
        0x3f0s
        0x410s
        0x410s
        0x430s
        0x430s
        0x510s
        0x510s
        0x530s
        0x530s
        0x2ces
        0x2ces
        0x2ces
        0x2ces
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1011s
        0x1011s
        0x1811s
        0x1811s
        0x350s
        0x350s
        0x370s
        0x370s
        0x390s
        0x390s
        0x3b0s
        0x3b0s
        0x26es
        0x26es
        0x26es
        0x26es
        0x28es
        0x28es
        0x28es
        0x28es
        0x450s
        0x450s
        0x470s
        0x470s
        0x490s
        0x490s
        0x4b0s
        0x4b0s
        0x4d0s
        0x4d0s
        0x4f0s
        0x4f0s
        0x2aes
        0x2aes
        0x2aes
        0x2aes
        0x550s
        0x550s
        0x570s
        0x570s
        0xcs
        0xcs
        0xcs
        0xcs
        0xcs
        0xcs
        0xcs
        0xcs
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
    .end array-data

    :array_8
    .array-data 1
        0x50t
        0x58t
        0x17t
        0x47t
        0x1et
        0x1et
        0x3et
        0x3et
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->uncompressedMode:I

    .line 76
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fillBits:I

    .line 89
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    .line 93
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lastChangingElement:I

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lock:Ljava/lang/Object;

    return-void
.end method

.method private decodeBlackCodeWord()I
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    if-nez v0, :cond_5

    const/4 v2, 0x4

    .line 1296
    invoke-direct {p0, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v3

    .line 1297
    sget-object v4, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->initBlack:[S

    aget-short v3, v4, v3

    ushr-int/lit8 v4, v3, 0x1

    const/16 v5, 0xf

    and-int/2addr v4, v5

    const/4 v6, 0x5

    ushr-int/2addr v3, v6

    and-int/lit16 v3, v3, 0x7ff

    const/16 v7, 0x64

    const/4 v8, 0x1

    if-ne v3, v7, :cond_3

    const/16 v3, 0x9

    .line 1305
    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v3

    .line 1306
    sget-object v4, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->black:[S

    aget-short v3, v4, v3

    and-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v7, v3, 0x1

    and-int/2addr v7, v5

    ushr-int/2addr v3, v6

    and-int/lit16 v3, v3, 0x7ff

    const/16 v9, 0xc

    if-ne v7, v9, :cond_1

    .line 1315
    invoke-direct {p0, v6}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 1316
    invoke-direct {p0, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v3

    .line 1317
    sget-object v4, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->additionalMakeup:[S

    aget-short v3, v4, v3

    ushr-int/lit8 v4, v3, 0x1

    and-int/lit8 v4, v4, 0x7

    ushr-int/2addr v3, v2

    and-int/lit16 v3, v3, 0xfff

    add-int/2addr v1, v3

    sub-int/2addr v2, v4

    .line 1322
    invoke-direct {p0, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    goto :goto_0

    :cond_1
    if-eq v7, v5, :cond_2

    add-int/2addr v1, v3

    rsub-int/lit8 v2, v7, 0x9

    .line 1328
    invoke-direct {p0, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    if-nez v4, :cond_0

    goto :goto_1

    .line 1325
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error 2"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/16 v0, 0xc8

    if-ne v3, v0, :cond_4

    const/4 v0, 0x2

    .line 1335
    invoke-direct {p0, v0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v2

    .line 1336
    sget-object v3, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->twoBitBlack:[S

    aget-short v2, v3, v2

    ushr-int/lit8 v3, v2, 0x5

    and-int/lit16 v3, v3, 0x7ff

    add-int/2addr v1, v3

    ushr-int/2addr v2, v8

    and-int/2addr v2, v5

    sub-int/2addr v0, v2

    .line 1340
    invoke-direct {p0, v0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    goto :goto_1

    :cond_4
    add-int/2addr v1, v3

    sub-int/2addr v2, v4

    .line 1345
    invoke-direct {p0, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    :goto_1
    move v0, v8

    goto :goto_0

    :cond_5
    return v1
.end method

.method private decodeWhiteCodeWord()I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    const/16 v3, 0xa

    .line 1254
    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v3

    .line 1255
    sget-object v4, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->white:[S

    aget-short v4, v4, v3

    and-int/lit8 v5, v4, 0x1

    ushr-int/lit8 v6, v4, 0x1

    const/16 v7, 0xf

    and-int/2addr v6, v7

    const/16 v8, 0xc

    if-ne v6, v8, :cond_1

    const/4 v4, 0x2

    .line 1263
    invoke-direct {p0, v4}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v4

    shl-int/lit8 v3, v3, 0x2

    and-int/2addr v3, v8

    or-int/2addr v3, v4

    .line 1266
    sget-object v4, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->additionalMakeup:[S

    aget-short v3, v4, v3

    ushr-int/lit8 v4, v3, 0x1

    and-int/lit8 v4, v4, 0x7

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xfff

    add-int/2addr v2, v3

    rsub-int/lit8 v3, v4, 0x4

    .line 1270
    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_3

    if-eq v6, v7, :cond_2

    ushr-int/lit8 v3, v4, 0x5

    and-int/lit16 v3, v3, 0x7ff

    add-int/2addr v2, v3

    rsub-int/lit8 v3, v6, 0xa

    .line 1279
    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    if-nez v5, :cond_0

    move v1, v0

    goto :goto_0

    .line 1274
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error 1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1272
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return v2
.end method

.method private findNextLine()I
    .locals 6

    .line 1355
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->data:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v0, -0xd

    .line 1357
    iget v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    mul-int/lit8 v2, v2, 0x8

    iget v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    add-int/2addr v2, v3

    :cond_0
    if-gt v2, v0, :cond_3

    const/16 v3, 0xc

    .line 1362
    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v3

    add-int/lit8 v2, v2, 0xc

    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    if-ge v2, v1, :cond_1

    and-int/lit16 v3, v3, 0x7ff

    shl-int/2addr v3, v4

    .line 1370
    invoke-direct {p0, v4}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v5

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v3, v4, :cond_0

    .line 1375
    iget v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->oneD:I

    if-ne v3, v4, :cond_2

    if-ge v2, v1, :cond_0

    .line 1378
    invoke-direct {p0, v4}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v0

    return v0

    :cond_2
    return v4

    .line 1387
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private getNextChangingElement(IZ[I)V
    .locals 5

    .line 1392
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->prevChangingElems:[I

    .line 1393
    iget v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    .line 1398
    iget v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lastChangingElement:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz p2, :cond_1

    and-int/lit8 p2, v2, -0x2

    goto :goto_1

    :cond_1
    or-int/lit8 p2, v2, 0x1

    :goto_1
    if-ge p2, v1, :cond_3

    .line 1407
    aget v2, v0, p2

    if-le v2, p1, :cond_2

    .line 1409
    iput p2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lastChangingElement:I

    .line 1410
    aput v2, p3, v3

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, 0x2

    goto :goto_1

    :cond_3
    :goto_2
    add-int/2addr p2, v4

    if-ge p2, v1, :cond_4

    .line 1416
    aget p1, v0, p2

    aput p1, p3, v4

    :cond_4
    return-void
.end method

.method private nextLesserThan8Bits(I)I
    .locals 9

    .line 1489
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->data:[B

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1490
    iget v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 1492
    iget v4, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fillOrder:I

    const/4 v5, 0x0

    if-ne v4, v2, :cond_1

    .line 1493
    aget-byte v4, v0, v3

    if-ne v3, v1, :cond_0

    move v0, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v3, 0x1

    .line 1497
    aget-byte v0, v0, v1

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    if-ne v4, v6, :cond_5

    .line 1500
    sget-object v4, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->flipTable:[B

    aget-byte v6, v0, v3

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v4, v6

    if-ne v3, v1, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 1504
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v4, v0

    :goto_0
    move v4, v6

    .line 1510
    :goto_1
    iget v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    rsub-int/lit8 v6, v1, 0x8

    sub-int v7, p1, v6

    sub-int v8, v6, p1

    if-ltz v8, :cond_3

    .line 1516
    sget-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->table1:[I

    aget v0, v0, v6

    and-int/2addr v0, v4

    ushr-int/2addr v0, v8

    add-int/2addr v1, p1

    .line 1517
    iput v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    const/16 p1, 0x8

    if-ne v1, p1, :cond_4

    .line 1519
    iput v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    add-int/2addr v3, v2

    .line 1520
    iput v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    goto :goto_2

    .line 1523
    :cond_3
    sget-object p1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->table1:[I

    aget p1, p1, v6

    and-int/2addr p1, v4

    neg-int v1, v8

    shl-int/2addr p1, v1

    .line 1524
    sget-object v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->table2:[I

    aget v1, v1, v7

    and-int/2addr v0, v1

    rsub-int/lit8 v1, v7, 0x8

    ushr-int/2addr v0, v1

    or-int/2addr v0, p1

    add-int/2addr v3, v2

    .line 1527
    iput v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 1528
    iput v7, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    :cond_4
    :goto_2
    return v0

    .line 1507
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid FillOrder"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private nextNBits(I)I
    .locals 12

    .line 1422
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->data:[B

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1423
    iget v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 1425
    iget v4, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fillOrder:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v4, v2, :cond_2

    .line 1426
    aget-byte v2, v0, v3

    if-ne v3, v1, :cond_0

    :goto_0
    move v0, v6

    move v1, v0

    goto :goto_3

    :cond_0
    add-int/lit8 v4, v3, 0x1

    if-ne v4, v1, :cond_1

    .line 1432
    aget-byte v0, v0, v4

    :goto_1
    move v1, v6

    goto :goto_3

    .line 1435
    :cond_1
    aget-byte v1, v0, v4

    add-int/lit8 v4, v3, 0x2

    .line 1436
    aget-byte v0, v0, v4

    :goto_2
    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_3

    :cond_2
    if-ne v4, v5, :cond_8

    .line 1439
    sget-object v2, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->flipTable:[B

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v2, v4

    if-ne v3, v1, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v3, 0x1

    if-ne v7, v1, :cond_4

    .line 1445
    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v2, v0

    move v2, v4

    goto :goto_1

    .line 1448
    :cond_4
    aget-byte v1, v0, v7

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v2, v1

    add-int/lit8 v7, v3, 0x2

    .line 1449
    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v2, v0

    move v2, v4

    goto :goto_2

    .line 1455
    :goto_3
    iget v4, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    const/16 v7, 0x8

    rsub-int/lit8 v4, v4, 0x8

    sub-int/2addr p1, v4

    if-le p1, v7, :cond_5

    add-int/lit8 v8, p1, -0x8

    move v9, v7

    goto :goto_4

    :cond_5
    move v9, p1

    move v8, v6

    :goto_4
    add-int/lit8 v10, v3, 0x1

    .line 1463
    iput v10, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 1465
    sget-object v10, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->table1:[I

    aget v4, v10, v4

    and-int/2addr v2, v4

    shl-int p1, v2, p1

    .line 1466
    sget-object v2, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->table2:[I

    aget v4, v2, v9

    and-int/2addr v0, v4

    rsub-int/lit8 v4, v9, 0x8

    ushr-int/2addr v0, v4

    if-eqz v8, :cond_6

    shl-int/2addr v0, v8

    .line 1471
    aget v2, v2, v8

    and-int/2addr v1, v2

    rsub-int/lit8 v2, v8, 0x8

    ushr-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/2addr v3, v5

    .line 1474
    iput v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 1475
    iput v8, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    goto :goto_5

    :cond_6
    if-ne v9, v7, :cond_7

    .line 1478
    iput v6, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    add-int/2addr v3, v5

    .line 1479
    iput v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    goto :goto_5

    .line 1481
    :cond_7
    iput v9, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    :goto_5
    or-int/2addr p1, v0

    return p1

    .line 1452
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid FillOrder"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setToBlack(II)V
    .locals 5

    .line 1214
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lineBitNum:I

    add-int/2addr p1, v0

    add-int/2addr p2, p1

    shr-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p1, 0x7

    const/4 v2, 0x1

    if-lez v1, :cond_1

    rsub-int/lit8 v1, v1, 0x7

    shl-int v1, v2, v1

    .line 1223
    iget-object v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->buffer:[B

    aget-byte v3, v3, v0

    :goto_0
    if-lez v1, :cond_0

    if-ge p1, p2, :cond_0

    int-to-byte v4, v1

    or-int/2addr v3, v4

    int-to-byte v3, v3

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1229
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->buffer:[B

    aput-byte v3, v1, v0

    :cond_1
    shr-int/lit8 v0, p1, 0x3

    :goto_1
    add-int/lit8 v1, p2, -0x7

    if-ge p1, v1, :cond_2

    .line 1235
    iget-object v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    const/4 v4, -0x1

    aput-byte v4, v1, v0

    add-int/lit8 p1, p1, 0x8

    move v0, v3

    goto :goto_1

    :cond_2
    :goto_2
    if-ge p1, p2, :cond_3

    shr-int/lit8 v0, p1, 0x3

    .line 1242
    iget-object v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->buffer:[B

    aget-byte v3, v1, v0

    and-int/lit8 v4, p1, 0x7

    rsub-int/lit8 v4, v4, 0x7

    shl-int v4, v2, v4

    int-to-byte v4, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private updatePointer(I)V
    .locals 3

    const/16 v0, 0x8

    if-le p1, v0, :cond_0

    .line 1537
    iget v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    div-int/lit8 v2, p1, 0x8

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 1538
    rem-int/lit8 p1, p1, 0x8

    .line 1541
    :cond_0
    iget v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    sub-int/2addr v1, p1

    if-gez v1, :cond_1

    .line 1543
    iget p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    add-int/2addr v1, v0

    .line 1544
    iput v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    goto :goto_0

    .line 1546
    :cond_1
    iput v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    :goto_0
    return-void
.end method


# virtual methods
.method public SetOptions(IIII)V
    .locals 0

    .line 612
    iput p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fillOrder:I

    .line 613
    iput p2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->compression:I

    .line 614
    iput p3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->t4Options:I

    .line 615
    iput p4, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->t6Options:I

    and-int/lit8 p1, p3, 0x1

    .line 616
    iput p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->oneD:I

    and-int/lit8 p1, p3, 0x2

    shr-int/lit8 p1, p1, 0x1

    .line 617
    iput p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->uncompressedMode:I

    and-int/lit8 p1, p3, 0x4

    shr-int/lit8 p1, p1, 0x2

    .line 618
    iput p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fillBits:I

    return-void
.end method

.method public decodeNextScanline()V
    .locals 14

    const/4 v0, 0x0

    .line 677
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    .line 680
    :cond_0
    iget v4, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    if-ge v2, v4, :cond_e

    move v4, v2

    :cond_1
    :goto_0
    const/16 v5, 0xc

    const/4 v6, 0x2

    const/16 v7, 0xa

    const/16 v8, 0xf

    const/4 v9, 0x4

    if-eqz v3, :cond_5

    .line 685
    iget v10, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    if-ge v4, v10, :cond_5

    .line 687
    invoke-direct {p0, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v7

    .line 688
    sget-object v10, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->white:[S

    aget-short v10, v10, v7

    and-int/lit8 v11, v10, 0x1

    ushr-int/lit8 v12, v10, 0x1

    and-int/2addr v12, v8

    if-ne v12, v5, :cond_2

    .line 696
    invoke-direct {p0, v6}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v6

    shl-int/lit8 v7, v7, 0x2

    and-int/2addr v5, v7

    or-int/2addr v5, v6

    .line 699
    sget-object v6, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->additionalMakeup:[S

    aget-short v5, v6, v5

    ushr-int/lit8 v6, v5, 0x1

    and-int/lit8 v6, v6, 0x7

    ushr-int/2addr v5, v9

    and-int/lit16 v5, v5, 0xfff

    add-int/2addr v4, v5

    sub-int/2addr v9, v6

    .line 704
    invoke-direct {p0, v9}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    goto :goto_0

    :cond_2
    if-nez v12, :cond_3

    .line 706
    iget v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    goto :goto_0

    :cond_3
    if-ne v12, v8, :cond_4

    .line 713
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    return-void

    :cond_4
    ushr-int/lit8 v5, v10, 0x5

    and-int/lit16 v5, v5, 0x7ff

    add-int/2addr v4, v5

    rsub-int/lit8 v5, v12, 0xa

    .line 720
    invoke-direct {p0, v5}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    if-nez v11, :cond_1

    .line 723
    iget-object v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    iget v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    aput v4, v3, v5

    move v3, v0

    goto :goto_0

    .line 729
    :cond_5
    iget v10, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    if-ne v4, v10, :cond_7

    sub-int v0, v4, v2

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    .line 734
    rem-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_6

    const/16 v0, 0x8

    .line 736
    invoke-direct {p0, v0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v2

    const/16 v3, 0x35

    if-eq v2, v3, :cond_6

    .line 737
    iget v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    .line 738
    invoke-direct {p0, v0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    :cond_6
    move v2, v4

    goto/16 :goto_3

    :cond_7
    move v2, v4

    :cond_8
    :goto_1
    if-nez v3, :cond_d

    .line 746
    iget v10, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    if-ge v2, v10, :cond_d

    .line 748
    invoke-direct {p0, v9}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v10

    .line 749
    sget-object v11, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->initBlack:[S

    aget-short v10, v11, v10

    ushr-int/lit8 v11, v10, 0x1

    and-int/2addr v11, v8

    const/4 v12, 0x5

    ushr-int/2addr v10, v12

    and-int/lit16 v10, v10, 0x7ff

    const/16 v13, 0x64

    if-ne v10, v13, :cond_b

    const/16 v10, 0x9

    .line 757
    invoke-direct {p0, v10}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v10

    .line 758
    sget-object v11, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->black:[S

    aget-short v10, v11, v10

    and-int/lit8 v11, v10, 0x1

    ushr-int/lit8 v13, v10, 0x1

    and-int/2addr v13, v8

    ushr-int/2addr v10, v12

    and-int/lit16 v10, v10, 0x7ff

    if-ne v13, v5, :cond_9

    .line 767
    invoke-direct {p0, v12}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 768
    invoke-direct {p0, v9}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v10

    .line 769
    sget-object v11, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->additionalMakeup:[S

    aget-short v10, v11, v10

    ushr-int/lit8 v11, v10, 0x1

    and-int/lit8 v11, v11, 0x7

    ushr-int/2addr v10, v9

    and-int/lit16 v10, v10, 0xfff

    .line 773
    invoke-direct {p0, v2, v10}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    add-int/2addr v2, v10

    rsub-int/lit8 v10, v11, 0x4

    .line 776
    invoke-direct {p0, v10}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    goto :goto_1

    :cond_9
    if-ne v13, v8, :cond_a

    .line 782
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    return-void

    .line 785
    :cond_a
    invoke-direct {p0, v2, v10}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    add-int/2addr v2, v10

    rsub-int/lit8 v10, v13, 0x9

    .line 788
    invoke-direct {p0, v10}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    if-nez v11, :cond_8

    .line 791
    iget-object v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    iget v10, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    aput v2, v3, v10

    goto :goto_2

    :cond_b
    const/16 v3, 0xc8

    if-ne v10, v3, :cond_c

    .line 796
    invoke-direct {p0, v6}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v3

    .line 797
    sget-object v10, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->twoBitBlack:[S

    aget-short v3, v10, v3

    ushr-int/lit8 v10, v3, 0x5

    and-int/lit16 v10, v10, 0x7ff

    ushr-int/2addr v3, v1

    and-int/2addr v3, v8

    .line 801
    invoke-direct {p0, v2, v10}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    add-int/2addr v2, v10

    rsub-int/lit8 v3, v3, 0x2

    .line 804
    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 806
    iget-object v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    iget v10, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    aput v2, v3, v10

    goto :goto_2

    .line 809
    :cond_c
    invoke-direct {p0, v2, v10}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    add-int/2addr v2, v10

    rsub-int/lit8 v3, v11, 0x4

    .line 812
    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 814
    iget-object v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    iget v10, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    aput v2, v3, v10

    :goto_2
    move v3, v1

    goto/16 :goto_1

    .line 819
    :cond_d
    iget v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    if-ne v2, v5, :cond_0

    sub-int v0, v2, v4

    if-nez v3, :cond_e

    if-eqz v0, :cond_e

    .line 824
    rem-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_e

    .line 826
    invoke-direct {p0, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v0

    const/16 v3, 0x37

    if-eq v0, v3, :cond_e

    .line 827
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    .line 828
    invoke-direct {p0, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 834
    :cond_e
    :goto_3
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    iget v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    aput v2, v0, v1

    return-void
.end method

.method public decodeRLE()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 654
    :goto_0
    iget v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->h:I

    if-ge v1, v2, :cond_1

    .line 656
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeNextScanline()V

    .line 659
    iget v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    if-eqz v2, :cond_0

    .line 660
    iget v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 661
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    .line 665
    :cond_0
    iget v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lineBitNum:I

    iget v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitsPerScanline:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lineBitNum:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public decodeRaw([B[BII)V
    .locals 0

    .line 623
    iput-object p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->buffer:[B

    .line 624
    iput-object p2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->data:[B

    .line 625
    iput p3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    .line 626
    iput p4, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->h:I

    .line 627
    iput p3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitsPerScanline:I

    const/4 p1, 0x0

    .line 628
    iput p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lineBitNum:I

    .line 630
    iput p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    .line 631
    iput p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    add-int/lit8 p3, p3, 0x1

    .line 632
    new-array p2, p3, [I

    iput-object p2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->prevChangingElems:[I

    .line 633
    new-array p2, p3, [I

    iput-object p2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    .line 635
    iput p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    .line 638
    :try_start_0
    iget p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->compression:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeRLE()V

    goto :goto_0

    :cond_0
    const/4 p3, 0x3

    if-ne p1, p3, :cond_1

    .line 641
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeT4()V

    goto :goto_0

    :cond_1
    const/4 p3, 0x4

    if-ne p1, p3, :cond_2

    .line 643
    iget p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->t6Options:I

    and-int/2addr p1, p2

    shr-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->uncompressedMode:I

    .line 644
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeT6()V

    goto :goto_0

    .line 646
    :cond_2
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    const-string p2, "Unknown compression type {0}."

    invoke-direct {p1, p2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->compression:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public decodeT4()V
    .locals 15

    .line 838
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->h:I

    const/4 v1, 0x2

    .line 841
    new-array v2, v1, [I

    .line 847
    iget-object v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->data:[B

    array-length v3, v3

    if-lt v3, v1, :cond_c

    const/16 v1, 0xc

    .line 852
    invoke-direct {p0, v1}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 854
    iget v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    .line 856
    :cond_0
    invoke-direct {p0, v1}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    const/4 v1, -0x1

    const/4 v3, 0x0

    move v6, v1

    move v5, v3

    :goto_0
    if-eq v5, v4, :cond_1

    .line 863
    :try_start_0
    invoke-direct {p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->findNextLine()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 866
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No reference line present."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 874
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeNextScanline()V

    add-int/2addr v6, v4

    .line 876
    iget v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lineBitNum:I

    iget v7, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitsPerScanline:I

    add-int/2addr v5, v7

    iput v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lineBitNum:I

    :goto_1
    if-ge v6, v0, :cond_b

    .line 883
    :try_start_1
    invoke-direct {p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->findNextLine()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v5, :cond_a

    .line 893
    iget-object v7, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->prevChangingElems:[I

    .line 894
    iget-object v8, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    iput-object v8, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->prevChangingElems:[I

    .line 895
    iput-object v7, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    .line 903
    iput v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lastChangingElement:I

    move v8, v1

    move v7, v3

    move v10, v7

    move v9, v4

    .line 905
    :goto_2
    iget v11, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    if-ge v7, v11, :cond_9

    .line 907
    invoke-direct {p0, v8, v9, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->getNextChangingElement(IZ[I)V

    .line 909
    aget v8, v2, v3

    .line 910
    aget v11, v2, v4

    const/4 v12, 0x7

    .line 913
    invoke-direct {p0, v12}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v13

    .line 916
    sget-object v14, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->twoDCodes:[B

    aget-byte v13, v14, v13

    and-int/lit8 v14, v13, 0x78

    ushr-int/lit8 v14, v14, 0x3

    and-int/2addr v12, v13

    if-nez v14, :cond_3

    if-nez v9, :cond_2

    sub-int v8, v11, v7

    .line 924
    invoke-direct {p0, v7, v8}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    :cond_2
    rsub-int/lit8 v7, v12, 0x7

    .line 929
    invoke-direct {p0, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    move v7, v11

    move v8, v7

    goto :goto_2

    :cond_3
    if-ne v14, v4, :cond_5

    rsub-int/lit8 v8, v12, 0x7

    .line 932
    invoke-direct {p0, v8}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    if-eqz v9, :cond_4

    .line 937
    invoke-direct {p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeWhiteCodeWord()I

    move-result v8

    add-int/2addr v7, v8

    .line 939
    iget-object v8, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    add-int/lit8 v11, v10, 0x1

    aput v7, v8, v10

    .line 941
    invoke-direct {p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeBlackCodeWord()I

    move-result v8

    .line 942
    invoke-direct {p0, v7, v8}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    add-int/2addr v7, v8

    .line 944
    iget-object v8, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    add-int/lit8 v10, v10, 0x2

    aput v7, v8, v11

    goto :goto_3

    .line 946
    :cond_4
    invoke-direct {p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeBlackCodeWord()I

    move-result v8

    .line 947
    invoke-direct {p0, v7, v8}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    add-int/2addr v7, v8

    .line 949
    iget-object v8, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    add-int/lit8 v11, v10, 0x1

    aput v7, v8, v10

    .line 951
    invoke-direct {p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeWhiteCodeWord()I

    move-result v8

    add-int/2addr v7, v8

    .line 953
    iget-object v8, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    add-int/lit8 v10, v10, 0x2

    aput v7, v8, v11

    :goto_3
    move v8, v7

    move v7, v8

    goto :goto_2

    :cond_5
    const/16 v11, 0x8

    if-gt v14, v11, :cond_7

    add-int/lit8 v14, v14, -0x5

    add-int/2addr v8, v14

    .line 961
    iget-object v11, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    add-int/lit8 v13, v10, 0x1

    aput v8, v11, v10

    if-nez v9, :cond_6

    sub-int v10, v8, v7

    .line 966
    invoke-direct {p0, v7, v10}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    :cond_6
    xor-int/lit8 v9, v9, 0x1

    rsub-int/lit8 v7, v12, 0x7

    .line 971
    invoke-direct {p0, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    move v7, v8

    move v10, v13

    goto/16 :goto_2

    .line 973
    :cond_7
    iget v8, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    add-int/2addr v8, v4

    iput v8, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    move v8, v3

    :goto_4
    if-eq v5, v4, :cond_8

    .line 978
    :try_start_2
    invoke-direct {p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->findNextLine()I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :catch_1
    return-void

    :cond_8
    add-int/lit8 v8, v8, -0x1

    add-int/2addr v6, v8

    const/16 v5, 0xd

    .line 985
    invoke-direct {p0, v5}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 992
    :cond_9
    iget-object v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    add-int/lit8 v8, v10, 0x1

    aput v7, v5, v10

    .line 993
    iput v8, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    goto :goto_5

    .line 996
    :cond_a
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeNextScanline()V

    .line 999
    :goto_5
    iget v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lineBitNum:I

    iget v7, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitsPerScanline:I

    add-int/2addr v5, v7

    iput v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lineBitNum:I

    add-int/2addr v6, v4

    goto/16 :goto_1

    .line 885
    :catch_2
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    :cond_b
    return-void

    .line 848
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Insufficient data to read initial EOL."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decodeT6()V
    .locals 17

    move-object/from16 v1, p0

    .line 1005
    iget-object v2, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 1006
    :try_start_0
    iget v0, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->h:I

    const/4 v3, 0x2

    .line 1015
    new-array v3, v3, [I

    .line 1022
    iget-object v4, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    const/4 v5, 0x1

    .line 1028
    iput v5, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    iget v6, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    const/4 v7, 0x0

    aput v6, v4, v7

    add-int v8, v5, v5

    .line 1029
    iput v8, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    aput v6, v4, v5

    move v4, v7

    :goto_0
    if-ge v4, v0, :cond_16

    .line 1041
    iget-object v6, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->prevChangingElems:[I

    .line 1042
    iget-object v8, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    iput-object v8, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->prevChangingElems:[I

    .line 1043
    iput-object v6, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    .line 1050
    iput v7, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lastChangingElement:I

    const/4 v8, -0x1

    move v11, v5

    move v9, v7

    move v10, v9

    .line 1053
    :goto_1
    iget v12, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    if-ge v9, v12, :cond_14

    .line 1055
    invoke-direct {v1, v8, v11, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->getNextChangingElement(IZ[I)V

    .line 1056
    aget v12, v3, v7

    .line 1057
    aget v13, v3, v5

    const/4 v14, 0x7

    .line 1060
    invoke-direct {v1, v14}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v15

    .line 1062
    sget-object v16, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->twoDCodes:[B

    aget-byte v15, v16, v15

    and-int/lit8 v16, v15, 0x78

    const/4 v7, 0x3

    ushr-int/lit8 v5, v16, 0x3

    and-int/2addr v14, v15

    if-nez v5, :cond_2

    if-nez v11, :cond_1

    .line 1071
    iget v5, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    if-le v13, v5, :cond_0

    move v13, v5

    :cond_0
    sub-int v5, v13, v9

    .line 1074
    invoke-direct {v1, v9, v5}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    :cond_1
    move v9, v13

    rsub-int/lit8 v5, v14, 0x7

    .line 1079
    invoke-direct {v1, v5}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    :goto_2
    move v8, v9

    goto/16 :goto_7

    :cond_2
    const/4 v13, 0x1

    if-ne v5, v13, :cond_6

    rsub-int/lit8 v5, v14, 0x7

    .line 1082
    invoke-direct {v1, v5}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    if-eqz v11, :cond_4

    .line 1088
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeWhiteCodeWord()I

    move-result v5

    add-int/2addr v9, v5

    add-int/lit8 v5, v10, 0x1

    .line 1090
    aput v9, v6, v10

    .line 1092
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeBlackCodeWord()I

    move-result v7

    .line 1093
    iget v8, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    sub-int v12, v8, v9

    if-le v7, v12, :cond_3

    sub-int v7, v8, v9

    .line 1096
    :cond_3
    invoke-direct {v1, v9, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    add-int/2addr v9, v7

    add-int/lit8 v10, v10, 0x2

    .line 1098
    aput v9, v6, v5

    goto :goto_2

    .line 1101
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeBlackCodeWord()I

    move-result v5

    .line 1102
    iget v7, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    sub-int v8, v7, v9

    if-le v5, v8, :cond_5

    sub-int v5, v7, v9

    .line 1105
    :cond_5
    invoke-direct {v1, v9, v5}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    add-int/2addr v9, v5

    add-int/lit8 v5, v10, 0x1

    .line 1107
    aput v9, v6, v10

    .line 1109
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeWhiteCodeWord()I

    move-result v7

    add-int/2addr v9, v7

    add-int/lit8 v10, v10, 0x2

    .line 1111
    aput v9, v6, v5

    goto :goto_2

    :cond_6
    const/16 v13, 0x8

    if-gt v5, v13, :cond_9

    add-int/lit8 v5, v5, -0x5

    add-int/2addr v12, v5

    add-int/lit8 v5, v10, 0x1

    .line 1117
    aput v12, v6, v10

    if-nez v11, :cond_8

    .line 1122
    iget v7, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    if-le v12, v7, :cond_7

    move v12, v7

    :cond_7
    sub-int v7, v12, v9

    .line 1125
    invoke-direct {v1, v9, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    :cond_8
    move v9, v12

    const/4 v7, 0x1

    xor-int/2addr v11, v7

    rsub-int/lit8 v7, v14, 0x7

    .line 1130
    invoke-direct {v1, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    move v10, v5

    goto :goto_2

    :cond_9
    const/16 v12, 0xb

    if-ne v5, v12, :cond_13

    .line 1132
    invoke-direct {v1, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    const/4 v5, 0x0

    const/4 v13, 0x0

    :goto_3
    if-nez v13, :cond_13

    :goto_4
    const/4 v7, 0x1

    .line 1138
    invoke-direct {v1, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v12

    if-eq v12, v7, :cond_a

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    const/4 v7, 0x5

    if-le v5, v7, :cond_10

    add-int/lit8 v5, v5, -0x6

    if-nez v11, :cond_b

    if-lez v5, :cond_b

    add-int/lit8 v12, v10, 0x1

    .line 1149
    aput v9, v6, v10

    move v10, v12

    :cond_b
    add-int/2addr v9, v5

    if-lez v5, :cond_c

    const/4 v11, 0x1

    const/4 v13, 0x1

    goto :goto_5

    :cond_c
    move v13, v11

    const/4 v11, 0x1

    .line 1161
    :goto_5
    invoke-direct {v1, v11}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v12

    if-nez v12, :cond_e

    if-nez v13, :cond_d

    add-int/lit8 v11, v10, 0x1

    .line 1163
    aput v9, v6, v10

    move v10, v11

    :cond_d
    const/4 v13, 0x1

    goto :goto_6

    :cond_e
    if-eqz v13, :cond_f

    add-int/lit8 v11, v10, 0x1

    .line 1168
    aput v9, v6, v10

    move v10, v11

    :cond_f
    const/4 v13, 0x0

    :goto_6
    move v11, v13

    const/4 v13, 0x1

    :cond_10
    if-ne v5, v7, :cond_12

    if-nez v11, :cond_11

    add-int/lit8 v7, v10, 0x1

    .line 1178
    aput v9, v6, v10

    move v10, v7

    :cond_11
    add-int/2addr v9, v5

    const/4 v11, 0x1

    goto :goto_3

    :cond_12
    add-int/2addr v9, v5

    add-int/lit8 v7, v10, 0x1

    .line 1187
    aput v9, v6, v10

    const/4 v14, 0x1

    .line 1188
    invoke-direct {v1, v9, v14}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    add-int/lit8 v9, v9, 0x1

    move v10, v7

    const/4 v11, 0x0

    goto :goto_3

    :cond_13
    :goto_7
    const/4 v5, 0x1

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_14
    move v14, v5

    if-gt v10, v12, :cond_15

    add-int/lit8 v5, v10, 0x1

    .line 1202
    aput v9, v6, v10

    move v10, v5

    .line 1205
    :cond_15
    iput v10, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    .line 1207
    iget v5, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lineBitNum:I

    iget v6, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitsPerScanline:I

    add-int/2addr v5, v6

    iput v5, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lineBitNum:I

    add-int/lit8 v4, v4, 0x1

    move v5, v14

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1209
    :cond_16
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
