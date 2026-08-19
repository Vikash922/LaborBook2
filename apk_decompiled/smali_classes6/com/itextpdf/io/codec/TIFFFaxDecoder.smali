.class public Lcom/itextpdf/io/codec/TIFFFaxDecoder;
.super Ljava/lang/Object;
.source "TIFFFaxDecoder.java"


# static fields
.field public static additionalMakeup:[S

.field static black:[S

.field public static flipTable:[B

.field static initBlack:[S

.field static table1:[I

.field static table2:[I

.field static twoBitBlack:[S

.field static twoDCodes:[B

.field static white:[S


# instance fields
.field private bitPointer:I

.field private bytePointer:I

.field private changingElemSize:I

.field private compression:I

.field private currChangingElems:[I

.field private data:[B

.field private fillBits:I

.field private fillOrder:I

.field private h:I

.field private lastChangingElement:I

.field private oneD:I

.field private prevChangingElems:[I

.field private recoverFromImageError:Z

.field private uncompressedMode:I

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    .line 79
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->table1:[I

    const/16 v0, 0x9

    .line 109
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->table2:[I

    const/16 v0, 0x100

    .line 140
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->flipTable:[B

    const/16 v0, 0x400

    .line 176
    new-array v0, v0, [S

    fill-array-data v0, :array_3

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->white:[S

    const/16 v0, 0x10

    .line 443
    new-array v0, v0, [S

    fill-array-data v0, :array_4

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->additionalMakeup:[S

    const/16 v0, 0x10

    .line 451
    new-array v0, v0, [S

    fill-array-data v0, :array_5

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->initBlack:[S

    const/4 v0, 0x4

    .line 459
    new-array v0, v0, [S

    fill-array-data v0, :array_6

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->twoBitBlack:[S

    const/16 v0, 0x200

    .line 462
    new-array v0, v0, [S

    fill-array-data v0, :array_7

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->black:[S

    const/16 v0, 0x80

    .line 593
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->twoDCodes:[B

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

.method public constructor <init>(III)V
    .locals 2

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    .line 67
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->lastChangingElement:I

    const/4 v1, 0x2

    .line 69
    iput v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->compression:I

    .line 72
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->uncompressedMode:I

    .line 73
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->fillBits:I

    .line 634
    iput p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->fillOrder:I

    .line 635
    iput p2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->w:I

    .line 636
    iput p3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->h:I

    .line 638
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    .line 639
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    mul-int/2addr p2, v1

    .line 640
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->prevChangingElems:[I

    .line 641
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    return-void
.end method

.method private advancePointer()Z
    .locals 2

    .line 1571
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1572
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    const/4 v0, 0x0

    .line 1573
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    :cond_0
    return v1
.end method

.method private decodeBlackCodeWord()I
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    if-nez v0, :cond_5

    const/4 v2, 0x4

    .line 1324
    invoke-direct {p0, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v3

    .line 1325
    sget-object v4, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->initBlack:[S

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

    .line 1333
    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v3

    .line 1334
    sget-object v4, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->black:[S

    aget-short v3, v4, v3

    and-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v7, v3, 0x1

    and-int/2addr v7, v5

    ushr-int/2addr v3, v6

    and-int/lit16 v3, v3, 0x7ff

    const/16 v9, 0xc

    if-ne v7, v9, :cond_1

    .line 1344
    invoke-direct {p0, v6}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 1345
    invoke-direct {p0, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v3

    .line 1346
    sget-object v4, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->additionalMakeup:[S

    aget-short v3, v4, v3

    ushr-int/lit8 v4, v3, 0x1

    and-int/lit8 v4, v4, 0x7

    ushr-int/2addr v3, v2

    and-int/lit16 v3, v3, 0xfff

    add-int/2addr v1, v3

    sub-int/2addr v2, v4

    .line 1355
    invoke-direct {p0, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    goto :goto_0

    :cond_1
    if-eq v7, v5, :cond_2

    add-int/2addr v1, v3

    rsub-int/lit8 v2, v7, 0x9

    .line 1362
    invoke-direct {p0, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    if-nez v4, :cond_0

    goto :goto_1

    .line 1359
    :cond_2
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "EOL code word encountered in Black run."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/16 v0, 0xc8

    if-ne v3, v0, :cond_4

    const/4 v0, 0x2

    .line 1370
    invoke-direct {p0, v0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v2

    .line 1371
    sget-object v3, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->twoBitBlack:[S

    aget-short v2, v3, v2

    ushr-int/lit8 v3, v2, 0x5

    and-int/lit16 v3, v3, 0x7ff

    add-int/2addr v1, v3

    ushr-int/2addr v2, v8

    and-int/2addr v2, v5

    sub-int/2addr v0, v2

    .line 1375
    invoke-direct {p0, v0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    goto :goto_1

    :cond_4
    add-int/2addr v1, v3

    sub-int/2addr v2, v4

    .line 1381
    invoke-direct {p0, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

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
    if-eqz v1, :cond_5

    const/16 v3, 0xa

    .line 1266
    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v3

    .line 1267
    sget-object v4, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->white:[S

    aget-short v4, v4, v3

    and-int/lit8 v5, v4, 0x1

    ushr-int/lit8 v6, v4, 0x1

    const/16 v7, 0xf

    and-int/2addr v6, v7

    const/16 v8, 0xc

    if-ne v6, v8, :cond_1

    const/4 v4, 0x2

    .line 1277
    invoke-direct {p0, v4}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v4

    shl-int/lit8 v3, v3, 0x2

    and-int/2addr v3, v8

    or-int/2addr v3, v4

    .line 1281
    sget-object v4, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->additionalMakeup:[S

    aget-short v3, v4, v3

    ushr-int/lit8 v4, v3, 0x1

    and-int/lit8 v4, v4, 0x7

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xfff

    add-int/2addr v2, v3

    rsub-int/lit8 v3, v4, 0x4

    .line 1289
    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_4

    if-ne v6, v7, :cond_3

    if-nez v2, :cond_2

    goto :goto_1

    .line 1300
    :cond_2
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "EOL code word encountered in White run."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    ushr-int/lit8 v3, v4, 0x5

    and-int/lit16 v3, v3, 0x7ff

    add-int/2addr v2, v3

    rsub-int/lit8 v3, v6, 0xa

    .line 1307
    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    if-nez v5, :cond_0

    :goto_1
    move v1, v0

    goto :goto_0

    .line 1293
    :cond_4
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Invalid code encountered."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return v2
.end method

.method private getNextChangingElement(IZ[I)V
    .locals 5

    .line 1411
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->prevChangingElems:[I

    .line 1412
    iget v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    .line 1417
    iget v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->lastChangingElement:I

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

    .line 1430
    aget v2, v0, p2

    if-le v2, p1, :cond_2

    .line 1432
    iput p2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->lastChangingElement:I

    .line 1433
    aput v2, p3, v3

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, 0x2

    goto :goto_1

    :cond_3
    :goto_2
    add-int/2addr p2, v4

    if-ge p2, v1, :cond_4

    .line 1439
    aget p1, v0, p2

    aput p1, p3, v4

    :cond_4
    return-void
.end method

.method private nextLesserThan8Bits(I)I
    .locals 9

    .line 1513
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->data:[B

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1514
    iget v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    .line 1516
    iget v4, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->fillOrder:I

    const/4 v5, 0x0

    if-ne v4, v2, :cond_1

    .line 1517
    aget-byte v4, v0, v3

    if-ne v3, v1, :cond_0

    move v0, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v3, 0x1

    .line 1521
    aget-byte v0, v0, v1

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    if-ne v4, v6, :cond_6

    .line 1524
    iget-boolean v4, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->recoverFromImageError:Z

    if-eqz v4, :cond_2

    array-length v4, v0

    if-lt v3, v4, :cond_2

    move v0, v5

    move v4, v0

    goto :goto_1

    .line 1527
    :cond_2
    sget-object v4, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->flipTable:[B

    aget-byte v6, v0, v3

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v4, v6

    if-ne v3, v1, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v3, 0x1

    .line 1531
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v4, v0

    :goto_0
    move v4, v6

    .line 1538
    :goto_1
    iget v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    rsub-int/lit8 v6, v1, 0x8

    sub-int v7, p1, v6

    sub-int v8, v6, p1

    if-ltz v8, :cond_4

    .line 1544
    sget-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->table1:[I

    aget v0, v0, v6

    and-int/2addr v0, v4

    ushr-int/2addr v0, v8

    add-int/2addr v1, p1

    .line 1545
    iput v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    const/16 p1, 0x8

    if-ne v1, p1, :cond_5

    .line 1547
    iput v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    add-int/2addr v3, v2

    .line 1548
    iput v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    goto :goto_2

    .line 1551
    :cond_4
    sget-object p1, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->table1:[I

    aget p1, p1, v6

    and-int/2addr p1, v4

    neg-int v1, v8

    shl-int/2addr p1, v1

    .line 1552
    sget-object v1, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->table2:[I

    aget v1, v1, v7

    and-int/2addr v0, v1

    rsub-int/lit8 v1, v7, 0x8

    ushr-int/2addr v0, v1

    or-int/2addr v0, p1

    add-int/2addr v3, v2

    .line 1555
    iput v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    .line 1556
    iput v7, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    :cond_5
    :goto_2
    return v0

    .line 1535
    :cond_6
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v0, "TIFF_FILL_ORDER tag must be either 1 or 2."

    invoke-direct {p1, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private nextNBits(I)I
    .locals 12

    .line 1445
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->data:[B

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1446
    iget v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    .line 1448
    iget v4, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->fillOrder:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v4, v2, :cond_2

    .line 1449
    aget-byte v2, v0, v3

    if-ne v3, v1, :cond_0

    :goto_0
    move v0, v6

    move v1, v0

    goto :goto_3

    :cond_0
    add-int/lit8 v4, v3, 0x1

    if-ne v4, v1, :cond_1

    .line 1455
    aget-byte v0, v0, v4

    :goto_1
    move v1, v6

    goto :goto_3

    .line 1458
    :cond_1
    aget-byte v1, v0, v4

    add-int/lit8 v4, v3, 0x2

    .line 1459
    aget-byte v0, v0, v4

    :goto_2
    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_3

    :cond_2
    if-ne v4, v5, :cond_8

    .line 1462
    sget-object v2, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->flipTable:[B

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v2, v4

    if-ne v3, v1, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v3, 0x1

    if-ne v7, v1, :cond_4

    .line 1468
    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v2, v0

    move v2, v4

    goto :goto_1

    .line 1471
    :cond_4
    aget-byte v1, v0, v7

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v2, v1

    add-int/lit8 v7, v3, 0x2

    .line 1472
    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v2, v0

    move v2, v4

    goto :goto_2

    .line 1478
    :goto_3
    iget v4, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

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

    .line 1486
    iput v10, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    .line 1488
    sget-object v10, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->table1:[I

    aget v4, v10, v4

    and-int/2addr v2, v4

    shl-int p1, v2, p1

    .line 1489
    sget-object v2, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->table2:[I

    aget v4, v2, v9

    and-int/2addr v0, v4

    rsub-int/lit8 v4, v9, 0x8

    ushr-int/2addr v0, v4

    if-eqz v8, :cond_6

    shl-int/2addr v0, v8

    .line 1494
    aget v2, v2, v8

    and-int/2addr v1, v2

    rsub-int/lit8 v2, v8, 0x8

    ushr-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/2addr v3, v5

    .line 1497
    iput v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    .line 1498
    iput v8, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    goto :goto_5

    :cond_6
    if-ne v9, v7, :cond_7

    .line 1501
    iput v6, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    add-int/2addr v3, v5

    .line 1502
    iput v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    goto :goto_5

    .line 1504
    :cond_7
    iput v9, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    :goto_5
    or-int/2addr p1, v0

    return p1

    .line 1475
    :cond_8
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v0, "TIFF_FILL_ORDER tag must be either 1 or 2."

    invoke-direct {p1, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readEOL()I
    .locals 2

    :goto_0
    const/4 v0, 0x1

    .line 1391
    invoke-direct {p0, v0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    .line 1394
    invoke-direct {p0, v1}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 1395
    invoke-direct {p0, v1}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 1400
    iget v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->oneD:I

    if-nez v1, :cond_1

    return v0

    .line 1405
    :cond_1
    invoke-direct {p0, v0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v0

    return v0

    .line 1397
    :cond_2
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "All fill bits preceding eol code must be 0."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static reverseBits([B)V
    .locals 3

    const/4 v0, 0x0

    .line 650
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 651
    sget-object v1, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->flipTable:[B

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setToBlack([BIII)V
    .locals 4

    mul-int/lit8 p2, p2, 0x8

    add-int/2addr p2, p3

    add-int/2addr p4, p2

    shr-int/lit8 p3, p2, 0x3

    and-int/lit8 v0, p2, 0x7

    const/4 v1, 0x1

    if-lez v0, :cond_1

    rsub-int/lit8 v0, v0, 0x7

    shl-int v0, v1, v0

    .line 1231
    aget-byte v2, p1, p3

    :goto_0
    if-lez v0, :cond_0

    if-ge p2, p4, :cond_0

    int-to-byte v3, v0

    or-int/2addr v2, v3

    int-to-byte v2, v2

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1237
    :cond_0
    aput-byte v2, p1, p3

    :cond_1
    shr-int/lit8 p3, p2, 0x3

    :goto_1
    add-int/lit8 v0, p4, -0x7

    if-ge p2, v0, :cond_2

    add-int/lit8 v0, p3, 0x1

    const/4 v2, -0x1

    .line 1243
    aput-byte v2, p1, p3

    add-int/lit8 p2, p2, 0x8

    move p3, v0

    goto :goto_1

    :cond_2
    :goto_2
    if-ge p2, p4, :cond_4

    shr-int/lit8 p3, p2, 0x3

    .line 1250
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->recoverFromImageError:Z

    if-eqz v0, :cond_3

    array-length v0, p1

    if-lt p3, v0, :cond_3

    goto :goto_3

    .line 1253
    :cond_3
    aget-byte v0, p1, p3

    and-int/lit8 v2, p2, 0x7

    rsub-int/lit8 v2, v2, 0x7

    shl-int v2, v1, v2

    int-to-byte v2, v2

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p1, p3

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private updatePointer(I)V
    .locals 2

    .line 1564
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 1565
    rem-int/lit8 p1, v0, 0x8

    iput p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    .line 1566
    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    return-void
.end method


# virtual methods
.method public decode1D([B[BII)V
    .locals 2

    .line 657
    iput-object p2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->data:[B

    .line 660
    iget p2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->w:I

    add-int/lit8 p2, p2, 0x7

    div-int/lit8 p2, p2, 0x8

    const/4 v0, 0x0

    .line 662
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    .line 663
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    move v1, v0

    :goto_0
    if-ge v0, p4, :cond_0

    .line 666
    invoke-virtual {p0, p1, v1, p3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeNextScanline([BII)V

    add-int/2addr v1, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public decode2D([B[BIIJ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p2

    .line 829
    iput-object v3, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->data:[B

    const/4 v3, 0x3

    .line 830
    iput v3, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->compression:I

    const/4 v4, 0x0

    .line 832
    iput v4, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    .line 833
    iput v4, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    .line 835
    iget v5, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->w:I

    const/4 v6, 0x7

    add-int/2addr v5, v6

    const/16 v7, 0x8

    div-int/2addr v5, v7

    const/4 v8, 0x2

    .line 838
    new-array v9, v8, [I

    const-wide/16 v10, 0x1

    and-long v10, p5, v10

    long-to-int v10, v10

    .line 850
    iput v10, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->oneD:I

    const-wide/16 v10, 0x2

    and-long v10, p5, v10

    const/4 v12, 0x1

    shr-long/2addr v10, v12

    long-to-int v10, v10

    .line 851
    iput v10, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->uncompressedMode:I

    const-wide/16 v10, 0x4

    and-long v10, p5, v10

    shr-long/2addr v10, v8

    long-to-int v8, v10

    .line 852
    iput v8, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->fillBits:I

    .line 855
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->readEOL()I

    move-result v8

    if-ne v8, v12, :cond_9

    .line 864
    invoke-virtual {v0, v1, v4, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeNextScanline([BII)V

    move/from16 v8, p4

    move v11, v5

    move v10, v12

    :goto_0
    if-ge v10, v8, :cond_8

    .line 871
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->readEOL()I

    move-result v13

    if-nez v13, :cond_7

    .line 876
    iget-object v13, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->prevChangingElems:[I

    .line 877
    iget-object v14, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    iput-object v14, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->prevChangingElems:[I

    .line 878
    iput-object v13, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    .line 886
    iput v4, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->lastChangingElement:I

    const/4 v13, -0x1

    move v14, v2

    move v15, v4

    move v7, v12

    .line 888
    :goto_1
    iget v3, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->w:I

    if-ge v14, v3, :cond_6

    .line 890
    invoke-direct {v0, v13, v7, v9}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->getNextChangingElement(IZ[I)V

    .line 892
    aget v3, v9, v4

    .line 893
    aget v13, v9, v12

    .line 896
    invoke-direct {v0, v6}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v17

    .line 899
    sget-object v18, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->twoDCodes:[B

    aget-byte v17, v18, v17

    and-int/lit8 v18, v17, 0x78

    const/16 v16, 0x3

    ushr-int/lit8 v4, v18, 0x3

    and-int/lit8 v17, v17, 0x7

    if-nez v4, :cond_1

    if-nez v7, :cond_0

    sub-int v3, v13, v14

    .line 907
    invoke-direct {v0, v1, v11, v14, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    :cond_0
    rsub-int/lit8 v3, v17, 0x7

    .line 913
    invoke-direct {v0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    move v14, v13

    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    if-ne v4, v12, :cond_3

    rsub-int/lit8 v3, v17, 0x7

    .line 916
    invoke-direct {v0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    if-eqz v7, :cond_2

    .line 921
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeWhiteCodeWord()I

    move-result v3

    add-int/2addr v14, v3

    .line 923
    iget-object v3, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    add-int/lit8 v4, v15, 0x1

    aput v14, v3, v15

    .line 925
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeBlackCodeWord()I

    move-result v3

    .line 926
    invoke-direct {v0, v1, v11, v14, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    add-int/2addr v14, v3

    .line 928
    iget-object v3, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    add-int/lit8 v15, v15, 0x2

    aput v14, v3, v4

    goto :goto_3

    .line 930
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeBlackCodeWord()I

    move-result v3

    .line 931
    invoke-direct {v0, v1, v11, v14, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    add-int/2addr v14, v3

    .line 933
    iget-object v3, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    add-int/lit8 v4, v15, 0x1

    aput v14, v3, v15

    .line 935
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeWhiteCodeWord()I

    move-result v3

    add-int/2addr v14, v3

    .line 937
    iget-object v3, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    add-int/lit8 v15, v15, 0x2

    aput v14, v3, v4

    :goto_3
    move v13, v14

    goto :goto_2

    :cond_3
    const/16 v13, 0x8

    if-gt v4, v13, :cond_5

    add-int/lit8 v4, v4, -0x5

    add-int/2addr v3, v4

    .line 945
    iget-object v4, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    add-int/lit8 v18, v15, 0x1

    aput v3, v4, v15

    if-nez v7, :cond_4

    sub-int v4, v3, v14

    .line 950
    invoke-direct {v0, v1, v11, v14, v4}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    :cond_4
    xor-int/lit8 v7, v7, 0x1

    rsub-int/lit8 v4, v17, 0x7

    .line 956
    invoke-direct {v0, v4}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    move v13, v3

    move v14, v13

    move/from16 v15, v18

    goto :goto_2

    .line 958
    :cond_5
    new-instance v1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "Invalid code encountered while decoding 2D group 3 compressed data."

    invoke-direct {v1, v2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/16 v13, 0x8

    const/16 v16, 0x3

    .line 964
    iget-object v3, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    add-int/lit8 v4, v15, 0x1

    aput v14, v3, v15

    .line 965
    iput v4, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    goto :goto_4

    :cond_7
    move/from16 v16, v3

    move v13, v7

    .line 968
    invoke-virtual {v0, v1, v11, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeNextScanline([BII)V

    :goto_4
    add-int/2addr v11, v5

    add-int/lit8 v10, v10, 0x1

    move v7, v13

    move/from16 v3, v16

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_8
    return-void

    .line 856
    :cond_9
    new-instance v1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "First scanline must be 1D encoded."

    invoke-direct {v1, v2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public decodeNextScanline([BII)V
    .locals 12

    const/4 v0, 0x0

    .line 676
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    const/4 v1, 0x1

    move v2, v1

    .line 679
    :cond_0
    iget v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->w:I

    if-ge p3, v3, :cond_c

    .line 680
    :cond_1
    :goto_0
    const-string v3, "EOL code word encountered in White run."

    const/16 v4, 0xc

    const/4 v5, 0x2

    const/16 v6, 0xf

    const/4 v7, 0x4

    if-eqz v2, :cond_5

    const/16 v8, 0xa

    .line 682
    invoke-direct {p0, v8}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v8

    .line 683
    sget-object v9, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->white:[S

    aget-short v9, v9, v8

    and-int/lit8 v10, v9, 0x1

    ushr-int/lit8 v11, v9, 0x1

    and-int/2addr v11, v6

    if-ne v11, v4, :cond_2

    .line 693
    invoke-direct {p0, v5}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v3

    shl-int/lit8 v5, v8, 0x2

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    .line 697
    sget-object v4, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->additionalMakeup:[S

    aget-short v3, v4, v3

    ushr-int/lit8 v4, v3, 0x1

    and-int/lit8 v4, v4, 0x7

    ushr-int/2addr v3, v7

    and-int/lit16 v3, v3, 0xfff

    add-int/2addr p3, v3

    sub-int/2addr v7, v4

    .line 708
    invoke-direct {p0, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    goto :goto_0

    :cond_2
    if-eqz v11, :cond_4

    if-eq v11, v6, :cond_3

    ushr-int/lit8 v3, v9, 0x5

    and-int/lit16 v3, v3, 0x7ff

    add-int/2addr p3, v3

    rsub-int/lit8 v3, v11, 0xa

    .line 723
    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    if-nez v10, :cond_1

    .line 726
    iget-object v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    iget v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    aput p3, v2, v3

    move v2, v0

    goto :goto_0

    .line 716
    :cond_3
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    invoke-direct {p1, v3}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 712
    :cond_4
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    const-string p2, "Invalid code encountered."

    invoke-direct {p1, p2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 733
    :cond_5
    iget v8, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->w:I

    if-ne p3, v8, :cond_6

    .line 734
    iget p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->compression:I

    if-ne p1, v5, :cond_c

    .line 735
    invoke-direct {p0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->advancePointer()Z

    goto/16 :goto_3

    :cond_6
    :goto_1
    if-nez v2, :cond_b

    .line 742
    invoke-direct {p0, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v8

    .line 743
    sget-object v9, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->initBlack:[S

    aget-short v8, v9, v8

    ushr-int/lit8 v9, v8, 0x1

    and-int/2addr v9, v6

    const/4 v10, 0x5

    ushr-int/2addr v8, v10

    and-int/lit16 v8, v8, 0x7ff

    const/16 v11, 0x64

    if-ne v8, v11, :cond_9

    const/16 v8, 0x9

    .line 750
    invoke-direct {p0, v8}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v8

    .line 751
    sget-object v9, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->black:[S

    aget-short v8, v9, v8

    and-int/lit8 v9, v8, 0x1

    ushr-int/lit8 v11, v8, 0x1

    and-int/2addr v11, v6

    ushr-int/2addr v8, v10

    and-int/lit16 v8, v8, 0x7ff

    if-ne v11, v4, :cond_7

    .line 760
    invoke-direct {p0, v10}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 761
    invoke-direct {p0, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v8

    .line 762
    sget-object v9, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->additionalMakeup:[S

    aget-short v8, v9, v8

    ushr-int/lit8 v9, v8, 0x1

    and-int/lit8 v9, v9, 0x7

    ushr-int/2addr v8, v7

    and-int/lit16 v8, v8, 0xfff

    .line 770
    invoke-direct {p0, p1, p2, p3, v8}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    add-int/2addr p3, v8

    rsub-int/lit8 v8, v9, 0x4

    .line 773
    invoke-direct {p0, v8}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    goto :goto_1

    :cond_7
    if-eq v11, v6, :cond_8

    .line 779
    invoke-direct {p0, p1, p2, p3, v8}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    add-int/2addr p3, v8

    rsub-int/lit8 v8, v11, 0x9

    .line 782
    invoke-direct {p0, v8}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    if-nez v9, :cond_6

    .line 785
    iget-object v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    iget v8, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    aput p3, v2, v8

    goto :goto_2

    .line 777
    :cond_8
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    invoke-direct {p1, v3}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const/16 v2, 0xc8

    if-ne v8, v2, :cond_a

    .line 791
    invoke-direct {p0, v5}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v2

    .line 792
    sget-object v8, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->twoBitBlack:[S

    aget-short v2, v8, v2

    ushr-int/lit8 v8, v2, 0x5

    and-int/lit16 v8, v8, 0x7ff

    ushr-int/2addr v2, v1

    and-int/2addr v2, v6

    .line 796
    invoke-direct {p0, p1, p2, p3, v8}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    add-int/2addr p3, v8

    rsub-int/lit8 v2, v2, 0x2

    .line 799
    invoke-direct {p0, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 801
    iget-object v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    iget v8, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    aput p3, v2, v8

    goto :goto_2

    .line 805
    :cond_a
    invoke-direct {p0, p1, p2, p3, v8}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    add-int/2addr p3, v8

    rsub-int/lit8 v2, v9, 0x4

    .line 808
    invoke-direct {p0, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 810
    iget-object v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    iget v8, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    aput p3, v2, v8

    :goto_2
    move v2, v1

    goto/16 :goto_1

    .line 815
    :cond_b
    iget v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->w:I

    if-ne p3, v3, :cond_0

    .line 816
    iget p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->compression:I

    if-ne p1, v5, :cond_c

    .line 817
    invoke-direct {p0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->advancePointer()Z

    .line 823
    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    iget p2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    aput p3, p1, p2

    return-void
.end method

.method public decodeT6([B[BIIJ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 980
    iput-object v2, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->data:[B

    const/4 v2, 0x4

    .line 981
    iput v2, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->compression:I

    const/4 v2, 0x0

    .line 983
    iput v2, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    .line 984
    iput v2, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    .line 986
    iget v3, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->w:I

    add-int/lit8 v4, v3, 0x7

    const/16 v5, 0x8

    div-int/2addr v4, v5

    const/4 v6, 0x2

    .line 995
    new-array v7, v6, [I

    const-wide/16 v8, 0x2

    and-long v8, p5, v8

    const/4 v10, 0x1

    shr-long/2addr v8, v10

    long-to-int v8, v8

    .line 1000
    iput v8, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->uncompressedMode:I

    const-wide/16 v8, 0x4

    and-long v8, p5, v8

    shr-long/2addr v8, v6

    long-to-int v6, v8

    .line 1001
    iput v6, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->fillBits:I

    .line 1004
    iget-object v6, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    .line 1010
    iput v10, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    aput v3, v6, v2

    add-int v8, v10, v10

    .line 1011
    iput v8, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    aput v3, v6, v10

    move/from16 v3, p4

    move v6, v2

    move v8, v6

    :goto_0
    if-ge v6, v3, :cond_17

    .line 1024
    iget-object v9, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->prevChangingElems:[I

    .line 1025
    iget-object v11, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    iput-object v11, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->prevChangingElems:[I

    .line 1026
    iput-object v9, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    .line 1032
    iget v11, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->fillBits:I

    if-ne v11, v10, :cond_1

    .line 1035
    iget v11, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    if-lez v11, :cond_1

    rsub-int/lit8 v11, v11, 0x8

    .line 1037
    invoke-direct {v0, v11}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v11

    if-nez v11, :cond_0

    goto :goto_1

    .line 1038
    :cond_0
    new-instance v1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "Expected trailing zero bits for byte-aligned lines"

    invoke-direct {v1, v2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1044
    :cond_1
    :goto_1
    iput v2, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->lastChangingElement:I

    const/4 v11, -0x1

    move/from16 v12, p3

    move v13, v2

    move v14, v10

    .line 1048
    :goto_2
    iget v15, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->w:I

    if-ge v12, v15, :cond_15

    iget v15, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    iget-object v5, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->data:[B

    array-length v5, v5

    sub-int/2addr v5, v10

    if-ge v15, v5, :cond_14

    .line 1051
    invoke-direct {v0, v11, v14, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->getNextChangingElement(IZ[I)V

    .line 1052
    aget v5, v7, v2

    .line 1053
    aget v15, v7, v10

    const/4 v2, 0x7

    .line 1056
    invoke-direct {v0, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v16

    .line 1059
    sget-object v17, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->twoDCodes:[B

    aget-byte v16, v17, v16

    and-int/lit8 v17, v16, 0x78

    const/4 v10, 0x3

    ushr-int/lit8 v3, v17, 0x3

    and-int/lit8 v16, v16, 0x7

    if-nez v3, :cond_3

    if-nez v14, :cond_2

    sub-int v2, v15, v12

    .line 1069
    invoke-direct {v0, v1, v8, v12, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    :cond_2
    rsub-int/lit8 v2, v16, 0x7

    .line 1075
    invoke-direct {v0, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    move/from16 v3, p4

    move v11, v15

    move v12, v11

    :goto_3
    const/4 v2, 0x0

    const/16 v5, 0x8

    :goto_4
    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    const/4 v15, 0x1

    if-ne v3, v15, :cond_5

    rsub-int/lit8 v2, v16, 0x7

    .line 1081
    invoke-direct {v0, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    if-eqz v14, :cond_4

    .line 1088
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeWhiteCodeWord()I

    move-result v2

    add-int/2addr v12, v2

    add-int/lit8 v2, v13, 0x1

    .line 1090
    aput v12, v9, v13

    .line 1092
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeBlackCodeWord()I

    move-result v3

    .line 1093
    invoke-direct {v0, v1, v8, v12, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    add-int/2addr v12, v3

    add-int/lit8 v13, v13, 0x2

    .line 1095
    aput v12, v9, v2

    goto :goto_5

    .line 1099
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeBlackCodeWord()I

    move-result v2

    .line 1100
    invoke-direct {v0, v1, v8, v12, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    add-int/2addr v12, v2

    add-int/lit8 v2, v13, 0x1

    .line 1102
    aput v12, v9, v13

    .line 1104
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeWhiteCodeWord()I

    move-result v3

    add-int/2addr v12, v3

    add-int/lit8 v13, v13, 0x2

    .line 1106
    aput v12, v9, v2

    :goto_5
    move/from16 v3, p4

    move v11, v12

    goto :goto_3

    :cond_5
    const/16 v15, 0x8

    if-gt v3, v15, :cond_7

    add-int/lit8 v3, v3, -0x5

    add-int v11, v5, v3

    add-int/lit8 v2, v13, 0x1

    .line 1114
    aput v11, v9, v13

    if-nez v14, :cond_6

    sub-int v3, v11, v12

    .line 1119
    invoke-direct {v0, v1, v8, v12, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    :cond_6
    xor-int/lit8 v14, v14, 0x1

    rsub-int/lit8 v3, v16, 0x7

    .line 1125
    invoke-direct {v0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    move/from16 v3, p4

    move v13, v2

    move v12, v11

    :goto_6
    move v5, v15

    const/4 v2, 0x0

    goto :goto_4

    :cond_7
    const/16 v5, 0xb

    if-ne v3, v5, :cond_13

    .line 1127
    invoke-direct {v0, v10}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v3

    if-ne v3, v2, :cond_12

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-nez v2, :cond_11

    :goto_8
    const/4 v5, 0x1

    .line 1135
    invoke-direct {v0, v5}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v10

    if-eq v10, v5, :cond_8

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_8
    const/4 v5, 0x5

    if-le v3, v5, :cond_e

    add-int/lit8 v3, v3, -0x6

    if-nez v14, :cond_9

    if-lez v3, :cond_9

    add-int/lit8 v2, v13, 0x1

    .line 1146
    aput v12, v9, v13

    move v13, v2

    :cond_9
    add-int/2addr v12, v3

    const/4 v2, 0x1

    if-lez v3, :cond_a

    const/4 v14, 0x1

    .line 1158
    :cond_a
    invoke-direct {v0, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v10

    if-nez v10, :cond_c

    if-nez v14, :cond_b

    add-int/lit8 v2, v13, 0x1

    .line 1160
    aput v12, v9, v13

    move v13, v2

    :cond_b
    const/4 v2, 0x1

    goto :goto_9

    :cond_c
    if-eqz v14, :cond_d

    add-int/lit8 v2, v13, 0x1

    .line 1165
    aput v12, v9, v13

    move v13, v2

    :cond_d
    const/4 v2, 0x0

    :goto_9
    move v14, v2

    const/4 v2, 0x1

    :cond_e
    if-ne v3, v5, :cond_10

    if-nez v14, :cond_f

    add-int/lit8 v5, v13, 0x1

    .line 1175
    aput v12, v9, v13

    move v13, v5

    :cond_f
    add-int/2addr v12, v3

    const/4 v14, 0x1

    goto :goto_7

    :cond_10
    add-int/2addr v12, v3

    add-int/lit8 v5, v13, 0x1

    .line 1184
    aput v12, v9, v13

    const/4 v10, 0x1

    .line 1185
    invoke-direct {v0, v1, v8, v12, v10}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    add-int/2addr v12, v10

    move v13, v5

    const/4 v14, 0x0

    goto :goto_7

    :cond_11
    move/from16 v3, p4

    goto :goto_6

    .line 1128
    :cond_12
    new-instance v1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "Invalid code encountered while decoding 2D group 4 compressed data."

    invoke-direct {v1, v2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    const/4 v10, 0x1

    .line 1199
    iget v12, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->w:I

    rsub-int/lit8 v2, v16, 0x7

    .line 1200
    invoke-direct {v0, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    move/from16 v3, p4

    move v5, v15

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_14
    const/16 v15, 0x8

    goto :goto_a

    :cond_15
    move v15, v5

    .line 1209
    :goto_a
    array-length v2, v9

    if-ge v13, v2, :cond_16

    add-int/lit8 v2, v13, 0x1

    .line 1210
    aput v12, v9, v13

    move v13, v2

    .line 1213
    :cond_16
    iput v13, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    add-int/2addr v8, v4

    add-int/lit8 v6, v6, 0x1

    move/from16 v3, p4

    move v5, v15

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_17
    return-void
.end method

.method public setRecoverFromImageError(Z)V
    .locals 0

    .line 1580
    iput-boolean p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->recoverFromImageError:Z

    return-void
.end method
