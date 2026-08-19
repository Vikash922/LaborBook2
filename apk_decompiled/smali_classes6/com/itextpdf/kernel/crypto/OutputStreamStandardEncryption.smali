.class public Lcom/itextpdf/kernel/crypto/OutputStreamStandardEncryption;
.super Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;
.source "OutputStreamStandardEncryption.java"


# instance fields
.field protected arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 2

    const/4 v0, 0x0

    .line 66
    array-length v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/itextpdf/kernel/crypto/OutputStreamStandardEncryption;-><init>(Ljava/io/OutputStream;[BII)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[BII)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;-><init>(Ljava/io/OutputStream;)V

    .line 61
    new-instance p1, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    invoke-direct {p1}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/kernel/crypto/OutputStreamStandardEncryption;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    .line 62
    invoke-virtual {p1, p2, p3, p4}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->prepareARCFOURKey([BII)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    return-void
.end method

.method public write([BII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1060

    .line 98
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v7, v0, [B

    :goto_0
    if-lez p3, :cond_0

    .line 100
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 101
    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/OutputStreamStandardEncryption;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, v8

    move-object v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->encryptARCFOUR([BII[BI)V

    .line 102
    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/OutputStreamStandardEncryption;->out:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2, v8}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr p3, v8

    add-int/2addr p2, v8

    goto :goto_0

    :cond_0
    return-void
.end method
