.class public Lcom/itextpdf/signatures/CertificateUtil;
.super Ljava/lang/Object;
.source "CertificateUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCRL(Ljava/lang/String;)Ljava/security/cert/CRL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 138
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/itextpdf/signatures/SignUtils;->parseCrlFromStream(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0
.end method

.method public static getCRL(Ljava/security/cert/X509Certificate;)Ljava/security/cert/CRL;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-static {p0}, Lcom/itextpdf/signatures/CertificateUtil;->getCRLURL(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itextpdf/signatures/CertificateUtil;->getCRL(Ljava/lang/String;)Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0
.end method

.method public static getCRLURL(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    .line 99
    :try_start_0
    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/itextpdf/signatures/CertificateUtil;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-object p0, v0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Primitive;

    move-object p0, v0

    :goto_0
    if-nez p0, :cond_0

    return-object v0

    .line 106
    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object p0

    .line 107
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object p0

    .line 108
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v4, p0, v3

    .line 109
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v4

    .line 110
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_3

    .line 113
    :cond_1
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 114
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 115
    array-length v5, v4

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 116
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v8

    const/4 v9, 0x6

    if-eq v8, v9, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 119
    :cond_2
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/GeneralName;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {p0, v2}, Lorg/bouncycastle/asn1/DERIA5String;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object p0

    .line 120
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private static getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    invoke-static {p0, p1}, Lcom/itextpdf/signatures/SignUtils;->getExtensionValueByOid(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 216
    :cond_0
    new-instance p1, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 217
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 218
    new-instance p1, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 219
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public static getOCSPURL(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 151
    :try_start_0
    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->authorityInfoAccess:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/itextpdf/signatures/CertificateUtil;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 155
    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x0

    move v2, v1

    .line 156
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 157
    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 158
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 161
    :cond_1
    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    instance-of v4, v4, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v4, :cond_3

    .line 162
    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 163
    const-string v5, "1.3.6.1.5.5.7.48.1"

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 p0, 0x1

    .line 164
    invoke-virtual {v3, p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 165
    invoke-static {p0}, Lcom/itextpdf/signatures/CertificateUtil;->getStringFromGeneralName(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    .line 167
    const-string p0, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    return-object v0
.end method

.method private static getStringFromGeneralName(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 230
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static getTSAURL(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 2

    .line 188
    const-string v0, "1.2.840.113583.1.1.9.1"

    invoke-static {p0, v0}, Lcom/itextpdf/signatures/SignUtils;->getExtensionValueByOid(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 193
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    .line 194
    check-cast p0, Lorg/bouncycastle/asn1/DEROctetString;

    .line 195
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    .line 196
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    const/4 v1, 0x1

    .line 197
    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lcom/itextpdf/signatures/CertificateUtil;->getStringFromGeneralName(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method
