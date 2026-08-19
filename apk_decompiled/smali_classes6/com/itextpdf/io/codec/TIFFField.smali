.class public Lcom/itextpdf/io/codec/TIFFField;
.super Ljava/lang/Object;
.source "TIFFField.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/itextpdf/io/codec/TIFFField;",
        ">;"
    }
.end annotation


# static fields
.field public static final TIFF_ASCII:I = 0x2

.field public static final TIFF_BYTE:I = 0x1

.field public static final TIFF_DOUBLE:I = 0xc

.field public static final TIFF_FLOAT:I = 0xb

.field public static final TIFF_LONG:I = 0x4

.field public static final TIFF_RATIONAL:I = 0x5

.field public static final TIFF_SBYTE:I = 0x6

.field public static final TIFF_SHORT:I = 0x3

.field public static final TIFF_SLONG:I = 0x9

.field public static final TIFF_SRATIONAL:I = 0xa

.field public static final TIFF_SSHORT:I = 0x8

.field public static final TIFF_UNDEFINED:I = 0x7


# instance fields
.field count:I

.field data:Ljava/lang/Object;

.field tag:I

.field type:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/Object;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput p1, p0, Lcom/itextpdf/io/codec/TIFFField;->tag:I

    .line 175
    iput p2, p0, Lcom/itextpdf/io/codec/TIFFField;->type:I

    .line 176
    iput p3, p0, Lcom/itextpdf/io/codec/TIFFField;->count:I

    .line 177
    iput-object p4, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/itextpdf/io/codec/TIFFField;)I
    .locals 1

    if-eqz p1, :cond_2

    .line 551
    invoke-virtual {p1}, Lcom/itextpdf/io/codec/TIFFField;->getTag()I

    move-result p1

    .line 553
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFField;->tag:I

    if-ge v0, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 548
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 65
    check-cast p1, Lcom/itextpdf/io/codec/TIFFField;

    invoke-virtual {p0, p1}, Lcom/itextpdf/io/codec/TIFFField;->compareTo(Lcom/itextpdf/io/codec/TIFFField;)I

    move-result p1

    return p1
.end method

