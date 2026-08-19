.class public Lcom/itextpdf/kernel/pdf/PdfString;
.super Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;
.source "PdfString.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private decryptInfoGen:I

.field private decryptInfoNum:I

.field private decryption:Lcom/itextpdf/kernel/pdf/PdfEncryption;

.field protected encoding:Ljava/lang/String;

.field protected hexWriting:Z

.field protected value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 118
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->hexWriting:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->hexWriting:Z

    .line 85
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfString;->encoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .line 94
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->hexWriting:Z

    if-eqz p1, :cond_1

    .line 95
    array-length v1, p1

    if-lez v1, :cond_1

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 97
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    goto :goto_1

    .line 102
    :cond_1
    const-string p1, ""

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method protected constructor <init>([BZ)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;-><init>([B)V

    .line 114
    iput-boolean p2, p0, Lcom/itextpdf/kernel/pdf/PdfString;->hexWriting:Z

    return-void
.end method


# virtual methods
.method protected copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/ICopyFilter;)V
    .locals 0

    .line 321
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/ICopyFilter;)V

    .line 322
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfString;

    .line 323
    iget-object p2, p1, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    .line 324
    iget-boolean p2, p1, Lcom/itextpdf/kernel/pdf/PdfString;->hexWriting:Z

    iput-boolean p2, p0, Lcom/itextpdf/kernel/pdf/PdfString;->hexWriting:Z

    .line 325
    iget-object p2, p1, Lcom/itextpdf/kernel/pdf/PdfString;->decryption:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryption:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    .line 326
    iget p2, p1, Lcom/itextpdf/kernel/pdf/PdfString;->decryptInfoNum:I

    iput p2, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryptInfoNum:I

    .line 327
    iget p2, p1, Lcom/itextpdf/kernel/pdf/PdfString;->decryptInfoGen:I

    iput p2, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryptInfoGen:I

    .line 328
    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/PdfString;->encoding:Ljava/lang/String;

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->encoding:Ljava/lang/String;

    return-void
.end method

.method protected decodeContent()[B
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->content:[B

    iget-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->hexWriting:Z

    invoke-static {v0, v1}, Lcom/itextpdf/io/source/PdfTokenizer;->decodeStringContent([BZ)[B

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryption:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-eqz v1, :cond_0

    const/16 v1, 0x200

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfString;->checkState(S)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryption:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    iget v2, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryptInfoNum:I

    iget v3, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryptInfoGen:I

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setHashKeyForNextObject(II)V

    .line 289
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryption:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->decryptByteArray([B)[B

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected encodeBytes([B)[B
    .locals 4

    .line 302
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->hexWriting:Z

    if-eqz v0, :cond_1

    .line 303
    new-instance v0, Lcom/itextpdf/io/source/ByteBuffer;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    .line 304
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    .line 305
    invoke-virtual {v0, v3}, Lcom/itextpdf/io/source/ByteBuffer;->appendHex(B)Lcom/itextpdf/io/source/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->getInternalBuffer()[B

    move-result-object p1

    return-object p1

    .line 309
    :cond_1
    invoke-static {p1}, Lcom/itextpdf/io/util/StreamUtil;->createBufferedEscapedString([B)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object p1

    .line 310
    invoke-virtual {p1}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/itextpdf/io/source/ByteBuffer;->toByteArray(II)[B

    move-result-object p1

    return-object p1
.end method

.method protected encrypt(Lcom/itextpdf/kernel/pdf/PdfEncryption;)Z
    .locals 2

    const/16 v0, 0x200

    .line 269
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfString;->checkState(S)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryption:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-eq p1, v0, :cond_2

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->generateValue()V

    :cond_1
    if-eqz p1, :cond_2

    .line 276
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->isEmbeddedFilesOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 277
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValueBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptByteArray([B)[B

    move-result-object p1

    .line 278
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfString;->encodeBytes([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->content:[B

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 198
    :cond_1
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfString;

    .line 199
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 202
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->getEncoding()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->getEncoding()Ljava/lang/String;

    move-result-object p1

    if-nez v2, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    if-eqz v2, :cond_4

    .line 205
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method protected generateContent()V
    .locals 1

    .line 259
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValueBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfString;->encodeBytes([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->content:[B

    return-void
.end method

.method protected generateValue()V
    .locals 2

    .line 250
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->decodeContent()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryption:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-eqz v0, :cond_0

    .line 252
    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryption:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    .line 253
    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->content:[B

    :cond_0
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getType()B
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->generateValue()V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getValueBytes()[B
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->generateValue()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "UnicodeBig"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/io/font/PdfEncodings;->isPdfDocEncoding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    const-string v1, "PDF"

    invoke-static {v0, v1}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->encoding:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 223
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->getEncoding()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    if-eqz v1, :cond_1

    .line 226
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public isHexWriting()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->hexWriting:Z

    return v0
.end method

.method public markAsUnencryptedObject()V
    .locals 1

    const/16 v0, 0x200

    .line 239
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfString;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method

.method protected newInstance()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 316
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>()V

    return-object v0
.end method

.method setDecryption(IILcom/itextpdf/kernel/pdf/PdfEncryption;)V
    .locals 0

    .line 243
    iput p1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryptInfoNum:I

    .line 244
    iput p2, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryptInfoGen:I

    .line 245
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryption:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    return-void
.end method

.method public setHexWriting(Z)Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->generateValue()V

    :cond_0
    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->content:[B

    .line 135
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->hexWriting:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->decodeContent()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnicodeString()Ljava/lang/String;
    .locals 6

    .line 161
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->content:[B

    if-nez v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->generateContent()V

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->decodeContent()[B

    move-result-object v0

    .line 168
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-lt v1, v4, :cond_2

    aget-byte v1, v0, v3

    const/4 v5, -0x2

    if-ne v1, v5, :cond_2

    aget-byte v1, v0, v2

    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    .line 169
    const-string v1, "UnicodeBig"

    invoke-static {v0, v1}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 170
    :cond_2
    array-length v1, v0

    const/4 v5, 0x3

    if-lt v1, v5, :cond_3

    aget-byte v1, v0, v3

    const/16 v3, -0x11

    if-ne v1, v3, :cond_3

    aget-byte v1, v0, v2

    const/16 v2, -0x45

    if-ne v1, v2, :cond_3

    aget-byte v1, v0, v4

    const/16 v2, -0x41

    if-ne v1, v2, :cond_3

    .line 171
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 173
    :cond_3
    const-string v1, "PDF"

    invoke-static {v0, v1}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
