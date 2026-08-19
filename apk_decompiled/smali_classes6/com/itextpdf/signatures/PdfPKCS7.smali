.class public Lcom/itextpdf/signatures/PdfPKCS7;
.super Ljava/lang/Object;
.source "PdfPKCS7.java"


# instance fields
.field basicResp:Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

.field private certs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private crls:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation
.end field

.field private digest:[B

.field private digestAlgorithmOid:Ljava/lang/String;

.field private digestAttr:[B

.field private digestEncryptionAlgorithmOid:Ljava/lang/String;

.field private digestalgos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private encContDigest:Ljava/security/MessageDigest;

.field private externalDigest:[B

.field private externalRsaData:[B

.field private filterSubtype:Lcom/itextpdf/kernel/pdf/PdfName;

.field private interfaceDigest:Lcom/itextpdf/signatures/IExternalDigest;

.field private isCades:Z

.field private isTsp:Z

.field private location:Ljava/lang/String;

.field private messageDigest:Ljava/security/MessageDigest;

.field private provider:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private rsaData:[B

.field private sig:Ljava/security/Signature;

.field private sigAttr:[B

.field private sigAttrDer:[B

.field private signCert:Ljava/security/cert/X509Certificate;

.field signCerts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private signDate:Ljava/util/Calendar;

.field private signName:Ljava/lang/String;

.field private signaturePolicyIdentifier:Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

.field private signerversion:I

.field private timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

.field private verified:Z

.field private verifyResult:Z

.field private version:I


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/signatures/IExternalDigest;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    sget-object v0, Lcom/itextpdf/signatures/TimestampConstants;->UNDEFINED_TIMESTAMP_DATE:Ljava/lang/Object;

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    .line 577
    iput v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->version:I

    .line 582
    iput v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signerversion:I

    .line 166
    iput-object p4, p0, Lcom/itextpdf/signatures/PdfPKCS7;->provider:Ljava/lang/String;

    .line 167
    iput-object p5, p0, Lcom/itextpdf/signatures/PdfPKCS7;->interfaceDigest:Lcom/itextpdf/signatures/IExternalDigest;

    .line 169
    invoke-static {p3}, Lcom/itextpdf/signatures/DigestAlgorithms;->getAllowedDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestAlgorithmOid:Ljava/lang/String;

    if-eqz p5, :cond_6

    const/4 p3, 0x0

    .line 176
    aget-object p5, p2, p3

    check-cast p5, Ljava/security/cert/X509Certificate;

    iput-object p5, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    .line 177
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/itextpdf/signatures/PdfPKCS7;->certs:Ljava/util/Collection;

    .line 178
    array-length p5, p2

    move v0, p3

    :goto_0
    if-ge v0, p5, :cond_0

    aget-object v1, p2, v0

    .line 179
    iget-object v2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->certs:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestalgos:Ljava/util/Set;

    .line 184
    iget-object p5, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestAlgorithmOid:Ljava/lang/String;

    invoke-interface {p2, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_3

    .line 188
    invoke-static {p1}, Lcom/itextpdf/signatures/SignUtils;->getPrivateKeyAlgorithm(Ljava/security/PrivateKey;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    .line 189
    const-string p5, "RSA"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 190
    const-string p2, "1.2.840.113549.1.1.1"

    iput-object p2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    goto :goto_1

    .line 191
    :cond_1
    iget-object p2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    const-string p5, "DSA"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 192
    const-string p2, "1.2.840.10040.4.1"

    iput-object p2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    goto :goto_1

    .line 194
    :cond_2
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Unknown key algorithm: {0}."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 195
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    if-eqz p6, :cond_4

    .line 201
    new-array p2, p3, [B

    iput-object p2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    .line 202
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getHashAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p4}, Lcom/itextpdf/signatures/DigestAlgorithms;->getMessageDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    iput-object p2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    :cond_4
    if-eqz p1, :cond_5

    .line 207
    invoke-direct {p0, p1}, Lcom/itextpdf/signatures/PdfPKCS7;->initSignature(Ljava/security/PrivateKey;)Ljava/security/Signature;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sig:Ljava/security/Signature;

    :cond_5
    return-void

    .line 171
    :cond_6
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Unknown hash algorithm: {0}."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 172
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1
.end method

.method public constructor <init>([BLcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;)V
    .locals 10

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    sget-object v0, Lcom/itextpdf/signatures/TimestampConstants;->UNDEFINED_TIMESTAMP_DATE:Ljava/lang/Object;

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    .line 577
    iput v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->version:I

    .line 582
    iput v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signerversion:I

    .line 252
    iput-object p2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->filterSubtype:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 253
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ETSI_RFC3161:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, p2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->isTsp:Z

    .line 254
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ETSI_CAdES_DETACHED:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, p2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->isCades:Z

    .line 256
    :try_start_0
    iput-object p3, p0, Lcom/itextpdf/signatures/PdfPKCS7;->provider:Ljava/lang/String;

    .line 257
    new-instance p2, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p2, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 265
    :try_start_1
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 270
    :try_start_2
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_1a

    .line 274
    check-cast p2, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x0

    .line 275
    invoke-virtual {p2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 276
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1.2.840.113549.1.7.2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 279
    invoke-virtual {p2, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 288
    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/signatures/PdfPKCS7;->version:I

    .line 291
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestalgos:Ljava/util/Set;

    .line 292
    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 293
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 294
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 295
    invoke-virtual {v4, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 296
    iget-object v5, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestalgos:Ljava/util/Set;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    .line 300
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 301
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-le v5, v0, :cond_1

    .line 303
    invoke-virtual {v4, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 304
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    :cond_1
    const/4 v4, 0x3

    move v5, v4

    .line 308
    :goto_1
    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    instance-of v6, v6, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 317
    :cond_2
    invoke-static {p1}, Lcom/itextpdf/signatures/SignUtils;->readAllCerts([B)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->certs:Ljava/util/Collection;

    .line 352
    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Set;

    .line 353
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-ne v2, v0, :cond_18

    .line 356
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 363
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    iput v2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signerversion:I

    .line 365
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 366
    invoke-static {v2}, Lcom/itextpdf/signatures/SignUtils;->getIssuerX509Name(Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/jce/X509Principal;

    move-result-object v5

    .line 367
    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    .line 368
    iget-object v6, p0, Lcom/itextpdf/signatures/PdfPKCS7;->certs:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 369
    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 370
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 371
    iput-object v7, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    .line 375
    :cond_4
    iget-object v6, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    if-eqz v6, :cond_17

    .line 379
    invoke-direct {p0}, Lcom/itextpdf/signatures/PdfPKCS7;->signCertificateChain()V

    .line 381
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestAlgorithmOid:Ljava/lang/String;

    .line 384
    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_f

    .line 385
    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 386
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    .line 387
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Set;->getEncoded()[B

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sigAttr:[B

    .line 389
    const-string v4, "DER"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sigAttrDer:[B

    move v4, v1

    move v5, v4

    .line 391
    :goto_2
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v6

    if-ge v4, v6, :cond_d

    .line 392
    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 393
    invoke-virtual {v6, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    .line 394
    const-string v8, "1.2.840.113549.1.9.4"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 395
    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1Set;

    .line 396
    invoke-virtual {v6, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    iput-object v6, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestAttr:[B

    goto/16 :goto_5

    .line 397
    :cond_5
    const-string v8, "1.2.840.113583.1.1.8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 398
    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1Set;

    .line 399
    invoke-virtual {v6, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1Sequence;

    move v7, v1

    .line 400
    :goto_3
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v8

    if-ge v7, v8, :cond_c

    .line 401
    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 402
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v9

    if-nez v9, :cond_6

    .line 403
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 404
    invoke-virtual {p0, v9}, Lcom/itextpdf/signatures/PdfPKCS7;->findCRL(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 406
    :cond_6
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v9

    if-ne v9, v0, :cond_7

    .line 407
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 408
    invoke-direct {p0, v8}, Lcom/itextpdf/signatures/PdfPKCS7;->findOcsp(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 411
    :cond_8
    iget-boolean v8, p0, Lcom/itextpdf/signatures/PdfPKCS7;->isCades:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v9, "Signing certificate doesn\'t match the ESS information."

    if-eqz v8, :cond_a

    :try_start_3
    const-string v8, "1.2.840.113549.1.9.16.2.12"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 412
    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Set;

    .line 413
    invoke-virtual {v5, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 414
    invoke-static {v5}, Lorg/bouncycastle/asn1/ess/SigningCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ess/SigningCertificate;

    move-result-object v5

    .line 415
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ess/SigningCertificate;->getCerts()[Lorg/bouncycastle/asn1/ess/ESSCertID;

    move-result-object v5

    .line 416
    aget-object v5, v5, v1

    .line 417
    iget-object v6, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v6

    .line 418
    const-string v7, "SHA-1"

    invoke-static {v7}, Lcom/itextpdf/signatures/SignUtils;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 419
    invoke-virtual {v7, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 420
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ess/ESSCertID;->getCertHash()[B

    move-result-object v5

    .line 421
    invoke-static {v6, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_9

    :goto_4
    move v5, v0

    goto :goto_5

    .line 422
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 424
    :cond_a
    iget-boolean v8, p0, Lcom/itextpdf/signatures/PdfPKCS7;->isCades:Z

    if-eqz v8, :cond_c

    const-string v8, "1.2.840.113549.1.9.16.2.47"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 425
    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Set;

    .line 426
    invoke-virtual {v5, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 427
    invoke-static {v5}, Lorg/bouncycastle/asn1/ess/SigningCertificateV2;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ess/SigningCertificateV2;

    move-result-object v5

    .line 428
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ess/SigningCertificateV2;->getCerts()[Lorg/bouncycastle/asn1/ess/ESSCertIDv2;

    move-result-object v5

    .line 429
    aget-object v5, v5, v1

    .line 430
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    .line 431
    iget-object v7, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v7

    .line 433
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/signatures/DigestAlgorithms;->getDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/signatures/SignUtils;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 434
    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 435
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->getCertHash()[B

    move-result-object v5

    .line 436
    invoke-static {v6, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_4

    .line 437
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 441
    :cond_d
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestAttr:[B

    if-eqz v0, :cond_e

    const/4 v4, 0x4

    goto :goto_6

    .line 442
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Authenticated attribute is missing the digest."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    move v5, v1

    .line 446
    :goto_6
    iget-boolean v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->isCades:Z

    if-eqz v0, :cond_11

    if-eqz v5, :cond_10

    goto :goto_7

    .line 447
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CAdES ESS information missing."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    :goto_7
    add-int/lit8 v0, v4, 0x1

    .line 449
    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    add-int/2addr v4, v3

    .line 450
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    .line 451
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v4, v0, :cond_12

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_12

    .line 452
    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 453
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    .line 454
    new-instance v0, Lorg/bouncycastle/asn1/cms/AttributeTable;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 455
    sget-object p1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_signatureTimeStampToken:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->get(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 456
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 457
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    .line 458
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    .line 460
    invoke-static {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    .line 461
    new-instance v0, Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-direct {v0, p1}, Lorg/bouncycastle/tsp/TimeStampToken;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    .line 464
    :cond_12
    iget-boolean p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->isTsp:Z

    if-eqz p1, :cond_13

    .line 466
    invoke-static {p2}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    .line 467
    new-instance p2, Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-direct {p2, p1}, Lorg/bouncycastle/tsp/TimeStampToken;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iput-object p2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    .line 468
    invoke-virtual {p2}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object p1

    .line 469
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 470
    invoke-static {p1, p2}, Lcom/itextpdf/signatures/DigestAlgorithms;->getMessageDigestFromOid(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    goto :goto_9

    .line 472
    :cond_13
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestAttr:[B

    if-eqz p1, :cond_16

    .line 473
    :cond_14
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Adbe_pkcs7_sha1:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getFilterSubtype()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 474
    const-string p1, "SHA1"

    invoke-static {p1, p3}, Lcom/itextpdf/signatures/DigestAlgorithms;->getMessageDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    goto :goto_8

    .line 476
    :cond_15
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getHashAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/itextpdf/signatures/DigestAlgorithms;->getMessageDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    .line 478
    :goto_8
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getHashAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/itextpdf/signatures/DigestAlgorithms;->getMessageDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->encContDigest:Ljava/security/MessageDigest;

    .line 480
    :cond_16
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/signatures/PdfPKCS7;->initSignature(Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sig:Ljava/security/Signature;

    :goto_9
    return-void

    .line 376
    :cond_17
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Cannot find signing certificate with serial {0}."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    invoke-virtual {v5}, Lorg/bouncycastle/jce/X509Principal;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " / "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 p3, 0x10

    invoke-virtual {v2, p3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1

    .line 354
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This PKCS#7 object has multiple SignerInfos. Only one is supported at this time."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 277
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not a valid PKCS#7 object - not signed data."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 271
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not a valid PKCS#7 object - not a sequence"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 267
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot decode PKCS#7 SignedData object."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    .line 483
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p2, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>([B[BLjava/lang/String;)V
    .locals 1

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    sget-object v0, Lcom/itextpdf/signatures/TimestampConstants;->UNDEFINED_TIMESTAMP_DATE:Ljava/lang/Object;

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    .line 577
    iput v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->version:I

    .line 582
    iput v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signerversion:I

    .line 223
    :try_start_0
    iput-object p3, p0, Lcom/itextpdf/signatures/PdfPKCS7;->provider:Ljava/lang/String;

    .line 224
    invoke-static {p2}, Lcom/itextpdf/signatures/SignUtils;->readAllCerts([B)Ljava/util/Collection;

    move-result-object p2

    iput-object p2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->certs:Ljava/util/Collection;

    .line 225
    iput-object p2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCerts:Ljava/util/Collection;

    .line 226
    invoke-static {p2}, Lcom/itextpdf/signatures/SignUtils;->getFirstElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/cert/X509Certificate;

    iput-object p2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    .line 227
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->crls:Ljava/util/Collection;

    .line 229
    new-instance p2, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p2, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 230
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    .line 232
    const-string p1, "SHA1withRSA"

    invoke-static {p1, p3}, Lcom/itextpdf/signatures/SignUtils;->getSignatureHelper(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sig:Ljava/security/Signature;

    .line 233
    iget-object p2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 236
    const-string p1, "1.2.840.10040.4.3"

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestAlgorithmOid:Ljava/lang/String;

    .line 237
    const-string p1, "1.3.36.3.3.1.2"

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 239
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p2, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private buildUnauthenticatedAttributes([B)Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 967
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 968
    new-instance p1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 970
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 971
    new-instance v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "1.2.840.113549.1.9.16.2.14"

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 972
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 973
    new-instance v2, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 975
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p1
.end method

.method private findOcsp(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1383
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->basicResp:Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    :cond_0
    const/4 v0, 0x0

    .line 1386
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1387
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1388
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1412
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 1413
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 1414
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    move-result-object p1

    .line 1415
    new-instance v0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;-><init>(Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;)V

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->basicResp:Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    return-void

    :cond_1
    move v1, v0

    .line 1392
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1393
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v3, :cond_2

    .line 1394
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_1

    .line 1398
    :cond_2
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_4

    .line 1399
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 1400
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_3

    .line 1401
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    move v0, v2

    :goto_1
    if-eqz v0, :cond_0

    return-void
.end method

.method private getAuthenticatedAttributeSet([BLjava/util/Collection;Ljava/util/Collection;Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;)Lorg/bouncycastle/asn1/DERSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "[B>;",
            "Ljava/util/Collection<",
            "[B>;",
            "Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;",
            ")",
            "Lorg/bouncycastle/asn1/DERSet;"
        }
    .end annotation

    .line 1039
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1040
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1041
    new-instance v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "1.2.840.113549.1.9.3"

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1042
    new-instance v2, Lorg/bouncycastle/asn1/DERSet;

    new-instance v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "1.2.840.113549.1.7.1"

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1043
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1044
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1045
    new-instance v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "1.2.840.113549.1.9.4"

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1046
    new-instance v2, Lorg/bouncycastle/asn1/DERSet;

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1047
    new-instance p1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p1, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    .line 1050
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, p1

    :goto_0
    if-eqz p2, :cond_2

    .line 1057
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    if-eqz v2, :cond_9

    .line 1058
    :cond_3
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1059
    new-instance v4, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "1.2.840.113583.1.1.8"

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1061
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    if-eqz v2, :cond_6

    .line 1064
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1065
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    if-nez v5, :cond_4

    goto :goto_1

    .line 1069
    :cond_4
    new-instance v6, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 1070
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 1072
    :cond_5
    new-instance p3, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p3, v1, p1, v5}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, p3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_6
    if-eqz p2, :cond_8

    .line 1075
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_8

    .line 1076
    new-instance p3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {p3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1077
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1078
    new-instance v5, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v5, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 1079
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1080
    sget-object v6, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1081
    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1082
    new-instance v5, Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v5, p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    .line 1083
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1084
    invoke-virtual {v6, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1085
    new-instance v5, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v5, v1, p1, v7}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v6, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1086
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {p3, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_2

    .line 1088
    :cond_7
    new-instance p1, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance p2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p2, p3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p1, v1, v1, p2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1091
    :cond_8
    new-instance p1, Lorg/bouncycastle/asn1/DERSet;

    new-instance p2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p2, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1092
    new-instance p1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p1, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1094
    :cond_9
    sget-object p1, Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;->CADES:Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;

    if-ne p4, p1, :cond_a

    .line 1095
    new-instance p1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1096
    new-instance p2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string p3, "1.2.840.113549.1.9.16.2.47"

    invoke-direct {p2, p3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1098
    new-instance p2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1099
    new-instance p3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance p4, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestAlgorithmOid:Ljava/lang/String;

    invoke-direct {p4, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p3, p4, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1101
    invoke-virtual {p2, p3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1102
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getHashAlgorithm()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/itextpdf/signatures/PdfPKCS7;->interfaceDigest:Lcom/itextpdf/signatures/IExternalDigest;

    invoke-static {p3, p4}, Lcom/itextpdf/signatures/SignUtils;->getMessageDigest(Ljava/lang/String;Lcom/itextpdf/signatures/IExternalDigest;)Ljava/security/MessageDigest;

    move-result-object p3

    .line 1103
    iget-object p4, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {p4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p3

    .line 1104
    new-instance p4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {p4, p3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {p2, p4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1106
    new-instance p3, Lorg/bouncycastle/asn1/DERSet;

    new-instance p4, Lorg/bouncycastle/asn1/DERSequence;

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p4, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p3, p4}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, p3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1107
    new-instance p2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1110
    :cond_a
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signaturePolicyIdentifier:Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    if-eqz p1, :cond_b

    .line 1111
    new-instance p1, Lorg/bouncycastle/asn1/cms/Attribute;

    sget-object p2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_sigPolicyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance p3, Lorg/bouncycastle/asn1/DERSet;

    iget-object p4, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signaturePolicyIdentifier:Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    invoke-direct {p3, p4}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/asn1/cms/Attribute;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1115
    :cond_b
    new-instance p1, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1117
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p2, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private initSignature(Ljava/security/PrivateKey;)Ljava/security/Signature;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 737
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->provider:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/itextpdf/signatures/SignUtils;->getSignatureHelper(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 738
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method private initSignature(Ljava/security/PublicKey;)Ljava/security/Signature;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 744
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 745
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Adbe_x509_rsa_sha1:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getFilterSubtype()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    const-string v0, "SHA1withRSA"

    .line 747
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->provider:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/itextpdf/signatures/SignUtils;->getSignatureHelper(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 748
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    return-object v0
.end method

.method private signCertificateChain()V
    .locals 7

    .line 1280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1281
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1282
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->certs:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    move v3, v2

    .line 1283
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1284
    iget-object v4, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1285
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1291
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    move v4, v2

    .line 1293
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 1294
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 1295
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    iget-object v6, p0, Lcom/itextpdf/signatures/PdfPKCS7;->provider:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Lcom/itextpdf/signatures/SignUtils;->verifyCertificateSignature(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1297
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1298
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1303
    :cond_3
    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCerts:Ljava/util/Collection;

    return-void
.end method

.method private verifySigAttributes([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1203
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/signatures/PdfPKCS7;->initSignature(Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v0

    .line 1204
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 1205
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    return p1
.end method


# virtual methods
.method findCRL(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 1324
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->crls:Ljava/util/Collection;

    const/4 v0, 0x0

    .line 1325
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1326
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 1327
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1328
    invoke-static {v1}, Lcom/itextpdf/signatures/SignUtils;->parseCrlFromStream(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRL;

    .line 1329
    iget-object v2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->crls:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method public getAuthenticatedAttributeBytes([BLcom/itextpdf/signatures/PdfSigner$CryptoStandard;Ljava/util/Collection;Ljava/util/Collection;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;",
            "Ljava/util/Collection<",
            "[B>;",
            "Ljava/util/Collection<",
            "[B>;)[B"
        }
    .end annotation

    .line 1022
    :try_start_0
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/itextpdf/signatures/PdfPKCS7;->getAuthenticatedAttributeSet([BLjava/util/Collection;Ljava/util/Collection;Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;)Lorg/bouncycastle/asn1/DERSet;

    move-result-object p1

    const-string p2, "DER"

    .line 1023
    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/DERSet;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1025
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p2, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getCRLs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .line 1316
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->crls:Ljava/util/Collection;

    return-object v0
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .locals 2

    .line 1251
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->certs:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 2

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "with"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigestAlgorithmOid()Ljava/lang/String;
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestAlgorithmOid:Ljava/lang/String;

    return-object v0
.end method

.method public getDigestEncryptionAlgorithmOid()Ljava/lang/String;
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodedPKCS1()[B
    .locals 4

    .line 778
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->externalDigest:[B

    if-eqz v0, :cond_0

    .line 779
    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    goto :goto_0

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sig:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    .line 782
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 784
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->create(Ljava/io/OutputStream;)Lorg/bouncycastle/asn1/ASN1OutputStream;

    move-result-object v1

    .line 785
    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v3, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    .line 786
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->close()V

    .line 788
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 790
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEncodedPKCS7()[B
    .locals 6

    .line 802
    sget-object v2, Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;->CMS:Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/signatures/PdfPKCS7;->getEncodedPKCS7([BLcom/itextpdf/signatures/PdfSigner$CryptoStandard;Lcom/itextpdf/signatures/ITSAClient;Ljava/util/Collection;Ljava/util/Collection;)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncodedPKCS7([B)[B
    .locals 6

    .line 813
    sget-object v2, Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;->CMS:Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/signatures/PdfPKCS7;->getEncodedPKCS7([BLcom/itextpdf/signatures/PdfSigner$CryptoStandard;Lcom/itextpdf/signatures/ITSAClient;Ljava/util/Collection;Ljava/util/Collection;)[B

    move-result-object p1

    return-object p1
.end method

.method public getEncodedPKCS7([BLcom/itextpdf/signatures/PdfSigner$CryptoStandard;Lcom/itextpdf/signatures/ITSAClient;Ljava/util/Collection;Ljava/util/Collection;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;",
            "Lcom/itextpdf/signatures/ITSAClient;",
            "Ljava/util/Collection<",
            "[B>;",
            "Ljava/util/Collection<",
            "[B>;)[B"
        }
    .end annotation

    .line 833
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->externalDigest:[B

    if-eqz v0, :cond_0

    .line 834
    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    .line 835
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    if-eqz v0, :cond_3

    .line 836
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->externalRsaData:[B

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    goto :goto_0

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->externalRsaData:[B

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    if-eqz v1, :cond_1

    .line 838
    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    .line 839
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sig:Ljava/security/Signature;

    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    .line 840
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sig:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    goto :goto_0

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    if-eqz v0, :cond_2

    .line 843
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    .line 844
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sig:Ljava/security/Signature;

    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    .line 846
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sig:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    .line 850
    :cond_3
    :goto_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 851
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestalgos:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 852
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 853
    new-instance v4, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 854
    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 855
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 859
    :cond_4
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 860
    new-instance v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "1.2.840.113549.1.7.1"

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 861
    iget-object v2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 862
    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v5, p0, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 863
    :cond_5
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 867
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 868
    iget-object v4, p0, Lcom/itextpdf/signatures/PdfPKCS7;->certs:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 869
    new-instance v6, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 870
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 871
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_2

    .line 874
    :cond_6
    new-instance v4, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 877
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 880
    new-instance v5, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v6, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signerversion:I

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 882
    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 883
    iget-object v6, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/signatures/CertificateInfo;->getIssuer([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 884
    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v7, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 885
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 888
    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 889
    new-instance v6, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v7, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestAlgorithmOid:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 890
    sget-object v6, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 891
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    if-eqz p1, :cond_7

    .line 895
    new-instance v5, Lorg/bouncycastle/asn1/DERTaggedObject;

    .line 896
    invoke-direct {p0, p1, p4, p5, p2}, Lcom/itextpdf/signatures/PdfPKCS7;->getAuthenticatedAttributeSet([BLjava/util/Collection;Ljava/util/Collection;Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;)Lorg/bouncycastle/asn1/DERSet;

    move-result-object p1

    invoke-direct {v5, v3, v3, p1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 895
    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 899
    :cond_7
    new-instance p1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 900
    new-instance p2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object p4, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    invoke-direct {p2, p4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 901
    sget-object p2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 902
    new-instance p2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 905
    new-instance p1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object p2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    if-eqz p3, :cond_8

    .line 911
    invoke-interface {p3}, Lcom/itextpdf/signatures/ITSAClient;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object p1

    iget-object p2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 912
    invoke-interface {p3, p1}, Lcom/itextpdf/signatures/ITSAClient;->getTimeStampToken([B)[B

    move-result-object p1

    if-eqz p1, :cond_8

    .line 914
    invoke-direct {p0, p1}, Lcom/itextpdf/signatures/PdfPKCS7;->buildUnauthenticatedAttributes([B)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 916
    new-instance p2, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance p3, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {p3, p1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const/4 p1, 0x1

    invoke-direct {p2, v3, p1, p3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 922
    :cond_8
    new-instance p1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 923
    new-instance p2, Lorg/bouncycastle/asn1/ASN1Integer;

    iget p3, p0, Lcom/itextpdf/signatures/PdfPKCS7;->version:I

    int-to-long p3, p3

    invoke-direct {p2, p3, p4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 924
    new-instance p2, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {p2, v0}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 925
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 926
    new-instance p2, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {p2, v3, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 929
    new-instance p2, Lorg/bouncycastle/asn1/DERSet;

    new-instance p3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p3, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p2, p3}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 934
    new-instance p2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 935
    new-instance p3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string p4, "1.2.840.113549.1.7.2"

    invoke-direct {p3, p4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 936
    new-instance p3, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance p4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p4, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p3, v3, p4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p2, p3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 938
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 940
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->create(Ljava/io/OutputStream;)Lorg/bouncycastle/asn1/ASN1OutputStream;

    move-result-object p3

    .line 941
    new-instance p4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p4, p2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {p3, p4}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    .line 942
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->close()V

    .line 944
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 946
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p2, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getEncryptionAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1483
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/signatures/EncryptionAlgorithms;->getAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getFilterSubtype()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 1474
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->filterSubtype:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public getHashAlgorithm()Ljava/lang/String;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestAlgorithmOid:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/signatures/DigestAlgorithms;->getDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getOcsp()Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    .locals 1

    .line 1349
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->basicResp:Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getSignCertificateChain()[Ljava/security/cert/Certificate;
    .locals 2

    .line 1262
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCerts:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getSignDate()Ljava/util/Calendar;
    .locals 2

    .line 555
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getTimeStampDate()Ljava/util/Calendar;

    move-result-object v0

    .line 556
    sget-object v1, Lcom/itextpdf/signatures/TimestampConstants;->UNDEFINED_TIMESTAMP_DATE:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signDate:Ljava/util/Calendar;

    :cond_0
    return-object v0
.end method

.method public getSignName()Ljava/lang/String;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signName:Ljava/lang/String;

    return-object v0
.end method

.method public getSigningCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1271
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getSigningInfoVersion()I
    .locals 1

    .line 599
    iget v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signerversion:I

    return v0
.end method

.method public getTimeStampDate()Ljava/util/Calendar;
    .locals 1

    .line 1462
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    if-nez v0, :cond_0

    .line 1463
    sget-object v0, Lcom/itextpdf/signatures/TimestampConstants;->UNDEFINED_TIMESTAMP_DATE:Ljava/lang/Object;

    check-cast v0, Ljava/util/Calendar;

    return-object v0

    .line 1465
    :cond_0
    invoke-static {v0}, Lcom/itextpdf/signatures/SignUtils;->getTimeStampDate(Lorg/bouncycastle/tsp/TimeStampToken;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;
    .locals 1

    .line 1450
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 590
    iget v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->version:I

    return v0
.end method

.method public isRevocationValid()Z
    .locals 5

    .line 1358
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->basicResp:Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1360
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCerts:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    return v1

    .line 1363
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getSignCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 1364
    iget-object v2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->basicResp:Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    invoke-virtual {v2}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->getResponses()[Lorg/bouncycastle/cert/ocsp/SingleResp;

    move-result-object v2

    aget-object v2, v2, v1

    .line 1365
    invoke-virtual {v2}, Lorg/bouncycastle/cert/ocsp/SingleResp;->getCertID()Lorg/bouncycastle/cert/ocsp/CertificateID;

    move-result-object v2

    .line 1366
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getSigningCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v3

    const/4 v4, 0x1

    .line 1367
    aget-object v0, v0, v4

    .line 1368
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    .line 1369
    invoke-virtual {v2}, Lorg/bouncycastle/cert/ocsp/CertificateID;->getHashAlgOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    .line 1368
    invoke-static {v0, v3, v4}, Lcom/itextpdf/signatures/SignUtils;->generateCertificateId(Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/cert/ocsp/CertificateID;

    move-result-object v0

    .line 1370
    invoke-virtual {v0, v2}, Lorg/bouncycastle/cert/ocsp/CertificateID;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public isTsp()Z
    .locals 1

    .line 1441
    iget-boolean v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->isTsp:Z

    return v0
.end method

.method public setExternalDigest([B[BLjava/lang/String;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->externalDigest:[B

    .line 701
    iput-object p2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->externalRsaData:[B

    if-eqz p3, :cond_3

    .line 703
    const-string p1, "RSA"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 704
    const-string p1, "1.2.840.113549.1.1.1"

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    goto :goto_0

    .line 705
    :cond_0
    const-string p1, "DSA"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 706
    const-string p1, "1.2.840.10040.4.1"

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    goto :goto_0

    .line 707
    :cond_1
    const-string p1, "ECDSA"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 708
    const-string p1, "1.2.840.10045.2.1"

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    goto :goto_0

    .line 710
    :cond_2
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Unknown key algorithm: {0}."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 711
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->location:Ljava/lang/String;

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->reason:Ljava/lang/String;

    return-void
.end method

.method public setSignDate(Ljava/util/Calendar;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signDate:Ljava/util/Calendar;

    return-void
.end method

.method public setSignName(Ljava/lang/String;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signName:Ljava/lang/String;

    return-void
.end method

.method public setSignaturePolicy(Lcom/itextpdf/signatures/SignaturePolicyInfo;)V
    .locals 0

    .line 488
    invoke-virtual {p1}, Lcom/itextpdf/signatures/SignaturePolicyInfo;->toSignaturePolicyIdentifier()Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signaturePolicyIdentifier:Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    return-void
.end method

.method public setSignaturePolicy(Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signaturePolicyIdentifier:Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    return-void
.end method

.method public update([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 762
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestAttr:[B

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->isTsp:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sig:Ljava/security/Signature;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V

    goto :goto_1

    .line 763
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    :goto_1
    return-void
.end method

.method public verifySignatureIntegrityAndAuthenticity()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1169
    iget-boolean v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->verified:Z

    if-eqz v0, :cond_0

    .line 1170
    iget-boolean v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->verifyResult:Z

    return v0

    .line 1171
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->isTsp:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1172
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v0

    .line 1173
    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->toASN1Structure()Lorg/bouncycastle/asn1/tsp/TSTInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v0

    .line 1174
    iget-object v2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 1175
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashedMessage()[B

    move-result-object v0

    .line 1176
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->verifyResult:Z

    goto/16 :goto_6

    .line 1178
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sigAttr:[B

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sigAttrDer:[B

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1193
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    if-eqz v0, :cond_3

    .line 1194
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sig:Ljava/security/Signature;

    iget-object v2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->update([B)V

    .line 1195
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sig:Ljava/security/Signature;

    iget-object v2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    invoke-virtual {v0, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->verifyResult:Z

    goto :goto_6

    .line 1179
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 1183
    iget-object v2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 1184
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 1185
    iget-object v4, p0, Lcom/itextpdf/signatures/PdfPKCS7;->encContDigest:Ljava/security/MessageDigest;

    iget-object v5, p0, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 1186
    iget-object v4, p0, Lcom/itextpdf/signatures/PdfPKCS7;->encContDigest:Ljava/security/MessageDigest;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestAttr:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    goto :goto_1

    :cond_5
    move v2, v1

    move v4, v3

    .line 1188
    :goto_1
    iget-object v5, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestAttr:[B

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_3

    :cond_7
    :goto_2
    move v0, v1

    .line 1190
    :goto_3
    iget-object v4, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sigAttr:[B

    invoke-direct {p0, v4}, Lcom/itextpdf/signatures/PdfPKCS7;->verifySigAttributes([B)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sigAttrDer:[B

    invoke-direct {p0, v4}, Lcom/itextpdf/signatures/PdfPKCS7;->verifySigAttributes([B)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    move v4, v3

    goto :goto_5

    :cond_9
    :goto_4
    move v4, v1

    :goto_5
    if-eqz v0, :cond_a

    if-eqz v4, :cond_a

    if-eqz v2, :cond_a

    move v3, v1

    .line 1191
    :cond_a
    iput-boolean v3, p0, Lcom/itextpdf/signatures/PdfPKCS7;->verifyResult:Z

    .line 1198
    :goto_6
    iput-boolean v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->verified:Z

    .line 1199
    iget-boolean v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->verifyResult:Z

    return v0
.end method

.method public verifyTimestampImprint()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1216
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1219
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v0

    .line 1220
    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->toASN1Structure()Lorg/bouncycastle/asn1/tsp/TSTInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v1

    .line 1221
    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1222
    invoke-static {v0}, Lcom/itextpdf/signatures/DigestAlgorithms;->getDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/signatures/SignUtils;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 1223
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashedMessage()[B

    move-result-object v1

    .line 1224
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method
