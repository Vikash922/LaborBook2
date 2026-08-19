.class public Lcom/itextpdf/signatures/SignaturePolicyInfo;
.super Ljava/lang/Object;
.source "SignaturePolicyInfo.java"


# instance fields
.field private policyDigestAlgorithm:Ljava/lang/String;

.field private policyHash:[B

.field private policyIdentifier:Ljava/lang/String;

.field private policyUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 107
    invoke-static {p2}, Lcom/itextpdf/commons/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/signatures/SignaturePolicyInfo;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 88
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iput-object p1, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyIdentifier:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyHash:[B

    .line 94
    iput-object p3, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyDigestAlgorithm:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyUri:Ljava/lang/String;

    return-void

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Policy digest algorithm cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Policy hash cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Policy identifier cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getPolicyDigestAlgorithm()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyDigestAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyHash()[B
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyHash:[B

    return-object v0
.end method

.method public getPolicyIdentifier()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyUri()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyUri:Ljava/lang/String;

    return-object v0
.end method

.method toSignaturePolicyIdentifier()Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;
    .locals 6

    .line 128
    iget-object v0, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyDigestAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/signatures/DigestAlgorithms;->getAllowedDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 138
    new-instance v1, Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_spq_ets_uri:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/asn1/DERIA5String;

    iget-object v4, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyUri:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 142
    :goto_0
    new-instance v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v3, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyIdentifier:Ljava/lang/String;

    const-string v4, "urn:oid:"

    const-string v5, ""

    .line 143
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    .line 144
    new-instance v3, Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    new-instance v4, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v5, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v5, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v5, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyHash:[B

    invoke-direct {v0, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 147
    new-instance v0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 148
    invoke-static {v4}, Lcom/itextpdf/signatures/SignUtils;->createSigPolicyQualifiers([Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;)Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;)V

    .line 149
    new-instance v1, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;-><init>(Lorg/bouncycastle/asn1/esf/SignaturePolicyId;)V

    return-object v1

    .line 131
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid policy hash algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
