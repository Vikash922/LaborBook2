.class Lcom/itextpdf/kernel/pdf/PdfPages;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfPages.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private count:Lcom/itextpdf/kernel/pdf/PdfNumber;

.field private from:I

.field private final kids:Lcom/itextpdf/kernel/pdf/PdfArray;

.field private final parent:Lcom/itextpdf/kernel/pdf/PdfPages;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IILcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfPages;)V
    .locals 0

    .line 76
    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 77
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->setForbidRelease()V

    .line 78
    iput p1, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->from:I

    .line 79
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Count:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->count:Lcom/itextpdf/kernel/pdf/PdfNumber;

    .line 80
    iput-object p4, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->parent:Lcom/itextpdf/kernel/pdf/PdfPages;

    if-nez p1, :cond_0

    .line 82
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->count:Lcom/itextpdf/kernel/pdf/PdfNumber;

    .line 83
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Count:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->count:Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p3, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result p1

    if-ge p2, p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->count:Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->setValue(I)V

    .line 87
    :cond_1
    :goto_0
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->kids:Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 88
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Pages:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method

.method public constructor <init>(ILcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfPages;-><init>(ILcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfPages;)V

    return-void
.end method

.method public constructor <init>(ILcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfPages;)V
    .locals 2

    .line 54
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 55
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->setForbidRelease()V

    .line 59
    iput p1, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->from:I

    .line 60
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->count:Lcom/itextpdf/kernel/pdf/PdfNumber;

    .line 61
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->kids:Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 62
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->parent:Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 63
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Pages:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 64
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 65
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Count:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->count:Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    if-eqz p3, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_1
    return-void
.end method


# virtual methods
.method public addPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->kids:Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 93
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->incrementCount()V

    .line 94
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 95
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method

.method public addPage(ILcom/itextpdf/kernel/pdf/PdfPage;)Z
    .locals 2

    .line 99
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->from:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->kids:Lcom/itextpdf/kernel/pdf/PdfArray;

    iget v1, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->from:I

    sub-int/2addr p1, v1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(ILcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 102
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 103
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 104
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->incrementCount()V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public addPages(Lcom/itextpdf/kernel/pdf/PdfPages;)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->kids:Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 118
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->count:Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->setValue(I)V

    .line 119
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 120
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPages;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 121
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    return-void
.end method

.method public compareTo(I)I
    .locals 2

    .line 170
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->from:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public correctFrom(I)V
    .locals 1

    .line 144
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->from:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->from:I

    return-void
.end method

.method public decrementCount()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->count:Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->decrement()V

    .line 164
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 165
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->parent:Lcom/itextpdf/kernel/pdf/PdfPages;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPages;->decrementCount()V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->count:Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    return v0
.end method

.method public getFrom()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->from:I

    return v0
.end method

.method public getKids()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/itextpdf/kernel/pdf/PdfPages;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->parent:Lcom/itextpdf/kernel/pdf/PdfPages;

    return-object v0
.end method

.method public incrementCount()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->count:Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->increment()V

    .line 157
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 158
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->parent:Lcom/itextpdf/kernel/pdf/PdfPages;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPages;->incrementCount()V

    :cond_0
    return-void
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public removeFromParent()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->parent:Lcom/itextpdf/kernel/pdf/PdfPages;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/PdfPages;->kids:Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 129
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->parent:Lcom/itextpdf/kernel/pdf/PdfPages;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->parent:Lcom/itextpdf/kernel/pdf/PdfPages;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPages;->removeFromParent()V

    :cond_0
    return-void
.end method

.method public removePage(I)Z
    .locals 2

    .line 109
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->from:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->decrementCount()V

    .line 112
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->kids:Lcom/itextpdf/kernel/pdf/PdfArray;

    iget v1, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->from:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
