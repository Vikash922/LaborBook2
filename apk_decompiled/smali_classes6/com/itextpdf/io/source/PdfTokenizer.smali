.class public Lcom/itextpdf/io/source/PdfTokenizer;
.super Ljava/lang/Object;
.source "PdfTokenizer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/source/PdfTokenizer$TokenType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final F:[B

.field public static final False:[B

.field public static final N:[B

.field public static final Null:[B

.field public static final Obj:[B

.field public static final R:[B

.field public static final Startxref:[B

.field public static final Stream:[B

.field public static final Trailer:[B

.field public static final True:[B

.field public static final Xref:[B

.field public static final delims:[Z


# instance fields
.field private closeStream:Z

.field private final file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

.field protected generation:I

.field protected hexString:Z

.field protected outBuf:Lcom/itextpdf/io/source/ByteBuffer;

.field protected reference:I

.field protected type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x101

    .line 74
    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->delims:[Z

    .line 103
    const-string v0, "obj"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->Obj:[B

    .line 104
    const-string v0, "R"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->R:[B

    .line 105
    const-string v0, "xref"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->Xref:[B

    .line 106
    const-string v0, "startxref"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->Startxref:[B

    .line 107
    const-string v0, "stream"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->Stream:[B

    .line 108
    const-string v0, "trailer"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->Trailer:[B

    .line 109
    const-string v0, "n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->N:[B

    .line 110
    const-string v0, "f"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->F:[B

    .line 111
    const-string v0, "null"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->Null:[B

    .line 112
    const-string v0, "true"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->True:[B

    .line 113
    const-string v0, "false"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->False:[B

    return-void

    :array_0
    .array-data 1
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
        0x1t
        0x1t
        0x0t
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
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
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
        0x1t
        0x0t
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
        0x1t
        0x0t
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
.end method

.method public constructor <init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->closeStream:Z

    .line 135
    iput-object p1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 136
    new-instance p1, Lcom/itextpdf/io/source/ByteBuffer;

    invoke-direct {p1}, Lcom/itextpdf/io/source/ByteBuffer;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    return-void
.end method

.method public static checkObjectStart(Lcom/itextpdf/io/source/PdfTokenizer;)[I
    .locals 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 803
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 804
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 806
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->getIntValue()I

    move-result v0

    .line 807
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v1

    sget-object v3, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 809
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->getIntValue()I

    move-result v1

    .line 810
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result v3

    if-nez v3, :cond_2

    return-object v2

    .line 812
    :cond_2
    sget-object v3, Lcom/itextpdf/io/source/PdfTokenizer;->Obj:[B

    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->getByteContent()[B

    move-result-object p0

    invoke-static {v3, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_3

    return-object v2

    .line 814
    :cond_3
    filled-new-array {v0, v1}, [I

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_4
    :goto_0
    return-object v2
.end method

.method public static checkTrailer(Lcom/itextpdf/io/source/ByteBuffer;)Z
    .locals 4

    .line 698
    sget-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->Trailer:[B

    array-length v0, v0

    invoke-virtual {p0}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 700
    :goto_0
    sget-object v1, Lcom/itextpdf/io/source/PdfTokenizer;->Trailer:[B

    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 701
    aget-byte v1, v1, v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/ByteBuffer;->get(I)B

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method protected static decodeStringContent([BIIZ)[B
    .locals 8

    .line 544
    new-instance v0, Lcom/itextpdf/io/source/ByteBuffer;

    sub-int v1, p2, p1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    if-eqz p3, :cond_1

    :goto_0
    if-gt p1, p2, :cond_15

    add-int/lit8 p3, p1, 0x1

    .line 549
    aget-byte v1, p0, p1

    invoke-static {v1}, Lcom/itextpdf/io/source/ByteBuffer;->getHex(I)I

    move-result v1

    if-le p3, p2, :cond_0

    shl-int/lit8 p0, v1, 0x4

    .line 551
    invoke-virtual {v0, p0}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    goto/16 :goto_a

    :cond_0
    add-int/lit8 p1, p1, 0x2

    .line 554
    aget-byte p3, p0, p3

    .line 555
    invoke-static {p3}, Lcom/itextpdf/io/source/ByteBuffer;->getHex(I)I

    move-result p3

    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p3

    .line 556
    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    goto :goto_0

    :cond_1
    :goto_1
    if-gt p1, p2, :cond_15

    add-int/lit8 p3, p1, 0x1

    .line 562
    aget-byte v1, p0, p1

    const/16 v3, 0x5c

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-ne v1, v3, :cond_10

    add-int/lit8 v1, p1, 0x2

    .line 565
    aget-byte p3, p0, p3

    if-eq p3, v5, :cond_f

    if-eq p3, v4, :cond_d

    const/4 v6, 0x0

    if-eq p3, v3, :cond_c

    const/16 v3, 0x62

    if-eq p3, v3, :cond_b

    const/16 v3, 0x66

    if-eq p3, v3, :cond_a

    const/16 v3, 0x6e

    if-eq p3, v3, :cond_9

    const/16 v3, 0x72

    if-eq p3, v3, :cond_8

    const/16 v3, 0x74

    if-eq p3, v3, :cond_7

    const/16 v3, 0x28

    if-eq p3, v3, :cond_c

    const/16 v3, 0x29

    if-eq p3, v3, :cond_c

    const/16 v3, 0x30

    if-lt p3, v3, :cond_c

    const/16 v4, 0x37

    if-le p3, v4, :cond_2

    goto :goto_5

    :cond_2
    add-int/lit8 p3, p3, -0x30

    add-int/lit8 v5, p1, 0x3

    .line 600
    aget-byte v1, p0, v1

    if-lt v1, v3, :cond_6

    if-le v1, v4, :cond_3

    goto :goto_3

    :cond_3
    shl-int/lit8 p3, p3, 0x3

    add-int/2addr p3, v1

    sub-int/2addr p3, v3

    add-int/lit8 v1, p1, 0x4

    .line 607
    aget-byte v5, p0, v5

    if-lt v5, v3, :cond_5

    if-le v5, v4, :cond_4

    goto :goto_2

    :cond_4
    shl-int/lit8 p1, p3, 0x3

    add-int/2addr p1, v5

    sub-int/2addr p1, v3

    and-int/lit16 p1, p1, 0xff

    goto :goto_4

    :cond_5
    :goto_2
    add-int/lit8 p1, p1, 0x3

    goto :goto_6

    :cond_6
    :goto_3
    add-int/lit8 p1, p1, 0x2

    goto :goto_6

    :cond_7
    const/16 p1, 0x9

    goto :goto_4

    :cond_8
    move p1, v1

    move v1, v4

    goto :goto_7

    :cond_9
    move p1, v1

    move v1, v5

    goto :goto_7

    :cond_a
    const/16 p1, 0xc

    goto :goto_4

    :cond_b
    const/16 p1, 0x8

    :goto_4
    move v7, v1

    move v1, p1

    move p1, v7

    goto :goto_7

    :cond_c
    :goto_5
    move p1, v1

    goto :goto_6

    :cond_d
    if-gt v1, p2, :cond_f

    add-int/lit8 v3, p1, 0x3

    .line 588
    aget-byte v1, p0, v1

    if-eq v1, v5, :cond_e

    add-int/lit8 p1, p1, 0x2

    move v1, p3

    move v6, v2

    goto :goto_7

    :cond_e
    move v1, p3

    move v6, v2

    move p1, v3

    goto :goto_7

    :cond_f
    move p1, v1

    move v6, v2

    :goto_6
    move v1, p3

    :goto_7
    if-eqz v6, :cond_14

    goto/16 :goto_1

    :cond_10
    if-ne v1, v4, :cond_13

    if-gt p3, p2, :cond_12

    add-int/lit8 v1, p1, 0x2

    .line 623
    aget-byte p3, p0, p3

    if-eq p3, v5, :cond_11

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_11
    move p1, v1

    goto :goto_8

    :cond_12
    move p1, p3

    :goto_8
    move v1, v5

    goto :goto_9

    :cond_13
    move p1, p3

    .line 627
    :cond_14
    :goto_9
    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    goto/16 :goto_1

    .line 630
    :cond_15
    :goto_a
    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeStringContent([BZ)[B
    .locals 2

    .line 645
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/itextpdf/io/source/PdfTokenizer;->decodeStringContent([BIIZ)[B

    move-result-object p0

    return-object p0
.end method

.method protected static isDelimiter(I)Z
    .locals 1

    const/16 v0, 0x28

    if-eq p0, v0, :cond_1

    const/16 v0, 0x29

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x25

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected static isDelimiterWhitespace(I)Z
    .locals 1

    .line 676
    sget-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->delims:[Z

    add-int/lit8 p0, p0, 0x1

    aget-boolean p0, v0, p0

    return p0
.end method

.method public static isWhitespace(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 657
    invoke-static {p0, v0}, Lcom/itextpdf/io/source/PdfTokenizer;->isWhitespace(IZ)Z

    move-result p0

    return p0
.end method

.method protected static isWhitespace(IZ)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_2

    :cond_0
    const/16 p1, 0x9

    if-eq p0, p1, :cond_2

    const/16 p1, 0xa

    if-eq p0, p1, :cond_2

    const/16 p1, 0xc

    if-eq p0, p1, :cond_2

    const/16 p1, 0xd

    if-eq p0, p1, :cond_2

    const/16 p1, 0x20

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public backOnePosition(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->pushBack(B)V

    :cond_0
    return-void
.end method

.method public checkFdfHeader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    const/16 v0, 0x400

    .line 242
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/PdfTokenizer;->readString(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    const-string v1, "%FDF-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "FDF startxref not found."

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public checkPdfHeader()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    const/16 v0, 0x400

    .line 233
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/PdfTokenizer;->readString(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    const-string v1, "%PDF-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x8

    .line 237
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 236
    :cond_0
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "PDF header not found."

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-boolean v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->closeStream:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V

    :cond_0
    return-void
.end method

.method public getByteContent()[B
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getDecodedStringContent()[B
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->getInternalBuffer()[B

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->isHexString()Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/itextpdf/io/source/PdfTokenizer;->decodeStringContent([BIIZ)[B

    move-result-object v0

    return-object v0
.end method

.method public getGenNr()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->generation:I

    return v0
.end method

.method public getHeaderOffset()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 220
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/PdfTokenizer;->readString(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    const-string v1, "%PDF-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 223
    const-string v1, "%FDF-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "PDF header not found."

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return v1
.end method

.method public getIntValue()I
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLongValue()J
    .locals 2

    .line 507
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getObjNr()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->reference:I

    return v0
.end method

.method public getPosition()J
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSafeFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->createView()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v0

    return-object v0
.end method

.method public getStartxref()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v0

    const/16 v2, 0x400

    int-to-long v3, v2

    sub-long/2addr v0, v3

    const-wide/16 v5, 0x1

    cmp-long v7, v0, v5

    if-gez v7, :cond_0

    move-wide v0, v5

    :cond_0
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_2

    .line 254
    iget-object v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5, v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 255
    invoke-virtual {p0, v2}, Lcom/itextpdf/io/source/PdfTokenizer;->readString(I)Ljava/lang/String;

    move-result-object v5

    .line 256
    const-string v6, "startxref"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    int-to-long v2, v5

    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    sub-long/2addr v0, v3

    const-wide/16 v5, 0x9

    add-long/2addr v0, v5

    goto :goto_0

    .line 261
    :cond_2
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "PDF startxref not found."

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 4

    .line 185
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/ByteBuffer;->getInternalBuffer()[B

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    return-object v0
.end method

.method public isCloseStream()Z
    .locals 1

    .line 519
    iget-boolean v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->closeStream:Z

    return v0
.end method

.method public isHexString()Z
    .locals 1

    .line 515
    iget-boolean v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->hexString:Z

    return v0
.end method

.method public length()J
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public nextToken()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->reset()Lcom/itextpdf/io/source/ByteBuffer;

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 343
    invoke-static {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 345
    sget-object v0, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndOfFile:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    return v2

    :cond_2
    const/16 v3, 0x25

    const/4 v4, 0x1

    if-eq v0, v3, :cond_22

    .line 348
    const-string v3, "Error reading string."

    const/16 v5, 0x28

    if-eq v0, v5, :cond_1d

    const/16 v5, 0x2f

    if-eq v0, v5, :cond_1b

    const/16 v5, 0x3c

    const/16 v6, 0x3e

    if-eq v0, v5, :cond_12

    if-eq v0, v6, :cond_10

    const/16 v3, 0x5b

    if-eq v0, v3, :cond_f

    const/16 v3, 0x5d

    if-eq v0, v3, :cond_e

    const/16 v3, 0x2e

    const/16 v5, 0x39

    const/16 v6, 0x30

    const/16 v7, 0x2d

    if-eq v0, v7, :cond_5

    const/16 v8, 0x2b

    if-eq v0, v8, :cond_5

    if-eq v0, v3, :cond_5

    if-lt v0, v6, :cond_3

    if-gt v0, v5, :cond_3

    goto :goto_0

    .line 492
    :cond_3
    sget-object v2, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Other:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v2, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 494
    :cond_4
    iget-object v2, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v2, v0}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 495
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 496
    sget-object v2, Lcom/itextpdf/io/source/PdfTokenizer;->delims:[Z

    add-int/lit8 v3, v0, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_4

    goto/16 :goto_4

    .line 444
    :cond_5
    :goto_0
    sget-object v8, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v8, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v0, v7, :cond_7

    move v0, v2

    :cond_6
    add-int/2addr v0, v4

    .line 451
    iget-object v8, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v8

    if-eq v8, v7, :cond_6

    .line 453
    iget-object v9, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v9, v7}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    goto :goto_1

    .line 455
    :cond_7
    iget-object v8, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v8, v0}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 458
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v8

    move v0, v2

    :goto_1
    if-lt v8, v6, :cond_8

    if-gt v8, v5, :cond_8

    .line 461
    iget-object v9, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v9, v8}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 462
    iget-object v8, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v8

    goto :goto_1

    :cond_8
    if-ne v8, v3, :cond_c

    .line 467
    iget-object v3, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v3, v8}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 468
    iget-object v3, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v3

    if-ne v3, v7, :cond_9

    .line 475
    iget-object v2, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v3

    move v2, v4

    :cond_9
    :goto_2
    if-lt v3, v6, :cond_b

    if-gt v3, v5, :cond_b

    if-nez v2, :cond_a

    .line 479
    iget-object v7, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v7, v3}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 481
    :cond_a
    iget-object v3, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v3

    goto :goto_2

    :cond_b
    move v2, v4

    goto :goto_3

    :cond_c
    move v3, v8

    :goto_3
    if-le v0, v4, :cond_d

    if-nez v2, :cond_d

    .line 488
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->reset()Lcom/itextpdf/io/source/ByteBuffer;

    .line 489
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0, v6}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    :cond_d
    move v0, v3

    :goto_4
    if-eq v0, v1, :cond_24

    .line 499
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/PdfTokenizer;->backOnePosition(I)V

    goto/16 :goto_c

    .line 354
    :cond_e
    sget-object v0, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndArray:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    goto/16 :goto_c

    .line 350
    :cond_f
    sget-object v0, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->StartArray:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    goto/16 :goto_c

    .line 369
    :cond_10
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    if-eq v0, v6, :cond_11

    .line 371
    const-string v0, "\'>\' not expected."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    :cond_11
    sget-object v0, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndDic:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    goto/16 :goto_c

    .line 376
    :cond_12
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    if-ne v0, v5, :cond_13

    .line 378
    sget-object v0, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->StartDic:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    goto/16 :goto_c

    .line 381
    :cond_13
    sget-object v1, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->String:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 382
    iput-boolean v4, p0, Lcom/itextpdf/io/source/PdfTokenizer;->hexString:Z

    move v1, v2

    .line 385
    :goto_5
    invoke-static {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->isWhitespace(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 386
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    goto :goto_5

    :cond_14
    if-ne v0, v6, :cond_15

    goto :goto_7

    .line 389
    :cond_15
    iget-object v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v5, v0}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 390
    invoke-static {v0}, Lcom/itextpdf/io/source/ByteBuffer;->getHex(I)I

    move-result v0

    if-gez v0, :cond_16

    goto :goto_7

    .line 393
    :cond_16
    iget-object v1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 394
    :goto_6
    invoke-static {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->isWhitespace(I)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 395
    iget-object v1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v1

    goto :goto_6

    :cond_17
    if-ne v1, v6, :cond_18

    goto :goto_7

    .line 399
    :cond_18
    iget-object v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v5, v1}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 400
    invoke-static {v1}, Lcom/itextpdf/io/source/ByteBuffer;->getHex(I)I

    move-result v1

    if-gez v1, :cond_1a

    :goto_7
    if-ltz v0, :cond_19

    if-gez v1, :cond_24

    .line 406
    :cond_19
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v0}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 403
    :cond_1a
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    goto :goto_5

    .line 358
    :cond_1b
    sget-object v0, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Name:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 360
    :goto_8
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 361
    sget-object v1, Lcom/itextpdf/io/source/PdfTokenizer;->delims:[Z

    add-int/lit8 v2, v0, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1c

    .line 365
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/PdfTokenizer;->backOnePosition(I)V

    goto :goto_c

    .line 363
    :cond_1c
    iget-object v1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v1, v0}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    goto :goto_8

    .line 417
    :cond_1d
    sget-object v0, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->String:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 418
    iput-boolean v2, p0, Lcom/itextpdf/io/source/PdfTokenizer;->hexString:Z

    move v0, v2

    .line 421
    :goto_9
    iget-object v6, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v6

    if-ne v6, v1, :cond_1e

    goto :goto_a

    :cond_1e
    if-ne v6, v5, :cond_1f

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1f
    const/16 v7, 0x29

    if-ne v6, v7, :cond_20

    add-int/lit8 v0, v0, -0x1

    if-ne v0, v1, :cond_21

    goto :goto_a

    :cond_20
    const/16 v7, 0x5c

    if-ne v6, v7, :cond_21

    .line 431
    iget-object v6, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v6, v7}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 432
    iget-object v6, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v6

    if-gez v6, :cond_21

    :goto_a
    if-ne v6, v1, :cond_24

    .line 439
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v0}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    .line 436
    :cond_21
    :goto_b
    iget-object v7, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v7, v6}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    goto :goto_9

    .line 410
    :cond_22
    sget-object v0, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Comment:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 412
    :cond_23
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    if-eq v0, v1, :cond_24

    const/16 v2, 0xd

    if-eq v0, v2, :cond_24

    const/16 v2, 0xa

    if-ne v0, v2, :cond_23

    :cond_24
    :goto_c
    return v4
.end method

.method public nextValidToken()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v5, v0

    move-wide v3, v2

    move-object v2, v1

    .line 269
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_8

    .line 270
    iget-object v6, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    sget-object v8, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Comment:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v6, v8, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_6

    if-eq v5, v7, :cond_4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    goto :goto_0

    .line 293
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    sget-object v6, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Other:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v5, v6, :cond_3

    .line 294
    sget-object v5, Lcom/itextpdf/io/source/PdfTokenizer;->R:[B

    invoke-virtual {p0, v5}, Lcom/itextpdf/io/source/PdfTokenizer;->tokenValueEqualsTo([B)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 296
    sget-object v3, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Ref:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v3, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 298
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/itextpdf/io/source/PdfTokenizer;->reference:I

    .line 299
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/itextpdf/io/source/PdfTokenizer;->generation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 303
    :catch_0
    const-class v3, Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 304
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Invalid indirect reference {0} {1} R"

    invoke-static {v2, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 306
    iput v1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->reference:I

    .line 307
    iput v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->generation:I

    :goto_1
    return-void

    .line 310
    :cond_2
    sget-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->Obj:[B

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/PdfTokenizer;->tokenValueEqualsTo([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 312
    sget-object v0, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Obj:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 313
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->reference:I

    .line 314
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->generation:I

    return-void

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 319
    sget-object v0, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 320
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->reset()Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;->append([B)Lcom/itextpdf/io/source/ByteBuffer;

    return-void

    .line 282
    :cond_4
    iget-object v2, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    sget-object v6, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v2, v6, :cond_5

    .line 283
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 284
    sget-object v0, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 285
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->reset()Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;->append([B)Lcom/itextpdf/io/source/ByteBuffer;

    return-void

    .line 288
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->getByteContent()[B

    move-result-object v2

    goto :goto_2

    .line 274
    :cond_6
    iget-object v1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    sget-object v3, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v1, v3, :cond_7

    return-void

    .line 276
    :cond_7
    iget-object v1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v3

    .line 277
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->getByteContent()[B

    move-result-object v1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_8
    if-ne v5, v7, :cond_9

    .line 329
    sget-object v0, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 330
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->reset()Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;->append([B)Lcom/itextpdf/io/source/ByteBuffer;

    :cond_9
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    return-void
.end method

.method public readLineSegment(Lcom/itextpdf/io/source/ByteBuffer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 719
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/io/source/PdfTokenizer;->readLineSegment(Lcom/itextpdf/io/source/ByteBuffer;Z)Z

    move-result p1

    return p1
.end method

.method public readLineSegment(Lcom/itextpdf/io/source/ByteBuffer;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 739
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result v0

    invoke-static {v0, p2}, Lcom/itextpdf/io/source/PdfTokenizer;->isWhitespace(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    move v1, p2

    move v2, v1

    :goto_1
    const/16 v3, 0xd

    const/4 v4, -0x1

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-nez v1, :cond_7

    if-eq v0, v4, :cond_4

    const/16 v4, 0x20

    if-eq v0, v4, :cond_2

    const/16 v4, 0x9

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_4

    const/16 v4, 0xc

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    int-to-byte v2, v0

    .line 765
    invoke-virtual {p1, v2}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    move v2, p2

    goto :goto_3

    .line 750
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->getPosition()J

    move-result-wide v3

    .line 751
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result v1

    if-eq v1, v5, :cond_4

    .line 752
    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    int-to-byte v2, v0

    .line 761
    invoke-virtual {p1, v2}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    move v2, v6

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v6

    :goto_3
    if-nez v1, :cond_6

    .line 769
    invoke-virtual {p1}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/itextpdf/io/source/ByteBuffer;->capacity()I

    move-result v4

    if-ne v3, v4, :cond_5

    goto :goto_4

    .line 772
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result v0

    goto :goto_1

    :cond_6
    :goto_4
    move v1, v6

    goto :goto_1

    .line 775
    :cond_7
    invoke-virtual {p1}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/io/source/ByteBuffer;->capacity()I

    move-result v2

    if-ne v1, v2, :cond_a

    move v1, p2

    :goto_5
    if-nez v1, :cond_a

    .line 778
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result v0

    if-eq v0, v4, :cond_9

    if-eq v0, v5, :cond_9

    if-eq v0, v3, :cond_8

    goto :goto_5

    .line 785
    :cond_8
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->getPosition()J

    move-result-wide v1

    .line 786
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result v7

    if-eq v7, v5, :cond_9

    .line 787
    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    :cond_9
    move v1, v6

    goto :goto_5

    :cond_a
    if-ne v0, v4, :cond_b

    .line 793
    invoke-virtual {p1}, Lcom/itextpdf/io/source/ByteBuffer;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    :cond_b
    move p2, v6

    :cond_c
    return p2
.end method

.method public readString(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-lez p1, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    int-to-char p1, p1

    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v1

    goto :goto_0

    .line 173
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public seek(J)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    return-void
.end method

.method public setCloseStream(Z)V
    .locals 0

    .line 523
    iput-boolean p1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->closeStream:Z

    return-void
.end method

.method public varargs throwError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 686
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    new-instance v1, Lcom/itextpdf/io/exceptions/IOException;

    invoke-direct {v1, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object p1

    const-string p2, "Error at file pointer {0}."

    invoke-direct {v0, p2, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 687
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object p1

    throw p1
.end method

.method public tokenValueEqualsTo([B)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 196
    :cond_0
    array-length v1, p1

    .line 197
    iget-object v2, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v2

    if-eq v2, v1, :cond_1

    return v0

    :cond_1
    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 201
    aget-byte v3, p1, v2

    iget-object v4, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/ByteBuffer;->getInternalBuffer()[B

    move-result-object v4

    aget-byte v4, v4, v2

    if-eq v3, v4, :cond_2

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
