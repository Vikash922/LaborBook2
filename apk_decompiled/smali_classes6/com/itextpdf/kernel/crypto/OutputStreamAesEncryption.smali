.class public Lcom/itextpdf/kernel/crypto/OutputStreamAesEncryption;
.super Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;
.source "OutputStreamAesEncryption.java"


# instance fields
.field protected cipher:Lcom/itextpdf/kernel/crypto/AESCipher;

.field private finished:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 2

    const/4 v0, 0x0

    .line 80
    array-length v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/itextpdf/kernel/crypto/OutputStreamAesEncryption;-><init>(Ljava/io/OutputStream;[BII)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[BII)V
    .locals 2

    .line 62
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;-><init>(Ljava/io/OutputStream;)V

    .line 63
    invoke-static {}, Lcom/itextpdf/kernel/crypto/IVGenerator;->getIV()[B

    move-result-object p1

    .line 64
    new-array v0, p4, [B

    const/4 v1, 0x0

    .line 65
    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    new-instance p2, Lcom/itextpdf/kernel/crypto/AESCipher;

    const/4 p3, 0x1

    invoke-direct {p2, p3, v0, p1}, Lcom/itextpdf/kernel/crypto/AESCipher;-><init>(Z[B[B)V

    iput-object p2, p0, Lcom/itextpdf/kernel/crypto/OutputStreamAesEncryption;->cipher:Lcom/itextpdf/kernel/crypto/AESCipher;

    .line 68
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/crypto/OutputStreamAesEncryption;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 70
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p3, "PdfEncryption exception."

    invoke-direct {p2, p3, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public finish()V
    .locals 4

    .line 119
    iget-boolean v0, p0, Lcom/itextpdf/kernel/crypto/OutputStreamAesEncryption;->finished:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/itextpdf/kernel/crypto/OutputStreamAesEncryption;->finished:Z

    .line 122
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/OutputStreamAesEncryption;->cipher:Lcom/itextpdf/kernel/crypto/AESCipher;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/crypto/AESCipher;->doFinal()[B

    move-result-object v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/OutputStreamAesEncryption;->out:Ljava/io/OutputStream;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 126
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "PdfEncryption exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/OutputStreamAesEncryption;->cipher:Lcom/itextpdf/kernel/crypto/AESCipher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/kernel/crypto/AESCipher;->update([BII)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 113
    array-length p2, p1

    if-nez p2, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    iget-object p2, p0, Lcom/itextpdf/kernel/crypto/OutputStreamAesEncryption;->out:Ljava/io/OutputStream;

    const/4 p3, 0x0

    array-length v0, p1

    invoke-virtual {p2, p1, p3, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_1
    :goto_0
    return-void
.end method
