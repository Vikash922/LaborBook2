.class public Lcom/itextpdf/io/source/OutputStream;
.super Ljava/io/OutputStream;
.source "OutputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/io/OutputStream;",
        ">",
        "Ljava/io/OutputStream;"
    }
.end annotation


# instance fields
.field protected closeStream:Z

.field protected currentPos:J

.field private localHighPrecision:Ljava/lang/Boolean;

.field private final numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

.field protected outputStream:Ljava/io/OutputStream;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 53
    new-instance v0, Lcom/itextpdf/io/source/ByteBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, p0, Lcom/itextpdf/io/source/OutputStream;->currentPos:J

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/itextpdf/io/source/OutputStream;->closeStream:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .line 105
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 53
    new-instance v0, Lcom/itextpdf/io/source/ByteBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, p0, Lcom/itextpdf/io/source/OutputStream;->currentPos:J

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/itextpdf/io/source/OutputStream;->closeStream:Z

    .line 106
    iput-object p1, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2

    .line 127
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 53
    new-instance v0, Lcom/itextpdf/io/source/ByteBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, p0, Lcom/itextpdf/io/source/OutputStream;->currentPos:J

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/itextpdf/io/source/OutputStream;->closeStream:Z

    .line 128
    iput-object p1, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    .line 129
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/source/OutputStream;->localHighPrecision:Ljava/lang/Boolean;

    return-void
.end method

.method public static getHighPrecision()Z
    .locals 1

    .line 65
    sget-boolean v0, Lcom/itextpdf/io/source/ByteUtils;->HighPrecision:Z

    return v0
.end method

.method public static setHighPrecision(Z)V
    .locals 0

    .line 75
    sput-boolean p0, Lcom/itextpdf/io/source/ByteUtils;->HighPrecision:Z

    return-void
.end method


# virtual methods
.method public assignBytes([BI)V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    instance-of v1, v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    if-eqz v1, :cond_0

    .line 408
    check-cast v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->assignBytes([BI)Lcom/itextpdf/io/source/ByteArrayOutputStream;

    int-to-long p1, p2

    .line 409
    iput-wide p1, p0, Lcom/itextpdf/io/source/OutputStream;->currentPos:J

    return-void

    .line 411
    :cond_0
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    const-string p2, "Bytes can be assigned to ByteArrayOutputStream only."

    invoke-direct {p1, p2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget-boolean v0, p0, Lcom/itextpdf/io/source/OutputStream;->closeStream:Z

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public getCurrentPos()J
    .locals 2

    .line 369
    iget-wide v0, p0, Lcom/itextpdf/io/source/OutputStream;->currentPos:J

    return-wide v0
.end method

.method public getLocalHighPrecision()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->localHighPrecision:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public isCloseStream()Z
    .locals 1

    .line 388
    iget-boolean v0, p0, Lcom/itextpdf/io/source/OutputStream;->closeStream:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    instance-of v1, v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    if-eqz v1, :cond_0

    .line 423
    check-cast v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->reset()V

    const-wide/16 v0, 0x0

    .line 424
    iput-wide v0, p0, Lcom/itextpdf/io/source/OutputStream;->currentPos:J

    return-void

    .line 426
    :cond_0
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Bytes can be reset in ByteArrayOutputStream only."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCloseStream(Z)V
    .locals 0

    .line 397
    iput-boolean p1, p0, Lcom/itextpdf/io/source/OutputStream;->closeStream:Z

    return-void
.end method

.method public setLocalHighPrecision(Z)V
    .locals 0

    .line 95
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/source/OutputStream;->localHighPrecision:Ljava/lang/Boolean;

    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 135
    iget-wide v0, p0, Lcom/itextpdf/io/source/OutputStream;->currentPos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/io/source/OutputStream;->currentPos:J

    return-void
.end method

.method public write([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 141
    iget-wide v0, p0, Lcom/itextpdf/io/source/OutputStream;->currentPos:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/io/source/OutputStream;->currentPos:J

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 147
    iget-wide p1, p0, Lcom/itextpdf/io/source/OutputStream;->currentPos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/itextpdf/io/source/OutputStream;->currentPos:J

    return-void
.end method

.method public writeByte(I)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 289
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/source/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 292
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Cannot write byte."

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeByte(B)V
    .locals 2

    .line 159
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/source/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 161
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Cannot write byte."

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeBytes([B)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .line 336
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/source/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 339
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Cannot write bytes."

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeBytes([BII)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TT;"
        }
    .end annotation

    .line 356
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/io/source/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 359
    new-instance p2, Lcom/itextpdf/io/exceptions/IOException;

    const-string p3, "Cannot write bytes."

    invoke-direct {p2, p3, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeDouble(D)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TT;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->localHighPrecision:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/itextpdf/io/source/ByteUtils;->HighPrecision:Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/io/source/OutputStream;->writeDouble(DZ)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public writeDouble(DZ)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DZ)TT;"
        }
    .end annotation

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->reset()Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v0

    invoke-static {p1, p2, v0, p3}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(DLcom/itextpdf/io/source/ByteBuffer;Z)[B

    .line 273
    iget-object p1, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {p1}, Lcom/itextpdf/io/source/ByteBuffer;->getInternalBuffer()[B

    move-result-object p1

    iget-object p2, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {p2}, Lcom/itextpdf/io/source/ByteBuffer;->capacity()I

    move-result p2

    iget-object p3, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {p3}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {p3}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/io/source/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 276
    new-instance p2, Lcom/itextpdf/io/exceptions/IOException;

    const-string p3, "Cannot write float number."

    invoke-direct {p2, p3, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeFloat(F)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->localHighPrecision:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/itextpdf/io/source/ByteUtils;->HighPrecision:Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/io/source/OutputStream;->writeFloat(FZ)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public writeFloat(FZ)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZ)TT;"
        }
    .end annotation

    float-to-double v0, p1

    .line 231
    invoke-virtual {p0, v0, v1, p2}, Lcom/itextpdf/io/source/OutputStream;->writeDouble(DZ)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public writeFloats([F)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 242
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 243
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/itextpdf/io/source/OutputStream;->writeFloat(F)Ljava/io/OutputStream;

    .line 244
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/itextpdf/io/source/OutputStream;->writeSpace()Ljava/io/OutputStream;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public writeInteger(I)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->reset()Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(ILcom/itextpdf/io/source/ByteBuffer;)[B

    .line 204
    iget-object p1, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {p1}, Lcom/itextpdf/io/source/ByteBuffer;->getInternalBuffer()[B

    move-result-object p1

    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/io/source/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 207
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Cannot write int number."

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeLong(J)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    long-to-double p1, p1

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->reset()Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(DLcom/itextpdf/io/source/ByteBuffer;)[B

    .line 187
    iget-object p1, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {p1}, Lcom/itextpdf/io/source/ByteBuffer;->getInternalBuffer()[B

    move-result-object p1

    iget-object p2, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {p2}, Lcom/itextpdf/io/source/ByteBuffer;->capacity()I

    move-result p2

    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/io/source/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 190
    new-instance p2, Lcom/itextpdf/io/exceptions/IOException;

    const-string v0, "Cannot write int number."

    invoke-direct {p2, v0, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeNewLine()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/16 v0, 0xa

    .line 311
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/OutputStream;->writeByte(I)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeSpace()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/16 v0, 0x20

    .line 302
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/OutputStream;->writeByte(I)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeString(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 322
    invoke-static {p1}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/io/source/OutputStream;->writeBytes([B)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method
