.class public Lcom/itextpdf/signatures/VerificationException;
.super Ljava/security/GeneralSecurityException;
.source "VerificationException.java"


# direct methods
.method public constructor <init>(Ljava/security/cert/Certificate;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 66
    const-string p1, "Unknown"

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 67
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 66
    const-string p2, "Certificate {0} failed: {1}"

    invoke-static {p2, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    return-void
.end method
