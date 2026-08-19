.class public Lcom/itextpdf/kernel/exceptions/BadPasswordException;
.super Lcom/itextpdf/kernel/exceptions/PdfException;
.source "BadPasswordException.java"


# static fields
.field public static final PdfReaderNotOpenedWithOwnerPassword:Ljava/lang/String; = "PdfReader is not opened with owner password"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
