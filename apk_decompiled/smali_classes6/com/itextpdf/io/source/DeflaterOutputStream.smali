.class public Lcom/itextpdf/io/source/DeflaterOutputStream;
.super Ljava/util/zip/DeflaterOutputStream;
.source "DeflaterOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, -0x1

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/io/source/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    const/16 v0, 0x200

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/io/source/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;II)V
    .locals 1

    .line 53
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0, p2}, Ljava/util/zip/Deflater;-><init>(I)V

    invoke-direct {p0, p1, v0, p3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/itextpdf/io/source/DeflaterOutputStream;->finish()V

    .line 67
    invoke-super {p0}, Ljava/util/zip/DeflaterOutputStream;->close()V

    return-void
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-super {p0}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 73
    iget-object v0, p0, Lcom/itextpdf/io/source/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    return-void
.end method
