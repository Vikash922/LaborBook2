.class public abstract Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfXObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfStream;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method

.method public static calculateProportionallyFitRectangleWithHeight(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFF)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 2

    .line 132
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz v0, :cond_0

    .line 133
    check-cast p0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 134
    invoke-static {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->calculateBBoxMultipliedByMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p0

    .line 135
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    div-float v1, p3, v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p0

    mul-float/2addr v1, p0

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v0

    .line 136
    :cond_0
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    if-eqz v0, :cond_1

    .line 137
    check-cast p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    .line 138
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getHeight()F

    move-result v1

    div-float v1, p3, v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getWidth()F

    move-result p0

    mul-float/2addr v1, p0

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v0

    .line 140
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PdfFormXObject or PdfImageXObject expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static calculateProportionallyFitRectangleWithWidth(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFF)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 2

    .line 105
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz v0, :cond_0

    .line 106
    check-cast p0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 107
    invoke-static {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->calculateBBoxMultipliedByMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p0

    .line 108
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    div-float v1, p3, v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p0

    mul-float/2addr v1, p0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v0

    .line 109
    :cond_0
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    if-eqz v0, :cond_1

    .line 110
    check-cast p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    .line 111
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getWidth()F

    move-result v1

    div-float v1, p3, v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getHeight()F

    move-result p0

    mul-float/2addr v1, p0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v0

    .line 113
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PdfFormXObject or PdfImageXObject expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeXObject(Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 2

    .line 81
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Form:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    return-object v0

    .line 83
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Image:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    return-object v0

    .line 86
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported XObject type."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addAssociatedFile(Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)V
    .locals 3

    .line 181
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AFRelationship:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 182
    const-class v0, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 183
    const-string v1, "For associated files their associated file specification dictionaries shall include the AFRelationship key."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-nez v0, :cond_1

    .line 187
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 188
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 190
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method

.method public getAssociatedFiles(Z)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 200
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 202
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 203
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_0
    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .line 168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getWidth()F
    .locals 1

    .line 159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setLayer(Lcom/itextpdf/kernel/pdf/layer/IPdfOCG;)V
    .locals 2

    .line 150
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->OC:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {p1}, Lcom/itextpdf/kernel/pdf/layer/IPdfOCG;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method
