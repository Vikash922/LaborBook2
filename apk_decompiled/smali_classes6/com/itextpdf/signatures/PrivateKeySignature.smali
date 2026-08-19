.class public Lcom/itextpdf/signatures/PrivateKeySignature;
.super Ljava/lang/Object;
.source "PrivateKeySignature.java"

# interfaces
.implements Lcom/itextpdf/signatures/IExternalSignature;


# instance fields
.field private encryptionAlgorithm:Ljava/lang/String;

.field private hashAlgorithm:Ljava/lang/String;

.field private pk:Ljava/security/PrivateKey;

.field private provider:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/itextpdf/signatures/PrivateKeySignature;->pk:Ljava/security/PrivateKey;

    .line 87
    iput-object p3, p0, Lcom/itextpdf/signatures/PrivateKeySignature;->provider:Ljava/lang/String;

    .line 88
    invoke-static {p2}, Lcom/itextpdf/signatures/DigestAlgorithms;->getAllowedDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/itextpdf/signatures/DigestAlgorithms;->getDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/itextpdf/signatures/PrivateKeySignature;->hashAlgorithm:Ljava/lang/String;

    .line 89
    invoke-static {p1}, Lcom/itextpdf/signatures/SignUtils;->getPrivateKeyAlgorithm(Ljava/security/PrivateKey;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/signatures/PrivateKeySignature;->encryptionAlgorithm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEncryptionAlgorithm()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/itextpdf/signatures/PrivateKeySignature;->encryptionAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getHashAlgorithm()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/itextpdf/signatures/PrivateKeySignature;->hashAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public sign([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/signatures/PrivateKeySignature;->hashAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "with"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/signatures/PrivateKeySignature;->encryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/itextpdf/signatures/PrivateKeySignature;->provider:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/itextpdf/signatures/SignUtils;->getSignatureHelper(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/itextpdf/signatures/PrivateKeySignature;->pk:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 116
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 117
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    return-object p1
.end method
