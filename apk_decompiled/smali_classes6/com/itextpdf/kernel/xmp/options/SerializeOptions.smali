.class public final Lcom/itextpdf/kernel/xmp/options/SerializeOptions;
.super Lcom/itextpdf/kernel/xmp/options/Options;
.source "SerializeOptions.java"


# static fields
.field public static final ENCODE_UTF16BE:I = 0x2

.field public static final ENCODE_UTF16LE:I = 0x3

.field public static final ENCODE_UTF8:I = 0x0

.field private static final ENCODING_MASK:I = 0x3

.field public static final EXACT_PACKET_LENGTH:I = 0x200

.field public static final INCLUDE_THUMBNAIL_PAD:I = 0x100

.field private static final LITTLEENDIAN_BIT:I = 0x1

.field public static final OMIT_PACKET_WRAPPER:I = 0x10

.field public static final OMIT_XMPMETA_ELEMENT:I = 0x1000

.field public static final READONLY_PACKET:I = 0x20

.field public static final SORT:I = 0x2000

.field public static final USE_CANONICAL_FORMAT:I = 0x80

.field public static final USE_COMPACT_FORMAT:I = 0x40

.field private static final UTF16_BIT:I = 0x2


# instance fields
.field private baseIndent:I

.field private indent:Ljava/lang/String;

.field private newline:Ljava/lang/String;

.field private omitVersionAttribute:Z

