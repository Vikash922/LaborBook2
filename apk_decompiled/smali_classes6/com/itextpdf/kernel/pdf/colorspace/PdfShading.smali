.class public abstract Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfShading.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$TensorProductPatchMesh;,
        Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$CoonsPatchMesh;,
        Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$LatticeFormGouraudShadedTriangleMesh;,
        Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$FreeFormGouraudShadedTriangleMesh;,
        Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Radial;,
        Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;,
        Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$FunctionBased;,
        Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$ShadingType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;ILcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)V
    .locals 2

    .line 159
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 160
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ShadingType:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v1, p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 161
    instance-of p1, p3, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Pattern;

    if-nez p1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "colorSpace"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static makeShading(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;
    .locals 2

    .line 93
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ShadingType:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 96
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ShadingType:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    const-string v1, "Unexpected shading type."

    packed-switch v0, :pswitch_data_0

    .line 136
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 130
    :pswitch_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$TensorProductPatchMesh;

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$TensorProductPatchMesh;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    goto :goto_0

    .line 131
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 124
    :pswitch_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isStream()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$CoonsPatchMesh;

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$CoonsPatchMesh;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    goto :goto_0

    .line 125
    :cond_1
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :pswitch_2
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isStream()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$LatticeFormGouraudShadedTriangleMesh;

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$LatticeFormGouraudShadedTriangleMesh;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    goto :goto_0

    .line 119
    :cond_2
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :pswitch_3
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isStream()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$FreeFormGouraudShadedTriangleMesh;

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$FreeFormGouraudShadedTriangleMesh;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    goto :goto_0

    .line 113
    :cond_3
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 109
    :pswitch_4
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Radial;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Radial;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_0

    .line 106
    :pswitch_5
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_0

    .line 103
    :pswitch_6
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$FunctionBased;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$FunctionBased;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    :goto_0
    return-object v0

    .line 97
    :cond_4
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "ColorSpace not found."

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :cond_5
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Shading type not found."

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public flush()V
    .locals 0

    .line 230
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->flush()V

    return-void
.end method

.method public getColorSpace()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 2

    .line 182
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public getFunction()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 2

    .line 192
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Function:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public getShadingType()I
    .locals 2

    .line 173
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ShadingType:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setFunction(Lcom/itextpdf/kernel/pdf/function/PdfFunction;)V
    .locals 2

    .line 202
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Function:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/function/PdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 203
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    return-void
.end method

.method public setFunction([Lcom/itextpdf/kernel/pdf/function/PdfFunction;)V
    .locals 4

    .line 213
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 214
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 215
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/function/PdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Function:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 218
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    return-void
.end method
