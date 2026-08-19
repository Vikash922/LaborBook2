.class public Lcom/itextpdf/io/font/CFFFontSubset;
.super Lcom/itextpdf/io/font/CFFFont;
.source "CFFFontSubset.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final ENDCHAR_OP:B = 0xet

.field static final RETURN_OP:B = 0xbt

.field static final SubrsEscapeFuncs:[Ljava/lang/String;

.field static final SubrsFunctions:[Ljava/lang/String;


# instance fields
.field FDArrayUsed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field GBias:I

.field GlyphsUsed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field NewCharStringsIndex:[B

.field NewGSubrsIndex:[B

.field NewLSubrsIndex:[[B

.field NewSubrsIndexNonCID:[B

.field NumOfHints:I

.field OutputList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/itextpdf/io/font/CFFFont$Item;",
            ">;"
        }
    .end annotation
.end field

.field glyphsInList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field hGSubrsUsed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field hSubrsUsed:Lcom/itextpdf/io/util/GenericArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itextpdf/io/util/GenericArray<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field hSubrsUsedNonCID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field lGSubrsUsed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field lSubrsUsed:Lcom/itextpdf/io/util/GenericArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itextpdf/io/util/GenericArray<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field lSubrsUsedNonCID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const/16 v0, 0x20

    .line 73
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RESERVED_0"

    aput-object v3, v1, v2

    const-string v4, "hstem"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    const-string v6, "RESERVED_2"

    aput-object v6, v1, v4

    const-string v7, "vstem"

    const/4 v8, 0x3

    aput-object v7, v1, v8

    const-string v7, "vmoveto"

    const/4 v9, 0x4

    aput-object v7, v1, v9

    const-string v7, "rlineto"

    const/4 v10, 0x5

    aput-object v7, v1, v10

    const-string v7, "hlineto"

    const/4 v11, 0x6

    aput-object v7, v1, v11

    const-string v7, "vlineto"

    const/4 v12, 0x7

    aput-object v7, v1, v12

    const-string v7, "rrcurveto"

    const/16 v13, 0x8

    aput-object v7, v1, v13

    const-string v7, "RESERVED_9"

    const/16 v14, 0x9

    aput-object v7, v1, v14

    const-string v7, "callsubr"

    const/16 v15, 0xa

    aput-object v7, v1, v15

    const-string v7, "return"

    const/16 v16, 0xb

    aput-object v7, v1, v16

    const-string v7, "escape"

    const/16 v17, 0xc

    aput-object v7, v1, v17

    const/16 v7, 0xd

    const-string v18, "RESERVED_13"

    aput-object v18, v1, v7

    const-string v19, "endchar"

    const/16 v20, 0xe

    aput-object v19, v1, v20

    const-string v19, "RESERVED_15"

    const/16 v21, 0xf

    aput-object v19, v1, v21

    const/16 v19, 0x10

    const-string v22, "RESERVED_16"

    aput-object v22, v1, v19

    const/16 v23, 0x11

    const-string v24, "RESERVED_17"

    aput-object v24, v1, v23

    const/16 v23, 0x12

    const-string v24, "hstemhm"

    aput-object v24, v1, v23

    const/16 v23, 0x13

    const-string v24, "hintmask"

    aput-object v24, v1, v23

    const/16 v23, 0x14

    const-string v24, "cntrmask"

    aput-object v24, v1, v23

    const/16 v23, 0x15

    const-string v24, "rmoveto"

    aput-object v24, v1, v23

    const/16 v23, 0x16

    const-string v24, "hmoveto"

    aput-object v24, v1, v23

    const/16 v23, 0x17

    const-string v24, "vstemhm"

    aput-object v24, v1, v23

    const/16 v23, 0x18

    const-string v24, "rcurveline"

    aput-object v24, v1, v23

    const/16 v23, 0x19

    const-string v24, "rlinecurve"

    aput-object v24, v1, v23

    const/16 v23, 0x1a

    const-string v24, "vvcurveto"

    aput-object v24, v1, v23

    const/16 v23, 0x1b

    const-string v24, "hhcurveto"

    aput-object v24, v1, v23

    const/16 v23, 0x1c

    const-string v24, "shortint"

    aput-object v24, v1, v23

    const/16 v23, 0x1d

    const-string v24, "callgsubr"

    aput-object v24, v1, v23

    const/16 v23, 0x1e

    const-string v24, "vhcurveto"

    aput-object v24, v1, v23

    const/16 v23, 0x1f

    const-string v24, "hvcurveto"

    aput-object v24, v1, v23

    sput-object v1, Lcom/itextpdf/io/font/CFFFontSubset;->SubrsFunctions:[Ljava/lang/String;

    const/16 v1, 0x27

    .line 83
    new-array v1, v1, [Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "RESERVED_1"

    aput-object v2, v1, v5

    aput-object v6, v1, v4

    const-string v2, "and"

    aput-object v2, v1, v8

    const-string v2, "or"

    aput-object v2, v1, v9

    const-string v2, "not"

    aput-object v2, v1, v10

    const-string v2, "RESERVED_6"

    aput-object v2, v1, v11

    const-string v2, "RESERVED_7"

    aput-object v2, v1, v12

    const-string v2, "RESERVED_8"

    aput-object v2, v1, v13

    const-string v2, "abs"

    aput-object v2, v1, v14

    const-string v2, "add"

    aput-object v2, v1, v15

    const-string v2, "sub"

    aput-object v2, v1, v16

    const-string v2, "div"

    aput-object v2, v1, v17

    aput-object v18, v1, v7

    const-string v2, "neg"

    aput-object v2, v1, v20

    const-string v2, "eq"

    aput-object v2, v1, v21

    aput-object v22, v1, v19

    const/16 v2, 0x11

    const-string v3, "RESERVED_17"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "drop"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "RESERVED_19"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "put"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "get"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "ifelse"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "random"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "mul"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "RESERVED_25"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "sqrt"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "dup"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "exch"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "index"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "roll"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "RESERVED_31"

    aput-object v3, v1, v2

    const-string v2, "RESERVED_32"

    aput-object v2, v1, v0

    const/16 v0, 0x21

    const-string v2, "RESERVED_33"

    aput-object v2, v1, v0

    const/16 v0, 0x22

    const-string v2, "hflex"

    aput-object v2, v1, v0

    const/16 v0, 0x23

    const-string v2, "flex"

    aput-object v2, v1, v0

    const/16 v0, 0x24

    const-string v2, "hflex1"

    aput-object v2, v1, v0

    const/16 v0, 0x25

    const-string v2, "flex1"

    aput-object v2, v1, v0

    const/16 v0, 0x26

    const-string v2, "RESERVED_REST"

    aput-object v2, v1, v0

    sput-object v1, Lcom/itextpdf/io/font/CFFFontSubset;->SubrsEscapeFuncs:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>([B)V
    .locals 2

    .line 172
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/io/font/CFFFontSubset;-><init>([BLjava/util/Set;Z)V

    return-void
.end method

.method public constructor <init>([BLjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/io/font/CFFFontSubset;-><init>([BLjava/util/Set;Z)V

    return-void
.end method

.method constructor <init>([BLjava/util/Set;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 181
    invoke-direct {p0, p1}, Lcom/itextpdf/io/font/CFFFont;-><init>([B)V

    .line 109
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->FDArrayUsed:Ljava/util/Set;

    .line 121
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->hGSubrsUsed:Ljava/util/Set;

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->lGSubrsUsed:Ljava/util/List;

    .line 129
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->hSubrsUsedNonCID:Ljava/util/Set;

    .line 133
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/List;

    const/4 p1, 0x0

    .line 154
    iput p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->GBias:I

    .line 164
    iput p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NumOfHints:I

    .line 182
    iput-object p2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->GlyphsUsed:Ljava/util/Set;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->glyphsInList:Ljava/util/List;

    .line 186
    :goto_0
    iget-object p2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    array-length p2, p2

    if-ge p1, p2, :cond_3

    .line 188
    iget-object p2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object p2, p2, p1

    iget p2, p2, Lcom/itextpdf/io/font/CFFFont$Font;->charstringsOffset:I

    invoke-virtual {p0, p2}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 189
    iget-object p2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object p2, p2, p1

    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard16()C

    move-result v0

    iput v0, p2, Lcom/itextpdf/io/font/CFFFont$Font;->nglyphs:I

    .line 192
    iget p2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->stringIndexOffset:I

    invoke-virtual {p0, p2}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 193
    iget-object p2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object p2, p2, p1

    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard16()C

    move-result v0

    sget-object v1, Lcom/itextpdf/io/font/CFFFontSubset;->standardStrings:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p2, Lcom/itextpdf/io/font/CFFFont$Font;->nstrings:I

    .line 196
    iget-object p2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object p2, p2, p1

    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->charstringsOffset:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->getIndex(I)[I

    move-result-object v0

    iput-object v0, p2, Lcom/itextpdf/io/font/CFFFont$Font;->charstringsOffsets:[I

    if-eqz p3, :cond_0

    .line 199
    iget-object p2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object p2, p2, p1

    iget p2, p2, Lcom/itextpdf/io/font/CFFFont$Font;->nglyphs:I

    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->charsetOffset:I

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->initGlyphIdToCharacterIdArray(III)V

    .line 203
    :cond_0
    iget-object p2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object p2, p2, p1

    iget p2, p2, Lcom/itextpdf/io/font/CFFFont$Font;->fdselectOffset:I

    if-ltz p2, :cond_1

    .line 205
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->readFDSelect(I)V

    .line 207
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildFDArrayUsed(I)V

    .line 209
    :cond_1
    iget-object p2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object p2, p2, p1

    iget-boolean p2, p2, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    if-eqz p2, :cond_2

    .line 211
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->ReadFDArray(I)V

    .line 213
    :cond_2
    iget-object p2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object p2, p2, p1

    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->charsetOffset:I

    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->nglyphs:I

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/io/font/CFFFontSubset;->CountCharset(II)I

    move-result v0

    iput v0, p2, Lcom/itextpdf/io/font/CFFFont$Font;->CharsetLength:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private initGlyphIdToCharacterIdArray(III)V
    .locals 9

    .line 1760
    invoke-virtual {p0, p3}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 1763
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result p3

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    .line 1767
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    new-array v2, p2, [I

    iput-object v2, v1, Lcom/itextpdf/io/font/CFFFont$Font;->gidToCid:[I

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    if-eq p3, v0, :cond_0

    const/4 v2, 0x2

    if-eq p3, v2, :cond_0

    goto :goto_3

    :cond_0
    move v2, v1

    :cond_1
    if-ge v2, p2, :cond_4

    .line 1780
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard16()C

    move-result v3

    if-ne p3, v0, :cond_2

    .line 1781
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard16()C

    move-result v4

    :goto_0
    move v5, v1

    :goto_1
    if-gt v5, v4, :cond_1

    if-ge v2, p2, :cond_1

    .line 1783
    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v6, v6, p1

    iget-object v6, v6, Lcom/itextpdf/io/font/CFFFont$Font;->gidToCid:[I

    add-int/lit8 v7, v2, 0x1

    add-int v8, v3, v5

    aput v8, v6, v2

    add-int/lit8 v5, v5, 0x1

    move v2, v7

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v1, p2, :cond_4

    .line 1772
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard16()C

    move-result p3

    .line 1773
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->gidToCid:[I

    aput p3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method protected AssembleIndex([I[B)[B
    .locals 13

    .line 1067
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-char v0, v0

    .line 1069
    array-length v2, p1

    sub-int/2addr v2, v1

    aget v2, p1, v2

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/16 v5, 0xff

    if-ge v2, v5, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const v6, 0xffff

    if-ge v2, v6, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const v6, 0xffffff

    if-ge v2, v6, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    :goto_0
    add-int/lit8 v6, v0, 0x1

    mul-int/2addr v6, v2

    add-int/2addr v6, v4

    .line 1085
    array-length v7, p2

    add-int/2addr v6, v7

    new-array v6, v6, [B

    shr-int/lit8 v7, v0, 0x8

    and-int/2addr v7, v5

    int-to-byte v7, v7

    const/4 v8, 0x0

    .line 1091
    aput-byte v7, v6, v8

    and-int/2addr v0, v5

    int-to-byte v0, v0

    .line 1092
    aput-byte v0, v6, v1

    .line 1094
    aput-byte v2, v6, v3

    .line 1096
    array-length v0, p1

    move v7, v4

    move v3, v8

    :goto_1
    if-ge v3, v0, :cond_4

    aget v9, p1, v3

    .line 1098
    aget v10, p1, v8

    sub-int/2addr v9, v10

    add-int/2addr v9, v1

    move v10, v2

    :goto_2
    if-lez v10, :cond_3

    add-int/lit8 v11, v7, 0x1

    add-int/lit8 v12, v10, -0x1

    shl-int/2addr v12, v4

    ushr-int v12, v9, v12

    and-int/2addr v12, v5

    int-to-byte v12, v12

    .line 1101
    aput-byte v12, v6, v7

    add-int/lit8 v10, v10, -0x1

    move v7, v11

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1105
    :cond_4
    array-length p1, p2

    :goto_3
    if-ge v8, p1, :cond_5

    aget-byte v0, p2, v8

    add-int/lit8 v1, v7, 0x1

    .line 1106
    aput-byte v0, v6, v7

    add-int/lit8 v8, v8, 0x1

    move v7, v1

    goto :goto_3

    :cond_5
    return-object v6
.end method

.method protected BuildFDArrayUsed(I)V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/itextpdf/io/font/CFFFont$Font;->FDSelect:[I

    .line 335
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->glyphsInList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 337
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 339
    aget v1, p1, v1

    .line 341
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->FDArrayUsed:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected BuildFDSubrsOffsets(II)V
    .locals 3

    .line 517
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->PrivateSubrsOffset:[I

    const/4 v1, -0x1

    aput v1, v0, p2

    .line 519
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    aget v0, v0, p2

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 521
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    aget v1, v1, p2

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateLengths:[I

    aget v2, v2, p2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 522
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getDictItem()V

    .line 524
    const-string v0, "Subrs"

    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->PrivateSubrsOffset:[I

    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    aget v2, v2, p2

    add-int/2addr v1, v2

    aput v1, v0, p2

    goto :goto_0

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->PrivateSubrsOffset:[I

    aget v0, v0, p2

    if-ltz v0, :cond_2

    .line 529
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->PrivateSubrsOffsetsArray:[[I

    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object p1, v1, p1

    iget-object p1, p1, Lcom/itextpdf/io/font/CFFFont$Font;->PrivateSubrsOffset:[I

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->getIndex(I)[I

    move-result-object p1

    aput-object p1, v0, p2

    :cond_2
    return-void
.end method

.method protected BuildGSubrsUsed(I)V
    .locals 13

    .line 593
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->privateSubrs:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->privateSubrs:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->CalcBias(II)I

    move-result v0

    .line 595
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v0

    .line 599
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->lGSubrsUsed:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 601
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->lGSubrsUsed:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 602
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->gsubrOffsets:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_4

    if-ltz v3, :cond_4

    .line 604
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->gsubrOffsets:[I

    aget v6, v4, v3

    .line 605
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->gsubrOffsets:[I

    add-int/lit8 v3, v3, 0x1

    aget v7, v4, v3

    .line 607
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v3, v3, p1

    iget-boolean v3, v3, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    if-eqz v3, :cond_1

    .line 608
    iget v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->GBias:I

    iget-object v10, p0, Lcom/itextpdf/io/font/CFFFontSubset;->hGSubrsUsed:Ljava/util/Set;

    iget-object v11, p0, Lcom/itextpdf/io/font/CFFFontSubset;->lGSubrsUsed:Ljava/util/List;

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/itextpdf/io/font/CFFFontSubset;->ReadASubr(IIIILjava/util/Set;Ljava/util/List;[I)V

    goto/16 :goto_2

    .line 610
    :cond_1
    iget v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->GBias:I

    iget-object v9, p0, Lcom/itextpdf/io/font/CFFFontSubset;->hSubrsUsedNonCID:Ljava/util/Set;

    iget-object v10, p0, Lcom/itextpdf/io/font/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/List;

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v3, v3, p1

    iget-object v11, v3, Lcom/itextpdf/io/font/CFFFont$Font;->SubrsOffsets:[I

    move-object v3, p0

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v0

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    invoke-virtual/range {v3 .. v10}, Lcom/itextpdf/io/font/CFFFontSubset;->ReadASubr(IIIILjava/util/Set;Ljava/util/List;[I)V

    .line 611
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 612
    :goto_1
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 614
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 615
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/itextpdf/io/font/CFFFont$Font;->SubrsOffsets:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    if-ltz v3, :cond_2

    .line 617
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/itextpdf/io/font/CFFFont$Font;->SubrsOffsets:[I

    aget v4, v4, v3

    .line 618
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/itextpdf/io/font/CFFFont$Font;->SubrsOffsets:[I

    add-int/lit8 v3, v3, 0x1

    aget v5, v5, v3

    .line 619
    iget v6, p0, Lcom/itextpdf/io/font/CFFFontSubset;->GBias:I

    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->hSubrsUsedNonCID:Ljava/util/Set;

    iget-object v9, p0, Lcom/itextpdf/io/font/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/List;

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v3, v3, p1

    iget-object v10, v3, Lcom/itextpdf/io/font/CFFFont$Font;->SubrsOffsets:[I

    move-object v3, p0

    move v7, v0

    invoke-virtual/range {v3 .. v10}, Lcom/itextpdf/io/font/CFFFontSubset;->ReadASubr(IIIILjava/util/Set;Ljava/util/List;[I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 622
    :cond_3
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method protected BuildIndexHeader(III)V
    .locals 2

    .line 1307
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    int-to-char p1, p1

    invoke-direct {v1, p1}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1309
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v0, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    int-to-char v1, p2

    invoke-direct {v0, v1}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1326
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance p2, Lcom/itextpdf/io/font/CFFFont$UInt32Item;

    int-to-char p3, p3

    invoke-direct {p2, p3}, Lcom/itextpdf/io/font/CFFFont$UInt32Item;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 1322
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance p2, Lcom/itextpdf/io/font/CFFFont$UInt24Item;

    int-to-char p3, p3

    invoke-direct {p2, p3}, Lcom/itextpdf/io/font/CFFFont$UInt24Item;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 1318
    :cond_2
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance p2, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    int-to-char p3, p3

    invoke-direct {p2, p3}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 1314
    :cond_3
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance p2, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    int-to-char p3, p3

    invoke-direct {p2, p3}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected BuildNewCharString(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/itextpdf/io/font/CFFFont$Font;->charstringsOffsets:[I

    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->GlyphsUsed:Ljava/util/Set;

    const/16 v1, 0xe

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildNewIndex([ILjava/util/Set;B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewCharStringsIndex:[B

    return-void
.end method

.method protected BuildNewFile(I)[B
    .locals 13

    .line 1120
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    .line 1123
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->CopyHeader()V

    const/4 v0, 0x1

    .line 1126
    invoke-virtual {p0, v0, v0, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildIndexHeader(III)V

    .line 1127
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v2, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    int-to-char v3, v3

    invoke-direct {v2, v3}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1128
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v2, Lcom/itextpdf/io/font/CFFFont$StringItem;

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/itextpdf/io/font/CFFFont$StringItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 1131
    invoke-virtual {p0, v0, v1, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildIndexHeader(III)V

    .line 1132
    new-instance v2, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    invoke-direct {v2, v1}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(I)V

    .line 1133
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1134
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;

    invoke-direct {v1}, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;-><init>()V

    .line 1135
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1138
    new-instance v3, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct {v3}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    .line 1139
    new-instance v4, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct {v4}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    .line 1140
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct {v5}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    .line 1141
    new-instance v6, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct {v6}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    .line 1142
    new-instance v7, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct {v7}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    .line 1145
    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v8, v8, p1

    iget-boolean v8, v8, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    const/4 v9, 0x0

    if-nez v8, :cond_0

    .line 1147
    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v10, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;

    iget-object v11, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v11, v11, p1

    iget v11, v11, Lcom/itextpdf/io/font/CFFFont$Font;->nstrings:I

    invoke-direct {v10, v11}, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual {v8, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1148
    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v10, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;

    iget-object v11, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v11, v11, p1

    iget v11, v11, Lcom/itextpdf/io/font/CFFFont$Font;->nstrings:I

    add-int/2addr v11, v0

    invoke-direct {v10, v11}, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual {v8, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1149
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v8, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;

    invoke-direct {v8, v9}, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1150
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v8, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v10, 0xc

    invoke-direct {v8, v10}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1151
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v8, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v11, 0x1e

    invoke-direct {v8, v11}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1153
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v8, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;

    iget-object v11, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v11, v11, p1

    iget v11, v11, Lcom/itextpdf/io/font/CFFFont$Font;->nglyphs:I

    invoke-direct {v8, v11}, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1154
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v8, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    invoke-direct {v8, v10}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1155
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v8, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v10, 0x22

    invoke-direct {v8, v10}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1161
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->topdictOffsets:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 1163
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v0

    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->topdictOffsets:[I

    add-int/lit8 v10, p1, 0x1

    aget v8, v8, v10

    if-ge v0, v8, :cond_3

    .line 1164
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v0

    .line 1165
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getDictItem()V

    .line 1166
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v8

    .line 1168
    const-string v10, "Encoding"

    iget-object v11, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "Private"

    iget-object v11, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    .line 1170
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "FDSelect"

    iget-object v11, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    .line 1171
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "FDArray"

    iget-object v11, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    .line 1172
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "charset"

    iget-object v11, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    .line 1173
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "CharStrings"

    iget-object v11, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    .line 1174
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_0

    .line 1178
    :cond_2
    iget-object v10, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v11, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v12, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    sub-int/2addr v8, v0

    invoke-direct {v11, v12, v0, v8}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 1182
    :cond_3
    invoke-virtual {p0, v5, v6, v3, v4}, Lcom/itextpdf/io/font/CFFFontSubset;->CreateKeys(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    .line 1185
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v8, Lcom/itextpdf/io/font/CFFFont$IndexMarkerItem;

    invoke-direct {v8, v2, v1}, Lcom/itextpdf/io/font/CFFFont$IndexMarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;)V

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1189
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    if-eqz v0, :cond_4

    .line 1190
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    iget v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->stringIndexOffset:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/io/font/CFFFontSubset;->getEntireIndexRange(I)Lcom/itextpdf/io/font/CFFFont$RangeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 1195
    :cond_4
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->CreateNewStringIndex(I)V

    .line 1198
    :goto_1
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    new-instance v2, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->rasFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    iget-object v10, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewGSubrsIndex:[B

    invoke-virtual {v8, v10}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewGSubrsIndex:[B

    array-length v8, v8

    invoke-direct {v1, v2, v9, v8}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1202
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    if-eqz v0, :cond_7

    .line 1207
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v1, v6}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1209
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->fdselectOffset:I

    if-ltz v0, :cond_5

    .line 1210
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v6, v6, p1

    iget v6, v6, Lcom/itextpdf/io/font/CFFFont$Font;->fdselectOffset:I

    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v8, v8, p1

    iget v8, v8, Lcom/itextpdf/io/font/CFFFont$Font;->FDSelectLength:I

    invoke-direct {v1, v2, v6, v8}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    .line 1213
    :cond_5
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->nglyphs:I

    invoke-virtual {p0, v6, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->CreateFDSelect(Lcom/itextpdf/io/font/CFFFont$OffsetItem;I)V

    .line 1217
    :goto_2
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v1, v3}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1218
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/itextpdf/io/font/CFFFont$Font;->charsetOffset:I

    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v6, v6, p1

    iget v6, v6, Lcom/itextpdf/io/font/CFFFont$Font;->CharsetLength:I

    invoke-direct {v1, v2, v3, v6}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1222
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->fdarrayOffset:I

    if-ltz v0, :cond_6

    .line 1224
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v1, v5}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1226
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->Reconstruct(I)V

    goto :goto_3

    .line 1229
    :cond_6
    invoke-virtual {p0, v5, v7, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->CreateFDArray(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$OffsetItem;I)V

    goto :goto_3

    .line 1235
    :cond_7
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->nglyphs:I

    invoke-virtual {p0, v6, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->CreateFDSelect(Lcom/itextpdf/io/font/CFFFont$OffsetItem;I)V

    .line 1237
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->nglyphs:I

    invoke-virtual {p0, v3, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->CreateCharset(Lcom/itextpdf/io/font/CFFFont$OffsetItem;I)V

    .line 1239
    invoke-virtual {p0, v5, v7, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->CreateFDArray(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$OffsetItem;I)V

    .line 1243
    :goto_3
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->privateOffset:I

    if-ltz v0, :cond_8

    .line 1245
    new-instance v0, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;

    invoke-direct {v0}, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;-><init>()V

    .line 1246
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1247
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v2, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v2, v7}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1249
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct {v1}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    .line 1251
    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/io/font/CFFFontSubset;->CreateNonCIDPrivate(ILcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    .line 1253
    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/io/font/CFFFontSubset;->CreateNonCIDSubrs(ILcom/itextpdf/io/font/CFFFont$IndexBaseItem;Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    .line 1257
    :cond_8
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v0, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v0, v4}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1260
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v0, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    new-instance v1, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->rasFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewCharStringsIndex:[B

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewCharStringsIndex:[B

    array-length v2, v2

    invoke-direct {v0, v1, v9, v2}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1264
    filled-new-array {v9}, [I

    move-result-object p1

    .line 1266
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/font/CFFFont$Item;

    .line 1267
    invoke-virtual {v1, p1}, Lcom/itextpdf/io/font/CFFFont$Item;->increment([I)V

    goto :goto_4

    .line 1270
    :cond_9
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/font/CFFFont$Item;

    .line 1271
    invoke-virtual {v1}, Lcom/itextpdf/io/font/CFFFont$Item;->xref()V

    goto :goto_5

    .line 1274
    :cond_a
    aget p1, p1, v9

    .line 1275
    new-array p1, p1, [B

    .line 1278
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/font/CFFFont$Item;

    .line 1279
    invoke-virtual {v1, p1}, Lcom/itextpdf/io/font/CFFFont$Item;->emit([B)V

    goto :goto_6

    :cond_b
    return-object p1
.end method

.method protected BuildNewIndex([ILjava/util/Set;B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 969
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 971
    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_1

    .line 972
    aput v3, v0, v2

    .line 975
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v5, v2, 0x1

    .line 976
    aget v5, p1, v5

    aget v6, p1, v2

    sub-int/2addr v5, v6

    add-int/2addr v3, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v3, v4

    .line 983
    new-array p2, v3, [B

    move v2, v1

    .line 986
    :goto_2
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3

    .line 987
    aget v3, v0, v1

    add-int/lit8 v4, v1, 0x1

    .line 988
    aget v5, v0, v4

    add-int v6, v3, v2

    .line 989
    aput v6, v0, v1

    if-eq v3, v5, :cond_2

    .line 995
    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v1, p1, v1

    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 997
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    sub-int/2addr v5, v3

    invoke-virtual {v1, p2, v6, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([BII)V

    goto :goto_3

    .line 999
    :cond_2
    aput-byte p3, p2, v6

    add-int/lit8 v2, v2, 0x1

    :goto_3
    move v1, v4

    goto :goto_2

    .line 1003
    :cond_3
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    aget p3, v0, p1

    add-int/2addr p3, v2

    aput p3, v0, p1

    .line 1005
    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/io/font/CFFFontSubset;->AssembleIndex([I[B)[B

    move-result-object p1

    return-object p1
.end method

.method protected BuildNewIndexAndCopyAllGSubrs([IB)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1020
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 1022
    :goto_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_0

    .line 1023
    aput v3, v0, v2

    add-int/lit8 v4, v2, 0x1

    .line 1024
    aget v5, p1, v4

    aget v2, p1, v2

    sub-int/2addr v5, v2

    add-int/2addr v3, v5

    move v2, v4

    goto :goto_0

    .line 1027
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    .line 1031
    new-array v2, v3, [B

    move v3, v1

    .line 1034
    :goto_1
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    .line 1035
    aget v4, v0, v1

    add-int/lit8 v5, v1, 0x1

    .line 1036
    aget v6, v0, v5

    add-int v7, v4, v3

    .line 1037
    aput v7, v0, v1

    if-eq v4, v6, :cond_1

    .line 1043
    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v1, p1, v1

    int-to-long v9, v1

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 1045
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    sub-int/2addr v6, v4

    invoke-virtual {v1, v2, v7, v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([BII)V

    goto :goto_2

    .line 1047
    :cond_1
    aput-byte p2, v2, v7

    add-int/lit8 v3, v3, 0x1

    :goto_2
    move v1, v5

    goto :goto_1

    .line 1051
    :cond_2
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    aget p2, v0, p1

    add-int/2addr p2, v3

    aput p2, v0, p1

    .line 1053
    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/io/font/CFFFontSubset;->AssembleIndex([I[B)[B

    move-result-object p1

    return-object p1
.end method

.method protected BuildNewLGSubrs(I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    const/16 v1, 0xb

    if-eqz v0, :cond_1

    .line 455
    new-instance v0, Lcom/itextpdf/io/util/GenericArray;

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    array-length v2, v2

    invoke-direct {v0, v2}, Lcom/itextpdf/io/util/GenericArray;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->hSubrsUsed:Lcom/itextpdf/io/util/GenericArray;

    .line 456
    new-instance v0, Lcom/itextpdf/io/util/GenericArray;

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    array-length v2, v2

    invoke-direct {v0, v2}, Lcom/itextpdf/io/util/GenericArray;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->lSubrsUsed:Lcom/itextpdf/io/util/GenericArray;

    .line 458
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    array-length v0, v0

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewLSubrsIndex:[[B

    .line 460
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/itextpdf/io/font/CFFFont$Font;->PrivateSubrsOffset:[I

    .line 462
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    array-length v2, v2

    new-array v2, v2, [[I

    iput-object v2, v0, Lcom/itextpdf/io/font/CFFFont$Font;->PrivateSubrsOffsetsArray:[[I

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->FDArrayUsed:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    .line 467
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 469
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 470
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->hSubrsUsed:Lcom/itextpdf/io/util/GenericArray;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4, v3, v5}, Lcom/itextpdf/io/util/GenericArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->lSubrsUsed:Lcom/itextpdf/io/util/GenericArray;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v3, v5}, Lcom/itextpdf/io/util/GenericArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-virtual {p0, p1, v3}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildFDSubrsOffsets(II)V

    .line 476
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/itextpdf/io/font/CFFFont$Font;->PrivateSubrsOffset:[I

    aget v4, v4, v3

    if-ltz v4, :cond_0

    .line 479
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/itextpdf/io/font/CFFFont$Font;->PrivateSubrsOffset:[I

    aget v7, v4, v3

    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/itextpdf/io/font/CFFFont$Font;->PrivateSubrsOffsetsArray:[[I

    aget-object v8, v4, v3

    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->hSubrsUsed:Lcom/itextpdf/io/util/GenericArray;

    invoke-virtual {v4, v3}, Lcom/itextpdf/io/util/GenericArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/util/Set;

    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->lSubrsUsed:Lcom/itextpdf/io/util/GenericArray;

    invoke-virtual {v4, v3}, Lcom/itextpdf/io/util/GenericArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/util/List;

    move-object v4, p0

    move v5, p1

    move v6, v3

    invoke-virtual/range {v4 .. v10}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildSubrUsed(III[ILjava/util/Set;Ljava/util/List;)V

    .line 481
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewLSubrsIndex:[[B

    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/itextpdf/io/font/CFFFont$Font;->PrivateSubrsOffsetsArray:[[I

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFontSubset;->hSubrsUsed:Lcom/itextpdf/io/util/GenericArray;

    invoke-virtual {v6, v3}, Lcom/itextpdf/io/util/GenericArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-virtual {p0, v5, v6, v1}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildNewIndex([ILjava/util/Set;B)[B

    move-result-object v5

    aput-object v5, v4, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->privateSubrs:I

    if-ltz v0, :cond_2

    .line 488
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->privateSubrs:I

    invoke-virtual {p0, v2}, Lcom/itextpdf/io/font/CFFFontSubset;->getIndex(I)[I

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/io/font/CFFFont$Font;->SubrsOffsets:[I

    .line 491
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v5, v0, Lcom/itextpdf/io/font/CFFFont$Font;->privateSubrs:I

    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v6, v0, Lcom/itextpdf/io/font/CFFFont$Font;->SubrsOffsets:[I

    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFontSubset;->hSubrsUsedNonCID:Ljava/util/Set;

    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/List;

    const/4 v4, -0x1

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildSubrUsed(III[ILjava/util/Set;Ljava/util/List;)V

    .line 495
    :cond_2
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildGSubrsUsed(I)V

    .line 496
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->privateSubrs:I

    if-ltz v0, :cond_3

    .line 498
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/itextpdf/io/font/CFFFont$Font;->SubrsOffsets:[I

    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->hSubrsUsedNonCID:Ljava/util/Set;

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildNewIndex([ILjava/util/Set;B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewSubrsIndexNonCID:[B

    .line 505
    :cond_3
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->gsubrOffsets:[I

    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildNewIndexAndCopyAllGSubrs([IB)[B

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewGSubrsIndex:[B

    return-void
.end method

.method protected BuildSubrUsed(III[ILjava/util/Set;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III[I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 547
    invoke-virtual {p0, p3, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->CalcBias(II)I

    move-result p3

    .line 550
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->glyphsInList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 551
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 552
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->charstringsOffsets:[I

    aget v2, v2, v0

    .line 553
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/itextpdf/io/font/CFFFont$Font;->charstringsOffsets:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-ltz p2, :cond_1

    .line 557
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->EmptyStack()V

    .line 558
    iput v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NumOfHints:I

    .line 560
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->FDSelect:[I

    aget v0, v1, v0

    if-ne v0, p2, :cond_0

    .line 564
    iget v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->GBias:I

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/io/font/CFFFontSubset;->ReadASubr(IIIILjava/util/Set;Ljava/util/List;[I)V

    goto :goto_0

    .line 568
    :cond_1
    iget v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->GBias:I

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/io/font/CFFFontSubset;->ReadASubr(IIIILjava/util/Set;Ljava/util/List;[I)V

    goto :goto_0

    :cond_2
    move p1, v1

    .line 571
    :goto_1
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 573
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 575
    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_3

    if-ltz p2, :cond_3

    .line 577
    aget v1, p4, p2

    add-int/lit8 p2, p2, 0x1

    .line 578
    aget v2, p4, p2

    .line 579
    iget v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->GBias:I

    move-object v0, p0

    move v4, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/io/font/CFFFontSubset;->ReadASubr(IIIILjava/util/Set;Ljava/util/List;[I)V

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected CalcBias(II)I
    .locals 1

    .line 417
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 418
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard16()C

    move-result p1

    .line 420
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object p2, v0, p2

    iget p2, p2, Lcom/itextpdf/io/font/CFFFont$Font;->CharstringType:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p2, 0x4d8

    if-ge p1, p2, :cond_1

    const/16 p1, 0x6b

    return p1

    :cond_1
    const p2, 0x846c

    if-ge p1, p2, :cond_2

    const/16 p1, 0x46b

    return p1

    :cond_2
    const p1, 0x8000

    return p1
.end method

.method protected CalcHints(IIII[I)I
    .locals 9

    .line 901
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 902
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result p1

    if-ge p1, p2, :cond_c

    .line 904
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->ReadCommand()V

    .line 905
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result p1

    .line 907
    iget v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 908
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->args:[Ljava/lang/Object;

    iget v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 909
    :goto_1
    iget v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    .line 911
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->HandelStack()V

    .line 913
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v4, "hstemhm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x7

    goto :goto_2

    :sswitch_1
    const-string v4, "vstemhm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x6

    goto :goto_2

    :sswitch_2
    const-string v4, "vstem"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v6, 0x5

    goto :goto_2

    :sswitch_3
    const-string v4, "hstem"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v6, 0x4

    goto :goto_2

    :sswitch_4
    const-string v4, "callsubr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v6, 0x3

    goto :goto_2

    :sswitch_5
    const-string v4, "callgsubr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    const/4 v6, 0x2

    goto :goto_2

    :sswitch_6
    const-string v4, "cntrmask"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    move v6, v1

    goto :goto_2

    :sswitch_7
    const-string v4, "hintmask"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_2

    :cond_9
    move v6, v5

    :goto_2
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_0

    .line 937
    :pswitch_0
    iget p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NumOfHints:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    iput p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NumOfHints:I

    goto/16 :goto_0

    :pswitch_1
    if-lez v2, :cond_0

    .line 918
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p3

    .line 919
    aget v3, p5, v0

    add-int/2addr v0, v1

    aget v4, p5, v0

    move-object v2, p0

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/itextpdf/io/font/CFFFontSubset;->CalcHints(IIII[I)I

    .line 920
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    goto/16 :goto_0

    :pswitch_2
    if-lez v2, :cond_0

    .line 927
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p4

    .line 928
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->gsubrOffsets:[I

    aget v4, v2, v0

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->gsubrOffsets:[I

    add-int/2addr v0, v1

    aget v5, v2, v0

    move-object v3, p0

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/itextpdf/io/font/CFFFontSubset;->CalcHints(IIII[I)I

    .line 929
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    goto/16 :goto_0

    .line 942
    :pswitch_3
    iget p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NumOfHints:I

    div-int/lit8 v0, p1, 0x8

    .line 943
    rem-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_a

    if-nez v0, :cond_b

    :cond_a
    add-int/lit8 v0, v0, 0x1

    :cond_b
    :goto_3
    if-ge v5, v0, :cond_0

    .line 947
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 952
    :cond_c
    iget p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NumOfHints:I

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x57ccb60d -> :sswitch_7
        -0x4c92896b -> :sswitch_6
        -0x3de93085 -> :sswitch_5
        -0xa3bda70 -> :sswitch_4
        0x5ef9331 -> :sswitch_3
        0x6b4dc3f -> :sswitch_2
        0x2ceed584 -> :sswitch_1
        0x485797f6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method CalcSubrOffsetSize(II)I
    .locals 5

    .line 1633
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    const/4 v0, 0x0

    .line 1635
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v1

    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    .line 1636
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v1

    .line 1637
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getDictItem()V

    .line 1638
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v2

    .line 1640
    const-string v3, "Subrs"

    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected CopyHeader()V
    .locals 5

    const/4 v0, 0x0

    .line 1289
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 1290
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    .line 1291
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    .line 1292
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v1

    .line 1293
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    .line 1294
    iput v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->nextIndexOffset:I

    .line 1295
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v3, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-direct {v3, v4, v0, v1}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method CountCharset(II)I
    .locals 2

    .line 227
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 229
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 239
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->CountRange(II)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {p0, p2, v1}, Lcom/itextpdf/io/font/CFFFontSubset;->CountRange(II)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    :goto_0
    add-int/2addr p1, v1

    goto :goto_1

    :cond_2
    mul-int/2addr p2, v0

    add-int/lit8 p1, p2, 0x1

    :goto_1
    return p1
.end method

.method CountRange(II)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 260
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard16()C

    if-ne p2, v1, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v3

    goto :goto_1

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard16()C

    move-result v3

    :goto_1
    add-int/2addr v3, v1

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected CreateCharset(Lcom/itextpdf/io/font/CFFFont$OffsetItem;I)V
    .locals 2

    .line 1432
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v1, p1}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1434
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v0, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1436
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v0, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1438
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v0, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    sub-int/2addr p2, v1

    int-to-char p2, p2

    invoke-direct {v0, p2}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method protected CreateFDArray(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$OffsetItem;I)V
    .locals 4

    .line 1451
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v1, p1}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 1453
    invoke-virtual {p0, p1, p1, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildIndexHeader(III)V

    .line 1456
    new-instance v0, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    invoke-direct {v0, p1}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(I)V

    .line 1457
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1458
    new-instance p1, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;

    invoke-direct {p1}, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;-><init>()V

    .line 1460
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1463
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p3

    iget v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->privateLength:I

    .line 1465
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p3

    iget v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->privateOffset:I

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object p3, v3, p3

    iget p3, p3, Lcom/itextpdf/io/font/CFFFont$Font;->privateLength:I

    invoke-virtual {p0, v2, p3}, Lcom/itextpdf/io/font/CFFFontSubset;->CalcSubrOffsetSize(II)I

    move-result p3

    if-eqz p3, :cond_0

    rsub-int/lit8 p3, p3, 0x5

    add-int/2addr v1, p3

    .line 1469
    :cond_0
    iget-object p3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v2, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;

    invoke-direct {v2, v1}, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual {p3, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1470
    iget-object p3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {p3, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1472
    iget-object p2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance p3, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v1, 0x12

    invoke-direct {p3, v1}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {p2, p3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1474
    iget-object p2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance p3, Lcom/itextpdf/io/font/CFFFont$IndexMarkerItem;

    invoke-direct {p3, v0, p1}, Lcom/itextpdf/io/font/CFFFont$IndexMarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;)V

    invoke-virtual {p2, p3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method protected CreateFDSelect(Lcom/itextpdf/io/font/CFFFont$OffsetItem;I)V
    .locals 2

    .line 1409
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v1, p1}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1411
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v0, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1413
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v0, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1416
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v0, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1418
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v0, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    invoke-direct {v0, v1}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1421
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v0, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    int-to-char p2, p2

    invoke-direct {v0, p2}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method protected CreateKeys(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V
    .locals 3

    .line 1343
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1344
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v0, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1345
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v0, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v2, 0x24

    invoke-direct {v0, v2}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1347
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1348
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance p2, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    invoke-direct {p2, v1}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1349
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance p2, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v0, 0x25

    invoke-direct {p2, v0}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1351
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1352
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance p2, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 p3, 0xf

    invoke-direct {p2, p3}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1354
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {p1, p4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1355
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance p2, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 p3, 0x11

    invoke-direct {p2, p3}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method protected CreateNewStringIndex(I)V
    .locals 12

    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object p1, v1, p1

    iget-object p1, p1, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-OneRange"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1366
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x7f

    if-le v0, v2, :cond_0

    .line 1367
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1368
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AdobeIdentity"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1370
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->stringOffsets:[I

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->stringOffsets:[I

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget v2, v2, v3

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->stringOffsets:[I

    aget v3, v3, v1

    sub-int/2addr v2, v3

    .line 1372
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->stringOffsets:[I

    aget v3, v3, v1

    sub-int/2addr v3, v4

    .line 1375
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    const/16 v6, 0xff

    if-gt v5, v6, :cond_1

    move v5, v4

    goto :goto_0

    .line 1376
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    const v6, 0xffff

    if-gt v5, v6, :cond_2

    const/4 v5, 0x2

    goto :goto_0

    .line 1377
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    const v6, 0xffffff

    if-gt v5, v6, :cond_3

    const/4 v5, 0x3

    goto :goto_0

    :cond_3
    const/4 v5, 0x4

    .line 1381
    :goto_0
    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v7, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->stringOffsets:[I

    array-length v8, v8

    add-int/lit8 v8, v8, 0x2

    int-to-char v8, v8

    invoke-direct {v7, v8}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1383
    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v7, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    int-to-char v8, v5

    invoke-direct {v7, v8}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1384
    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFontSubset;->stringOffsets:[I

    array-length v7, v6

    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_4

    aget v9, v6, v8

    .line 1385
    iget-object v10, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v11, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    sub-int/2addr v9, v3

    invoke-direct {v11, v5, v9}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1387
    :cond_4
    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFontSubset;->stringOffsets:[I

    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFontSubset;->stringOffsets:[I

    array-length v7, v7

    sub-int/2addr v7, v4

    aget v4, v6, v7

    sub-int/2addr v4, v3

    .line 1390
    const-string v3, "Adobe"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    .line 1391
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v6, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    invoke-direct {v6, v5, v4}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1392
    const-string v3, "Identity"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    .line 1393
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v6, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    invoke-direct {v6, v5, v4}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1394
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v4, p1

    .line 1395
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v3, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    invoke-direct {v3, v5, v4}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(II)V

    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1397
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v3, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->stringOffsets:[I

    aget v1, v5, v1

    invoke-direct {v3, v4, v1, v2}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1398
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$StringItem;

    invoke-direct {v1, v0}, Lcom/itextpdf/io/font/CFFFont$StringItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method CreateNonCIDPrivate(ILcom/itextpdf/io/font/CFFFont$OffsetItem;)V
    .locals 5

    .line 1685
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->privateOffset:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 1686
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->privateOffset:I

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->privateLength:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 1687
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v0

    .line 1688
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getDictItem()V

    .line 1689
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v1

    .line 1692
    const-string v2, "Subrs"

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1693
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1695
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 1699
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v3, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    sub-int/2addr v1, v0

    invoke-direct {v3, v4, v0, v1}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method CreateNonCIDSubrs(ILcom/itextpdf/io/font/CFFFont$IndexBaseItem;Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V
    .locals 2

    .line 1713
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v0, Lcom/itextpdf/io/font/CFFFont$SubrMarkerItem;

    invoke-direct {v0, p3, p2}, Lcom/itextpdf/io/font/CFFFont$SubrMarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1715
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewSubrsIndexNonCID:[B

    if-eqz p1, :cond_0

    .line 1716
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance p2, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    new-instance p3, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->rasFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewSubrsIndexNonCID:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewSubrsIndexNonCID:[B

    array-length v0, v0

    const/4 v1, 0x0

    invoke-direct {p2, p3, v1, v0}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected EmptyStack()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 785
    :goto_0
    iget v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->args:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 786
    :cond_0
    iput v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    return-void
.end method

.method protected HandelStack()V
    .locals 2

    .line 722
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->StackOpp()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 726
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->PushStack()V

    goto :goto_1

    :cond_0
    mul-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 732
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->PopStack()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 738
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->EmptyStack()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected PopStack()V
    .locals 3

    .line 793
    iget v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    if-lez v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->args:[Ljava/lang/Object;

    iget v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 795
    iget v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    :cond_0
    return-void
.end method

.method public Process()[B
    .locals 2

    .line 405
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getNames()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->Process(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public Process(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    .line 373
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    array-length p1, p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_2

    .line 391
    :try_start_1
    iget-object p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const/4 p1, 0x0

    return-object p1

    .line 378
    :cond_2
    :try_start_2
    iget p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->gsubrIndexOffset:I

    if-ltz p1, :cond_3

    .line 379
    iget p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->gsubrIndexOffset:I

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->CalcBias(II)I

    move-result p1

    iput p1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->GBias:I

    .line 382
    :cond_3
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildNewCharString(I)V

    .line 384
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildNewLGSubrs(I)V

    .line 386
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildNewFile(I)[B

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 391
    :try_start_3
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 388
    :try_start_4
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "I/O exception."

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 391
    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 395
    :catch_3
    throw p1
.end method

.method protected PushStack()V
    .locals 1

    .line 803
    iget v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    return-void
.end method

.method protected ReadASubr(IIIILjava/util/Set;Ljava/util/List;[I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p5

    .line 644
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->EmptyStack()V

    const/4 v8, 0x0

    .line 645
    iput v8, v6, Lcom/itextpdf/io/font/CFFFontSubset;->NumOfHints:I

    .line 647
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 648
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v0

    move v9, p2

    if-ge v0, v9, :cond_f

    .line 650
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->ReadCommand()V

    .line 651
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v10

    .line 653
    iget v0, v6, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 654
    iget-object v0, v6, Lcom/itextpdf/io/font/CFFFontSubset;->args:[Ljava/lang/Object;

    iget v2, v6, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 655
    :goto_1
    iget v2, v6, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    .line 657
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->HandelStack()V

    .line 658
    iget-object v3, v6, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 660
    iget-object v3, v6, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_0

    :goto_2
    move v1, v5

    goto :goto_3

    :sswitch_0
    const-string v1, "hstemhm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x7

    goto :goto_3

    :sswitch_1
    const-string v1, "vstemhm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x6

    goto :goto_3

    :sswitch_2
    const-string v1, "vstem"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x5

    goto :goto_3

    :sswitch_3
    const-string v1, "hstem"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x4

    goto :goto_3

    :sswitch_4
    const-string v1, "callsubr"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x3

    goto :goto_3

    :sswitch_5
    const-string v1, "callgsubr"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x2

    goto :goto_3

    :sswitch_6
    const-string v4, "cntrmask"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_2

    :sswitch_7
    const-string v1, "hintmask"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    move v1, v8

    :cond_9
    :goto_3
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_6

    .line 696
    :pswitch_0
    iget v0, v6, Lcom/itextpdf/io/font/CFFFontSubset;->NumOfHints:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, v6, Lcom/itextpdf/io/font/CFFFontSubset;->NumOfHints:I

    goto/16 :goto_6

    :pswitch_1
    if-lez v2, :cond_e

    .line 666
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v0, v0, p4

    .line 668
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 669
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 670
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v11, p6

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    move-object/from16 v11, p6

    .line 672
    :goto_4
    aget v1, p7, v0

    add-int/lit8 v0, v0, 0x1

    aget v2, p7, v0

    move-object v0, p0

    move/from16 v3, p4

    move v4, p3

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/io/font/CFFFontSubset;->CalcHints(IIII[I)I

    .line 673
    invoke-virtual {p0, v10}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v11, p6

    if-lez v2, :cond_0

    .line 681
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p3

    .line 683
    iget-object v1, v6, Lcom/itextpdf/io/font/CFFFontSubset;->hGSubrsUsed:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 684
    iget-object v1, v6, Lcom/itextpdf/io/font/CFFFontSubset;->hGSubrsUsed:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 685
    iget-object v1, v6, Lcom/itextpdf/io/font/CFFFontSubset;->lGSubrsUsed:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    :cond_b
    iget-object v1, v6, Lcom/itextpdf/io/font/CFFFontSubset;->gsubrOffsets:[I

    aget v1, v1, v0

    iget-object v2, v6, Lcom/itextpdf/io/font/CFFFontSubset;->gsubrOffsets:[I

    add-int/lit8 v0, v0, 0x1

    aget v2, v2, v0

    move-object v0, p0

    move/from16 v3, p4

    move v4, p3

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/io/font/CFFFontSubset;->CalcHints(IIII[I)I

    .line 688
    invoke-virtual {p0, v10}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v11, p6

    .line 702
    iget v0, v6, Lcom/itextpdf/io/font/CFFFontSubset;->NumOfHints:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, v6, Lcom/itextpdf/io/font/CFFFontSubset;->NumOfHints:I

    .line 704
    div-int/lit8 v1, v0, 0x8

    .line 705
    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_c

    if-nez v1, :cond_d

    :cond_c
    add-int/lit8 v1, v1, 0x1

    :cond_d
    move v0, v8

    :goto_5
    if-ge v0, v1, :cond_0

    .line 709
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    move-object/from16 v11, p6

    goto/16 :goto_0

    :cond_f
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x57ccb60d -> :sswitch_7
        -0x4c92896b -> :sswitch_6
        -0x3de93085 -> :sswitch_5
        -0xa3bda70 -> :sswitch_4
        0x5ef9331 -> :sswitch_3
        0x6b4dc3f -> :sswitch_2
        0x2ceed584 -> :sswitch_1
        0x485797f6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected ReadCommand()V
    .locals 8

    const/4 v0, 0x0

    .line 810
    iput-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_8

    .line 817
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v1

    const/16 v2, 0x1c

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 824
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v1

    .line 825
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v2

    .line 826
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->args:[Ljava/lang/Object;

    iget v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    .line 827
    iget v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    goto :goto_0

    :cond_1
    const/16 v4, 0x20

    if-lt v1, v4, :cond_2

    const/16 v4, 0xf6

    if-gt v1, v4, :cond_2

    .line 834
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->args:[Ljava/lang/Object;

    iget v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    add-int/lit16 v1, v1, -0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    .line 835
    iget v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    goto :goto_0

    :cond_2
    const/16 v4, 0xf7

    if-lt v1, v4, :cond_3

    const/16 v4, 0xfa

    if-gt v1, v4, :cond_3

    .line 842
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v2

    .line 843
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->args:[Ljava/lang/Object;

    iget v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    add-int/lit16 v1, v1, -0xf7

    mul-int/lit16 v1, v1, 0x100

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x6c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    .line 844
    iget v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    goto :goto_0

    :cond_3
    const/16 v4, 0xfb

    if-lt v1, v4, :cond_4

    const/16 v4, 0xfe

    if-gt v1, v4, :cond_4

    .line 851
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v2

    .line 852
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->args:[Ljava/lang/Object;

    iget v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    add-int/lit16 v1, v1, -0xfb

    neg-int v1, v1

    mul-int/lit16 v1, v1, 0x100

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x6c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    .line 853
    iget v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    goto/16 :goto_0

    :cond_4
    const/16 v4, 0xff

    if-ne v1, v4, :cond_5

    .line 860
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v1

    .line 861
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v2

    .line 862
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v4

    .line 863
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v5

    .line 864
    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFontSubset;->args:[Ljava/lang/Object;

    iget v7, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    shl-int/lit8 v1, v1, 0x18

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v4, 0x8

    or-int/2addr v1, v2

    or-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    .line 865
    iget v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    goto/16 :goto_0

    :cond_5
    const/16 v4, 0x1f

    if-gt v1, v4, :cond_0

    if-eq v1, v2, :cond_0

    const/16 v0, 0xc

    if-ne v1, v0, :cond_7

    .line 877
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v0

    .line 878
    sget-object v1, Lcom/itextpdf/io/font/CFFFontSubset;->SubrsEscapeFuncs:[Ljava/lang/String;

    array-length v2, v1

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_6

    .line 879
    array-length v0, v1

    sub-int/2addr v0, v3

    .line 880
    :cond_6
    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    goto :goto_1

    .line 882
    :cond_7
    sget-object v0, Lcom/itextpdf/io/font/CFFFontSubset;->SubrsFunctions:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    :goto_1
    move v0, v3

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method protected ReadFDArray(I)V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->fdarrayOffset:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 352
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard16()C

    move-result v1

    iput v1, v0, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayCount:I

    .line 353
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v1

    iput v1, v0, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsize:I

    .line 356
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsize:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 357
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v1, v0, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsize:I

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object p1, v1, p1

    iget p1, p1, Lcom/itextpdf/io/font/CFFFont$Font;->fdarrayOffset:I

    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->getIndex(I)[I

    move-result-object p1

    iput-object p1, v0, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsets:[I

    return-void
.end method

.method Reconstruct(I)V
    .locals 3

    .line 1484
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsets:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    .line 1485
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    array-length v1, v1

    new-array v1, v1, [Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;

    .line 1486
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    array-length v2, v2

    new-array v2, v2, [Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    .line 1488
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->ReconstructFDArray(I[Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    .line 1489
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/itextpdf/io/font/CFFFontSubset;->ReconstructPrivateDict(I[Lcom/itextpdf/io/font/CFFFont$OffsetItem;[Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;[Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    .line 1490
    invoke-virtual {p0, p1, v1, v2}, Lcom/itextpdf/io/font/CFFFontSubset;->ReconstructPrivateSubrs(I[Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;[Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    return-void
.end method

.method ReconstructFDArray(I[Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V
    .locals 10

    .line 1501
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayCount:I

    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsize:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildIndexHeader(III)V

    .line 1504
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsets:[I

    array-length v0, v0

    sub-int/2addr v0, v2

    new-array v0, v0, [Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    const/4 v1, 0x0

    move v3, v1

    .line 1505
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsets:[I

    array-length v4, v4

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_0

    .line 1506
    new-instance v4, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsize:I

    invoke-direct {v4, v5}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(I)V

    aput-object v4, v0, v3

    .line 1507
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1511
    :cond_0
    new-instance v3, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;

    invoke-direct {v3}, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;-><init>()V

    .line 1512
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    move v4, v1

    .line 1518
    :goto_1
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsets:[I

    array-length v5, v5

    sub-int/2addr v5, v2

    if-ge v4, v5, :cond_4

    .line 1522
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsets:[I

    aget v5, v5, v4

    invoke-virtual {p0, v5}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 1523
    :goto_2
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v5

    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v6, v6, p1

    iget-object v6, v6, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsets:[I

    add-int/lit8 v7, v4, 0x1

    aget v6, v6, v7

    if-ge v5, v6, :cond_3

    .line 1524
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v5

    .line 1525
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getDictItem()V

    .line 1526
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v6

    .line 1529
    const-string v7, "Private"

    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1531
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->args:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1533
    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    aget v7, v7, v4

    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v8, v8, p1

    iget-object v8, v8, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateLengths:[I

    aget v8, v8, v4

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/io/font/CFFFontSubset;->CalcSubrOffsetSize(II)I

    move-result v7

    if-eqz v7, :cond_1

    rsub-int/lit8 v7, v7, 0x5

    add-int/2addr v5, v7

    .line 1538
    :cond_1
    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v8, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;

    invoke-direct {v8, v5}, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1539
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct {v5}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    aput-object v5, p2, v4

    .line 1540
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    aget-object v7, p2, v4

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1542
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v7, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v8, 0x12

    invoke-direct {v7, v8}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1544
    invoke-virtual {p0, v6}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    goto :goto_2

    .line 1548
    :cond_2
    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v8, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v9, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    sub-int/2addr v6, v5

    invoke-direct {v8, v9, v5, v6}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    .line 1552
    :cond_3
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v6, Lcom/itextpdf/io/font/CFFFont$IndexMarkerItem;

    aget-object v4, v0, v4

    invoke-direct {v6, v4, v3}, Lcom/itextpdf/io/font/CFFFont$IndexMarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    move v4, v7

    goto/16 :goto_1

    :cond_4
    return-void
.end method

.method ReconstructPrivateDict(I[Lcom/itextpdf/io/font/CFFFont$OffsetItem;[Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;[Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V
    .locals 6

    const/4 v0, 0x0

    .line 1570
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1574
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v2, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    aget-object v3, p2, v0

    invoke-direct {v2, v3}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1575
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;

    invoke-direct {v1}, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;-><init>()V

    aput-object v1, p3, v0

    .line 1576
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1578
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 1579
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateLengths:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 1580
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v1

    .line 1581
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getDictItem()V

    .line 1582
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v2

    .line 1585
    const-string v3, "Subrs"

    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1586
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct {v1}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    aput-object v1, p4, v0

    .line 1587
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    aget-object v2, p4, v0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1589
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v2, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 1593
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v4, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    sub-int/2addr v2, v1

    invoke-direct {v4, v5, v1, v2}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method ReconstructPrivateSubrs(I[Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;[Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 1610
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateLengths:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1613
    aget-object v2, p3, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->PrivateSubrsOffset:[I

    aget v2, v2, v1

    if-ltz v2, :cond_0

    .line 1614
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v3, Lcom/itextpdf/io/font/CFFFont$SubrMarkerItem;

    aget-object v4, p3, v1

    aget-object v5, p2, v1

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/io/font/CFFFont$SubrMarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1615
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewLSubrsIndex:[[B

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 1616
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v3, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    new-instance v4, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->rasFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewLSubrsIndex:[[B

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewLSubrsIndex:[[B

    aget-object v5, v5, v1

    array-length v5, v5

    invoke-direct {v3, v4, v0, v5}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected StackOpp()I
    .locals 6

    .line 747
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move v0, v5

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "index"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "sqrt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "roll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "exch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "drop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "sub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "put"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "not"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "neg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "mul"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "dup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "div"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "and"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "add"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "abs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_10
    const-string v1, "or"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_11
    const-string v1, "eq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_12
    const-string v1, "callsubr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_13
    const-string v1, "return"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_14
    const-string v1, "random"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    move v0, v2

    goto :goto_1

    :sswitch_15
    const-string v1, "callgsubr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    move v0, v3

    goto :goto_1

    :sswitch_16
    const-string v1, "ifelse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    move v0, v4

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    const/4 v0, -0x2

    return v0

    :pswitch_1
    return v4

    :pswitch_2
    return v3

    :pswitch_3
    return v5

    :pswitch_4
    const/4 v0, -0x3

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x47063c2a -> :sswitch_16
        -0x3de93085 -> :sswitch_15
        -0x37ed1b3d -> :sswitch_14
        -0x37b1c2d0 -> :sswitch_13
        -0xa3bda70 -> :sswitch_12
        0xcac -> :sswitch_11
        0xde3 -> :sswitch_10
        0x17872 -> :sswitch_f
        0x178a1 -> :sswitch_e
        0x179d7 -> :sswitch_d
        0x18491 -> :sswitch_c
        0x185ff -> :sswitch_b
        0x18f56 -> :sswitch_a
        0x1a7c4 -> :sswitch_9
        0x1a990 -> :sswitch_8
        0x1aad3 -> :sswitch_7
        0x1b30f -> :sswitch_6
        0x1be40 -> :sswitch_5
        0x2f2eef -> :sswitch_4
        0x2fb858 -> :sswitch_3
        0x35807d -> :sswitch_2
        0x35fd20 -> :sswitch_1
        0x5fb28d2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected countEntireIndexRange(I)I
    .locals 3

    .line 1658
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 1660
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard16()C

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 1666
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v1

    add-int/lit8 p1, p1, 0x3

    mul-int v2, v0, v1

    add-int/2addr p1, v2

    .line 1668
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 1670
    invoke-virtual {p0, v1}, Lcom/itextpdf/io/font/CFFFontSubset;->getOffset(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p1

    return v0
.end method

.method getCidForGlyphId(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1728
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->getCidForGlyphId(II)I

    move-result p1

    return p1
.end method

.method getCidForGlyphId(II)I
    .locals 2

    .line 1740
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->gidToCid:[I

    if-nez v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 v0, p2, -0x1

    if-ltz v0, :cond_1

    .line 1746
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->gidToCid:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object p2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object p1, p2, p1

    iget-object p1, p1, Lcom/itextpdf/io/font/CFFFont$Font;->gidToCid:[I

    aget p2, p1, v0

    :cond_1
    return p2
.end method

.method protected readFDSelect(I)V
    .locals 10

    .line 278
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->nglyphs:I

    .line 279
    new-array v1, v0, [I

    .line 281
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->fdselectOffset:I

    invoke-virtual {p0, v2}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 283
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v3

    iput v3, v2, Lcom/itextpdf/io/font/CFFFont$Font;->FDSelectFormat:I

    .line 285
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->FDSelectFormat:I

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    goto :goto_3

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard16()C

    move-result v2

    .line 302
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard16()C

    move-result v4

    move v5, v3

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_2

    .line 305
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v7

    .line 307
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard16()C

    move-result v8

    sub-int v4, v8, v4

    move v9, v3

    :goto_1
    if-ge v9, v4, :cond_1

    .line 311
    aput v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move v4, v8

    goto :goto_0

    .line 318
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v3, v3, p1

    mul-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x5

    iput v2, v3, Lcom/itextpdf/io/font/CFFFont$Font;->FDSelectLength:I

    goto :goto_3

    :cond_3
    :goto_2
    if-ge v3, v0, :cond_4

    .line 290
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v2

    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 294
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->nglyphs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/itextpdf/io/font/CFFFont$Font;->FDSelectLength:I

    .line 324
    :goto_3
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object p1, v0, p1

    iput-object v1, p1, Lcom/itextpdf/io/font/CFFFont$Font;->FDSelect:[I

    return-void
.end method
