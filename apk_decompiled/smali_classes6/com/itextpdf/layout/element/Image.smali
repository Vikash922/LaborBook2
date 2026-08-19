.class public Lcom/itextpdf/layout/element/Image;
.super Lcom/itextpdf/layout/element/AbstractElement;
.source "Image.java"

# interfaces
.implements Lcom/itextpdf/layout/element/ILeafElement;
.implements Lcom/itextpdf/layout/tagging/IAccessibleElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/layout/element/AbstractElement<",
        "Lcom/itextpdf/layout/element/Image;",
        ">;",
        "Lcom/itextpdf/layout/element/ILeafElement;",
        "Lcom/itextpdf/layout/tagging/IAccessibleElement;"
    }
.end annotation


# instance fields
.field protected tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

.field protected xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/image/ImageData;)V
    .locals 1

    .line 162
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-static {p1}, Lcom/itextpdf/layout/element/Image;->checkImageType(Lcom/itextpdf/io/image/ImageData;)Lcom/itextpdf/io/image/ImageData;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/element/Image;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)V

    const/4 p1, 0x1

    .line 163
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/image/ImageData;FF)V
    .locals 1

    .line 175
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-static {p1}, Lcom/itextpdf/layout/element/Image;->checkImageType(Lcom/itextpdf/io/image/ImageData;)Lcom/itextpdf/io/image/ImageData;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/itextpdf/layout/element/Image;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;FF)V

    const/4 p1, 0x1

    .line 176
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 p2, 0x13

    invoke-virtual {p0, p2, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/image/ImageData;FFF)V
    .locals 1

    .line 189
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-static {p1}, Lcom/itextpdf/layout/element/Image;->checkImageType(Lcom/itextpdf/io/image/ImageData;)Lcom/itextpdf/io/image/ImageData;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/itextpdf/layout/element/Image;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;FFF)V

    const/4 p1, 0x1

    .line 190
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 p2, 0x13

    invoke-virtual {p0, p2, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/itextpdf/layout/element/AbstractElement;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/itextpdf/layout/element/AbstractElement;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    const/16 p1, 0x22

    .line 150
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    const/16 p1, 0xe

    .line 151
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    const/4 p1, 0x4

    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x34

    invoke-virtual {p0, p2, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/itextpdf/layout/element/AbstractElement;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;F)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/itextpdf/layout/element/AbstractElement;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    .line 105
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/element/Image;->setWidth(F)Lcom/itextpdf/layout/element/Image;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;FF)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/itextpdf/layout/element/AbstractElement;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    const/16 p1, 0x22

    .line 135
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    const/16 p1, 0xe

    .line 136
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    const/4 p1, 0x4

    .line 137
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x34

    invoke-virtual {p0, p2, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;FFF)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/itextpdf/layout/element/AbstractElement;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    const/16 p1, 0x22

    .line 119
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    const/16 p1, 0xe

    .line 120
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 121
    invoke-virtual {p0, p4}, Lcom/itextpdf/layout/element/Image;->setWidth(F)Lcom/itextpdf/layout/element/Image;

    const/4 p1, 0x4

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x34

    invoke-virtual {p0, p2, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    return-void
.end method

.method private static checkImageType(Lcom/itextpdf/io/image/ImageData;)Lcom/itextpdf/io/image/ImageData;
    .locals 1

    .line 783
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    if-nez v0, :cond_0

    return-object p0

    .line 784
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Cannot create layout image by WmfImage instance. First convert the image into FormXObject and then use the corresponding layout image constructor."

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 2

    .line 761
    iget-object v0, p0, Lcom/itextpdf/layout/element/Image;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    if-nez v0, :cond_0

    .line 762
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    const-string v1, "Figure"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/layout/element/Image;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/Image;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    return-object v0
.end method

.method public getImageHeight()F
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getHeight()F

    move-result v0

    return v0
.end method

.method public getImageScaledHeight()F
    .locals 2

    const/16 v0, 0x4c

    .line 729
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    .line 730
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getHeight()F

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    .line 731
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getImageScaledWidth()F
    .locals 2

    const/16 v0, 0x1d

    .line 718
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    .line 719
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getWidth()F

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    .line 720
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getWidth()F

    move-result v1

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getImageWidth()F
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getWidth()F

    move-result v0

    return v0
.end method

.method public getMarginBottom()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x2b

    .line 282
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getMarginLeft()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x2c

    .line 219
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getMarginRight()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x2d

    .line 240
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getMarginTop()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x2e

    .line 261
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getObjectFit()Lcom/itextpdf/layout/properties/ObjectFit;
    .locals 2

    const/16 v0, 0x7d

    .line 752
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/ObjectFit;

    return-object v0

    .line 755
    :cond_0
    sget-object v0, Lcom/itextpdf/layout/properties/ObjectFit;->FILL:Lcom/itextpdf/layout/properties/ObjectFit;

    return-object v0
.end method

.method public getPaddingBottom()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x2f

    .line 379
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getPaddingLeft()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x30

    .line 316
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getPaddingRight()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x31

    .line 337
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getPaddingTop()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x32

    .line 358
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getWidth()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x4d

    .line 708
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getXObject()Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    return-object v0
.end method

.method protected makeNewRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 779
    new-instance v0, Lcom/itextpdf/layout/renderer/ImageRenderer;

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;-><init>(Lcom/itextpdf/layout/element/Image;)V

    return-object v0
.end method

.method public scale(FF)Lcom/itextpdf/layout/element/Image;
    .locals 1

    const/16 v0, 0x1d

    .line 430
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    const/16 p1, 0x4c

    .line 431
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public scaleAbsolute(FF)Lcom/itextpdf/layout/element/Image;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getWidth()F

    move-result v0

    div-float/2addr p1, v0

    .line 459
    iget-object v0, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getHeight()F

    move-result v0

    div-float/2addr p2, v0

    .line 460
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/element/Image;->scale(FF)Lcom/itextpdf/layout/element/Image;

    move-result-object p1

    return-object p1
.end method

.method public scaleToFit(FF)Lcom/itextpdf/layout/element/Image;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getWidth()F

    move-result v0

    div-float/2addr p1, v0

    .line 445
    iget-object v0, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getHeight()F

    move-result v0

    div-float/2addr p2, v0

    .line 446
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->scale(FF)Lcom/itextpdf/layout/element/Image;

    move-result-object p1

    return-object p1
.end method

.method public setAutoScale(Z)Lcom/itextpdf/layout/element/Image;
    .locals 3

    const/4 v0, 0x5

    .line 470
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/element/Image;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 471
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    :cond_0
    const-class v0, Lcom/itextpdf/layout/element/Image;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 474
    const-string v1, "The image cannot be auto scaled and scaled by a certain parameter simultaneously"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x3

    .line 476
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setAutoScaleHeight(Z)Lcom/itextpdf/layout/element/Image;
    .locals 2

    const/4 v0, 0x5

    .line 488
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 489
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    const/4 v0, 0x4

    .line 490
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 491
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    goto :goto_0

    .line 493
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public setAutoScaleWidth(Z)Lcom/itextpdf/layout/element/Image;
    .locals 3

    const/4 v0, 0x4

    .line 505
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->hasProperty(I)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 506
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 507
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 508
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    goto :goto_0

    .line 510
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public setFixedPosition(FF)Lcom/itextpdf/layout/element/Image;
    .locals 1

    .line 525
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Image;->getWidth()Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/layout/element/Image;->setFixedPosition(FFLcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/IPropertyContainer;

    return-object p0
.end method

.method public setFixedPosition(IFF)Lcom/itextpdf/layout/element/Image;
    .locals 1

    .line 540
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Image;->getWidth()Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/layout/element/Image;->setFixedPosition(IFFLcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/IPropertyContainer;

    return-object p0
.end method

.method public setHeight(F)Lcom/itextpdf/layout/element/Image;
    .locals 1

    .line 571
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x1b

    .line 572
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 573
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/Image;

    return-object p0
.end method

.method public setHeight(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/element/Image;
    .locals 1

    const/16 v0, 0x1b

    .line 583
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 584
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/Image;

    return-object p0
.end method

.method public setMarginBottom(F)Lcom/itextpdf/layout/element/Image;
    .locals 1

    .line 292
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x2b

    .line 293
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setMarginLeft(F)Lcom/itextpdf/layout/element/Image;
    .locals 1

    .line 229
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x2c

    .line 230
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setMarginRight(F)Lcom/itextpdf/layout/element/Image;
    .locals 1

    .line 250
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x2d

    .line 251
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setMarginTop(F)Lcom/itextpdf/layout/element/Image;
    .locals 1

    .line 271
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x2e

    .line 272
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setMargins(FFFF)Lcom/itextpdf/layout/element/Image;
    .locals 0

    .line 307
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/element/Image;->setMarginTop(F)Lcom/itextpdf/layout/element/Image;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/element/Image;->setMarginRight(F)Lcom/itextpdf/layout/element/Image;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/itextpdf/layout/element/Image;->setMarginBottom(F)Lcom/itextpdf/layout/element/Image;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/itextpdf/layout/element/Image;->setMarginLeft(F)Lcom/itextpdf/layout/element/Image;

    move-result-object p1

    return-object p1
.end method

.method public setMaxHeight(F)Lcom/itextpdf/layout/element/Image;
    .locals 1

    .line 594
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x54

    .line 595
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 596
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/Image;

    return-object p0
.end method

.method public setMaxHeight(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/element/Image;
    .locals 1

    const/16 v0, 0x54

    .line 606
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 607
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/Image;

    return-object p0
.end method

.method public setMaxWidth(F)Lcom/itextpdf/layout/element/Image;
    .locals 1

    .line 640
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x4f

    .line 641
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 642
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/Image;

    return-object p0
.end method

.method public setMaxWidth(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/element/Image;
    .locals 1

    const/16 v0, 0x4f

    .line 652
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 653
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/Image;

    return-object p0
.end method

.method public setMinHeight(F)Lcom/itextpdf/layout/element/Image;
    .locals 1

    .line 617
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x55

    .line 618
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 619
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/Image;

    return-object p0
.end method

.method public setMinHeight(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/element/Image;
    .locals 1

    const/16 v0, 0x55

    .line 629
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 630
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/Image;

    return-object p0
.end method

.method public setMinWidth(F)Lcom/itextpdf/layout/element/Image;
    .locals 1

    .line 663
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x50

    .line 664
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 665
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/Image;

    return-object p0
.end method

.method public setMinWidth(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/element/Image;
    .locals 1

    const/16 v0, 0x50

    .line 675
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 676
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/Image;

    return-object p0
.end method

.method public setNeutralRole()Lcom/itextpdf/layout/element/Image;
    .locals 2

    .line 773
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Image;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->setRole(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    return-object p0
.end method

.method public setObjectFit(Lcom/itextpdf/layout/properties/ObjectFit;)Lcom/itextpdf/layout/element/Image;
    .locals 1

    const/16 v0, 0x7d

    .line 741
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setPadding(F)Lcom/itextpdf/layout/element/Image;
    .locals 0

    .line 401
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/itextpdf/layout/element/Image;->setPaddings(FFFF)Lcom/itextpdf/layout/element/Image;

    move-result-object p1

    return-object p1
.end method

.method public setPaddingBottom(F)Lcom/itextpdf/layout/element/Image;
    .locals 1

    .line 389
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x2f

    .line 390
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 391
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/Image;

    return-object p0
.end method

.method public setPaddingLeft(F)Lcom/itextpdf/layout/element/Image;
    .locals 1

    .line 326
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x30

    .line 327
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 328
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/Image;

    return-object p0
.end method

.method public setPaddingRight(F)Lcom/itextpdf/layout/element/Image;
    .locals 1

    .line 347
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x31

    .line 348
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 349
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/Image;

    return-object p0
.end method

.method public setPaddingTop(F)Lcom/itextpdf/layout/element/Image;
    .locals 1

    .line 368
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x32

    .line 369
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 370
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/Image;

    return-object p0
.end method

.method public setPaddings(FFFF)Lcom/itextpdf/layout/element/Image;
    .locals 0

    .line 414
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/element/Image;->setPaddingTop(F)Lcom/itextpdf/layout/element/Image;

    .line 415
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/element/Image;->setPaddingRight(F)Lcom/itextpdf/layout/element/Image;

    .line 416
    invoke-virtual {p0, p3}, Lcom/itextpdf/layout/element/Image;->setPaddingBottom(F)Lcom/itextpdf/layout/element/Image;

    .line 417
    invoke-virtual {p0, p4}, Lcom/itextpdf/layout/element/Image;->setPaddingLeft(F)Lcom/itextpdf/layout/element/Image;

    return-object p0
.end method

.method public setRotationAngle(D)Lcom/itextpdf/layout/element/Image;
    .locals 1

    const/16 v0, 0x37

    .line 209
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setWidth(F)Lcom/itextpdf/layout/element/Image;
    .locals 1

    const/16 v0, 0x4d

    .line 686
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 687
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/Image;

    return-object p0
.end method

.method public setWidth(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/element/Image;
    .locals 1

    const/16 v0, 0x4d

    .line 697
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 698
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/Image;

    return-object p0
.end method
