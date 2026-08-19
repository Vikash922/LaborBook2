.class public Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;
.super Ljava/lang/Object;
.source "PublicKeyRecipient.java"


# instance fields
.field private certificate:Ljava/security/cert/Certificate;

.field protected cms:[B

.field private permission:I


# direct methods
.method public constructor <init>(Ljava/security/cert/Certificate;I)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;->cms:[B

    .line 57
    iput-object p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;->certificate:Ljava/security/cert/Certificate;

    .line 58
    iput p2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;->permission:I

    return-void
.end method


# virtual methods
.method public getCertificate()Ljava/security/cert/Certificate;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;->certificate:Ljava/security/cert/Certificate;

    return-object v0
.end method

.method protected getCms()[B
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;->cms:[B

    return-object v0
.end method

.method public getPermission()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;->permission:I

    return v0
.end method

.method protected setCms([B)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;->cms:[B

    return-void
.end method
