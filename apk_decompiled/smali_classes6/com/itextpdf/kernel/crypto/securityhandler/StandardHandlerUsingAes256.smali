.class public Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;
.super Lcom/itextpdf/kernel/crypto/securityhandler/StandardSecurityHandler;
.source "StandardHandlerUsingAes256.java"


# static fields
.field private static final KEY_SALT_OFFSET:I = 0x28

.field private static final SALT_LENGTH:I = 0x8

.field private static final VALIDATION_SALT_OFFSET:I = 0x20


# instance fields
.field protected encryptMetadata:Z

.field private isPdf2:Z


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardSecurityHandler;-><init>()V

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->initKeyAndReadDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BIZZLcom/itextpdf/kernel/pdf/PdfVersion;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardSecurityHandler;-><init>()V

    if-eqz p7, :cond_0

    .line 84
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {p7, v0}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result p7

    if-ltz p7, :cond_0

    const/4 p7, 0x1

    goto :goto_0

    :cond_0
    const/4 p7, 0x0

    :goto_0
    iput-boolean p7, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->isPdf2:Z

    .line 85
    invoke-direct/range {p0 .. p6}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->initKeyAndFillDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BIZZ)V

    return-void
.end method

.method private static compareArray([B[BI)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 364
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private computeHash([B[BII)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 284
    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->computeHash([B[BII[B)[B

    move-result-object p1

    return-object p1
.end method

.method private computeHash([B[BII[B)[B
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    .line 288
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 290
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 291
    invoke-virtual {v2, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 295
    :cond_0
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    move-object/from16 v4, p0

    .line 297
    iget-boolean v5, v4, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->isPdf2:Z

    if-eqz v5, :cond_9

    .line 300
    const-string v5, "SHA-384"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 301
    const-string v6, "SHA-512"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    .line 303
    array-length v8, v1

    goto :goto_0

    :cond_1
    move v8, v7

    .line 304
    :goto_0
    array-length v9, v0

    add-int/2addr v9, v8

    move v10, v7

    .line 311
    :goto_1
    array-length v11, v3

    add-int/2addr v11, v9

    mul-int/lit8 v12, v11, 0x40

    .line 312
    new-array v13, v12, [B

    .line 313
    array-length v14, v0

    invoke-static {v0, v7, v13, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    array-length v14, v0

    array-length v15, v3

    invoke-static {v3, v7, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v1, :cond_2

    .line 316
    array-length v14, v0

    array-length v15, v3

    add-int/2addr v14, v15

    invoke-static {v1, v7, v13, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    const/4 v15, 0x1

    :goto_2
    const/16 v14, 0x40

    if-ge v15, v14, :cond_3

    mul-int v14, v11, v15

    .line 319
    invoke-static {v13, v7, v13, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 323
    :cond_3
    new-instance v11, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;

    const/16 v14, 0x10

    invoke-static {v3, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v15

    const/16 v7, 0x20

    invoke-static {v3, v14, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 v7, 0x1

    invoke-direct {v11, v7, v15, v3}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;-><init>(Z[B[B)V

    const/4 v15, 0x0

    .line 324
    invoke-virtual {v11, v13, v15, v12}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;->processBlock([BII)[B

    move-result-object v3

    .line 328
    new-instance v11, Ljava/math/BigInteger;

    invoke-static {v3, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    invoke-direct {v11, v7, v12}, Ljava/math/BigInteger;-><init>(I[B)V

    const-wide/16 v12, 0x3

    .line 329
    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    if-eqz v11, :cond_6

    if-eq v11, v7, :cond_5

    const/4 v7, 0x2

    if-eq v11, v7, :cond_4

    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    move-object v7, v6

    goto :goto_3

    :cond_5
    move-object v7, v5

    goto :goto_3

    :cond_6
    move-object v7, v2

    .line 343
    :goto_3
    invoke-virtual {v7, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    add-int/lit8 v11, v10, 0x1

    const/16 v12, 0x3f

    if-le v11, v12, :cond_8

    .line 349
    array-length v12, v3

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    aget-byte v3, v3, v12

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v10, v10, -0x1f

    if-gt v3, v10, :cond_8

    .line 356
    array-length v0, v7

    const/16 v1, 0x20

    if-ne v0, v1, :cond_7

    move-object v3, v7

    goto :goto_4

    :cond_7
    invoke-static {v7, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    move-object v3, v0

    goto :goto_4

    :cond_8
    move-object v3, v7

    move v10, v11

    move v7, v15

    goto/16 :goto_1

    :cond_9
    :goto_4
    return-object v3
.end method

.method private initKeyAndFillDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BIZZ)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    move/from16 v7, p5

    move-object/from16 v1, p3

    .line 113
    invoke-virtual {v8, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->generateOwnerPasswordIfNullOrEmpty([B)[B

    move-result-object v1

    move/from16 v2, p4

    or-int/lit16 v2, v2, -0xf40

    and-int/lit8 v9, v2, -0x4

    const/16 v2, 0x7f

    const/4 v10, 0x0

    if-nez v0, :cond_0

    .line 126
    :try_start_0
    new-array v0, v10, [B

    goto :goto_0

    .line 127
    :cond_0
    array-length v3, v0

    if-le v3, v2, :cond_1

    .line 128
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 130
    :cond_1
    :goto_0
    array-length v3, v1

    if-le v3, v2, :cond_2

    .line 131
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :cond_2
    move-object v11, v1

    const/16 v12, 0x10

    .line 135
    invoke-static {v12}, Lcom/itextpdf/kernel/crypto/IVGenerator;->getIV(I)[B

    move-result-object v1

    .line 136
    invoke-static {v12}, Lcom/itextpdf/kernel/crypto/IVGenerator;->getIV(I)[B

    move-result-object v13

    const/16 v14, 0x20

    .line 138
    invoke-static {v14}, Lcom/itextpdf/kernel/crypto/IVGenerator;->getIV(I)[B

    move-result-object v2

    iput-object v2, v8, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKey:[B

    .line 139
    iput v14, v8, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKeySize:I

    const/16 v15, 0x8

    .line 144
    invoke-direct {v8, v0, v1, v10, v15}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->computeHash([B[BII)[B

    move-result-object v2

    const/16 v6, 0x30

    .line 145
    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    .line 146
    invoke-static {v1, v10, v5, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    invoke-direct {v8, v0, v1, v15, v15}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->computeHash([B[BII)[B

    move-result-object v0

    .line 150
    new-instance v1, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v0}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;-><init>(Z[B)V

    .line 151
    iget-object v0, v8, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKey:[B

    iget-object v2, v8, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKey:[B

    array-length v2, v2

    invoke-virtual {v1, v0, v10, v2}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;->processBlock([BII)[B

    move-result-object v0

    const/16 v16, 0x0

    const/16 v17, 0x8

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v13

    move v15, v4

    move/from16 v4, v16

    move-object/from16 p3, v5

    move/from16 v5, v17

    move v15, v6

    move-object/from16 v6, p3

    .line 155
    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->computeHash([B[BII[B)[B

    move-result-object v1

    .line 156
    invoke-static {v1, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v15

    .line 157
    invoke-static {v13, v10, v15, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x8

    const/16 v5, 0x8

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v13

    move-object/from16 v6, p3

    .line 160
    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->computeHash([B[BII[B)[B

    move-result-object v1

    .line 161
    new-instance v2, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;-><init>(Z[B)V

    .line 162
    iget-object v1, v8, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKey:[B

    iget-object v3, v8, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKey:[B

    array-length v3, v3

    invoke-virtual {v2, v1, v10, v3}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;->processBlock([BII)[B

    move-result-object v3

    .line 166
    invoke-static {v12}, Lcom/itextpdf/kernel/crypto/IVGenerator;->getIV(I)[B

    move-result-object v1

    int-to-byte v2, v9

    .line 167
    aput-byte v2, v1, v10

    shr-int/lit8 v2, v9, 0x8

    int-to-byte v2, v2

    const/4 v4, 0x1

    .line 168
    aput-byte v2, v1, v4

    const/4 v2, 0x2

    const/4 v4, -0x1

    int-to-byte v5, v4

    .line 169
    aput-byte v5, v1, v2

    const/4 v2, 0x3

    int-to-byte v5, v4

    .line 170
    aput-byte v5, v1, v2

    const/4 v2, 0x4

    .line 171
    aput-byte v4, v1, v2

    const/4 v2, 0x5

    .line 172
    aput-byte v4, v1, v2

    const/4 v2, 0x6

    .line 173
    aput-byte v4, v1, v2

    const/4 v2, 0x7

    .line 174
    aput-byte v4, v1, v2

    if-eqz v7, :cond_3

    const/16 v2, 0x54

    goto :goto_1

    :cond_3
    const/16 v2, 0x46

    :goto_1
    const/16 v4, 0x8

    .line 175
    aput-byte v2, v1, v4

    const/16 v2, 0x9

    const/16 v4, 0x61

    .line 176
    aput-byte v4, v1, v2

    const/16 v2, 0xa

    const/16 v4, 0x64

    .line 177
    aput-byte v4, v1, v2

    const/16 v2, 0xb

    const/16 v4, 0x62

    .line 178
    aput-byte v4, v1, v2

    .line 179
    new-instance v2, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;

    iget-object v4, v8, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKey:[B

    const/4 v5, 0x1

    invoke-direct {v2, v5, v4}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;-><init>(Z[B)V

    .line 180
    array-length v4, v1

    invoke-virtual {v2, v1, v10, v4}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;->processBlock([BII)[B

    move-result-object v5

    int-to-long v1, v9

    .line 182
    iput-wide v1, v8, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->permissions:J

    .line 183
    iput-boolean v7, v8, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->encryptMetadata:Z

    move-object/from16 v2, p1

    move-object/from16 v1, p3

    .line 184
    invoke-virtual {v8, v2, v1, v15}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->setStandardHandlerDicEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[B)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v0

    move/from16 v6, p5

    move/from16 v7, p6

    .line 185
    invoke-direct/range {v1 .. v7}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->setAES256DicEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[B[BZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 187
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "PdfEncryption exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private initKeyAndReadDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v8, 0x0

    if-nez v1, :cond_0

    .line 225
    :try_start_0
    new-array v1, v8, [B

    goto :goto_0

    .line 226
    :cond_0
    array-length v2, v1

    const/16 v3, 0x7f

    if-le v2, v3, :cond_1

    .line 227
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :cond_1
    :goto_0
    move-object v9, v1

    .line 230
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    cmpl-double v1, v1, v3

    const/4 v10, 0x1

    if-nez v1, :cond_2

    move v1, v10

    goto :goto_1

    :cond_2
    move v1, v8

    :goto_1
    iput-boolean v1, v7, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->isPdf2:Z

    .line 232
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->O:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->getIsoBytes(Lcom/itextpdf/kernel/pdf/PdfString;)[B

    move-result-object v11

    .line 233
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->U:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->getIsoBytes(Lcom/itextpdf/kernel/pdf/PdfString;)[B

    move-result-object v12

    .line 234
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->OE:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->getIsoBytes(Lcom/itextpdf/kernel/pdf/PdfString;)[B

    move-result-object v13

    .line 235
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->UE:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->getIsoBytes(Lcom/itextpdf/kernel/pdf/PdfString;)[B

    move-result-object v14

    .line 236
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Perms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->getIsoBytes(Lcom/itextpdf/kernel/pdf/PdfString;)[B

    move-result-object v15

    .line 237
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    .line 239
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->longValue()J

    move-result-wide v1

    iput-wide v1, v7, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->permissions:J

    const/16 v4, 0x20

    const/16 v5, 0x8

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v11

    move-object v6, v12

    .line 243
    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->computeHash([B[BII[B)[B

    move-result-object v1

    const/16 v6, 0x20

    .line 244
    invoke-static {v1, v11, v6}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->compareArray([B[BI)Z

    move-result v1

    iput-boolean v1, v7, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->usedOwnerPassword:Z

    .line 246
    iget-boolean v1, v7, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->usedOwnerPassword:Z
    :try_end_0
    .catch Lcom/itextpdf/kernel/exceptions/BadPasswordException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "Bad user password. Password is not provided or wrong password provided. Correct password should be passed to PdfReader constructor with properties. See ReaderProperties#setPassword() method."

    const/16 v4, 0x8

    if-eqz v1, :cond_3

    const/16 v14, 0x28

    const/16 v16, 0x8

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v11

    move v11, v4

    move v4, v14

    move-object v9, v5

    move/from16 v5, v16

    move v14, v6

    move-object v6, v12

    .line 247
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->computeHash([B[BII[B)[B

    move-result-object v1

    .line 248
    new-instance v2, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;

    invoke-direct {v2, v8, v1}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;-><init>(Z[B)V

    .line 249
    array-length v1, v13

    invoke-virtual {v2, v13, v8, v1}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;->processBlock([BII)[B

    move-result-object v1

    iput-object v1, v7, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKey:[B

    move-object v1, v9

    move v2, v14

    goto :goto_2

    :cond_3
    move v11, v4

    move-object v1, v5

    move v2, v6

    .line 251
    invoke-direct {v7, v9, v12, v2, v11}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->computeHash([B[BII)[B

    move-result-object v3

    .line 252
    invoke-static {v3, v12, v2}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->compareArray([B[BI)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x28

    .line 255
    invoke-direct {v7, v9, v12, v3, v11}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->computeHash([B[BII)[B

    move-result-object v3

    .line 256
    new-instance v4, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;

    invoke-direct {v4, v8, v3}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;-><init>(Z[B)V

    .line 257
    array-length v3, v14

    invoke-virtual {v4, v14, v8, v3}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;->processBlock([BII)[B

    move-result-object v3

    iput-object v3, v7, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKey:[B

    .line 259
    :goto_2
    iput v2, v7, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKeySize:I

    .line 261
    new-instance v2, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;

    iget-object v3, v7, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKey:[B

    invoke-direct {v2, v8, v3}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;-><init>(Z[B)V

    .line 262
    array-length v3, v15

    invoke-virtual {v2, v15, v8, v3}, Lcom/itextpdf/kernel/crypto/AESCipherCBCnoPad;->processBlock([BII)[B

    move-result-object v2

    const/16 v3, 0x9

    .line 263
    aget-byte v3, v2, v3

    const/16 v4, 0x61

    if-ne v3, v4, :cond_7

    const/16 v3, 0xa

    aget-byte v3, v2, v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_7

    const/16 v3, 0xb

    aget-byte v3, v2, v3

    const/16 v4, 0x62

    if-ne v3, v4, :cond_7

    .line 265
    aget-byte v1, v2, v8

    and-int/lit16 v1, v1, 0xff

    aget-byte v3, v2, v10

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v11

    or-int/2addr v1, v3

    const/4 v3, 0x2

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    const/4 v3, 0x3

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    .line 267
    aget-byte v2, v2, v11

    const/16 v3, 0x54

    if-ne v2, v3, :cond_4

    move v8, v10

    .line 269
    :cond_4
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->EncryptMetadata:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBool(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Boolean;

    move-result-object v0

    int-to-long v1, v1

    .line 270
    iget-wide v3, v7, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->permissions:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_5

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v8, v0, :cond_6

    .line 271
    :cond_5
    const-class v0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 272
    const-string v3, "Encryption dictionary entries P and EncryptMetadata have value that does not correspond to encrypted values in Perms key."

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 274
    :cond_6
    iput-wide v1, v7, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->permissions:J

    .line 275
    iput-boolean v8, v7, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->encryptMetadata:Z

    return-void

    .line 264
    :cond_7
    new-instance v0, Lcom/itextpdf/kernel/exceptions/BadPasswordException;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/BadPasswordException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_8
    new-instance v0, Lcom/itextpdf/kernel/exceptions/BadPasswordException;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/BadPasswordException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/itextpdf/kernel/exceptions/BadPasswordException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 279
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "PdfEncryption exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 277
    throw v0
.end method

.method private setAES256DicEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[B[BZZ)V
    .locals 2

    .line 196
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->OE:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    invoke-static {p2}, Lcom/itextpdf/io/util/StreamUtil;->createEscapedString([B)[B

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/itextpdf/kernel/pdf/PdfLiteral;-><init>([B)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 197
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->UE:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    invoke-static {p3}, Lcom/itextpdf/io/util/StreamUtil;->createEscapedString([B)[B

    move-result-object p3

    invoke-direct {v0, p3}, Lcom/itextpdf/kernel/pdf/PdfLiteral;-><init>([B)V

    invoke-virtual {p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 198
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Perms:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    invoke-static {p4}, Lcom/itextpdf/io/util/StreamUtil;->createEscapedString([B)[B

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/itextpdf/kernel/pdf/PdfLiteral;-><init>([B)V

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 199
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget-boolean p4, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->isPdf2:Z

    const/4 v0, 0x5

    if-eqz p4, :cond_0

    const/4 p4, 0x6

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    invoke-direct {p3, p4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 200
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {p3, v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 201
    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 202
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/16 v0, 0x20

    invoke-direct {p4, v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p2, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    if-nez p5, :cond_1

    .line 204
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->EncryptMetadata:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object p4, Lcom/itextpdf/kernel/pdf/PdfBoolean;->FALSE:Lcom/itextpdf/kernel/pdf/PdfBoolean;

    invoke-virtual {p1, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_1
    if-eqz p6, :cond_2

    .line 207
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->AuthEvent:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object p4, Lcom/itextpdf/kernel/pdf/PdfName;->EFOpen:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 208
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->EFF:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object p4, Lcom/itextpdf/kernel/pdf/PdfName;->StdCF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 209
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->StrF:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object p4, Lcom/itextpdf/kernel/pdf/PdfName;->Identity:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 210
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->StmF:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object p4, Lcom/itextpdf/kernel/pdf/PdfName;->Identity:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 212
    :cond_2
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->AuthEvent:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object p4, Lcom/itextpdf/kernel/pdf/PdfName;->DocOpen:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 213
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->StrF:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object p4, Lcom/itextpdf/kernel/pdf/PdfName;->StdCF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 214
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->StmF:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object p4, Lcom/itextpdf/kernel/pdf/PdfName;->StdCF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 216
    :goto_1
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->CFM:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object p4, Lcom/itextpdf/kernel/pdf/PdfName;->AESV3:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 217
    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 218
    sget-object p4, Lcom/itextpdf/kernel/pdf/PdfName;->StdCF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3, p4, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 219
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->CF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method


# virtual methods
.method public getDecryptor()Lcom/itextpdf/kernel/crypto/IDecryptor;
    .locals 4

    .line 108
    new-instance v0, Lcom/itextpdf/kernel/crypto/AesDecryptor;

    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKey:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKeySize:I

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/kernel/crypto/AesDecryptor;-><init>([BII)V

    return-object v0
.end method

.method public getEncryptionStream(Ljava/io/OutputStream;)Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;
    .locals 4

    .line 103
    new-instance v0, Lcom/itextpdf/kernel/crypto/OutputStreamAesEncryption;

    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKey:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->nextObjectKeySize:I

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/itextpdf/kernel/crypto/OutputStreamAesEncryption;-><init>(Ljava/io/OutputStream;[BII)V

    return-object v0
.end method

.method public isEncryptMetadata()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->encryptMetadata:Z

    return v0
.end method

.method public setHashKeyForNextObject(II)V
    .locals 0

    return-void
.end method
