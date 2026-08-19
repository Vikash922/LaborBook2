.class public Lcom/itextpdf/signatures/TSAClientBouncyCastle;
.super Ljava/lang/Object;
.source "TSAClientBouncyCastle.java"

# interfaces
.implements Lcom/itextpdf/signatures/ITSAClient;


# static fields
.field public static final DEFAULTHASHALGORITHM:Ljava/lang/String; = "SHA-256"

.field public static final DEFAULTTOKENSIZE:I = 0x1000

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field protected digestAlgorithm:Ljava/lang/String;

.field protected tokenSizeEstimate:I

.field protected tsaInfo:Lcom/itextpdf/signatures/ITSAInfoBouncyCastle;

.field protected tsaPassword:Ljava/lang/String;

.field private tsaReqPolicy:Ljava/lang/String;

.field protected tsaURL:Ljava/lang/String;

.field protected tsaUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    const-class v0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/16 v4, 0x1000

    .line 125
    const-string v5, "SHA-256"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/signatures/TSAClientBouncyCastle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/16 v4, 0x1000

    .line 136
    const-string v5, "SHA-256"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/signatures/TSAClientBouncyCastle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaURL:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaUsername:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaPassword:Ljava/lang/String;

    .line 156
    iput p4, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tokenSizeEstimate:I

    .line 157
    iput-object p5, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->digestAlgorithm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessageDigest()Ljava/security/MessageDigest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->digestAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/signatures/SignUtils;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public getTSAReqPolicy()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaReqPolicy:Ljava/lang/String;

    return-object v0
.end method

.method protected getTSAResponse([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaURL:Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaPassword:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/itextpdf/signatures/SignUtils;->getTsaResponseForUserRequest(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Lcom/itextpdf/signatures/SignUtils$TsaResponse;

    move-result-object p1

    .line 281
    iget-object v0, p1, Lcom/itextpdf/signatures/SignUtils$TsaResponse;->tsaResponseStream:Ljava/io/InputStream;

    .line 282
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    .line 283
    new-array v3, v2, [B

    :goto_0
    const/4 v4, 0x0

    .line 285
    invoke-virtual {v0, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ltz v5, :cond_0

    .line 286
    invoke-virtual {v1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 290
    iget-object v1, p1, Lcom/itextpdf/signatures/SignUtils$TsaResponse;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/itextpdf/signatures/SignUtils$TsaResponse;->encoding:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "base64"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 291
    new-instance p1, Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {p1}, Lcom/itextpdf/commons/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getTimeStampToken([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    .line 222
    new-instance v0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;-><init>()V

    const/4 v1, 0x1

    .line 223
    invoke-virtual {v0, v1}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->setCertReq(Z)V

    .line 224
    iget-object v1, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaReqPolicy:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaReqPolicy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->setReqPolicy(Ljava/lang/String;)V

    .line 228
    :cond_0
    invoke-static {}, Lcom/itextpdf/commons/utils/SystemUtil;->getTimeBasedSeed()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 229
    new-instance v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v3, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->digestAlgorithm:Ljava/lang/String;

    invoke-static {v3}, Lcom/itextpdf/signatures/DigestAlgorithms;->getAllowedDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, p1, v1}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object p1

    .line 230
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getEncoded()[B

    move-result-object v0

    .line 233
    invoke-virtual {p0, v0}, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->getTSAResponse([B)[B

    move-result-object v0

    .line 236
    new-instance v1, Lorg/bouncycastle/tsp/TimeStampResponse;

    invoke-direct {v1, v0}, Lorg/bouncycastle/tsp/TimeStampResponse;-><init>([B)V

    .line 239
    invoke-virtual {v1, p1}, Lorg/bouncycastle/tsp/TimeStampResponse;->validate(Lorg/bouncycastle/tsp/TimeStampRequest;)V

    .line 240
    invoke-virtual {v1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getFailInfo()Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;->intValue()I

    move-result p1

    :goto_0
    if-nez p1, :cond_4

    .line 251
    invoke-virtual {v1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 257
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v0

    .line 258
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampToken;->getEncoded()[B

    move-result-object p1

    .line 260
    sget-object v1, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->LOGGER:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Timestamp generated: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getGenTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaInfo:Lcom/itextpdf/signatures/ITSAInfoBouncyCastle;

    if-eqz v1, :cond_2

    .line 262
    invoke-interface {v1, v0}, Lcom/itextpdf/signatures/ITSAInfoBouncyCastle;->inspectTimeStampTokenInfo(Lorg/bouncycastle/tsp/TimeStampTokenInfo;)V

    .line 265
    :cond_2
    array-length v0, p1

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tokenSizeEstimate:I

    return-object p1

    .line 253
    :cond_3
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "TSA {0} failed to return time stamp token: {1}."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaURL:Ljava/lang/String;

    .line 255
    invoke-virtual {v1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatusString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1

    .line 244
    :cond_4
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Invalid TSA {0} response code {1}."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaURL:Ljava/lang/String;

    .line 245
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1
.end method

.method public getTokenSizeEstimate()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tokenSizeEstimate:I

    return v0
.end method

.method public setTSAInfo(Lcom/itextpdf/signatures/ITSAInfoBouncyCastle;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaInfo:Lcom/itextpdf/signatures/ITSAInfoBouncyCastle;

    return-void
.end method

.method public setTSAReqPolicy(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaReqPolicy:Ljava/lang/String;

    return-void
.end method
