.class public Lcom/itextpdf/kernel/pdf/CountOutputStream;
.super Ljava/io/OutputStream;
.source "CountOutputStream.java"


# instance fields
.field private amountOfWrittenBytes:J

.field private final outputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/CountOutputStream;->amountOfWrittenBytes:J

    .line 44
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/CountOutputStream;->outputStream:Ljava/io/OutputStream;

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

    .line 87
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/CountOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/CountOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public getAmountOfWrittenBytes()J
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/CountOutputStream;->amountOfWrittenBytes:J

    return-wide v0
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/CountOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 71
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/CountOutputStream;->amountOfWrittenBytes:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/CountOutputStream;->amountOfWrittenBytes:J

    return-void
.end method

.method public write([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/CountOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 53
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/CountOutputStream;->amountOfWrittenBytes:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/CountOutputStream;->amountOfWrittenBytes:J

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/CountOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 62
    iget-wide p1, p0, Lcom/itextpdf/kernel/pdf/CountOutputStream;->amountOfWrittenBytes:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/itextpdf/kernel/pdf/CountOutputStream;->amountOfWrittenBytes:J

    return-void
.end method