.field private padding:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/options/Options;-><init>()V

    const/16 v0, 0x800

    .line 93
    iput v0, p0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->padding:I

    .line 98
    const-string v0, "\n"

    iput-object v0, p0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    .line 103
    const-string v0, "  "

    iput-object v0, p0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->baseIndent:I

    .line 110
    iput-boolean v0, p0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->omitVersionAttribute:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/options/Options;-><init>(I)V

    const/16 p1, 0x800

    .line 93
    iput p1, p0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->padding:I

    .line 98
    const-string p1, "\n"

    iput-object p1, p0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    .line 103
    const-string p1, "  "

    iput-object p1, p0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    const/4 p1, 0x0

    .line 108
    iput p1, p0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->baseIndent:I

    .line 110
    iput-boolean p1, p0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->omitVersionAttribute:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 458
    :try_start_0
    new-instance v0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getOptions()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;-><init>(I)V

    .line 459
    iget v1, p0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->baseIndent:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->setBaseIndent(I)Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    .line 460
    iget-object v1, p0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->setIndent(Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    .line 461
    iget-object v1, p0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->setNewline(Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    .line 462
    iget v1, p0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->padding:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->setPadding(I)Lcom/itextpdf/kernel/xmp/options/SerializeOptions;
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected defineOptionName(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_6

    const/16 v0, 0x20

    if-eq p1, v0, :cond_5

    const/16 v0, 0x40

    if-eq p1, v0, :cond_4

    const/16 v0, 0x100

    if-eq p1, v0, :cond_3

    const/16 v0, 0x200

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 487
    :cond_0
    const-string p1, "NORMALIZED"

    return-object p1

    .line 486
    :cond_1
    const-string p1, "OMIT_XMPMETA_ELEMENT"

    return-object p1

    .line 485
    :cond_2
    const-string p1, "EXACT_PACKET_LENGTH"

    return-object p1

    .line 484
    :cond_3
    const-string p1, "INCLUDE_THUMBNAIL_PAD"

    return-object p1

    .line 482
    :cond_4
    const-string p1, "USE_COMPACT_FORMAT"

    return-object p1

    .line 481
    :cond_5
    const-string p1, "READONLY_PACKET"

    return-object p1

    .line 480
    :cond_6
    const-string p1, "OMIT_PACKET_WRAPPER"

    return-object p1
.end method

.method public getBaseIndent()I
    .locals 1

    .line 341
    iget v0, p0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->baseIndent:I

    return v0
.end method

.method public getEncodeUTF16BE()Z
    .locals 2

    .line 297
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEncodeUTF16LE()Z
    .locals 2

    .line 319
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getOptions()I

    move-result v0

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 435
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getEncodeUTF16BE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const-string v0, "UTF-16BE"

    return-object v0

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getEncodeUTF16LE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    const-string v0, "UTF-16LE"

    return-object v0

    .line 445
    :cond_1
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getExactPacketLength()Z
    .locals 1

    const/16 v0, 0x200

    .line 257
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getIncludeThumbnailPad()Z
    .locals 1

    const/16 v0, 0x100

    .line 237
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getIndent()Ljava/lang/String;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public getNewline()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    return-object v0
.end method

.method public getOmitPacketWrapper()Z
    .locals 1

    const/16 v0, 0x10

    .line 138
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getOmitVersionAttribute()Z
    .locals 1

    .line 426
    iget-boolean v0, p0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->omitVersionAttribute:Z

    return v0
.end method

.method public getOmitXmpMetaElement()Z
    .locals 1

    const/16 v0, 0x1000

    .line 158
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getPadding()I
    .locals 1

    .line 404
    iget v0, p0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->padding:I

    return v0
.end method

.method public getReadOnlyPacket()Z
    .locals 1

    const/16 v0, 0x20

    .line 178
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getSort()Z
    .locals 1

    const/16 v0, 0x2000

    .line 277
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getUseCanonicalFormat()Z
    .locals 1

    const/16 v0, 0x80

    .line 218
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getUseCompactFormat()Z
    .locals 1

    const/16 v0, 0x40

    .line 198
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method protected getValidOptions()I
    .locals 1

    const/16 v0, 0x3370

    return v0
.end method

.method public setBaseIndent(I)Lcom/itextpdf/kernel/xmp/options/SerializeOptions;
    .locals 0

    .line 352
    iput p1, p0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->baseIndent:I

    return-object p0
.end method

.method public setEncodeUTF16BE(Z)Lcom/itextpdf/kernel/xmp/options/SerializeOptions;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 308
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->setOption(IZ)V

    const/4 v0, 0x2

    .line 309
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setEncodeUTF16LE(Z)Lcom/itextpdf/kernel/xmp/options/SerializeOptions;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 330
    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->setOption(IZ)V

    .line 331
    invoke-virtual {p0, v1, p1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setExactPacketLength(Z)Lcom/itextpdf/kernel/xmp/options/SerializeOptions;
    .locals 1

    const/16 v0, 0x200

    .line 267
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setIncludeThumbnailPad(Z)Lcom/itextpdf/kernel/xmp/options/SerializeOptions;
    .locals 1

    const/16 v0, 0x100

    .line 247
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setIndent(Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/options/SerializeOptions;
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    return-object p0
.end method

.method public setNewline(Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/options/SerializeOptions;
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    return-object p0
.end method

.method public setOmitPacketWrapper(Z)Lcom/itextpdf/kernel/xmp/options/SerializeOptions;
    .locals 1

    const/16 v0, 0x10

    .line 148
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setOmitXmpMetaElement(Z)Lcom/itextpdf/kernel/xmp/options/SerializeOptions;
    .locals 1

    const/16 v0, 0x1000

    .line 168
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setPadding(I)Lcom/itextpdf/kernel/xmp/options/SerializeOptions;
    .locals 0

    .line 415
    iput p1, p0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->padding:I

    return-object p0
.end method

.method public setReadOnlyPacket(Z)Lcom/itextpdf/kernel/xmp/options/SerializeOptions;
    .locals 1

    const/16 v0, 0x20

    .line 188
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setSort(Z)Lcom/itextpdf/kernel/xmp/options/SerializeOptions;
    .locals 1

    const/16 v0, 0x2000

    .line 287
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setUseCanonicalFormat(Z)Lcom/itextpdf/kernel/xmp/options/SerializeOptions;
    .locals 1

    const/16 v0, 0x80

    .line 228
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setUseCompactFormat(Z)Lcom/itextpdf/kernel/xmp/options/SerializeOptions;
    .locals 1

    const/16 v0, 0x40

    .line 208
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->setOption(IZ)V

    return-object p0
.end method
