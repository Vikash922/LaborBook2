.class final Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils;
.super Ljava/lang/Object;
.source "EncryptionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils$DERForRecipientParams;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateDERForRecipientParams([B)Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils$DERForRecipientParams;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 171
    new-instance v0, Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils$DERForRecipientParams;

    invoke-direct {v0}, Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils$DERForRecipientParams;-><init>()V

    .line 173
    const-string v1, "1.2.840.113549.3.2"

    invoke-static {v1}, Ljava/security/AlgorithmParameterGenerator;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameterGenerator;

    move-result-object v2

    .line 174
    invoke-virtual {v2}, Ljava/security/AlgorithmParameterGenerator;->generateParameters()Ljava/security/AlgorithmParameters;

    move-result-object v2

    .line 175
    new-instance v3, Ljava/io/ByteArrayInputStream;

    const-string v4, "ASN.1"

    invoke-virtual {v2, v4}, Ljava/security/AlgorithmParameters;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 176
    new-instance v4, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 177
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 178
    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v4

    const/16 v5, 0x80

    .line 179
    invoke-virtual {v4, v5}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 180
    invoke-virtual {v4}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 181
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/4 v6, 0x1

    .line 182
    invoke-virtual {v5, v6, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 184
    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils$DERForRecipientParams;->abyte0:[B

    .line 185
    invoke-virtual {v5, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    iput-object p0, v0, Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils$DERForRecipientParams;->abyte1:[B

    .line 186
    new-instance p0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p0, v0, Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils$DERForRecipientParams;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method static cipherBytes(Ljava/security/cert/X509Certificate;[BLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 150
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 v0, 0x1

    .line 152
    :try_start_0
    invoke-virtual {p2, v0, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 156
    :goto_0
    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method static fetchEnvelopedData(Ljava/security/Key;Ljava/security/cert/Certificate;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;Lcom/itextpdf/kernel/pdf/PdfArray;)[B
    .locals 7

    .line 97
    const-string v0, "Exception occurred with PDF document decryption. One of the possible reasons is wrong password or wrong public key certificate and private key."

    .line 102
    :try_start_0
    new-instance v1, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p3, :cond_2

    move p3, v2

    .line 107
    :goto_0
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 108
    invoke-virtual {p4, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v4

    .line 111
    :try_start_1
    new-instance v5, Lorg/bouncycastle/cms/CMSEnvelopedData;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfString;->getValueBytes()[B

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/bouncycastle/cms/CMSEnvelopedData;-><init>([B)V

    .line 112
    invoke-virtual {v5}, Lorg/bouncycastle/cms/CMSEnvelopedData;->getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/cms/RecipientInformationStore;->getRecipients()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 113
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 114
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/cms/RecipientInformation;

    .line 116
    invoke-virtual {v5}, Lorg/bouncycastle/cms/RecipientInformation;->getRID()Lorg/bouncycastle/cms/RecipientId;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/bouncycastle/cms/RecipientId;->match(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez p3, :cond_0

    .line 117
    move-object p3, p0

    check-cast p3, Ljava/security/PrivateKey;

    invoke-static {v5, p3, p2}, Lcom/itextpdf/kernel/pdf/PdfEncryptor;->getContent(Lorg/bouncycastle/cms/RecipientInformation;Ljava/security/PrivateKey;Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move p3, p1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 122
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p1, v0, p0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    move p0, v2

    .line 126
    :goto_2
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result p2

    if-ge v2, p2, :cond_4

    .line 127
    invoke-virtual {p4, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object p2

    .line 130
    :try_start_2
    new-instance v1, Lorg/bouncycastle/cms/CMSEnvelopedData;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfString;->getValueBytes()[B

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/bouncycastle/cms/CMSEnvelopedData;-><init>([B)V

    .line 131
    invoke-virtual {v1}, Lorg/bouncycastle/cms/CMSEnvelopedData;->getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object p2

    invoke-interface {p3}, Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;->getCmsRecipientId()Lorg/bouncycastle/cms/RecipientId;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/bouncycastle/cms/RecipientInformationStore;->get(Lorg/bouncycastle/cms/RecipientId;)Lorg/bouncycastle/cms/RecipientInformation;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 133
    invoke-interface {p3}, Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;->getCmsRecipient()Lorg/bouncycastle/cms/Recipient;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/bouncycastle/cms/RecipientInformation;->getContent(Lorg/bouncycastle/cms/Recipient;)[B

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v3, p0

    move p0, p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 137
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p1, v0, p0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    move p3, p0

    :cond_5
    if-eqz p3, :cond_6

    if-eqz v3, :cond_6

    return-object v3

    .line 143
    :cond_6
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p1, "Bad public key certificate and/or private key."

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    move-exception p0

    .line 104
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p1, v0, p0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static generateSeed(I)[B
    .locals 3

    .line 83
    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0xc0

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 85
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 86
    new-array v1, p0, [B

    .line 88
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    invoke-static {p0}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v1

    :goto_0
    return-object v1
.end method
