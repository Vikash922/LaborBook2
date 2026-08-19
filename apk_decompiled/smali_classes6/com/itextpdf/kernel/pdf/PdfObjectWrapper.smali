.class public abstract Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.super Ljava/lang/Object;
.source "PdfObjectWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/itextpdf/kernel/pdf/PdfObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private pdfObject:Lcom/itextpdf/kernel/pdf/PdfObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->pdfObject:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 57
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->isWrappedObjectMustBeIndirect()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->pdfObject:Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->markObjectAsIndirect(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    :cond_0
    return-void
.end method

.method protected static ensureObjectIsAddedToDocument(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    .line 158
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Object must be indirect to work with this wrapper."

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static markObjectAsIndirect(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x40

    .line 142
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_0
    return-void
.end method


# virtual methods
.method protected ensureUnderlyingObjectHasIndirectReference()V
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 135
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "To manually flush this wrapper, you have to ensure that the object behind this wrapper is added to the document, i.e. it has an indirect reference."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->pdfObject:Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->flush()V

    return-void
.end method

.method public getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->pdfObject:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method public isFlushed()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->pdfObject:Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isFlushed()Z

    move-result v0

    return v0
.end method

.method protected abstract isWrappedObjectMustBeIndirect()Z
.end method

.method public makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ")",
            "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    move-result-object p1

    return-object p1
.end method

.method public makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ")",
            "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
            "TT;>;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object p0
.end method

.method protected setForbidRelease()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->pdfObject:Lcom/itextpdf/kernel/pdf/PdfObject;

    if-eqz v0, :cond_0

    const/16 v1, 0x80

    .line 123
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_0
    return-void
.end method

.method public setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
            "TT;>;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->pdfObject:Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object p0
.end method

.method protected setPdfObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->pdfObject:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method

.method protected unsetForbidRelease()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->pdfObject:Lcom/itextpdf/kernel/pdf/PdfObject;

    if-eqz v0, :cond_0

    const/16 v1, 0x80

    .line 129
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->clearState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_0
    return-void
.end method
