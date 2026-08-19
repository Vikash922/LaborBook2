.class public final Lcom/itextpdf/kernel/utils/objectpathitems/IndirectPathItem;
.super Ljava/lang/Object;
.source "IndirectPathItem.java"


# instance fields
.field private final cmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

.field private final outObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/objectpathitems/IndirectPathItem;->cmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 64
    iput-object p2, p0, Lcom/itextpdf/kernel/utils/objectpathitems/IndirectPathItem;->outObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/IndirectPathItem;->cmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    check-cast p1, Lcom/itextpdf/kernel/utils/objectpathitems/IndirectPathItem;

    iget-object v1, p1, Lcom/itextpdf/kernel/utils/objectpathitems/IndirectPathItem;->cmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/IndirectPathItem;->outObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object p1, p1, Lcom/itextpdf/kernel/utils/objectpathitems/IndirectPathItem;->outObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 95
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCmpObject()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/IndirectPathItem;->cmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    return-object v0
.end method

.method public getOutObject()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/IndirectPathItem;->outObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/IndirectPathItem;->cmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/itextpdf/kernel/utils/objectpathitems/IndirectPathItem;->outObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
