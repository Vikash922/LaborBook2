.class public Lcom/itextpdf/kernel/pdf/PdfOutputStream;
.super Lcom/itextpdf/io/source/OutputStream;
.source "PdfOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/io/source/OutputStream<",
        "Lcom/itextpdf/kernel/pdf/PdfOutputStream;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final closeDict:[B

.field private static final endIndirect:[B

.field private static final endIndirectWithZeroGenNr:[B

.field private static final endstream:[B

.field private static final openDict:[B

.field private static final stream:[B


# instance fields
.field protected crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

.field protected document:Lcom/itextpdf/kernel/pdf/PdfDocument;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-string v0, "stream\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->stream:[B

    .line 64
    const-string v0, "\nendstream"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->endstream:[B

    .line 65
    const-string v0, "<<"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->openDict:[B

    .line 66
    const-string v0, ">>"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->closeDict:[B

    .line 67
    const-string v0, " R"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->endIndirect:[B

    .line 68
    const-string v0, " 0 R"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->endIndirectWithZeroGenNr:[B

    .line 69
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/itextpdf/io/source/OutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-void
.end method

.method private static decodeParamsArrayNotFlushed(Lcom/itextpdf/kernel/pdf/PdfStream;)Z
    .locals 2

    .line 578
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 582
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v0, p0}, Lcom/itextpdf/kernel/pdf/IndirectFilterUtils;->logFilterWasAlreadyFlushed(Lorg/slf4j/Logger;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method private static isFlushed(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Z
    .locals 0

    .line 573
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 574
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isFlushed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNotMetadataPdfStream(Lcom/itextpdf/kernel/pdf/PdfStream;)Z
    .locals 1

    .line 271
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 272
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Metadata:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isXRefStream(Lcom/itextpdf/kernel/pdf/PdfStream;)Z
    .locals 2

    .line 276
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XRef:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private write(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 4

    const/16 v0, 0x5b

    .line 162
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    const/4 v0, 0x0

    move v1, v0

    .line 163
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 164
    invoke-virtual {p1, v1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 166
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 167
    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    goto :goto_1

    .line 169
    :cond_0
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 171
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p1, 0x5d

    .line 174
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    return-void
.end method

.method private write(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 5

    .line 178
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->openDict:[B

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 179
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 181
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfName;)V

    const/4 v2, 0x0

    .line 182
    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    if-nez v3, :cond_0

    .line 184
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "Invalid key value: key {0} has null value."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 185
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfNull;->PDF_NULL:Lcom/itextpdf/kernel/pdf/PdfNull;

    .line 187
    :cond_0
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_1

    .line 188
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_1

    .line 189
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    .line 190
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    const/4 v4, 0x7

    if-eq v1, v4, :cond_1

    .line 191
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    const/16 v1, 0x40

    .line 192
    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->checkState(S)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    const/4 v2, 0x1

    .line 198
    :cond_2
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    if-eqz v1, :cond_4

    if-nez v2, :cond_3

    .line 200
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    .line 202
    :cond_3
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    goto :goto_0

    .line 204
    :cond_4
    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    goto :goto_0

    .line 207
    :cond_5
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->closeDict:[B

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-void
.end method

.method private write(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Pdf indirect object belongs to other PDF document. Copy object to current pdf document."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 214
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Flushed object contains indirect reference which is free. Null object will be written instead."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 216
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfNull;->PDF_NULL:Lcom/itextpdf/kernel/pdf/PdfNull;

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;)V

    goto :goto_1

    .line 217
    :cond_2
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    if-nez v0, :cond_4

    const/16 v0, 0x8

    .line 218
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 219
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getIndex()I

    move-result v0

    if-gez v0, :cond_4

    .line 220
    :cond_3
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Flushed object contains indirect reference which doesn\'t refer to any other object. Null object will be written instead."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 221
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfNull;->PDF_NULL:Lcom/itextpdf/kernel/pdf/PdfNull;

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;)V

    goto :goto_1

    .line 222
    :cond_4
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v0

    if-nez v0, :cond_5

    .line 223
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeInteger(I)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->endIndirectWithZeroGenNr:[B

    .line 224
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_1

    .line 226
    :cond_5
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeInteger(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 227
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 228
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeInteger(I)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->endIndirect:[B

    .line 229
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    :goto_1
    return-void
.end method

.method private write(Lcom/itextpdf/kernel/pdf/PdfLiteral;)V
    .locals 2

    .line 238
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getCurrentPos()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfLiteral;->setPosition(J)V

    .line 239
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfLiteral;->getInternalContent()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-void
.end method

.method private write(Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 1

    const/16 v0, 0x2f

    .line 256
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    .line 257
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfName;->getInternalContent()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-void
.end method

.method private write(Lcom/itextpdf/kernel/pdf/PdfNumber;)V
    .locals 2

    .line 261
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getInternalContent()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->isDoubleNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeInteger(I)Ljava/io/OutputStream;

    :goto_0
    return-void
.end method

.method private write(Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;)V
    .locals 0

    .line 234
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->getInternalContent()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-void
.end method

.method private write(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 8

    .line 281
    :try_start_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getCompressionLevel()I

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_2

    .line 283
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v1, :cond_1

    .line 284
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfWriter;->getCompressionLevel()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    .line 286
    :goto_1
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->setCompressionLevel(I)V

    .line 288
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getCompressionLevel()I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v3

    .line 289
    :goto_2
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->isNotMetadataPdfStream(Lcom/itextpdf/kernel/pdf/PdfStream;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    .line 291
    :goto_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 295
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    .line 296
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->isEmbeddedFilesOnly()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v4, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->doesStreamBelongToEmbeddedFile(Lcom/itextpdf/kernel/pdf/PdfStream;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 297
    :cond_5
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v4, p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getEncryptionStream(Ljava/io/OutputStream;)Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;

    move-result-object v4

    move-object v6, v4

    goto :goto_4

    :cond_6
    move-object v4, p0

    move-object v6, v5

    :goto_4
    if-eqz v1, :cond_8

    if-nez v2, :cond_7

    if-eqz v0, :cond_8

    .line 300
    :cond_7
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->updateCompressionFilter(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 301
    new-instance v5, Lcom/itextpdf/io/source/DeflaterOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getCompressionLevel()I

    move-result v0

    const v1, 0x8000

    invoke-direct {v5, v4, v0, v1}, Lcom/itextpdf/io/source/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;II)V

    move-object v4, v5

    .line 303
    :cond_8
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 304
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->stream:[B

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 305
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getCurrentPos()J

    move-result-wide v0

    const/16 v2, 0x1060

    .line 306
    new-array v2, v2, [B

    .line 308
    :goto_5
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-gtz v7, :cond_b

    if-eqz v5, :cond_9

    .line 314
    invoke-virtual {v5}, Lcom/itextpdf/io/source/DeflaterOutputStream;->finish()V

    :cond_9
    if-eqz v6, :cond_a

    .line 317
    invoke-virtual {v6}, Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;->finish()V

    .line 319
    :cond_a
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    .line 320
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getCurrentPos()J

    move-result-wide v3

    sub-long/2addr v3, v0

    long-to-int v0, v3

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->setValue(I)V

    .line 321
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->updateLength(I)V

    .line 322
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->endstream:[B

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto/16 :goto_8

    .line 311
    :cond_b
    invoke-virtual {v4, v2, v3, v7}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_5

    .line 326
    :cond_c
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v4

    if-nez v4, :cond_e

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 329
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfReader;->readStreamBytes(Lcom/itextpdf/kernel/pdf/PdfStream;Z)[B

    move-result-object v3

    if-eqz v0, :cond_d

    .line 331
    invoke-virtual {p0, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->decodeFlateBytes(Lcom/itextpdf/kernel/pdf/PdfStream;[B)[B

    move-result-object v3

    .line 333
    :cond_d
    new-instance v4, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    array-length v5, v3

    invoke-direct {v4, v5}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->initOutputStream(Ljava/io/OutputStream;)V

    .line 334
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_e
    if-eqz v1, :cond_11

    .line 339
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->containsFlateFilter(Lcom/itextpdf/kernel/pdf/PdfStream;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->decodeParamsArrayNotFlushed(Lcom/itextpdf/kernel/pdf/PdfStream;)Z

    move-result v1

    if-eqz v1, :cond_11

    if-nez v2, :cond_f

    if-eqz v0, :cond_11

    .line 342
    :cond_f
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->updateCompressionFilter(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 343
    new-instance v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    .line 344
    new-instance v1, Lcom/itextpdf/io/source/DeflaterOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getCompressionLevel()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/io/source/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 345
    instance-of v2, p1, Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    if-eqz v2, :cond_10

    .line 346
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    .line 347
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getIndexStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v3, v1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 348
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v2, v1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_6

    .line 351
    :cond_10
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v2, v1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 353
    :goto_6
    invoke-virtual {v1}, Lcom/itextpdf/io/source/DeflaterOutputStream;->finish()V

    goto :goto_7

    .line 355
    :cond_11
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    if-eqz v0, :cond_12

    .line 356
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    .line 357
    new-instance v1, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    .line 358
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getIndexStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v2, v1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 359
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    move-object v0, v1

    goto :goto_7

    .line 362
    :cond_12
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    .line 365
    :goto_7
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->checkEncryption(Lcom/itextpdf/kernel/pdf/PdfStream;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 366
    new-instance v1, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    .line 367
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getEncryptionStream(Ljava/io/OutputStream;)Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;

    move-result-object v2

    .line 368
    invoke-virtual {v0, v2}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 369
    invoke-virtual {v2}, Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;->finish()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 375
    :cond_13
    :try_start_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 376
    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->updateLength(I)V

    .line 377
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 378
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->stream:[B

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 379
    invoke-virtual {v0, p0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 380
    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->close()V

    .line 381
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->endstream:[B

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    :goto_8
    return-void

    :catch_0
    move-exception v0

    .line 373
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "I/O exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    .line 384
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "Cannot write to PdfStream."

    invoke-direct {v1, v2, v0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v1
.end method

.method private write(Lcom/itextpdf/kernel/pdf/PdfString;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfString;->encrypt(Lcom/itextpdf/kernel/pdf/PdfEncryption;)Z

    .line 244
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->isHexWriting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    .line 245
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    .line 246
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->getInternalContent()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    const/16 p1, 0x3e

    .line 247
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    .line 249
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    .line 250
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->getInternalContent()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    const/16 p1, 0x29

    .line 251
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    :goto_0
    return-void
.end method


# virtual methods
.method protected checkEncryption(Lcom/itextpdf/kernel/pdf/PdfStream;)Z
    .locals 4

    .line 389
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->isEmbeddedFilesOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->doesStreamBelongToEmbeddedFile(Lcom/itextpdf/kernel/pdf/PdfStream;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->isXRefStream(Lcom/itextpdf/kernel/pdf/PdfStream;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 396
    :cond_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    .line 400
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isFlushed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 401
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/IndirectFilterUtils;->throwFlushedFilterException(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 403
    :cond_3
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Crypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v1

    .line 406
    :cond_4
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v3

    if-ne v3, v2, :cond_7

    .line 407
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 408
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    .line 411
    :cond_5
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->isFlushed()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 412
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/IndirectFilterUtils;->throwFlushedFilterException(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 414
    :cond_6
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Crypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_7
    return v2

    :cond_8
    :goto_0
    return v1
.end method

.method protected containsFlateFilter(Lcom/itextpdf/kernel/pdf/PdfStream;)Z
    .locals 4

    .line 420
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 424
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isFlushed()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 425
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v0, p1}, Lcom/itextpdf/kernel/pdf/IndirectFilterUtils;->logFilterWasAlreadyFlushed(Lorg/slf4j/Logger;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    return v2

    .line 428
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    const/4 v3, 0x6

    if-eq v1, v3, :cond_3

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 429
    :cond_2
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "filter is not a name or array."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 431
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    if-ne v1, v3, :cond_4

    .line 432
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->FlateDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 434
    :cond_4
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 435
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->isFlushed()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 436
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v0, p1}, Lcom/itextpdf/kernel/pdf/IndirectFilterUtils;->logFilterWasAlreadyFlushed(Lorg/slf4j/Logger;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    return v2

    .line 440
    :cond_6
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->FlateDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->contains(Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    move-result p1

    return p1
.end method

.method protected decodeFlateBytes(Lcom/itextpdf/kernel/pdf/PdfStream;[B)[B
    .locals 8

    .line 474
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 481
    :cond_0
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 482
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfName;

    move-object v1, v2

    goto :goto_0

    .line 483
    :cond_1
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v1, :cond_12

    .line 484
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 485
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->isFlushed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 486
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v0, p1}, Lcom/itextpdf/kernel/pdf/IndirectFilterUtils;->logFilterWasAlreadyFlushed(Lorg/slf4j/Logger;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    return-object p2

    .line 489
    :cond_2
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 494
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->isFlushed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 495
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v0, p1}, Lcom/itextpdf/kernel/pdf/IndirectFilterUtils;->logFilterWasAlreadyFlushed(Lorg/slf4j/Logger;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    return-object p2

    .line 499
    :cond_3
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->FlateDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return-object p2

    .line 506
    :cond_4
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    const/4 v4, 0x1

    if-nez v0, :cond_5

    move-object v0, v2

    move-object v5, v0

    goto :goto_1

    .line 509
    :cond_5
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isFlushed()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 510
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v0, p1}, Lcom/itextpdf/kernel/pdf/IndirectFilterUtils;->logFilterWasAlreadyFlushed(Lorg/slf4j/Logger;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    return-object p2

    .line 512
    :cond_6
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    .line 513
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-object v5, v2

    goto :goto_1

    .line 514
    :cond_7
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v5

    if-ne v5, v4, :cond_11

    .line 515
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 516
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    move-object v7, v5

    move-object v5, v0

    move-object v0, v7

    :goto_1
    if-eqz v0, :cond_9

    .line 522
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v6

    if-nez v6, :cond_8

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Predictor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v0, v6}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->isFlushed(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v6

    if-nez v6, :cond_8

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Columns:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 523
    invoke-static {v0, v6}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->isFlushed(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v6

    if-nez v6, :cond_8

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Colors:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v0, v6}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->isFlushed(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v6

    if-nez v6, :cond_8

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->BitsPerComponent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v0, v6}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->isFlushed(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 525
    :cond_8
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v0, p1}, Lcom/itextpdf/kernel/pdf/IndirectFilterUtils;->logFilterWasAlreadyFlushed(Lorg/slf4j/Logger;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    return-object p2

    .line 530
    :cond_9
    invoke-static {p2, v4}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->flateDecode([BZ)[B

    move-result-object v6

    if-nez v6, :cond_a

    .line 532
    invoke-static {p2, v3}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->flateDecode([BZ)[B

    move-result-object v6

    .line 533
    :cond_a
    invoke-static {v6, v0}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->decodePredictor([BLcom/itextpdf/kernel/pdf/PdfObject;)[B

    move-result-object p2

    if-eqz v1, :cond_c

    .line 539
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(I)V

    .line 540
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    if-ne v0, v4, :cond_b

    .line 541
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    goto :goto_2

    .line 542
    :cond_b
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2

    :cond_c
    move-object v1, v2

    :goto_2
    if-eqz v5, :cond_e

    .line 549
    invoke-virtual {v5, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(I)V

    .line 550
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    if-ne v0, v4, :cond_d

    invoke-virtual {v5, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/4 v4, 0x7

    if-eq v0, v4, :cond_d

    .line 551
    invoke-virtual {v5, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    goto :goto_3

    .line 552
    :cond_d
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    move-object v2, v5

    :cond_e
    :goto_3
    if-nez v1, :cond_f

    .line 558
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_4

    .line 560
    :cond_f
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :goto_4
    if-nez v2, :cond_10

    .line 564
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_5

    .line 566
    :cond_10
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :goto_5
    return-object p2

    .line 518
    :cond_11
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Decode parameter type {0} is not supported."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1

    .line 491
    :cond_12
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "filter is not a name or array."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected updateCompressionFilter(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 4

    .line 444
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 446
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FlateDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void

    .line 449
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 450
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FlateDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 451
    instance-of v2, v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v2, :cond_1

    .line 452
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->addAll(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    goto :goto_0

    .line 454
    :cond_1
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 456
    :goto_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 458
    instance-of v2, v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v2, :cond_2

    .line 459
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 460
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNull;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfNull;-><init>()V

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 461
    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 462
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 463
    :cond_2
    instance-of v2, v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v2, :cond_3

    .line 464
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNull;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfNull;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(ILcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_1

    .line 466
    :cond_3
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Decode parameter type {0} is not supported."

    invoke-direct {p1, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1

    .line 470
    :cond_4
    :goto_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method

.method public write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;
    .locals 1

    const/16 v0, 0x40

    .line 97
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->checkState(S)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 99
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    :cond_0
    const/16 v0, 0x100

    .line 101
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->checkState(S)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfString;)V

    goto :goto_0

    .line 131
    :pswitch_1
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    goto :goto_0

    .line 128
    :pswitch_2
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfNumber;)V

    goto :goto_0

    .line 115
    :pswitch_3
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfName;)V

    goto :goto_0

    .line 112
    :pswitch_4
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    goto :goto_0

    .line 122
    :pswitch_5
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfLiteral;)V

    goto :goto_0

    .line 109
    :pswitch_6
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_0

    .line 119
    :pswitch_7
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;)V

    goto :goto_0

    .line 106
    :pswitch_8
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    :goto_0
    return-object p0

    .line 102
    :cond_1
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Cannot write object after it was released. In normal situation the object must be read once again before being written."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method write(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 158
    invoke-virtual {p0, v0, v1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(JI)V

    return-void
.end method

.method write(JI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_0

    mul-int/lit8 v0, p3, 0x8

    shr-long v0, p1, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 146
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