.method public getAsBytes()[B
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getAsChars()[C
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public getAsDouble(I)D
    .locals 4

    .line 466
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFField;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 490
    :pswitch_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    .line 482
    :pswitch_1
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [D

    check-cast v0, [D

    aget-wide v1, v0, p1

    return-wide v1

    .line 480
    :pswitch_2
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [F

    check-cast v0, [F

    aget p1, v0, p1

    float-to-double v0, p1

    return-wide v0

    .line 484
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/codec/TIFFField;->getAsSRational(I)[I

    move-result-object p1

    .line 485
    aget v0, p1, v2

    int-to-double v2, v0

    aget p1, p1, v1

    int-to-double v0, p1

    :goto_0
    div-double/2addr v2, v0

    return-wide v2

    .line 476
    :pswitch_4
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    aget p1, v0, p1

    int-to-double v0, p1

    return-wide v0

    .line 474
    :pswitch_5
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [S

    check-cast v0, [S

    aget-short p1, v0, p1

    int-to-double v0, p1

    return-wide v0

    .line 470
    :pswitch_6
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    aget-byte p1, v0, p1

    int-to-double v0, p1

    return-wide v0

    .line 487
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/codec/TIFFField;->getAsRational(I)[J

    move-result-object p1

    .line 488
    aget-wide v2, p1, v2

    long-to-double v2, v2

    aget-wide v0, p1, v1

    long-to-double v0, v0

    goto :goto_0

    .line 478
    :pswitch_8
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    aget-wide v1, v0, p1

    long-to-double v0, v1

    return-wide v0

    .line 472
    :pswitch_9
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [C

    check-cast v0, [C

    aget-char p1, v0, p1

    const v0, 0xffff

    and-int/2addr p1, v0

    int-to-double v0, p1

    return-wide v0

    .line 468
    :pswitch_a
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    int-to-double v0, p1

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getAsDoubles()[D
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [D

    check-cast v0, [D

    return-object v0
.end method

.method public getAsFloat(I)F
    .locals 4

    .line 425
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFField;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 449
    :pswitch_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    .line 441
    :pswitch_1
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [D

    check-cast v0, [D

    aget-wide v1, v0, p1

    double-to-float p1, v1

    return p1

    .line 439
    :pswitch_2
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [F

    check-cast v0, [F

    aget p1, v0, p1

    return p1

    .line 443
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/codec/TIFFField;->getAsSRational(I)[I

    move-result-object p1

    .line 444
    aget v0, p1, v2

    int-to-double v2, v0

    aget p1, p1, v1

    int-to-double v0, p1

    div-double/2addr v2, v0

    double-to-float p1, v2

    return p1

    .line 435
    :pswitch_4
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    aget p1, v0, p1

    int-to-float p1, p1

    return p1

    .line 433
    :pswitch_5
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [S

    check-cast v0, [S

    aget-short p1, v0, p1

    int-to-float p1, p1

    return p1

    .line 429
    :pswitch_6
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    aget-byte p1, v0, p1

    int-to-float p1, p1

    return p1

    .line 446
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/codec/TIFFField;->getAsRational(I)[J

    move-result-object p1

    .line 447
    aget-wide v2, p1, v2

    long-to-double v2, v2

    aget-wide v0, p1, v1

    long-to-double v0, v0

    div-double/2addr v2, v0

    double-to-float p1, v2

    return p1

    .line 437
    :pswitch_8
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    aget-wide v1, v0, p1

    long-to-float p1, v1

    return p1

    .line 431
    :pswitch_9
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [C

    check-cast v0, [C

    aget-char p1, v0, p1

    const v0, 0xffff

    and-int/2addr p1, v0

    int-to-float p1, p1

    return p1

    .line 427
    :pswitch_a
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getAsFloats()[F
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [F

    check-cast v0, [F

    return-object v0
.end method

.method public getAsInt(I)I
    .locals 2

    .line 358
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFField;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 370
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    .line 368
    :pswitch_0
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    aget p1, v0, p1

    return p1

    .line 366
    :pswitch_1
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [S

    check-cast v0, [S

    aget-short p1, v0, p1

    return p1

    .line 362
    :pswitch_2
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    aget-byte p1, v0, p1

    return p1

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [C

    check-cast v0, [C

    aget-char p1, v0, p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1

    .line 360
    :cond_1
    :pswitch_3
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAsInts()[I
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public getAsLong(I)J
    .locals 3

    .line 392
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFField;->type:I

    packed-switch v0, :pswitch_data_0

    .line 406
    :pswitch_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    .line 402
    :pswitch_1
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    aget p1, v0, p1

    :goto_0
    int-to-long v0, p1

    return-wide v0

    .line 400
    :pswitch_2
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [S

    check-cast v0, [S

    aget-short p1, v0, p1

    goto :goto_0

    .line 396
    :pswitch_3
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    aget-byte p1, v0, p1

    goto :goto_0

    .line 404
    :pswitch_4
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    aget-wide v1, v0, p1

    return-wide v1

    .line 398
    :pswitch_5
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [C

    check-cast v0, [C

    aget-char p1, v0, p1

    const v0, 0xffff

    and-int/2addr p1, v0

    goto :goto_0

    .line 394
    :pswitch_6
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getAsLongs()[J
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    return-object v0
.end method

.method public getAsRational(I)[J
    .locals 2

    .line 532
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFField;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/TIFFField;->getAsLongs()[J

    move-result-object p1

    return-object p1

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [[J

    check-cast v0, [[J

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getAsRationals()[[J
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [[J

    check-cast v0, [[J

    return-object v0
.end method

.method public getAsSRational(I)[I
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [[I

    check-cast v0, [[I

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getAsSRationals()[[I
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [[I

    check-cast v0, [[I

    return-object v0
.end method

.method public getAsShorts()[S
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [S

    check-cast v0, [S

    return-object v0
.end method

.method public getAsString(I)Ljava/lang/String;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getAsStrings()[Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFField;->count:I

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFField;->tag:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFField;->type:I

    return v0
.end method
