.class public abstract Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;
.super Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;
.source "PubKeySecurityHandler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final SEED_LENGTH:I = 0x14


# instance fields
.field private recipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private seed:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->recipients:Ljava/util/List;

    const/16 v0, 0x14

    .line 97
    invoke-static {v0}, Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils;->generateSeed(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->seed:[B

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->recipients:Ljava/util/List;

    return-void
.end method

.method private addRecipient(Ljava/security/cert/Certificate;I)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->recipients:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;

    invoke-direct {v1, p1, p2}, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;-><init>(Ljava/security/cert/Certificate;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected static computeGlobalKeyOnReading(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;ZLjava/lang/String;)[B
    .locals 1

    .line 126
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Recipients:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-nez v0, :cond_0

    .line 128
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DefaultCryptFilter:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 129
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Recipients:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 130
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 133
    :cond_0
    invoke-static {p1, p2, p3, p4, v0}, Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils;->fetchEnvelopedData(Ljava/security/Key;Ljava/security/cert/Certificate;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;Lcom/itextpdf/kernel/pdf/PdfArray;)[B

    move-result-object p0

    .line 139
    :try_start_0
    invoke-static {p6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    const/16 p2, 0x14

    const/4 p3, 0x0

    .line 140
    invoke-virtual {p1, p0, p3, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 141
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result p0

    if-ge p3, p0, :cond_1

    .line 142
    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValueBytes()[B

    move-result-object p0

    .line 143
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    if-nez p5, :cond_2

    const/4 p0, 0x4

    .line 146
    new-array p0, p0, [B

    fill-array-data p0, :array_0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 148
    :cond_2
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 150
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Exception occurred with PDF document decryption. One of the possible reasons is wrong password or wrong public key certificate and private key."

    invoke-direct {p1, p2, p0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method private computeRecipientInfo(Ljava/security/cert/X509Certificate;[B)Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 302
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    .line 305
    new-instance v2, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    .line 306
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    .line 307
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    .line 308
    invoke-static {p1, p2, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils;->cipherBytes(Ljava/security/cert/X509Certificate;[BLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)[B

    move-result-object p1

    .line 309
    new-instance p2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 310
    new-instance p1, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    invoke-direct {p1, v2}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    .line 311
    new-instance v0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    invoke-direct {v0, p1, v1, p2}, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;-><init>(Lorg/bouncycastle/asn1/cms/RecipientIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object v0
.end method

.method private createDERForRecipient([BLjava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 287
    invoke-static {p1}, Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils;->calculateDERForRecipientParams([B)Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils$DERForRecipientParams;

    move-result-object p1

    .line 289
    iget-object v0, p1, Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils$DERForRecipientParams;->abyte0:[B

    invoke-direct {p0, p2, v0}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->computeRecipientInfo(Ljava/security/cert/X509Certificate;[B)Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    move-result-object p2

    .line 290
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v1, p1, Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils$DERForRecipientParams;->abyte1:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 291
    new-instance v1, Lorg/bouncycastle/asn1/DERSet;

    new-instance v2, Lorg/bouncycastle/asn1/cms/RecipientInfo;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/cms/RecipientInfo;-><init>(Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 292
    new-instance p2, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object p1, p1, Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils$DERForRecipientParams;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p2, v2, p1, v0}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 294
    new-instance p1, Lorg/bouncycastle/asn1/cms/EnvelopedData;

    const/4 v0, 0x0

    move-object v2, v0

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {p1, v0, v1, p2, v0}, Lorg/bouncycastle/asn1/cms/EnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 295
    new-instance p2, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->envelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 296
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/ContentInfo;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1
.end method

.method private getEncodedRecipient(I)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->recipients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;

    .line 223
    invoke-virtual {p1}, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;->getCms()[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 227
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    .line 229
    invoke-virtual {p1}, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;->getPermission()I

    move-result v1

    or-int/lit16 v1, v1, -0xf40

    and-int/lit8 v1, v1, -0x4

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x18

    .line 239
    new-array v3, v2, [B

    int-to-byte v4, v1

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    shr-int/lit8 v6, v1, 0x10

    int-to-byte v6, v6

    shr-int/2addr v1, v2

    int-to-byte v1, v1

    .line 247
    iget-object v2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->seed:[B

    const/4 v7, 0x0

    const/16 v8, 0x14

    invoke-static {v2, v7, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    aput-byte v1, v3, v8

    const/16 v1, 0x15

    .line 250
    aput-byte v6, v3, v1

    const/16 v1, 0x16

    .line 251
    aput-byte v5, v3, v1

    const/16 v1, 0x17

    .line 252
    aput-byte v4, v3, v1

    .line 254
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 255
    const-string v2, "DER"

    invoke-static {v1, v2}, Lcom/itextpdf/kernel/crypto/CryptoUtil;->createAsn1OutputStream(Ljava/io/OutputStream;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1OutputStream;

    move-result-object v2

    .line 256
    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v3, v0}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->createDERForRecipient([BLjava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 257
    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    .line 258
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 259
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;->setCms([B)V

    return-object v0
.end method

.method private getEncodedRecipients()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 5

    .line 265
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    const/4 v1, 0x0

    .line 267
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->recipients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v2, 0x0

    .line 269
    :try_start_0
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->getEncodedRecipient(I)[B

    move-result-object v3

    .line 270
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    invoke-static {v3}, Lcom/itextpdf/io/util/StreamUtil;->createEscapedString([B)[B

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfLiteral;-><init>([B)V

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-object v0, v2

    :cond_0
    return-object v0
.end method

.method private getRecipientsSize()I
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->recipients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getSeed()[B
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->seed:[B

    array-length v1, v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 212
    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method protected addAllRecipients([Ljava/security/cert/Certificate;[I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 157
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 158
    aget-object v1, p1, v0

    aget v2, p2, v0

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->addRecipient(Ljava/security/cert/Certificate;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected computeGlobalKey(Ljava/lang/String;Z)[B
    .locals 2

    .line 106
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 107
    invoke-direct {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->getSeed()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    const/4 v0, 0x0

    .line 108
    :goto_0
    invoke-direct {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->getRecipientsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 109
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->getEncodedRecipient(I)[B

    move-result-object v1

    .line 110
    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x4

    .line 113
    new-array p2, p2, [B

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_1
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 116
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "PdfEncryption exception."

    invoke-direct {p2, v0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method protected createRecipientsArray()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 3

    .line 166
    :try_start_0
    invoke-direct {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->getEncodedRecipients()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 168
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "PdfEncryption exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract getDigestAlgorithm()Ljava/lang/String;
.end method

.method protected abstract initKey([BI)V
.end method

.method protected initKeyAndFillDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;[Ljava/security/cert/Certificate;[IZZ)V
    .locals 0

    .line 181
    invoke-virtual {p0, p2, p3}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->addAllRecipients([Ljava/security/cert/Certificate;[I)V

    .line 183
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 184
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    const/16 p2, 0x28

    .line 186
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object p3

    .line 187
    invoke-virtual {p0, p3, p4}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->computeGlobalKey(Ljava/lang/String;Z)[B

    move-result-object p3

    .line 188
    invoke-virtual {p0, p3, p2}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->initKey([BI)V

    .line 190
    invoke-virtual {p0, p1, p4, p5}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->setPubSecSpecificHandlerDicEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;ZZ)V

    return-void
.end method

.method protected initKeyAndReadDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/security/Key;Ljava/security/cert/Certificate;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;Z)V
    .locals 7

    .line 196
    invoke-virtual {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v6

    .line 197
    move-object v1, p2

    check-cast v1, Ljava/security/PrivateKey;

    move-object v0, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->computeGlobalKeyOnReading(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;ZLjava/lang/String;)[B

    move-result-object p2

    .line 200
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x28

    .line 202
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->initKey([BI)V

    return-void
.end method

.method protected abstract setPubSecSpecificHandlerDicEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;ZZ)V
.end method
