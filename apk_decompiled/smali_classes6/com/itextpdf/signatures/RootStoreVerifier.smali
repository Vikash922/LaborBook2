.class public Lcom/itextpdf/signatures/RootStoreVerifier;
.super Lcom/itextpdf/signatures/CertificateVerifier;
.source "RootStoreVerifier.java"


# instance fields
.field protected rootStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>(Lcom/itextpdf/signatures/CertificateVerifier;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/itextpdf/signatures/CertificateVerifier;-><init>(Lcom/itextpdf/signatures/CertificateVerifier;)V

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/itextpdf/signatures/RootStoreVerifier;->rootStore:Ljava/security/KeyStore;

    return-void
.end method


# virtual methods
.method public setRootStore(Ljava/security/KeyStore;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/itextpdf/signatures/RootStoreVerifier;->rootStore:Ljava/security/KeyStore;

    return-void
.end method

.method public verify(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/signatures/VerificationOK;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/itextpdf/signatures/RootStoreVerifier;->rootStore:Ljava/security/KeyStore;

    if-nez v0, :cond_0

    .line 93
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/signatures/CertificateVerifier;->verify(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 95
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object v1, p0, Lcom/itextpdf/signatures/RootStoreVerifier;->rootStore:Ljava/security/KeyStore;

    invoke-static {v1}, Lcom/itextpdf/signatures/SignUtils;->getCertificates(Ljava/security/KeyStore;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    :try_start_1
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 100
    new-instance v2, Lcom/itextpdf/signatures/VerificationOK;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "Certificate verified against root store."

    invoke-direct {v2, p1, v3, v4}, Lcom/itextpdf/signatures/VerificationOK;-><init>(Ljava/security/cert/X509Certificate;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/signatures/CertificateVerifier;->verify(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 108
    :cond_1
    :try_start_2
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/signatures/CertificateVerifier;->verify(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    .line 111
    :catch_1
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/signatures/CertificateVerifier;->verify(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
