.class public Lcom/itextpdf/kernel/crypto/securityhandler/UnsupportedSecurityHandlerException;
.super Lcom/itextpdf/kernel/exceptions/PdfException;
.source "UnsupportedSecurityHandlerException.java"


# static fields
.field public static final UnsupportedSecurityHandler:Ljava/lang/String; = "Failed to open the document. Security handler {0} is not supported"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    return-void
.end method
