.class public abstract Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;
.super Ljava/io/OutputStream;
.source "OutputStreamEncryption.java"


# instance fields
.field protected out:Ljava/io/OutputStream;

.field private sb:[B


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    .line 51
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;->sb:[B

    .line 58
    iput-object p1, p0, Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;->out:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;->finish()V

    .line 73
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public abstract finish()V
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;->sb:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 122
    invoke-virtual {p0, v0, v1, p1}, Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 103
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;->write([BII)V

    return-void
.end method

.method public abstract write([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
