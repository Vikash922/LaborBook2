.class public Lcom/itextpdf/forms/fields/PdfFormField;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfFormField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ALIGN_CENTER:I = 0x1

.field public static final ALIGN_LEFT:I = 0x0

.field public static final ALIGN_RIGHT:I = 0x2

.field private static final CHECKBOX_TYPE_ZAPFDINGBATS_CODE:[Ljava/lang/String;

.field static final DA_COLOR:I = 0x2

.field static final DA_FONT:I = 0x0

.field static final DA_SIZE:I = 0x1

.field static final DEFAULT_FONT_SIZE:I = 0xc

.field public static final FF_MULTILINE:I

.field public static final FF_NO_EXPORT:I

.field public static final FF_PASSWORD:I

.field public static final FF_READ_ONLY:I

.field public static final FF_REQUIRED:I

.field public static final HIDDEN:I = 0x1

.field public static final HIDDEN_BUT_PRINTABLE:I = 0x3

.field static final MIN_FONT_SIZE:I = 0x4

.field public static final TYPE_CHECK:I = 0x1

.field public static final TYPE_CIRCLE:I = 0x2

.field public static final TYPE_CROSS:I = 0x3

.field public static final TYPE_DIAMOND:I = 0x4

.field public static final TYPE_SQUARE:I = 0x5

.field public static final TYPE_STAR:I = 0x6

.field public static final VISIBLE:I = 0x4

.field public static final VISIBLE_BUT_DOES_NOT_PRINT:I = 0x2

.field static final X_OFFSET:F = 2.0f


# instance fields
.field protected backgroundColor:Lcom/itextpdf/kernel/colors/Color;

.field protected borderColor:Lcom/itextpdf/kernel/colors/Color;

.field protected borderWidth:F

.field protected checkType:I

.field protected color:Lcom/itextpdf/kernel/colors/Color;

.field protected font:Lcom/itextpdf/kernel/font/PdfFont;

.field protected fontSize:F

.field protected form:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

.field protected img:Lcom/itextpdf/io/image/ImageData;

.field protected pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

.field protected rotation:I

.field protected text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0xd

    .line 138
    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfFormField;->FF_MULTILINE:I

    const/16 v0, 0xe

    .line 143
    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfFormField;->FF_PASSWORD:I

    const/4 v0, 0x1

    .line 179
    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->makeFieldFlag(I)I

    move-result v1

    sput v1, Lcom/itextpdf/forms/fields/PdfFormField;->FF_READ_ONLY:I

    const/4 v1, 0x2

    .line 180
    invoke-static {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->makeFieldFlag(I)I

    move-result v2

    sput v2, Lcom/itextpdf/forms/fields/PdfFormField;->FF_REQUIRED:I

    const/4 v2, 0x3

    .line 181
    invoke-static {v2}, Lcom/itextpdf/forms/fields/PdfFormField;->makeFieldFlag(I)I

    move-result v3

    sput v3, Lcom/itextpdf/forms/fields/PdfFormField;->FF_NO_EXPORT:I

    const/4 v3, 0x6

    .line 213
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "4"

    aput-object v5, v3, v4

    const-string v4, "l"

    aput-object v4, v3, v0

    const-string v0, "8"

    aput-object v0, v3, v1

    const-string v0, "u"

    aput-object v0, v3, v2

    const/4 v0, 0x4

    const-string v1, "n"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string v1, "H"

    aput-object v1, v3, v0

    sput-object v3, Lcom/itextpdf/forms/fields/PdfFormField;->CHECKBOX_TYPE_ZAPFDINGBATS_CODE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1

    .line 235
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 218
    iput v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 221
    iput v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    const/4 v0, 0x0

    .line 224
    iput v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->rotation:I

    .line 236
    invoke-static {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->ensureObjectIsAddedToDocument(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 237
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->setForbidRelease()V

    .line 238
    invoke-direct {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->retrieveStyles()V

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 247
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 248
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFormType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 250
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    :cond_0
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 261
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 262
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 263
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->addKid(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 264
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFormType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    return-void
.end method

.method private addAcroFormToCatalog()V
    .locals 3

    .line 3172
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3173
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 3174
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 3176
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Fields:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 3177
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    :cond_0
    return-void
.end method

.method private appearancePropToColor(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/colors/Color;
    .locals 5

    .line 3287
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3289
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result p2

    new-array p2, p2, [F

    const/4 v0, 0x0

    move v1, v0

    .line 3290
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3291
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v2

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3292
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/4 v4, 0x4

    if-eq p1, v4, :cond_1

    goto :goto_1

    .line 3300
    :cond_1
    new-instance p1, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    aget v0, p2, v0

    aget v1, p2, v1

    aget v2, p2, v2

    aget p2, p2, v3

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/itextpdf/kernel/colors/DeviceCmyk;-><init>(FFFF)V

    return-object p1

    .line 3298
    :cond_2
    new-instance p1, Lcom/itextpdf/kernel/colors/DeviceRgb;

    aget v0, p2, v0

    aget v1, p2, v1

    aget p2, p2, v2

    invoke-direct {p1, v0, v1, p2}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(FFF)V

    return-object p1

    .line 3296
    :cond_3
    new-instance p1, Lcom/itextpdf/kernel/colors/DeviceGray;

    aget p2, p2, v0

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>(F)V

    return-object p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private applyRotation(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V
    .locals 12

    .line 3227
    iget v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->rotation:I

    const/16 v1, 0x5a

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 p2, 0x10e

    if-eq v0, p2, :cond_0

    goto :goto_0

    .line 3235
    :cond_0
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Matrix:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-array v1, v9, [F

    aput v11, v1, v8

    aput v10, v1, v7

    aput v2, v1, v6

    aput v11, v1, v5

    aput v11, v1, v4

    aput p3, v1, v3

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {p1, p2, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    goto :goto_0

    .line 3232
    :cond_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Matrix:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-array v2, v9, [F

    aput v10, v2, v8

    aput v11, v2, v7

    aput v11, v2, v6

    aput v10, v2, v5

    aput p3, v2, v4

    aput p2, v2, v3

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    goto :goto_0

    .line 3229
    :cond_2
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->Matrix:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-array v1, v9, [F

    aput v11, v1, v8

    aput v2, v1, v7

    aput v10, v1, v6

    aput v11, v1, v5

    aput p2, v1, v4

    aput v11, v1, v3

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {p1, p3, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    :goto_0
    return-void
.end method

.method private approximateFontSizeToFitMultiLine(Lcom/itextpdf/layout/element/Paragraph;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/renderer/IRenderer;)F
    .locals 7

    .line 2966
    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Paragraph;->createRendererSubTree()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object p3

    .line 2967
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v1, Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    const/high16 p2, 0x41400000    # 12.0f

    .line 2970
    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/element/Paragraph;->setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;

    .line 2971
    invoke-interface {p3, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v1

    if-eq v1, v2, :cond_1

    const/high16 v1, 0x40800000    # 4.0f

    const/4 v3, 0x0

    move v6, v1

    move v1, p2

    move p2, v6

    :goto_0
    const/4 v4, 0x6

    if-ge v3, v4, :cond_1

    add-float v4, p2, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 2975
    invoke-virtual {p1, v4}, Lcom/itextpdf/layout/element/Paragraph;->setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;

    .line 2976
    invoke-interface {p3, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v5

    .line 2977
    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v5

    if-ne v5, v2, :cond_0

    move p2, v4

    goto :goto_1

    :cond_0
    move v1, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method private approximateFontSizeToFitSingleLine(Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;F)F
    .locals 5

    .line 2992
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 2993
    invoke-virtual {p1}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontMetrics;->getBbox()[I

    move-result-object v1

    const/4 v3, 0x2

    .line 2994
    aget v3, v1, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    sub-int/2addr v3, v1

    int-to-float v1, v3

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2996
    invoke-virtual {p1, p3, v1}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result p1

    const/4 p3, 0x0

    cmpl-float v1, p1, p3

    if-eqz v1, :cond_1

    .line 2998
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p2

    iget v1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    mul-float/2addr v1, v2

    sub-float/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const p3, 0x3e19999a    # 0.15f

    mul-float/2addr p3, p2

    const/high16 v1, 0x40800000    # 4.0f

    cmpg-float v1, p3, v1

    if-gez v1, :cond_0

    mul-float/2addr p3, v2

    goto :goto_0

    :cond_0
    const/high16 p3, 0x41000000    # 8.0f

    :goto_0
    sub-float/2addr p2, p3

    div-float/2addr p2, p1

    .line 3009
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 3011
    :cond_1
    invoke-static {v0, p4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private calculateTranslationHeightAfterFieldRot(Lcom/itextpdf/kernel/geom/Rectangle;DD)F
    .locals 8

    const-wide/16 v0, 0x0

    cmpl-double v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    cmpl-double v0, p2, v0

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-nez v0, :cond_2

    cmpl-double v0, p4, v4

    if-nez v0, :cond_1

    .line 3030
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    return p1

    :cond_1
    cmpl-double v0, p4, v1

    if-nez v0, :cond_2

    .line 3033
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    return p1

    :cond_2
    const-wide v6, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpl-double v0, p2, v6

    if-nez v0, :cond_5

    cmpl-double v0, p4, v6

    if-nez v0, :cond_3

    .line 3039
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    :goto_0
    sub-float/2addr p2, p1

    return p2

    :cond_3
    cmpl-double v0, p4, v4

    if-nez v0, :cond_4

    .line 3042
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    return p1

    :cond_4
    cmpl-double v0, p4, v1

    if-nez v0, :cond_5

    .line 3045
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p1

    return p1

    :cond_5
    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpl-double v2, p2, v0

    if-nez v2, :cond_8

    cmpl-double v2, p4, v0

    if-nez v2, :cond_6

    .line 3051
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    return p1

    :cond_6
    cmpl-double v2, p4, v6

    if-nez v2, :cond_7

    .line 3054
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p1

    goto :goto_0

    :cond_7
    cmpl-double v2, p4, v4

    if-nez v2, :cond_8

    .line 3058
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p1

    return p1

    :cond_8
    const-wide v4, -0x3fed268380ccde2eL    # -4.71238898038469

    cmpl-double p2, p2, v4

    if-nez p2, :cond_a

    cmpl-double p2, p4, v4

    if-nez p2, :cond_9

    .line 3063
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p1

    return p1

    :cond_9
    cmpl-double p2, p4, v0

    if-nez p2, :cond_a

    .line 3066
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p1

    return p1

    :cond_a
    return v3
.end method

.method private calculateTranslationWidthAfterFieldRot(Lcom/itextpdf/kernel/geom/Rectangle;DD)F
    .locals 9

    const-wide/16 v0, 0x0

    cmpl-double v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    cmpl-double v0, p2, v0

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    if-nez v0, :cond_2

    cmpl-double v0, p4, v1

    if-eqz v0, :cond_1

    const-wide v4, 0x4012d97c7f3321d2L    # 4.71238898038469

    cmpl-double v0, p4, v4

    if-nez v0, :cond_2

    .line 3088
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p1

    return p1

    :cond_2
    const-wide v4, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpl-double v0, p2, v4

    if-nez v0, :cond_4

    cmpl-double v0, p4, v4

    if-eqz v0, :cond_3

    cmpl-double v0, p4, v1

    if-nez v0, :cond_4

    .line 3092
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    return p1

    :cond_4
    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpl-double v2, p2, v0

    const/high16 v6, -0x40800000    # -1.0f

    if-nez v2, :cond_7

    cmpl-double v2, p4, v0

    if-nez v2, :cond_5

    .line 3098
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p1

    return p1

    :cond_5
    cmpl-double v2, p4, v4

    if-nez v2, :cond_6

    .line 3101
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    return p1

    :cond_6
    const-wide v7, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v2, p4, v7

    if-nez v2, :cond_7

    .line 3104
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p1

    :goto_0
    sub-float/2addr p2, p1

    mul-float/2addr p2, v6

    return p2

    :cond_7
    const-wide v7, -0x3fed268380ccde2eL    # -4.71238898038469

    cmpl-double p2, p2, v7

    if-nez p2, :cond_a

    cmpl-double p2, p4, v7

    if-nez p2, :cond_8

    .line 3109
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    goto :goto_0

    :cond_8
    cmpl-double p2, p4, v0

    if-nez p2, :cond_9

    .line 3112
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    return p1

    :cond_9
    cmpl-double p2, p4, v4

    if-nez p2, :cond_a

    .line 3115
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p1

    return p1

    :cond_a
    return v3
.end method

.method private convertJustificationToTextAlignment()Lcom/itextpdf/layout/properties/TextAlignment;
    .locals 4

    .line 3194
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getJustification()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3196
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3198
    :cond_0
    sget-object v1, Lcom/itextpdf/layout/properties/TextAlignment;->LEFT:Lcom/itextpdf/layout/properties/TextAlignment;

    .line 3199
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 3200
    sget-object v1, Lcom/itextpdf/layout/properties/TextAlignment;->RIGHT:Lcom/itextpdf/layout/properties/TextAlignment;

    goto :goto_0

    .line 3201
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 3202
    sget-object v1, Lcom/itextpdf/layout/properties/TextAlignment;->CENTER:Lcom/itextpdf/layout/properties/TextAlignment;

    :cond_2
    :goto_0
    return-object v1
.end method

.method private copyParamsToKids(Lcom/itextpdf/forms/fields/PdfFormField;)V
    .locals 2

    .line 3477
    iget v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->checkType:I

    if-lez v0, :cond_0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 3478
    :cond_0
    iget v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->checkType:I

    iput v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->checkType:I

    .line 3480
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getDefaultAppearance()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3481
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iput-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 3482
    iget v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    iput v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    .line 3484
    :cond_2
    iget-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    if-nez v0, :cond_3

    .line 3485
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 3487
    :cond_3
    iget-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 3488
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    iput-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    .line 3490
    :cond_4
    iget-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->img:Lcom/itextpdf/io/image/ImageData;

    if-nez v0, :cond_5

    .line 3491
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->img:Lcom/itextpdf/io/image/ImageData;

    iput-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->img:Lcom/itextpdf/io/image/ImageData;

    .line 3493
    :cond_5
    iget v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    .line 3494
    iget v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    iput v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    .line 3496
    :cond_6
    iget-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->backgroundColor:Lcom/itextpdf/kernel/colors/Color;

    if-nez v0, :cond_7

    .line 3497
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->backgroundColor:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->backgroundColor:Lcom/itextpdf/kernel/colors/Color;

    .line 3499
    :cond_7
    iget-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->borderColor:Lcom/itextpdf/kernel/colors/Color;

    if-nez v0, :cond_8

    .line 3500
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderColor:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->borderColor:Lcom/itextpdf/kernel/colors/Color;

    .line 3502
    :cond_8
    iget v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->rotation:I

    if-nez v0, :cond_9

    .line 3503
    iget v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->rotation:I

    iput v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->rotation:I

    .line 3505
    :cond_9
    iget-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    if-nez v0, :cond_a

    .line 3506
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    iput-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 3508
    :cond_a
    iget-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->form:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-nez v0, :cond_b

    .line 3509
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->form:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iput-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->form:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    :cond_b
    return-void
.end method

.method public static createButton(Lcom/itextpdf/kernel/pdf/PdfDocument;I)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 1

    const/4 v0, 0x0

    .line 352
    invoke-static {p0, p1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->createButton(Lcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfButtonFormField;

    move-result-object p0

    return-object p0
.end method

.method public static createButton(Lcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 1

    .line 367
    new-instance v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 368
    iput-object p2, v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 369
    invoke-virtual {v0, p1}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->setFieldFlags(I)Lcom/itextpdf/forms/fields/PdfFormField;

    return-object v0
.end method

.method public static createButton(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;I)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 1

    const/4 v0, 0x0

    .line 315
    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->createButton(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;ILcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfButtonFormField;

    move-result-object p0

    return-object p0
.end method

.method public static createButton(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;ILcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 1

    .line 331
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 332
    new-instance p1, Lcom/itextpdf/forms/fields/PdfButtonFormField;

    invoke-direct {p1, v0, p0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 333
    iput-object p3, p1, Lcom/itextpdf/forms/fields/PdfButtonFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    if-eqz p3, :cond_0

    const/4 p0, 0x4

    .line 335
    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setFlag(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 337
    :cond_0
    invoke-virtual {p1, p2}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->setFieldFlags(I)Lcom/itextpdf/forms/fields/PdfFormField;

    return-object p1
.end method

.method public static createCheckBox(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 1

    const/4 v0, 0x3

    .line 908
    invoke-static {p0, p1, p2, p3, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->createCheckBox(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;I)Lcom/itextpdf/forms/fields/PdfButtonFormField;

    move-result-object p0

    return-object p0
.end method

.method public static createCheckBox(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;I)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 922
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/forms/fields/PdfFormField;->createCheckBox(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfButtonFormField;

    move-result-object p0

    return-object p0
.end method

.method public static createCheckBox(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 2

    .line 938
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 939
    new-instance v1, Lcom/itextpdf/forms/fields/PdfButtonFormField;

    invoke-direct {v1, v0, p0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 940
    iput-object p5, v1, Lcom/itextpdf/forms/fields/PdfButtonFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    const/4 p0, 0x0

    .line 941
    invoke-virtual {v1, p0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->setFontSize(I)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 942
    invoke-virtual {v1, p4}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->setCheckType(I)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 943
    invoke-virtual {v1, p2}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->setFieldName(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 944
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p2, p3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p2}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 945
    new-instance p0, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAppearanceState(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 947
    const-string p0, "Yes"

    const-string p2, "Off"

    if-eqz p5, :cond_1

    .line 948
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p5

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move-object p3, p0

    :cond_0
    invoke-virtual {v1, p5, p1, p3, p4}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->drawPdfA2CheckAppearance(FFLjava/lang/String;I)V

    const/4 p0, 0x4

    .line 949
    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setFlag(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    goto :goto_0

    .line 951
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p4

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move-object p3, p0

    :cond_2
    invoke-virtual {v1, p4, p1, p3}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->drawCheckAppearance(FFLjava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public static createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;I)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 1

    const/4 v0, 0x0

    .line 544
    invoke-static {p0, p1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object p0

    return-object p0
.end method

.method public static createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 1

    .line 558
    new-instance v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 559
    iput-object p2, v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 560
    invoke-virtual {v0, p1}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setFieldFlags(I)Lcom/itextpdf/forms/fields/PdfFormField;

    return-object v0
.end method

.method public static createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;I)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 1

    .line 576
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 577
    new-instance p1, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    invoke-direct {p1, v0, p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 578
    invoke-virtual {p1, p2}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setFieldFlags(I)Lcom/itextpdf/forms/fields/PdfFormField;

    return-object p1
.end method

.method public static createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FLcom/itextpdf/kernel/pdf/PdfArray;I)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    .line 640
    invoke-static/range {v0 .. v8}, Lcom/itextpdf/forms/fields/PdfFormField;->createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FLcom/itextpdf/kernel/pdf/PdfArray;ILcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FLcom/itextpdf/kernel/pdf/PdfArray;ILcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 2

    .line 662
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 663
    new-instance v1, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    invoke-direct {v1, v0, p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 664
    iput-object p8, v1, Lcom/itextpdf/forms/fields/PdfFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    if-eqz p8, :cond_0

    const/4 p0, 0x4

    .line 666
    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setFlag(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 669
    :cond_0
    invoke-direct {v1, p4, p5}, Lcom/itextpdf/forms/fields/PdfFormField;->updateFontAndFontSize(Lcom/itextpdf/kernel/font/PdfFont;F)V

    .line 670
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Opt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, p0, p6}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 671
    invoke-virtual {v1, p7}, Lcom/itextpdf/forms/fields/PdfFormField;->setFieldFlags(I)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 672
    invoke-virtual {v1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;->setFieldName(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 673
    move-object p0, v1

    check-cast p0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p3, p0, p2

    invoke-virtual {v1, p0, p2}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setListSelected([Ljava/lang/String;Z)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    .line 674
    sget p0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_COMBO:I

    and-int/2addr p0, p7

    if-nez p0, :cond_1

    .line 675
    invoke-static {p6}, Lcom/itextpdf/forms/fields/PdfFormField;->optionsArrayToString(Lcom/itextpdf/kernel/pdf/PdfArray;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    move-object p5, p3

    .line 678
    new-instance p0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    new-instance p2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p3

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p4

    const/4 p6, 0x0

    invoke-direct {p2, p6, p6, p3, p4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 679
    iget p4, v1, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    const/4 p7, 0x0

    move-object p2, v1

    move-object p3, p1

    move-object p6, p0

    invoke-direct/range {p2 .. p7}, Lcom/itextpdf/forms/fields/PdfFormField;->drawChoiceAppearance(Lcom/itextpdf/kernel/geom/Rectangle;FLjava/lang/String;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;I)V

    .line 680
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setNormalAppearance(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    return-object v1
.end method

.method public static createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfArray;I)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 8

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move v7, p5

    .line 598
    invoke-static/range {v0 .. v7}, Lcom/itextpdf/forms/fields/PdfFormField;->createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FLcom/itextpdf/kernel/pdf/PdfArray;I)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object p0

    return-object p0
.end method

.method public static createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfArray;ILcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 9

    const/high16 v5, 0x41400000    # 12.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p7

    .line 619
    invoke-static/range {v0 .. v8}, Lcom/itextpdf/forms/fields/PdfFormField;->createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FLcom/itextpdf/kernel/pdf/PdfArray;ILcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createComboBox(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1007
    invoke-static/range {v0 .. v6}, Lcom/itextpdf/forms/fields/PdfFormField;->createComboBox(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object p0

    return-object p0
.end method

.method public static createComboBox(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 8

    .line 1024
    invoke-static {p4}, Lcom/itextpdf/forms/fields/PdfFormField;->processOptions([Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    sget v5, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_COMBO:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/itextpdf/forms/fields/PdfFormField;->createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfArray;ILcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object p0

    return-object p0
.end method

.method public static createComboBox(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 7

    .line 971
    :try_start_0
    invoke-static {}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/forms/fields/PdfFormField;->createComboBox(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 973
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p1, p0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static createComboBox(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 8

    .line 992
    invoke-static {p4}, Lcom/itextpdf/forms/fields/PdfFormField;->processOptions([[Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    sget v5, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_COMBO:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/itextpdf/forms/fields/PdfFormField;->createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfArray;ILcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object p0

    return-object p0
.end method

.method public static createEmptyField(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1

    const/4 v0, 0x0

    .line 286
    invoke-static {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->createEmptyField(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p0

    return-object p0
.end method

.method public static createEmptyField(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1

    .line 298
    new-instance v0, Lcom/itextpdf/forms/fields/PdfFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 299
    iput-object p1, v0, Lcom/itextpdf/forms/fields/PdfFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    return-object v0
.end method

.method public static createList(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1073
    invoke-static/range {v0 .. v6}, Lcom/itextpdf/forms/fields/PdfFormField;->createList(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object p0

    return-object p0
.end method

.method public static createList(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 8

    .line 1090
    invoke-static {p4}, Lcom/itextpdf/forms/fields/PdfFormField;->processOptions([Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/itextpdf/forms/fields/PdfFormField;->createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfArray;ILcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object p0

    return-object p0
.end method

.method public static createList(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1040
    invoke-static/range {v0 .. v6}, Lcom/itextpdf/forms/fields/PdfFormField;->createList(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object p0

    return-object p0
.end method

.method public static createList(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 8

    .line 1058
    invoke-static {p4}, Lcom/itextpdf/forms/fields/PdfFormField;->processOptions([[Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/itextpdf/forms/fields/PdfFormField;->createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfArray;ILcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object p0

    return-object p0
.end method

.method public static createMultilineText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 7

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 531
    invoke-static/range {v0 .. v6}, Lcom/itextpdf/forms/fields/PdfFormField;->createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FZ)Lcom/itextpdf/forms/fields/PdfTextFormField;

    move-result-object p0

    return-object p0
.end method

.method public static createMultilineText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 516
    invoke-static/range {v0 .. v6}, Lcom/itextpdf/forms/fields/PdfFormField;->createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FZ)Lcom/itextpdf/forms/fields/PdfTextFormField;

    move-result-object p0

    return-object p0
.end method

.method private static createParagraphForTextFieldValue(Ljava/lang/String;)Lcom/itextpdf/layout/element/Paragraph;
    .locals 1

    .line 3613
    new-instance v0, Lcom/itextpdf/layout/element/Text;

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/element/Text;-><init>(Ljava/lang/String;)V

    .line 3614
    new-instance p0, Lcom/itextpdf/forms/fields/FormFieldValueNonTrimmingTextRenderer;

    invoke-direct {p0, v0}, Lcom/itextpdf/forms/fields/FormFieldValueNonTrimmingTextRenderer;-><init>(Lcom/itextpdf/layout/element/Text;)V

    invoke-virtual {v0, p0}, Lcom/itextpdf/layout/element/Text;->setNextRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 3615
    new-instance p0, Lcom/itextpdf/layout/element/Paragraph;

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Lcom/itextpdf/layout/element/Text;)V

    return-object p0
.end method

.method public static createPushButton(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 6

    .line 834
    :try_start_0
    invoke-static {}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v4

    const/high16 v5, 0x41400000    # 12.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/forms/fields/PdfFormField;->createPushButton(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/forms/fields/PdfButtonFormField;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 836
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p1, p0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static createPushButton(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 854
    invoke-static/range {v0 .. v6}, Lcom/itextpdf/forms/fields/PdfFormField;->createPushButton(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FLcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfButtonFormField;

    move-result-object p0

    return-object p0
.end method

.method public static createPushButton(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FLcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 8

    .line 871
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 872
    new-instance v7, Lcom/itextpdf/forms/fields/PdfButtonFormField;

    invoke-direct {v7, v0, p0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 873
    iput-object p6, v7, Lcom/itextpdf/forms/fields/PdfButtonFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    if-eqz p6, :cond_0

    const/4 p0, 0x4

    .line 875
    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setFlag(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    :cond_0
    const/4 p0, 0x1

    .line 877
    invoke-virtual {v7, p0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->setPushButton(Z)Lcom/itextpdf/forms/fields/PdfButtonFormField;

    .line 878
    invoke-virtual {v7, p2}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->setFieldName(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 879
    iput-object p3, v7, Lcom/itextpdf/forms/fields/PdfButtonFormField;->text:Ljava/lang/String;

    .line 880
    invoke-direct {v7, p4, p5}, Lcom/itextpdf/forms/fields/PdfFormField;->updateFontAndFontSize(Lcom/itextpdf/kernel/font/PdfFont;F)V

    .line 881
    sget-object p0, Lcom/itextpdf/kernel/colors/ColorConstants;->LIGHT_GRAY:Lcom/itextpdf/kernel/colors/Color;

    iput-object p0, v7, Lcom/itextpdf/forms/fields/PdfButtonFormField;->backgroundColor:Lcom/itextpdf/kernel/colors/Color;

    .line 883
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    move-object v1, v7

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->drawPushButtonAppearance(FFLjava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object p0

    .line 884
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setNormalAppearance(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 886
    new-instance p0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 887
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->CA:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {p2, p3}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 888
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->BG:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfArray;

    iget-object p3, v7, Lcom/itextpdf/forms/fields/PdfButtonFormField;->backgroundColor:Lcom/itextpdf/kernel/colors/Color;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 889
    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAppearanceCharacteristics(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    if-eqz p6, :cond_1

    .line 892
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-static {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->createPushButtonAppearanceState(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    :cond_1
    return-object v7
.end method

.method private static createPushButtonAppearanceState(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 4

    .line 3598
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 3599
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3601
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3603
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v3, "push"

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 3605
    :cond_0
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->AS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v3, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 3606
    new-instance p0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 3607
    invoke-virtual {p0, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 3608
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_1
    return-void
.end method

.method public static createRadioButton(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/forms/fields/PdfButtonFormField;Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 3

    .line 777
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 778
    new-instance v1, Lcom/itextpdf/forms/fields/PdfButtonFormField;

    invoke-direct {v1, v0, p0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 780
    invoke-virtual {p2}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->getValue()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 781
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 782
    new-instance p0, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAppearanceState(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    goto :goto_0

    .line 784
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "Off"

    invoke-direct {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAppearanceState(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 786
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    invoke-virtual {v1, p0, p1, p3}, Lcom/itextpdf/forms/fields/PdfFormField;->drawRadioAppearance(FFLjava/lang/String;)V

    .line 787
    invoke-virtual {p2, v1}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->addKid(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;

    return-object v1
.end method

.method public static createRadioButton(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/forms/fields/PdfButtonFormField;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2

    .line 803
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 804
    new-instance v1, Lcom/itextpdf/forms/fields/PdfButtonFormField;

    invoke-direct {v1, v0, p0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 805
    iput-object p4, v1, Lcom/itextpdf/forms/fields/PdfFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    if-eqz p4, :cond_0

    const/4 p0, 0x4

    .line 807
    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setFlag(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 810
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->getValue()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p4, 0x1

    invoke-virtual {p0, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 811
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 812
    new-instance p0, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAppearanceState(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    goto :goto_0

    .line 814
    :cond_1
    new-instance p0, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string p4, "Off"

    invoke-direct {p0, p4}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAppearanceState(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 816
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    invoke-virtual {v1, p0, p1, p3}, Lcom/itextpdf/forms/fields/PdfFormField;->drawRadioAppearance(FFLjava/lang/String;)V

    .line 818
    invoke-virtual {p2, v1}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->addKid(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;

    return-object v1
.end method

.method public static createRadioGroup(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 1

    const/4 v0, 0x0

    .line 746
    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->createRadioGroup(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfButtonFormField;

    move-result-object p0

    return-object p0
.end method

.method public static createRadioGroup(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 1

    .line 759
    sget v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_RADIO:I

    invoke-static {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->createButton(Lcom/itextpdf/kernel/pdf/PdfDocument;I)Lcom/itextpdf/forms/fields/PdfButtonFormField;

    move-result-object p0

    .line 760
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->setFieldName(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 761
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 762
    iput-object p3, p0, Lcom/itextpdf/forms/fields/PdfButtonFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    return-object p0
.end method

.method public static createSignature(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfSignatureFormField;
    .locals 2

    const/4 v0, 0x0

    .line 692
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    invoke-static {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->createSignature(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfSignatureFormField;

    move-result-object p0

    return-object p0
.end method

.method public static createSignature(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/forms/fields/PdfSignatureFormField;
    .locals 1

    const/4 v0, 0x0

    .line 716
    invoke-static {p0, p1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->createSignature(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfSignatureFormField;

    move-result-object p0

    return-object p0
.end method

.method public static createSignature(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfSignatureFormField;
    .locals 1

    .line 728
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 729
    new-instance p1, Lcom/itextpdf/forms/fields/PdfSignatureFormField;

    invoke-direct {p1, v0, p0}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 730
    iput-object p2, p1, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    if-eqz p2, :cond_0

    const/4 p0, 0x4

    .line 732
    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setFlag(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    :cond_0
    return-object p1
.end method

.method public static createSignature(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfSignatureFormField;
    .locals 1

    .line 703
    new-instance v0, Lcom/itextpdf/forms/fields/PdfSignatureFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 704
    iput-object p1, v0, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    return-object v0
.end method

.method public static createText(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 2

    const/4 v0, 0x0

    .line 381
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    invoke-static {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfTextFormField;

    move-result-object p0

    return-object p0
.end method

.method public static createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 1

    .line 406
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 407
    new-instance p1, Lcom/itextpdf/forms/fields/PdfTextFormField;

    invoke-direct {p1, v0, p0}, Lcom/itextpdf/forms/fields/PdfTextFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    return-object p1
.end method

.method public static createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 1

    .line 421
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfTextFormField;

    move-result-object p0

    return-object p0
.end method

.method public static createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 6

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 436
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/forms/fields/PdfFormField;->createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/forms/fields/PdfTextFormField;

    move-result-object p0

    return-object p0
.end method

.method public static createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 452
    invoke-static/range {v0 .. v6}, Lcom/itextpdf/forms/fields/PdfFormField;->createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FZ)Lcom/itextpdf/forms/fields/PdfTextFormField;

    move-result-object p0

    return-object p0
.end method

.method public static createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FZ)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 469
    invoke-static/range {v0 .. v7}, Lcom/itextpdf/forms/fields/PdfFormField;->createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FZLcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfTextFormField;

    move-result-object p0

    return-object p0
.end method

.method public static createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FZLcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 1

    .line 487
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 488
    new-instance p1, Lcom/itextpdf/forms/fields/PdfTextFormField;

    invoke-direct {p1, v0, p0}, Lcom/itextpdf/forms/fields/PdfTextFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 490
    iput-object p7, p1, Lcom/itextpdf/forms/fields/PdfTextFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    if-eqz p7, :cond_0

    const/4 p0, 0x4

    .line 492
    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setFlag(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 495
    :cond_0
    invoke-direct {p1, p4, p5}, Lcom/itextpdf/forms/fields/PdfFormField;->updateFontAndFontSize(Lcom/itextpdf/kernel/font/PdfFont;F)V

    .line 496
    invoke-virtual {p1, p6}, Lcom/itextpdf/forms/fields/PdfTextFormField;->setMultiline(Z)Lcom/itextpdf/forms/fields/PdfTextFormField;

    .line 497
    invoke-virtual {p1, p2}, Lcom/itextpdf/forms/fields/PdfTextFormField;->setFieldName(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 498
    invoke-virtual {p1, p3}, Lcom/itextpdf/forms/fields/PdfTextFormField;->setValue(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    return-object p1
.end method

.method public static createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 1

    .line 393
    new-instance v0, Lcom/itextpdf/forms/fields/PdfTextFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/forms/fields/PdfTextFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 394
    iput-object p1, v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    return-object v0
.end method

.method private static degreeToRadians(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private drawChoiceAppearance(Lcom/itextpdf/kernel/geom/Rectangle;FLjava/lang/String;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 2533
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 2534
    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v3

    .line 2535
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2537
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    .line 2538
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    .line 2542
    iget-object v6, v0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/high16 v7, 0x40c00000    # 6.0f

    sub-float v7, v3, v7

    move-object/from16 v8, p3

    invoke-virtual {v6, v8, v1, v7}, Lcom/itextpdf/kernel/font/PdfFont;->splitString(Ljava/lang/String;FF)Ljava/util/List;

    move-result-object v6

    move-object/from16 v8, p4

    .line 2544
    invoke-virtual {v0, v4, v8, v3, v5}, Lcom/itextpdf/forms/fields/PdfFormField;->drawBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    .line 2546
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginVariableText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    .line 2547
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v9

    float-to-double v14, v7

    const/high16 v3, 0x40000000    # 2.0f

    sub-float/2addr v5, v3

    float-to-double v12, v5

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    move-wide/from16 v18, v12

    move-wide/from16 v12, v16

    move-wide/from16 v16, v18

    .line 2548
    invoke-virtual/range {v9 .. v17}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    .line 2549
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    .line 2550
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2552
    new-instance v3, Lcom/itextpdf/layout/Canvas;

    new-instance v9, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v10, 0x0

    invoke-static {v10, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/high16 v12, 0x40400000    # 3.0f

    invoke-direct {v9, v12, v10, v7, v11}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v3, v4, v9}, Lcom/itextpdf/layout/Canvas;-><init>(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V

    const/4 v7, 0x1

    .line 2553
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/16 v9, 0x52

    invoke-virtual {v3, v9, v7}, Lcom/itextpdf/layout/Canvas;->setProperty(ILjava/lang/Object;)V

    .line 2555
    invoke-static {v3}, Lcom/itextpdf/forms/fields/PdfFormField;->setMetaInfoToCanvas(Lcom/itextpdf/layout/Canvas;)V

    .line 2557
    new-instance v9, Lcom/itextpdf/layout/element/Div;

    invoke-direct {v9}, Lcom/itextpdf/layout/element/Div;-><init>()V

    .line 2558
    sget v11, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_COMBO:I

    invoke-virtual {v0, v11}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2559
    sget-object v11, Lcom/itextpdf/layout/properties/VerticalAlignment;->MIDDLE:Lcom/itextpdf/layout/properties/VerticalAlignment;

    invoke-virtual {v9, v11}, Lcom/itextpdf/layout/element/Div;->setVerticalAlignment(Lcom/itextpdf/layout/properties/VerticalAlignment;)Lcom/itextpdf/layout/element/IElement;

    .line 2561
    :cond_0
    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v9, v5}, Lcom/itextpdf/layout/element/Div;->setHeight(F)Lcom/itextpdf/layout/element/IElement;

    const/4 v5, 0x0

    .line 2562
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_7

    .line 2563
    invoke-virtual {v3}, Lcom/itextpdf/layout/Canvas;->getRenderer()Lcom/itextpdf/layout/renderer/RootRenderer;

    move-result-object v11

    const/16 v12, 0x19

    invoke-virtual {v11, v12}, Lcom/itextpdf/layout/renderer/RootRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v11

    .line 2564
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v12, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto/16 :goto_3

    .line 2568
    :cond_1
    new-instance v11, Lcom/itextpdf/layout/element/Paragraph;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v11, v12}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual {v11, v12}, Lcom/itextpdf/layout/element/Paragraph;->setFont(Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/layout/element/Paragraph;

    invoke-virtual {v11, v1}, Lcom/itextpdf/layout/element/Paragraph;->setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/layout/element/Paragraph;

    invoke-virtual {v11, v10, v10, v10, v10}, Lcom/itextpdf/layout/element/Paragraph;->setMargins(FFFF)Lcom/itextpdf/layout/element/IElement;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/layout/element/Paragraph;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12}, Lcom/itextpdf/layout/element/Paragraph;->setMultipliedLeading(F)Lcom/itextpdf/layout/element/Paragraph;

    move-result-object v11

    const/16 v12, 0x1a

    .line 2569
    invoke-virtual {v11, v12, v7}, Lcom/itextpdf/layout/element/Paragraph;->setProperty(ILjava/lang/Object;)V

    .line 2570
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->convertJustificationToTextAlignment()Lcom/itextpdf/layout/properties/TextAlignment;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/itextpdf/layout/element/Paragraph;->setTextAlignment(Lcom/itextpdf/layout/properties/TextAlignment;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 2572
    iget-object v12, v0, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    if-eqz v12, :cond_2

    .line 2573
    invoke-virtual {v11, v12}, Lcom/itextpdf/layout/element/Paragraph;->setFontColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 2575
    :cond_2
    sget v12, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_COMBO:I

    invoke-virtual {v0, v12}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v12

    if-nez v12, :cond_6

    .line 2576
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v13, Lcom/itextpdf/kernel/pdf/PdfName;->I:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v12, v13}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v12

    if-nez v12, :cond_3

    .line 2577
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v13

    if-nez v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 2578
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v12

    sget-object v13, Lcom/itextpdf/kernel/pdf/PdfName;->I:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v12, v13}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v12

    :cond_3
    if-eqz v12, :cond_6

    .line 2580
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v13

    if-lez v13, :cond_6

    .line 2581
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2582
    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNumber()Z

    move-result v14

    if-nez v14, :cond_4

    goto :goto_1

    .line 2584
    :cond_4
    check-cast v13, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v13

    add-int v15, v5, p5

    move-object/from16 p3, v11

    int-to-double v10, v15

    cmpl-double v10, v13, v10

    if-nez v10, :cond_5

    .line 2585
    new-instance v10, Lcom/itextpdf/kernel/colors/DeviceRgb;

    const/16 v11, 0x24

    const/16 v13, 0x6a

    const/16 v14, 0xa

    invoke-direct {v10, v14, v11, v13}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(III)V

    move-object/from16 v11, p3

    invoke-virtual {v11, v10}, Lcom/itextpdf/layout/element/Paragraph;->setBackgroundColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 2586
    sget-object v10, Lcom/itextpdf/kernel/colors/ColorConstants;->LIGHT_GRAY:Lcom/itextpdf/kernel/colors/Color;

    invoke-virtual {v11, v10}, Lcom/itextpdf/layout/element/Paragraph;->setFontColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/layout/IPropertyContainer;

    goto :goto_2

    :cond_5
    move-object/from16 v11, p3

    :goto_2
    const/4 v10, 0x0

    goto :goto_1

    .line 2591
    :cond_6
    invoke-virtual {v9, v11}, Lcom/itextpdf/layout/element/Div;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/element/Div;

    add-int/lit8 v5, v5, 0x1

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2593
    :cond_7
    :goto_3
    invoke-virtual {v3, v9}, Lcom/itextpdf/layout/Canvas;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 2595
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    .line 2596
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endVariableText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2598
    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->setData([B)V

    return-void
.end method

.method private static generateDefaultAppearance(Lcom/itextpdf/kernel/pdf/PdfName;FLcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 8

    .line 3557
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3558
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    new-instance v2, Lcom/itextpdf/io/source/OutputStream;

    invoke-direct {v2, v0}, Lcom/itextpdf/io/source/OutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x1

    .line 3559
    new-array v3, v2, [B

    const/4 v4, 0x0

    const/16 v5, 0x67

    aput-byte v5, v3, v4

    const/4 v5, 0x2

    .line 3560
    new-array v6, v5, [B

    fill-array-data v6, :array_0

    .line 3561
    new-array v2, v2, [B

    const/16 v7, 0x6b

    aput-byte v7, v2, v4

    .line 3562
    new-array v4, v5, [B

    fill-array-data v4, :array_1

    .line 3564
    invoke-virtual {v1, p0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p0

    .line 3565
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 3566
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 3567
    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    if-eqz p2, :cond_3

    .line 3570
    instance-of p0, p2, Lcom/itextpdf/kernel/colors/DeviceGray;

    if-eqz p0, :cond_0

    .line 3571
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 3572
    invoke-virtual {p2}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloats([F)Ljava/io/OutputStream;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 3573
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 3574
    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_0

    .line 3575
    :cond_0
    instance-of p0, p2, Lcom/itextpdf/kernel/colors/DeviceRgb;

    if-eqz p0, :cond_1

    .line 3576
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 3577
    invoke-virtual {p2}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloats([F)Ljava/io/OutputStream;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 3578
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 3579
    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_0

    .line 3580
    :cond_1
    instance-of p0, p2, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    if-eqz p0, :cond_2

    .line 3581
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 3582
    invoke-virtual {p2}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloats([F)Ljava/io/OutputStream;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 3583
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 3584
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_0

    .line 3586
    :cond_2
    const-class p0, Lcom/itextpdf/forms/fields/PdfFormField;

    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p0

    .line 3587
    const-string p1, "Unsupported color in FormField\'s DA"

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 3590
    :cond_3
    :goto_0
    new-instance p0, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>([B)V

    return-object p0

    :array_0
    .array-data 1
        0x72t
        0x67t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x54t
        0x66t
    .end array-data
.end method

.method private getAcroFormKey(Lcom/itextpdf/kernel/pdf/PdfName;I)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 3

    .line 3183
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3185
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3187
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 3190
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    if-ne v0, p2, :cond_1

    move-object v1, p1

    :cond_1
    return-object v1
.end method

.method private getAcroFormObject(Lcom/itextpdf/kernel/pdf/PdfName;I)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 2

    .line 3149
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3151
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 3153
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    if-ne v0, p2, :cond_1

    move-object v1, p1

    :cond_1
    return-object v1
.end method

.method private getFontNameFromDR(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 2

    .line 3139
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3140
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_0

    .line 3141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getFontSize(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/lang/String;)F
    .locals 2

    .line 2955
    iget v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 2956
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2959
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->toRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->approximateFontSizeToFitSingleLine(Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;F)F

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/high16 p1, 0x41400000    # 12.0f

    return p1

    :cond_2
    return v0
.end method

.method private getRadioButtonValue()Ljava/lang/String;
    .locals 5

    .line 2945
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getAppearanceStates()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2946
    const-string v4, "Off"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTypeFromParent(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 2

    .line 3208
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 3209
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 3211
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3213
    invoke-direct {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getTypeFromParent(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getUniqueFontNameForDR(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 4

    .line 3130
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x1

    .line 3133
    :goto_0
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "F"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 3134
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method private getValueFromAppearance(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 3241
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v0, :cond_0

    .line 3242
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private hasDefaultAppearance()Z
    .locals 2

    .line 3122
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFormType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 3123
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Tx:Lcom/itextpdf/kernel/pdf/PdfName;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Ch:Lcom/itextpdf/kernel/pdf/PdfName;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Btn:Lcom/itextpdf/kernel/pdf/PdfName;

    if-ne v0, v1, :cond_0

    .line 3125
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlags()I

    move-result v0

    sget v1, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_PUSH_BUTTON:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isWidgetAnnotation(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 3594
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static makeFieldFlag(I)I
    .locals 1

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    shl-int p0, v0, p0

    return p0
.end method

.method public static makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2

    .line 1104
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1106
    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1107
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 1108
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Tx:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1109
    new-instance v0, Lcom/itextpdf/forms/fields/PdfTextFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/forms/fields/PdfTextFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_0

    .line 1110
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Btn:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1111
    new-instance v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_0

    .line 1112
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Ch:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1113
    new-instance v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_0

    .line 1114
    :cond_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Sig:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1115
    new-instance v0, Lcom/itextpdf/forms/fields/PdfSignatureFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_0

    .line 1117
    :cond_3
    new-instance v0, Lcom/itextpdf/forms/fields/PdfFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 1119
    :goto_0
    invoke-virtual {v0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    if-eqz p1, :cond_4

    .line 1121
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->getPdfAConformanceLevel()Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 1122
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->getPdfAConformanceLevel()Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    move-result-object p0

    iput-object p0, v0, Lcom/itextpdf/forms/fields/PdfFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    :cond_4
    return-object v0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private obfuscatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 3220
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 3221
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/16 v2, 0x2a

    .line 3222
    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3223
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method private static optionsArrayToString(Lcom/itextpdf/kernel/pdf/PdfArray;)Ljava/lang/String;
    .locals 5

    .line 3532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3533
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 3534
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isString()Z

    move-result v3

    const/16 v4, 0xa

    if-eqz v3, :cond_1

    .line 3535
    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3536
    :cond_1
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3537
    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 3538
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isString()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3539
    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3542
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3546
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 3547
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static processOptions([Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 6

    .line 2337
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 2338
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 2339
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v5, "UnicodeBig"

    invoke-direct {v4, v3, v5}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected static processOptions([[Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 9

    .line 2321
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 2322
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 2323
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfString;

    aget-object v7, v4, v2

    const-string v8, "UnicodeBig"

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 2324
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfString;

    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-direct {v6, v4, v8}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 2325
    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private putAcroFormObject(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 2

    .line 3168
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method

.method private regenerateCheckboxField(Ljava/lang/String;)V
    .locals 6

    .line 3334
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getRect(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 3335
    iget v1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->checkType:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->setCheckType(I)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 3337
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 3339
    iget-object v2, p0, Lcom/itextpdf/forms/fields/PdfFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    const-string v3, "Yes"

    const-string v4, "Off"

    if-eqz v2, :cond_1

    .line 3340
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    iget v5, p0, Lcom/itextpdf/forms/fields/PdfFormField;->checkType:I

    invoke-virtual {p0, v2, v0, v3, v5}, Lcom/itextpdf/forms/fields/PdfFormField;->drawPdfA2CheckAppearance(FFLjava/lang/String;I)V

    const/4 v0, 0x4

    .line 3341
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setFlag(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    goto :goto_2

    .line 3343
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, p1

    :goto_1
    invoke-virtual {p0, v2, v0, v3}, Lcom/itextpdf/forms/fields/PdfFormField;->drawCheckAppearance(FFLjava/lang/String;)V

    .line 3346
    :goto_2
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getNormalAppearanceObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getNormalAppearanceObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3347
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAppearanceState(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    goto :goto_3

    .line 3349
    :cond_3
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAppearanceState(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    :goto_3
    return-void
.end method

.method private regeneratePushButtonField()V
    .locals 9

    .line 3307
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 3309
    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getRect(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 3310
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3313
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-object v2, v3

    .line 3315
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    iget-object v6, p0, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    iget-object v7, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Rect:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 3316
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    iget-object v3, p0, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/itextpdf/forms/fields/PdfFormField;->getFontSize(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/lang/String;)F

    move-result v8

    move-object v3, p0

    .line 3315
    invoke-virtual/range {v3 .. v8}, Lcom/itextpdf/forms/fields/PdfFormField;->drawPushButtonAppearance(FFLjava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v1

    .line 3318
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 3320
    iget-object v1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    if-eqz v1, :cond_1

    .line 3321
    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->createPushButtonAppearanceState(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    :cond_1
    return-void
.end method

.method private regenerateRadioButtonField()V
    .locals 3

    .line 3326
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getRect(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 3327
    invoke-direct {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getRadioButtonValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 3328
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3329
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->drawRadioAppearance(FFLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private regenerateTextAndChoiceField(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;)Z
    .locals 39

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 3354
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPage()Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    .line 3355
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Rect:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    .line 3360
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getRotation()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v8

    .line 3365
    :goto_0
    rem-int/lit8 v2, v0, 0x5a

    const/4 v5, 0x6

    const-wide/16 v16, 0x0

    if-nez v2, :cond_4

    .line 3367
    rem-int/lit16 v2, v0, 0x168

    int-to-double v9, v2

    .line 3369
    invoke-static {v9, v10}, Lcom/itextpdf/forms/fields/PdfFormField;->degreeToRadians(D)D

    move-result-wide v9

    .line 3370
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->toRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 3372
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    const-wide v20, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpl-double v22, v9, v20

    if-ltz v22, :cond_1

    const-wide v22, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v22, v9, v22

    if-gtz v22, :cond_1

    .line 3377
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v11

    float-to-double v11, v11

    goto :goto_1

    :cond_1
    move-wide/from16 v11, v16

    :goto_1
    cmpg-double v20, v9, v20

    if-gtz v20, :cond_2

    .line 3380
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v13

    float-to-double v14, v13

    goto :goto_2

    :cond_2
    move-wide/from16 v14, v16

    .line 3384
    :goto_2
    new-instance v13, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    neg-double v3, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    new-array v7, v5, [D

    aput-wide v24, v7, v8

    const/16 v24, 0x1

    aput-wide v3, v7, v24

    const/4 v3, 0x2

    aput-wide v28, v7, v3

    const/4 v4, 0x3

    aput-wide v30, v7, v4

    const/4 v3, 0x4

    aput-wide v11, v7, v3

    const/4 v3, 0x5

    aput-wide v14, v7, v3

    invoke-direct {v13, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    rem-double v25, v9, v22

    cmpl-double v3, v25, v16

    if-nez v3, :cond_3

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    rem-double v9, v9, v18

    cmpl-double v3, v9, v16

    if-eqz v3, :cond_3

    .line 3387
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 3388
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 3391
    :cond_3
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    double-to-float v3, v11

    add-float/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 3392
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    double-to-float v3, v14

    add-float/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 3394
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    goto :goto_3

    :cond_4
    const/4 v4, 0x3

    const/16 v24, 0x1

    .line 3397
    const-class v2, Lcom/itextpdf/forms/fields/PdfFormField;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 3398
    const-string v3, "Encounterd a page rotation that was not a multiple of 90\u00b0/ (Pi/2) when generating default appearances for form fields"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 3399
    new-instance v13, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-array v2, v5, [D

    fill-array-data v2, :array_0

    invoke-direct {v13, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    .line 3403
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->MK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    .line 3404
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->MK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 3405
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->MK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsFloat(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    int-to-float v3, v0

    add-float/2addr v2, v3

    goto :goto_4

    :cond_5
    move v2, v7

    :goto_4
    const/high16 v3, 0x42b40000    # 90.0f

    rem-float v3, v2, v3

    cmpl-float v3, v3, v7

    if-nez v3, :cond_7

    .line 3410
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->toRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v9

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v2, v1

    float-to-double v1, v2

    .line 3414
    invoke-static {v1, v2}, Lcom/itextpdf/forms/fields/PdfFormField;->degreeToRadians(D)D

    move-result-wide v10

    int-to-double v14, v0

    .line 3416
    invoke-static {v14, v15}, Lcom/itextpdf/forms/fields/PdfFormField;->degreeToRadians(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v12, v24

    move v7, v4

    move-wide v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/forms/fields/PdfFormField;->calculateTranslationWidthAfterFieldRot(Lcom/itextpdf/kernel/geom/Rectangle;DD)F

    move-result v0

    float-to-double v4, v0

    .line 3417
    invoke-static {v14, v15}, Lcom/itextpdf/forms/fields/PdfFormField;->degreeToRadians(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    move-wide v14, v4

    move-wide v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/forms/fields/PdfFormField;->calculateTranslationHeightAfterFieldRot(Lcom/itextpdf/kernel/geom/Rectangle;DD)F

    move-result v0

    float-to-double v0, v0

    .line 3420
    new-instance v2, Lcom/itextpdf/kernel/geom/Matrix;

    invoke-virtual {v13, v8}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v26

    invoke-virtual {v13, v12}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v27

    const/4 v3, 0x2

    invoke-virtual {v13, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v28

    invoke-virtual {v13, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v29

    const/4 v3, 0x4

    invoke-virtual {v13, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v30

    const/4 v3, 0x5

    invoke-virtual {v13, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v31

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Lcom/itextpdf/kernel/geom/Matrix;-><init>(FFFFFF)V

    .line 3421
    new-instance v3, Lcom/itextpdf/kernel/geom/Matrix;

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    neg-double v12, v12

    double-to-float v5, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    double-to-float v8, v14

    double-to-float v0, v0

    move-object/from16 v32, v3

    move/from16 v33, v4

    move/from16 v34, v5

    move/from16 v35, v12

    move/from16 v36, v7

    move/from16 v37, v8

    move/from16 v38, v0

    invoke-direct/range {v32 .. v38}, Lcom/itextpdf/kernel/geom/Matrix;-><init>(FFFFFF)V

    .line 3422
    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Matrix;->multiply(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object v1

    .line 3423
    new-instance v13, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v5

    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v12

    const/4 v14, 0x4

    invoke-virtual {v1, v14}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v15

    const/4 v14, 0x6

    invoke-virtual {v1, v14}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v25

    const/4 v7, 0x7

    invoke-virtual {v1, v7}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v1

    new-array v7, v14, [F

    aput v3, v7, v2

    aput v5, v7, v4

    const/4 v3, 0x2

    aput v12, v7, v3

    const/4 v3, 0x3

    aput v15, v7, v3

    const/4 v3, 0x4

    aput v25, v7, v3

    const/4 v3, 0x5

    aput v1, v7, v3

    invoke-direct {v13, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    .line 3426
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    rem-double v3, v10, v3

    cmpl-double v3, v3, v16

    if-nez v3, :cond_6

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    rem-double/2addr v10, v3

    cmpl-double v3, v10, v16

    if-eqz v3, :cond_6

    .line 3429
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 3430
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 3432
    :cond_6
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v3

    add-float/2addr v3, v8

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 3433
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 3435
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    move-object v1, v0

    goto :goto_5

    :cond_7
    move v2, v8

    .line 3438
    :goto_5
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->toRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    .line 3439
    new-instance v7, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    const/4 v8, 0x0

    invoke-direct {v0, v8, v8, v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v7, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 3440
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Matrix:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v0, v13}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 3442
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Tx:Lcom/itextpdf/kernel/pdf/PdfName;

    move-object/from16 v4, p2

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3443
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->isMultiline()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3444
    iget-object v0, v6, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    move-object/from16 v4, p1

    invoke-virtual {v6, v3, v0, v4, v7}, Lcom/itextpdf/forms/fields/PdfFormField;->drawMultiLineTextAppearance(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/font/PdfFont;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)V

    goto/16 :goto_9

    :cond_8
    move-object/from16 v4, p1

    .line 3446
    iget-object v2, v6, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-direct {v6, v1, v4}, Lcom/itextpdf/forms/fields/PdfFormField;->getFontSize(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    move-object v1, v3

    move v3, v5

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/forms/fields/PdfFormField;->drawTextAppearance(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/font/PdfFont;FLjava/lang/String;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)V

    goto/16 :goto_9

    :cond_9
    move-object/from16 v4, p1

    .line 3450
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_COMBO:I

    invoke-virtual {v6, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3451
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->TI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-nez v0, :cond_a

    .line 3452
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 3453
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->TI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 3455
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getOptions()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v5

    if-nez v5, :cond_b

    .line 3456
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 3457
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Opt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v5

    :cond_b
    if-eqz v5, :cond_e

    if-eqz v0, :cond_c

    .line 3460
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v8

    goto :goto_6

    :cond_c
    move v8, v2

    :goto_6
    if-lez v8, :cond_d

    .line 3461
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 3462
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    invoke-virtual {v5, v8, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Ljava/util/List;)V

    goto :goto_7

    :cond_d
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->clone()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 3463
    :goto_7
    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->optionsArrayToString(Lcom/itextpdf/kernel/pdf/PdfArray;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move v5, v8

    goto :goto_8

    :cond_e
    move v5, v2

    .line 3466
    :goto_8
    invoke-direct {v6, v1, v4}, Lcom/itextpdf/forms/fields/PdfFormField;->getFontSize(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/lang/String;)F

    move-result v2

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v3, v4

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/forms/fields/PdfFormField;->drawChoiceAppearance(Lcom/itextpdf/kernel/geom/Rectangle;FLjava/lang/String;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;I)V

    .line 3468
    :goto_9
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 3469
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 3470
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 3471
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    const/4 v0, 0x1

    return v0

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data
.end method

.method private regenerateWidget(Ljava/lang/String;)Z
    .locals 2

    .line 3514
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFormType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 3516
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Tx:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Ch:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3518
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Btn:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3519
    sget v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_PUSH_BUTTON:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3520
    invoke-direct {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regeneratePushButtonField()V

    goto :goto_0

    .line 3521
    :cond_1
    sget v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_RADIO:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3522
    invoke-direct {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateRadioButtonField()V

    goto :goto_0

    .line 3524
    :cond_2
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateCheckboxField(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1

    .line 3517
    :cond_4
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateTextAndChoiceField(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p1

    return p1
.end method

.method private resolveFontName(Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 3

    .line 3275
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DR:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getAcroFormObject(Lcom/itextpdf/kernel/pdf/PdfName;I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3276
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Font:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 3278
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3280
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getFont(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method private retrieveStyles()V
    .locals 4

    .line 3251
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3252
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3253
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->MK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3255
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BG:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->appearancePropToColor(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->backgroundColor:Lcom/itextpdf/kernel/colors/Color;

    .line 3256
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BC:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->appearancePropToColor(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3258
    iput-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderColor:Lcom/itextpdf/kernel/colors/Color;

    .line 3261
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDefaultAppearance()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3263
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->splitDAelements(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 3264
    aget-object v1, v0, v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    .line 3265
    aget-object v3, v0, v3

    check-cast v3, Lcom/itextpdf/kernel/colors/Color;

    iput-object v3, p0, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 3266
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    .line 3267
    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->resolveFontName(Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 3271
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->updateFontAndFontSize(Lcom/itextpdf/kernel/font/PdfFont;F)V

    return-void
.end method

.method static setMetaInfoToCanvas(Lcom/itextpdf/layout/Canvas;)V
    .locals 2

    .line 2938
    invoke-static {}, Lcom/itextpdf/forms/fields/FormsMetaInfoStaticContainer;->getMetaInfoForLayout()Lcom/itextpdf/layout/renderer/MetaInfoContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x87

    .line 2940
    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/Canvas;->setProperty(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected static splitDAelements(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 10

    .line 2345
    new-instance v0, Lcom/itextpdf/io/source/PdfTokenizer;

    new-instance v1, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v2, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v2}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/PdfTokenizer;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    .line 2346
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    .line 2347
    new-array v2, v1, [Ljava/lang/Object;

    .line 2349
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2350
    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Comment:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 2352
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Other:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v3, v4, :cond_b

    .line 2353
    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x67

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v4, v5, :cond_5

    const/16 v5, 0x6b

    if-eq v4, v5, :cond_4

    const/16 v5, 0xa92

    if-eq v4, v5, :cond_3

    const/16 v5, 0xe35

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const-string v4, "rg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v8

    goto :goto_2

    :cond_3
    const-string v4, "Tf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v6

    goto :goto_2

    :cond_4
    const-string v4, "k"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_2

    :cond_5
    const-string v4, "g"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v7

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v3, -0x1

    :goto_2
    if-eqz v3, :cond_a

    if-eq v3, v7, :cond_9

    if-eq v3, v8, :cond_8

    if-eq v3, v1, :cond_7

    .line 2386
    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 2377
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    .line 2378
    new-instance v3, Ljava/lang/Float;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 2379
    new-instance v4, Ljava/lang/Float;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 2380
    new-instance v5, Ljava/lang/Float;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 2381
    new-instance v6, Ljava/lang/Float;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 2382
    new-instance v7, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    invoke-direct {v7, v3, v4, v5, v6}, Lcom/itextpdf/kernel/colors/DeviceCmyk;-><init>(FFFF)V

    aput-object v7, v2, v8

    goto/16 :goto_0

    .line 2369
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v1, :cond_0

    .line 2370
    new-instance v3, Ljava/lang/Float;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 2371
    new-instance v4, Ljava/lang/Float;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 2372
    new-instance v5, Ljava/lang/Float;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 2373
    new-instance v6, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-direct {v6, v3, v4, v5}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(FFF)V

    aput-object v6, v2, v8

    goto/16 :goto_0

    .line 2361
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v7, :cond_0

    .line 2362
    new-instance v3, Ljava/lang/Float;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_0

    .line 2364
    new-instance v4, Lcom/itextpdf/kernel/colors/DeviceGray;

    invoke-direct {v4, v3}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>(F)V

    aput-object v4, v2, v8

    goto/16 :goto_0

    .line 2355
    :cond_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v8, :cond_0

    .line 2356
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v6

    .line 2357
    new-instance v3, Ljava/lang/Float;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v7

    goto/16 :goto_0

    .line 2390
    :cond_b
    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    :cond_c
    return-object v2
.end method

.method private updateFontAndFontSize(Lcom/itextpdf/kernel/font/PdfFont;F)V
    .locals 0

    if-nez p1, :cond_0

    .line 1234
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDefaultFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p1

    .line 1236
    :cond_0
    iput-object p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    const/high16 p2, 0x41400000    # 12.0f

    .line 1240
    :cond_1
    iput p2, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    return-void
.end method


# virtual methods
.method public addKid(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1

    .line 1306
    invoke-virtual {p1, p0}, Lcom/itextpdf/forms/fields/PdfFormField;->setParent(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1307
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1309
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 1311
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1313
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    return-object p1
.end method

.method public addKid(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1

    .line 1324
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setParent(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 1325
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1327
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 1329
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1330
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    return-object p1
.end method

.method protected drawBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v11, p3

    move/from16 v12, p4

    .line 2610
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2611
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getBorderWidth()F

    move-result v1

    .line 2612
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getBorderStyle()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-gez v4, :cond_0

    move v1, v3

    .line 2617
    :cond_0
    iget-object v4, v0, Lcom/itextpdf/forms/fields/PdfFormField;->backgroundColor:Lcom/itextpdf/kernel/colors/Color;

    if-eqz v4, :cond_1

    .line 2619
    invoke-virtual {v10, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v13

    float-to-double v4, v11

    float-to-double v6, v12

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    .line 2620
    invoke-virtual/range {v13 .. v21}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    .line 2621
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_1
    cmpl-float v3, v1, v3

    if-lez v3, :cond_3

    .line 2624
    iget-object v3, v0, Lcom/itextpdf/forms/fields/PdfFormField;->borderColor:Lcom/itextpdf/kernel/colors/Color;

    if-eqz v3, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2625
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2626
    iget-object v3, v0, Lcom/itextpdf/forms/fields/PdfFormField;->borderColor:Lcom/itextpdf/kernel/colors/Color;

    .line 2627
    invoke-virtual {v10, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    .line 2628
    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2629
    iget-object v3, v0, Lcom/itextpdf/forms/fields/PdfFormField;->borderColor:Lcom/itextpdf/kernel/colors/Color;

    iget-object v4, v0, Lcom/itextpdf/forms/fields/PdfFormField;->backgroundColor:Lcom/itextpdf/kernel/colors/Color;

    invoke-static {v2, v1, v3, v4}, Lcom/itextpdf/forms/fields/borders/FormBorderFactory;->getBorder(Lcom/itextpdf/kernel/pdf/PdfDictionary;FLcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/layout/borders/Border;

    move-result-object v2

    if-eqz v2, :cond_2

    add-float v3, v1, v1

    .line 2632
    new-instance v4, Lcom/itextpdf/kernel/geom/Rectangle;

    sub-float v5, v11, v3

    sub-float v3, v12, v3

    invoke-direct {v4, v1, v1, v5, v3}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-virtual {v2, v10, v4}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V

    goto :goto_0

    :cond_2
    float-to-double v6, v11

    float-to-double v8, v12

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p1

    .line 2636
    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    .line 2637
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_3
    :goto_0
    move-object/from16 v1, p2

    .line 2641
    invoke-direct {v0, v1, v12, v11}, Lcom/itextpdf/forms/fields/PdfFormField;->applyRotation(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    .line 2642
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method protected drawButton(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLjava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;F)V
    .locals 6

    .line 2866
    iget-object p2, p0, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    if-nez p2, :cond_0

    .line 2867
    sget-object p2, Lcom/itextpdf/kernel/colors/ColorConstants;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    iput-object p2, p0, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    :cond_0
    if-nez p6, :cond_1

    .line 2870
    const-string p6, ""

    .line 2873
    :cond_1
    new-instance p2, Lcom/itextpdf/layout/element/Paragraph;

    invoke-direct {p2, p6}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p7}, Lcom/itextpdf/layout/element/Paragraph;->setFont(Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/layout/element/Paragraph;

    invoke-virtual {p2, p8}, Lcom/itextpdf/layout/element/Paragraph;->setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/layout/element/Paragraph;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/itextpdf/layout/element/Paragraph;->setMargin(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/layout/element/Paragraph;

    const/high16 p6, 0x3f800000    # 1.0f

    invoke-virtual {p2, p6}, Lcom/itextpdf/layout/element/Paragraph;->setMultipliedLeading(F)Lcom/itextpdf/layout/element/Paragraph;

    move-result-object p2

    sget-object p6, Lcom/itextpdf/layout/properties/VerticalAlignment;->MIDDLE:Lcom/itextpdf/layout/properties/VerticalAlignment;

    .line 2874
    invoke-virtual {p2, p6}, Lcom/itextpdf/layout/element/Paragraph;->setVerticalAlignment(Lcom/itextpdf/layout/properties/VerticalAlignment;)Lcom/itextpdf/layout/element/IElement;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/itextpdf/layout/element/Paragraph;

    .line 2875
    new-instance v0, Lcom/itextpdf/layout/Canvas;

    new-instance p2, Lcom/itextpdf/kernel/geom/Rectangle;

    neg-float p6, p5

    const/high16 p7, 0x40000000    # 2.0f

    mul-float p8, p5, p7

    invoke-direct {p2, p3, p6, p4, p8}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/layout/Canvas;-><init>(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V

    const/4 p1, 0x1

    .line 2876
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 p2, 0x52

    invoke-virtual {v0, p2, p1}, Lcom/itextpdf/layout/Canvas;->setProperty(ILjava/lang/Object;)V

    .line 2878
    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->setMetaInfoToCanvas(Lcom/itextpdf/layout/Canvas;)V

    div-float v2, p4, p7

    div-float v3, p5, p7

    .line 2880
    sget-object v4, Lcom/itextpdf/layout/properties/TextAlignment;->CENTER:Lcom/itextpdf/layout/properties/TextAlignment;

    sget-object v5, Lcom/itextpdf/layout/properties/VerticalAlignment;->MIDDLE:Lcom/itextpdf/layout/properties/VerticalAlignment;

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/Canvas;->showTextAligned(Lcom/itextpdf/layout/element/Paragraph;FFLcom/itextpdf/layout/properties/TextAlignment;Lcom/itextpdf/layout/properties/VerticalAlignment;)Lcom/itextpdf/layout/IPropertyContainer;

    return-void
.end method

.method protected drawCheckAppearance(FFLjava/lang/String;)V
    .locals 6

    .line 2743
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 2745
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 2746
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfResources;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2747
    new-instance v3, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {v3, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 2748
    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;->drawBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    .line 2749
    iget v4, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    invoke-virtual {p0, v2, p1, p2, v4}, Lcom/itextpdf/forms/fields/PdfFormField;->drawCheckBox(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFF)V

    .line 2750
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2751
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/itextpdf/kernel/pdf/PdfResources;->addFont(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/kernel/pdf/PdfName;

    .line 2754
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 2755
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/PdfResources;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v5

    invoke-direct {v2, v1, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2756
    new-instance v4, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {v4, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 2757
    invoke-virtual {p0, v2, v4, p1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;->drawBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    .line 2758
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2759
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object p2

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addFont(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/kernel/pdf/PdfName;

    .line 2761
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 2762
    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p2, p3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2763
    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string p3, "Off"

    invoke-direct {p2, p3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2765
    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 2766
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->CA:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    iget-object v1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2768
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 2769
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->MK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3, v0, p2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 2770
    invoke-virtual {p3, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setNormalAppearance(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    return-void
.end method

.method protected drawCheckBox(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFF)V
    .locals 3

    .line 2892
    iget v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->checkType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2893
    iget p4, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    invoke-static {p1, p2, p3, p4}, Lcom/itextpdf/forms/util/DrawingUtil;->drawCross(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFF)V

    return-void

    .line 2896
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    const/4 v1, 0x0

    cmpg-float v1, p4, v1

    if-gtz v1, :cond_1

    .line 2899
    new-instance p4, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {p4, p2, p3}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    iget-object v1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {p0, v0, p4, v1, v2}, Lcom/itextpdf/forms/fields/PdfFormField;->approximateFontSizeToFitSingleLine(Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;F)F

    move-result p4

    .line 2903
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 2904
    invoke-virtual {p1, v0, p4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 2905
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resetFillColorRgb()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    iget-object v1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    .line 2906
    invoke-virtual {v0, v1, p4}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v1

    sub-float/2addr p2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    iget-object v2, p0, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    invoke-virtual {v0, v2, p4}, Lcom/itextpdf/kernel/font/PdfFont;->getAscent(Ljava/lang/String;F)I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p3, p4

    div-float/2addr p3, v1

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    iget-object p2, p0, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    .line 2907
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 2908
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method protected drawMultiLineTextAppearance(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/font/PdfFont;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)V
    .locals 7

    .line 2482
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 2483
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v1

    .line 2484
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2486
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    .line 2487
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    .line 2489
    invoke-virtual {p0, v2, p4, v1, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->drawBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    .line 2490
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginVariableText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2492
    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v1, p1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 2493
    new-instance v1, Lcom/itextpdf/layout/Canvas;

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/layout/Canvas;-><init>(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V

    const/4 v5, 0x1

    .line 2494
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v6, 0x52

    invoke-virtual {v1, v6, v5}, Lcom/itextpdf/layout/Canvas;->setProperty(ILjava/lang/Object;)V

    .line 2496
    invoke-static {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->setMetaInfoToCanvas(Lcom/itextpdf/layout/Canvas;)V

    .line 2498
    invoke-static {p3}, Lcom/itextpdf/forms/fields/PdfFormField;->createParagraphForTextFieldValue(Ljava/lang/String;)Lcom/itextpdf/layout/element/Paragraph;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/itextpdf/layout/element/Paragraph;->setFont(Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/layout/element/Paragraph;

    .line 2499
    invoke-virtual {p2, v4}, Lcom/itextpdf/layout/element/Paragraph;->setMargin(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/layout/element/Paragraph;

    const/high16 p3, 0x40400000    # 3.0f

    .line 2500
    invoke-virtual {p2, p3}, Lcom/itextpdf/layout/element/Paragraph;->setPadding(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/layout/element/Paragraph;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 2501
    invoke-virtual {p2, p3}, Lcom/itextpdf/layout/element/Paragraph;->setMultipliedLeading(F)Lcom/itextpdf/layout/element/Paragraph;

    move-result-object p2

    .line 2502
    iget p3, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    cmpl-float v4, p3, v4

    if-nez v4, :cond_0

    .line 2503
    invoke-virtual {v1}, Lcom/itextpdf/layout/Canvas;->getRenderer()Lcom/itextpdf/layout/renderer/RootRenderer;

    move-result-object p3

    invoke-direct {p0, p2, v3, p3}, Lcom/itextpdf/forms/fields/PdfFormField;->approximateFontSizeToFitMultiLine(Lcom/itextpdf/layout/element/Paragraph;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/renderer/IRenderer;)F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/itextpdf/layout/element/Paragraph;->setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;

    goto :goto_0

    .line 2505
    :cond_0
    invoke-virtual {p2, p3}, Lcom/itextpdf/layout/element/Paragraph;->setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;

    :goto_0
    const/16 p3, 0x1a

    .line 2507
    invoke-virtual {p2, p3, v5}, Lcom/itextpdf/layout/element/Paragraph;->setProperty(ILjava/lang/Object;)V

    .line 2508
    invoke-direct {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->convertJustificationToTextAlignment()Lcom/itextpdf/layout/properties/TextAlignment;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/itextpdf/layout/element/Paragraph;->setTextAlignment(Lcom/itextpdf/layout/properties/TextAlignment;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 2510
    iget-object p3, p0, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    if-eqz p3, :cond_1

    .line 2511
    invoke-virtual {p2, p3}, Lcom/itextpdf/layout/element/Paragraph;->setFontColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/layout/IPropertyContainer;

    :cond_1
    const p3, 0x3727c5ac    # 1.0E-5f

    sub-float/2addr p1, p3

    .line 2514
    invoke-virtual {p2, p1}, Lcom/itextpdf/layout/element/Paragraph;->setHeight(F)Lcom/itextpdf/layout/element/IElement;

    const/16 p1, 0x69

    .line 2515
    sget-object p3, Lcom/itextpdf/layout/properties/BoxSizingPropertyValue;->BORDER_BOX:Lcom/itextpdf/layout/properties/BoxSizingPropertyValue;

    invoke-virtual {p2, p1, p3}, Lcom/itextpdf/layout/element/Paragraph;->setProperty(ILjava/lang/Object;)V

    const/16 p1, 0x67

    .line 2516
    sget-object p3, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    invoke-virtual {p2, p1, p3}, Lcom/itextpdf/layout/element/Paragraph;->setProperty(ILjava/lang/Object;)V

    const/16 p1, 0x68

    .line 2517
    sget-object p3, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->HIDDEN:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    invoke-virtual {p2, p1, p3}, Lcom/itextpdf/layout/element/Paragraph;->setProperty(ILjava/lang/Object;)V

    .line 2518
    invoke-virtual {v1, p2}, Lcom/itextpdf/layout/Canvas;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 2519
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endVariableText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2521
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfStream;->setData([B)V

    return-void
.end method

.method protected drawPdfA2CheckAppearance(FFLjava/lang/String;I)V
    .locals 5

    .line 2785
    iput p4, p0, Lcom/itextpdf/forms/fields/PdfFormField;->checkType:I

    .line 2786
    new-instance p4, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v0, 0x0

    invoke-direct {p4, v0, v0, p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 2788
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 2789
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfResources;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2790
    new-instance v2, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {v2, p4}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 2791
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    .line 2793
    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;->drawBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    const/4 v3, 0x1

    .line 2794
    invoke-virtual {p0, v1, p1, p2, v3}, Lcom/itextpdf/forms/fields/PdfFormField;->drawPdfACheckBox(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFZ)V

    .line 2795
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2797
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 2798
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfResources;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v4

    invoke-direct {v1, v0, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2799
    new-instance v3, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {v3, p4}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 2800
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    .line 2802
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;->drawBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    .line 2803
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2805
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 2806
    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p2, p3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2807
    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string p3, "Off"

    invoke-direct {p2, p3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2809
    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 2810
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->CA:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p4, Lcom/itextpdf/kernel/pdf/PdfString;

    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    invoke-direct {p4, v0}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2812
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object p3

    const/4 p4, 0x0

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 2813
    sget-object p4, Lcom/itextpdf/kernel/pdf/PdfName;->MK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3, p4, p2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 2814
    invoke-virtual {p3, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setNormalAppearance(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    return-void
.end method

.method protected drawPdfACheckBox(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFZ)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    .line 2915
    :cond_0
    iget p4, p0, Lcom/itextpdf/forms/fields/PdfFormField;->checkType:I

    packed-switch p4, :pswitch_data_0

    goto :goto_0

    .line 2932
    :pswitch_0
    invoke-static {p1, p2, p3}, Lcom/itextpdf/forms/util/DrawingUtil;->drawPdfAStar(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    goto :goto_0

    .line 2929
    :pswitch_1
    invoke-static {p1, p2, p3}, Lcom/itextpdf/forms/util/DrawingUtil;->drawPdfASquare(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    goto :goto_0

    .line 2926
    :pswitch_2
    invoke-static {p1, p2, p3}, Lcom/itextpdf/forms/util/DrawingUtil;->drawPdfADiamond(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    goto :goto_0

    .line 2923
    :pswitch_3
    invoke-static {p1, p2, p3}, Lcom/itextpdf/forms/util/DrawingUtil;->drawPdfACross(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    goto :goto_0

    .line 2920
    :pswitch_4
    invoke-static {p1, p2, p3}, Lcom/itextpdf/forms/util/DrawingUtil;->drawPdfACircle(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    goto :goto_0

    .line 2917
    :pswitch_5
    invoke-static {p1, p2, p3}, Lcom/itextpdf/forms/util/DrawingUtil;->drawPdfACheck(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected drawPushButtonAppearance(FFLjava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 13

    move-object v9, p0

    move v4, p1

    move v5, p2

    .line 2829
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 2830
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfResources;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    invoke-direct {v1, v10, v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2832
    new-instance v11, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v11, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 2833
    invoke-virtual {p0, v1, v11, p1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;->drawBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    .line 2835
    iget-object v0, v9, Lcom/itextpdf/forms/fields/PdfFormField;->img:Lcom/itextpdf/io/image/ImageData;

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 2836
    new-instance v8, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    iget-object v0, v9, Lcom/itextpdf/forms/fields/PdfFormField;->img:Lcom/itextpdf/io/image/ImageData;

    invoke-direct {v8, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    .line 2837
    iget v0, v9, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    sub-float v3, v4, v0

    sub-float/2addr v5, v0

    div-float v6, v0, v2

    div-float v7, v0, v2

    const/4 v4, 0x0

    const/4 v12, 0x0

    move-object v0, v1

    move-object v1, v8

    move v2, v3

    move v3, v4

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObjectWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2839
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/itextpdf/kernel/pdf/PdfResources;->addImage(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)Lcom/itextpdf/kernel/pdf/PdfName;

    goto :goto_0

    .line 2840
    :cond_0
    iget-object v3, v9, Lcom/itextpdf/forms/fields/PdfFormField;->form:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz v3, :cond_1

    .line 2841
    iget v0, v9, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    sub-float v0, v5, v0

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getHeight()F

    move-result v4

    div-float v4, v0, v4

    iget v0, v9, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    sub-float v0, v5, v0

    iget-object v5, v9, Lcom/itextpdf/forms/fields/PdfFormField;->form:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 2842
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getHeight()F

    move-result v5

    div-float v5, v0, v5

    iget v0, v9, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    div-float v6, v0, v2

    div-float v7, v0, v2

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v0, v1

    move-object v1, v3

    move v2, v4

    move v3, v8

    move v4, v12

    .line 2841
    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObjectWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2843
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v0

    iget-object v1, v9, Lcom/itextpdf/forms/fields/PdfFormField;->form:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)Lcom/itextpdf/kernel/pdf/PdfName;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    .line 2845
    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/forms/fields/PdfFormField;->drawButton(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLjava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;F)V

    .line 2846
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfResources;->addFont(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/kernel/pdf/PdfName;

    .line 2848
    :goto_0
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object v11
.end method

.method protected drawRadioAppearance(FFLjava/lang/String;)V
    .locals 7

    .line 2684
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 2685
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 2686
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setNormalAppearance(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 2689
    new-instance v2, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {v2, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    if-eqz p3, :cond_0

    .line 2691
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 2692
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/PdfResources;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2694
    invoke-virtual {p0, v4, v2, p1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;->drawRadioBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    const/4 v5, 0x1

    .line 2695
    invoke-virtual {p0, v4, p1, p2, v5}, Lcom/itextpdf/forms/fields/PdfFormField;->drawRadioField(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFZ)V

    .line 2697
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v4

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2698
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getNormalAppearanceObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v4, p3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    invoke-virtual {v3, v4, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2702
    :cond_0
    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {p3}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 2703
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/PdfResources;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v5

    invoke-direct {v3, p3, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2704
    new-instance v4, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {v4, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 2706
    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;->drawRadioBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    .line 2708
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2709
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getNormalAppearanceObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string p3, "Off"

    invoke-direct {p2, p3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2711
    iget-object p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    if-eqz p1, :cond_2

    const-string p2, "2"

    .line 2712
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->getPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->getPart()Ljava/lang/String;

    move-result-object p1

    const-string p2, "3"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2713
    :cond_1
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    .line 2714
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    :cond_2
    return-void
.end method

.method protected drawRadioBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    .line 2646
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2647
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getBorderWidth()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v2, v5

    div-float v7, v3, v5

    const/4 v8, 0x0

    cmpg-float v9, v4, v8

    if-gez v9, :cond_0

    move v4, v8

    .line 2654
    :cond_0
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->min(FF)F

    move-result v9

    sub-float/2addr v9, v4

    div-float/2addr v9, v5

    .line 2656
    iget-object v10, v0, Lcom/itextpdf/forms/fields/PdfFormField;->backgroundColor:Lcom/itextpdf/kernel/colors/Color;

    if-eqz v10, :cond_1

    .line 2658
    invoke-virtual {v1, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v11

    float-to-double v12, v6

    float-to-double v14, v7

    div-float v5, v4, v5

    add-float/2addr v5, v9

    move/from16 v18, v9

    float-to-double v8, v5

    move-wide/from16 v16, v8

    .line 2659
    invoke-virtual/range {v11 .. v17}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->circle(DDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    .line 2660
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    move/from16 v18, v9

    move v5, v8

    :goto_0
    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    .line 2663
    iget-object v5, v0, Lcom/itextpdf/forms/fields/PdfFormField;->borderColor:Lcom/itextpdf/kernel/colors/Color;

    if-eqz v5, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    .line 2664
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 2665
    iget-object v5, v0, Lcom/itextpdf/forms/fields/PdfFormField;->borderColor:Lcom/itextpdf/kernel/colors/Color;

    .line 2666
    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    .line 2667
    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v8

    float-to-double v9, v6

    float-to-double v11, v7

    move/from16 v4, v18

    float-to-double v13, v4

    .line 2668
    invoke-virtual/range {v8 .. v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->circle(DDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    .line 2669
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_2
    move-object/from16 v4, p2

    .line 2672
    invoke-direct {v0, v4, v3, v2}, Lcom/itextpdf/forms/fields/PdfFormField;->applyRotation(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    .line 2673
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method protected drawRadioField(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFZ)V
    .locals 1

    .line 2727
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    if-eqz p4, :cond_0

    .line 2729
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resetFillColorRgb()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    const/high16 p4, 0x40000000    # 2.0f

    div-float v0, p2, p4

    div-float p4, p3, p4

    .line 2730
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/high16 p3, 0x40800000    # 4.0f

    div-float/2addr p2, p3

    invoke-static {p1, v0, p4, p2}, Lcom/itextpdf/forms/util/DrawingUtil;->drawCircle(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFF)V

    .line 2732
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method protected drawTextAppearance(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/font/PdfFont;FLjava/lang/String;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)V
    .locals 19

    move-object/from16 v0, p0

    .line 2409
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 2410
    invoke-virtual/range {p5 .. p5}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v2

    .line 2411
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2413
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    .line 2414
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    .line 2415
    new-instance v5, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    new-instance v6, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v4, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 2416
    invoke-virtual {v0, v3, v5, v4, v2}, Lcom/itextpdf/forms/fields/PdfFormField;->drawBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    .line 2417
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->isPassword()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v5, p4

    .line 2418
    invoke-direct {v0, v5}, Lcom/itextpdf/forms/fields/PdfFormField;->obfuscatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object/from16 v5, p4

    .line 2422
    :goto_0
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginVariableText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v6

    .line 2423
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v6

    .line 2424
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2426
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->convertJustificationToTextAlignment()Lcom/itextpdf/layout/properties/TextAlignment;

    move-result-object v12

    .line 2428
    sget-object v6, Lcom/itextpdf/layout/properties/TextAlignment;->RIGHT:Lcom/itextpdf/layout/properties/TextAlignment;

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v12, v6, :cond_1

    .line 2429
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    :goto_1
    move v10, v6

    goto :goto_2

    .line 2430
    :cond_1
    sget-object v6, Lcom/itextpdf/layout/properties/TextAlignment;->CENTER:Lcom/itextpdf/layout/properties/TextAlignment;

    if-ne v12, v6, :cond_2

    .line 2431
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    div-float/2addr v6, v8

    goto :goto_1

    :cond_2
    move v10, v7

    .line 2434
    :goto_2
    new-instance v6, Lcom/itextpdf/layout/Canvas;

    new-instance v9, Lcom/itextpdf/kernel/geom/Rectangle;

    neg-float v11, v2

    mul-float/2addr v2, v8

    invoke-direct {v9, v7, v11, v7, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v6, v3, v9}, Lcom/itextpdf/layout/Canvas;-><init>(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V

    const/16 v2, 0x52

    const/4 v9, 0x1

    .line 2435
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v6, v2, v11}, Lcom/itextpdf/layout/Canvas;->setProperty(ILjava/lang/Object;)V

    .line 2437
    invoke-static {v6}, Lcom/itextpdf/forms/fields/PdfFormField;->setMetaInfoToCanvas(Lcom/itextpdf/layout/Canvas;)V

    .line 2439
    new-instance v2, Lcom/itextpdf/layout/Style;

    invoke-direct {v2}, Lcom/itextpdf/layout/Style;-><init>()V

    move-object/from16 v11, p2

    invoke-virtual {v2, v11}, Lcom/itextpdf/layout/Style;->setFont(Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/Style;

    move/from16 v11, p3

    invoke-virtual {v2, v11}, Lcom/itextpdf/layout/Style;->setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/Style;

    .line 2440
    new-instance v11, Lcom/itextpdf/layout/properties/Leading;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x2

    invoke-direct {v11, v14, v13}, Lcom/itextpdf/layout/properties/Leading;-><init>(IF)V

    const/16 v13, 0x21

    invoke-virtual {v2, v13, v11}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 2441
    iget-object v11, v0, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    if-eqz v11, :cond_3

    .line 2442
    new-instance v11, Lcom/itextpdf/layout/properties/TransparentColor;

    iget-object v13, v0, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    invoke-direct {v11, v13}, Lcom/itextpdf/layout/properties/TransparentColor;-><init>(Lcom/itextpdf/kernel/colors/Color;)V

    const/16 v13, 0x15

    invoke-virtual {v2, v13, v11}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 2444
    :cond_3
    new-instance v11, Lcom/itextpdf/forms/fields/PdfTextFormField;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v11, v13}, Lcom/itextpdf/forms/fields/PdfTextFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-virtual {v11}, Lcom/itextpdf/forms/fields/PdfTextFormField;->getMaxLen()I

    move-result v11

    .line 2446
    sget v13, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_COMB:I

    invoke-virtual {v0, v13}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v13

    const/4 v15, 0x0

    if-eqz v13, :cond_6

    if-eqz v11, :cond_6

    int-to-float v7, v11

    div-float/2addr v4, v7

    .line 2448
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2451
    sget-object v10, Lcom/itextpdf/forms/fields/PdfFormField$1;->$SwitchMap$com$itextpdf$layout$properties$TextAlignment:[I

    invoke-virtual {v12}, Lcom/itextpdf/layout/properties/TextAlignment;->ordinal()I

    move-result v12

    aget v10, v10, v12

    if-eq v10, v9, :cond_5

    if-eq v10, v14, :cond_4

    move v11, v15

    goto :goto_3

    :cond_4
    sub-int/2addr v11, v7

    .line 2456
    div-int/2addr v11, v14

    goto :goto_3

    :cond_5
    sub-int/2addr v11, v7

    :goto_3
    int-to-float v9, v11

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    mul-float/2addr v9, v4

    :goto_4
    if-ge v15, v7, :cond_8

    .line 2463
    new-instance v10, Lcom/itextpdf/layout/element/Paragraph;

    add-int/lit8 v11, v15, 0x1

    invoke-virtual {v5, v15, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Lcom/itextpdf/layout/element/Paragraph;->addStyle(Lcom/itextpdf/layout/Style;)Lcom/itextpdf/layout/element/IElement;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Lcom/itextpdf/layout/element/Paragraph;

    int-to-float v10, v15

    mul-float/2addr v10, v4

    add-float v15, v9, v10

    .line 2464
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v10

    div-float v16, v10, v8

    sget-object v17, Lcom/itextpdf/layout/properties/TextAlignment;->CENTER:Lcom/itextpdf/layout/properties/TextAlignment;

    sget-object v18, Lcom/itextpdf/layout/properties/VerticalAlignment;->MIDDLE:Lcom/itextpdf/layout/properties/VerticalAlignment;

    move-object v13, v6

    .line 2463
    invoke-virtual/range {v13 .. v18}, Lcom/itextpdf/layout/Canvas;->showTextAligned(Lcom/itextpdf/layout/element/Paragraph;FFLcom/itextpdf/layout/properties/TextAlignment;Lcom/itextpdf/layout/properties/VerticalAlignment;)Lcom/itextpdf/layout/IPropertyContainer;

    move v15, v11

    goto :goto_4

    .line 2467
    :cond_6
    sget v4, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_COMB:I

    invoke-virtual {v0, v4}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2468
    const-class v4, Lcom/itextpdf/forms/fields/PdfFormField;

    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    .line 2469
    const-string v9, "The Comb flag may be set only if the MaxLen entry is present in the text field dictionary and if the Multiline, Password, and FileSelect flags are clear."

    new-array v11, v15, [Ljava/lang/Object;

    invoke-static {v9, v11}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 2471
    :cond_7
    invoke-static {v5}, Lcom/itextpdf/forms/fields/PdfFormField;->createParagraphForTextFieldValue(Ljava/lang/String;)Lcom/itextpdf/layout/element/Paragraph;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/itextpdf/layout/element/Paragraph;->addStyle(Lcom/itextpdf/layout/Style;)Lcom/itextpdf/layout/element/IElement;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Paragraph;

    invoke-virtual {v2, v7, v8, v7, v8}, Lcom/itextpdf/layout/element/Paragraph;->setPaddings(FFFF)Lcom/itextpdf/layout/element/IElement;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/itextpdf/layout/element/Paragraph;

    .line 2472
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    div-float v11, v2, v8

    sget-object v13, Lcom/itextpdf/layout/properties/VerticalAlignment;->MIDDLE:Lcom/itextpdf/layout/properties/VerticalAlignment;

    move-object v8, v6

    .line 2471
    invoke-virtual/range {v8 .. v13}, Lcom/itextpdf/layout/Canvas;->showTextAligned(Lcom/itextpdf/layout/element/Paragraph;FFLcom/itextpdf/layout/properties/TextAlignment;Lcom/itextpdf/layout/properties/VerticalAlignment;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 2475
    :cond_8
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    .line 2476
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endVariableText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2478
    invoke-virtual/range {p5 .. p5}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->setData([B)V

    return-void
.end method

.method public getAdditionalAction()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 2

    .line 1579
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getAlternativeName()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 2

    .line 1383
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->TU:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    return-object v0
.end method

.method public getAppearanceStates()[Ljava/lang/String;
    .locals 4

    .line 2155
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2156
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Opt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2158
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2160
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Opt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2162
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2164
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2165
    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    goto :goto_1

    .line 2166
    :cond_2
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isString()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2167
    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfString;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    .line 2170
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2176
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 2177
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2179
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2181
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 2182
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2187
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2189
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2190
    new-instance v3, Lcom/itextpdf/forms/fields/PdfFormField;

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v3, v2}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 2191
    invoke-virtual {v3}, Lcom/itextpdf/forms/fields/PdfFormField;->getAppearanceStates()[Ljava/lang/String;

    move-result-object v2

    .line 2192
    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_4

    .line 2195
    :cond_6
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getBorderWidth()F
    .locals 2

    .line 1997
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getBorderStyle()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1999
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->W:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2001
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    .line 2004
    :cond_0
    iget v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    return v0
.end method

.method public getColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 1791
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    return-object v0
.end method

.method public getDefaultAppearance()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 3

    .line 1638
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1640
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1644
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1645
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 1651
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DA:Lcom/itextpdf/kernel/pdf/PdfName;

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getAcroFormKey(Lcom/itextpdf/kernel/pdf/PdfName;I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfString;

    :cond_1
    return-object v0
.end method

.method public getDefaultStyle()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 2

    .line 1730
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 2

    .line 1558
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DV:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method protected getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 2292
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    return-object v0
.end method

.method public getFieldFlag(I)Z
    .locals 1

    .line 1416
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlags()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getFieldFlags()I
    .locals 2

    .line 1497
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Ff:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1499
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    return v0

    .line 1501
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1503
    new-instance v1, Lcom/itextpdf/forms/fields/PdfFormField;

    invoke-direct {v1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlags()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 4

    .line 1350
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1352
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    .line 1353
    invoke-virtual {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1358
    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1360
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnicodeBig"

    invoke-direct {v2, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    return-object v1
.end method

.method public getFont()Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1

    .line 1782
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    .line 1772
    iget v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    return v0
.end method

.method public getFormType()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 2

    .line 1137
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1139
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getTypeFromParent(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getJustification()Ljava/lang/Integer;
    .locals 2

    .line 1702
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Q:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1703
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1704
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Q:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getKids()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 1295
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getMappingName()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 2

    .line 1404
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->TM:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 1600
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Opt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 2

    .line 1286
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method protected getRect(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 2302
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Rect:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2304
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2308
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Rect:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    goto :goto_0

    .line 2306
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Wrong form field. Add annotation to the field."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 2311
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->toRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getRichText()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 2

    .line 1751
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->RV:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 2

    .line 1516
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1517
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0

    .line 1519
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 3

    .line 1528
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getValue()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 1529
    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 1531
    :cond_0
    instance-of v2, v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    if-eqz v2, :cond_1

    .line 1532
    new-instance v1, Ljava/lang/String;

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 1533
    :cond_1
    instance-of v2, v0, Lcom/itextpdf/kernel/pdf/PdfName;

    if-eqz v2, :cond_2

    .line 1534
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1535
    :cond_2
    instance-of v2, v0, Lcom/itextpdf/kernel/pdf/PdfString;

    if-eqz v2, :cond_3

    .line 1536
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1
.end method

.method public getWidgets()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;",
            ">;"
        }
    .end annotation

    .line 1610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1612
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1613
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1614
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1617
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 1619
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1620
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 1621
    move-object v4, v3

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1622
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1623
    invoke-static {v3}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public isMultiline()Z
    .locals 1

    .line 1461
    sget v0, Lcom/itextpdf/forms/fields/PdfFormField;->FF_MULTILINE:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isNoExport()Z
    .locals 1

    .line 2129
    sget v0, Lcom/itextpdf/forms/fields/PdfFormField;->FF_NO_EXPORT:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .locals 1

    .line 1471
    sget v0, Lcom/itextpdf/forms/fields/PdfFormField;->FF_PASSWORD:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 2091
    sget v0, Lcom/itextpdf/forms/fields/PdfFormField;->FF_READ_ONLY:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .line 2110
    sget v0, Lcom/itextpdf/forms/fields/PdfFormField;->FF_REQUIRED:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1

    .line 2255
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2256
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    return-object p0
.end method

.method public regenerateField()Z
    .locals 4

    .line 1980
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->updateDefaultAppearance()V

    .line 1981
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 1982
    new-instance v3, Lcom/itextpdf/forms/fields/PdfFormField;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v3, v2}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 1983
    invoke-direct {p0, v3}, Lcom/itextpdf/forms/fields/PdfFormField;->copyParamsToKids(Lcom/itextpdf/forms/fields/PdfFormField;)V

    .line 1984
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getValueAsString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateWidget(Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public release()V
    .locals 1

    .line 2277
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->unsetForbidRelease()V

    .line 2278
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->release()V

    return-void
.end method

.method public remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1

    .line 2267
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2268
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    return-object p0
.end method

.method public setAction(Lcom/itextpdf/kernel/pdf/action/PdfAction;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2

    .line 1912
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1914
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 1915
    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAction(Lcom/itextpdf/kernel/pdf/action/PdfAction;)Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setAdditionalAction(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/action/PdfAction;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 0

    .line 1569
    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->setAdditionalAction(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/action/PdfAction;)V

    return-object p0
.end method

.method public setAlternativeName(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2

    .line 1373
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->TU:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    return-object p1
.end method

.method public setAppearance(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2

    .line 2214
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    if-eqz v0, :cond_0

    .line 2217
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    goto :goto_0

    .line 2219
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 2221
    :goto_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2223
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2225
    invoke-virtual {v0, p1, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 2227
    :cond_1
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_2
    :goto_1
    return-object p0
.end method

.method public setBackgroundColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 6

    .line 1856
    iput-object p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->backgroundColor:Lcom/itextpdf/kernel/colors/Color;

    .line 1858
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v0

    .line 1859
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 1860
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getAppearanceCharacteristics()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1862
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    .line 1865
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->BG:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 1867
    :cond_1
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->BG:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1869
    :goto_1
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAppearanceCharacteristics(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    goto :goto_0

    .line 1871
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    return-object p0
.end method

.method public setBorderColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 5

    .line 2044
    iput-object p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderColor:Lcom/itextpdf/kernel/colors/Color;

    .line 2046
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object p1

    .line 2047
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 2048
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getAppearanceCharacteristics()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2050
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 2052
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderColor:Lcom/itextpdf/kernel/colors/Color;

    if-nez v2, :cond_1

    .line 2053
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->BC:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 2055
    :cond_1
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->BC:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    iget-object v4, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderColor:Lcom/itextpdf/kernel/colors/Color;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2057
    :goto_1
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAppearanceCharacteristics(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    goto :goto_0

    .line 2059
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    return-object p0
.end method

.method public setBorderStyle(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2

    .line 2032
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setBorderStyle(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 2033
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    return-object p0
.end method

.method public setBorderWidth(F)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 5

    .line 2014
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getBorderStyle()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2016
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 2017
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 2019
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->W:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    float-to-double v3, p1

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2020
    iput p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    .line 2021
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    return-object p0
.end method

.method public setCheckType(I)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v1, 0x6

    if-le p1, v1, :cond_1

    :cond_0
    const/4 p1, 0x3

    .line 1933
    :cond_1
    iput p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->checkType:I

    .line 1934
    sget-object v1, Lcom/itextpdf/forms/fields/PdfFormField;->CHECKBOX_TYPE_ZAPFDINGBATS_CODE:[Ljava/lang/String;

    sub-int/2addr p1, v0

    aget-object p1, v1, p1

    iput-object p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    .line 1935
    iget-object p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    if-eqz p1, :cond_2

    return-object p0

    .line 1939
    :cond_2
    :try_start_0
    const-string p1, "ZapfDingbats"

    invoke-static {p1}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 1941
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 0

    .line 2070
    iput-object p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 2071
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    return-object p0
.end method

.method public setDefaultStyle(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1

    .line 1740
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    return-object p0
.end method

.method public setDefaultValue(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1

    .line 1549
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DV:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    return-object p1
.end method

.method public setFieldFlag(I)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1

    const/4 v0, 0x1

    .line 1429
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    return-object p1
.end method

.method public setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1

    .line 1444
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlags()I

    move-result v0

    if-eqz p2, :cond_0

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    not-int p1, p1

    and-int/2addr p1, v0

    .line 1452
    :goto_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->setFieldFlags(I)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    return-object p1
.end method

.method public setFieldFlags(I)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 3

    .line 1483
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlags()I

    move-result v0

    .line 1484
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Ff:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    xor-int/2addr p1, v0

    .line 1485
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_COMB:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Tx:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 1486
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFormType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/itextpdf/forms/fields/PdfTextFormField;

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p1, v0}, Lcom/itextpdf/forms/fields/PdfTextFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfTextFormField;->getMaxLen()I

    move-result p1

    if-eqz p1, :cond_0

    .line 1487
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    :cond_0
    return-object p0
.end method

.method public setFieldName(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2

    .line 1340
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    return-object p1
.end method

.method public setFont(Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1

    .line 1804
    iget v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->updateFontAndFontSize(Lcom/itextpdf/kernel/font/PdfFont;F)V

    .line 1805
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    return-object p0
.end method

.method public setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 0

    .line 1843
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;->updateFontAndFontSize(Lcom/itextpdf/kernel/font/PdfFont;F)V

    .line 1844
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    return-object p0
.end method

.method public setFontSize(F)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1

    .line 1817
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->updateFontAndFontSize(Lcom/itextpdf/kernel/font/PdfFont;F)V

    .line 1818
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    return-object p0
.end method

.method public setFontSize(I)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 0

    int-to-float p1, p1

    .line 1830
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->setFontSize(F)Lcom/itextpdf/forms/fields/PdfFormField;

    return-object p0
.end method

.method public setFontSizeAutoScale()Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1

    const/4 v0, 0x0

    .line 2240
    iput v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    .line 2241
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    return-object p0
.end method

.method public setJustification(I)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2

    .line 1719
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Q:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1720
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    return-object p0
.end method

.method public setMappingName(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2

    .line 1394
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->TM:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    return-object p1
.end method

.method public setNoExport(Z)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1

    .line 2120
    sget v0, Lcom/itextpdf/forms/fields/PdfFormField;->FF_NO_EXPORT:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    return-object p1
.end method

.method public setOptions(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1

    .line 1590
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Opt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    return-object p1
.end method

.method public setPage(I)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2

    .line 2139
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v0

    .line 2140
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 2141
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    if-eqz v0, :cond_0

    .line 2143
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->setPage(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    :cond_0
    return-object p0
.end method

.method public setParent(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1

    .line 1277
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    return-object p1
.end method

.method public setReadOnly(Z)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1

    .line 2082
    sget v0, Lcom/itextpdf/forms/fields/PdfFormField;->FF_READ_ONLY:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    return-object p1
.end method

.method public setRequired(Z)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1

    .line 2101
    sget v0, Lcom/itextpdf/forms/fields/PdfFormField;->FF_REQUIRED:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    return-object p1
.end method

.method public setRichText(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1

    .line 1762
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->RV:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    return-object p0
.end method

.method public setRotation(I)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 3

    .line 1883
    rem-int/lit8 v0, p1, 0x5a

    if-nez v0, :cond_2

    .line 1886
    rem-int/lit16 p1, p1, 0x168

    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x168

    .line 1891
    :cond_0
    iput p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->rotation:I

    .line 1893
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getAppearanceCharacteristics()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1895
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 1896
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->MK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1898
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1900
    iput p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->rotation:I

    .line 1901
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    return-object p0

    .line 1884
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "degRotation.must.be.a.multiple.of.90"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setValue(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2

    .line 1151
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFormType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 1152
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Btn:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_RADIO:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1153
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->setValue(Ljava/lang/String;Z)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 0

    .line 1228
    invoke-direct {p0, p2, p3}, Lcom/itextpdf/forms/fields/PdfFormField;->updateFontAndFontSize(Lcom/itextpdf/kernel/font/PdfFont;F)V

    .line 1229
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->setValue(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2

    if-nez p2, :cond_0

    .line 1254
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->setValue(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 1256
    invoke-virtual {p0, p2, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->setValue(Ljava/lang/String;Z)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1257
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFormType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p2

    .line 1258
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Btn:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1259
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlags()I

    move-result p2

    sget v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_PUSH_BUTTON:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_1

    .line 1260
    iput-object p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    goto :goto_0

    .line 1262
    :cond_1
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    goto :goto_0

    .line 1265
    :cond_2
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v1, "UnicodeBig"

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    :goto_0
    return-object p0
.end method

.method public setValue(Ljava/lang/String;Z)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 4

    .line 1164
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFormType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1165
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Btn:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1190
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Btn:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1191
    sget v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_PUSH_BUTTON:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1193
    :try_start_0
    invoke-static {p1}, Lcom/itextpdf/commons/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/io/image/ImageDataFactory;->create([B)Lcom/itextpdf/io/image/ImageData;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->img:Lcom/itextpdf/io/image/ImageData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 1195
    :catch_0
    iput-object p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    goto/16 :goto_3

    .line 1198
    :cond_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1199
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 1200
    new-instance v2, Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1201
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2, v3}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-virtual {v2}, Lcom/itextpdf/forms/fields/PdfFormField;->getAppearanceStates()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1202
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1203
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAppearanceState(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    goto :goto_0

    .line 1205
    :cond_2
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v3, "Off"

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAppearanceState(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    goto :goto_0

    .line 1166
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1168
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1169
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v3

    if-eqz v3, :cond_4

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1170
    new-instance v3, Lcom/itextpdf/forms/fields/PdfFormField;

    invoke-direct {v3, v2}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 1171
    invoke-virtual {v3, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->setValue(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1172
    invoke-virtual {v3}, Lcom/itextpdf/forms/fields/PdfFormField;->getDefaultAppearance()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1173
    iget-object v2, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iput-object v2, v3, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 1174
    iget v2, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    iput v2, v3, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    .line 1175
    iget-object v2, p0, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    iput-object v2, v3, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    goto :goto_2

    .line 1180
    :cond_5
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Ch:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1181
    instance-of v0, p0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 1182
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setListSelected([Ljava/lang/String;Z)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    goto :goto_3

    .line 1184
    :cond_6
    new-instance v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0, v3}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 1185
    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setListSelected([Ljava/lang/String;Z)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    goto :goto_3

    .line 1188
    :cond_7
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v2, "UnicodeBig"

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    :cond_8
    :goto_3
    if-eqz p2, :cond_9

    .line 1212
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    .line 1215
    :cond_9
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    return-object p0
.end method

.method public setVisibility(I)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1965
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    goto :goto_0

    .line 1961
    :cond_0
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    goto :goto_0

    .line 1956
    :cond_1
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public updateDefaultAppearance()V
    .locals 4

    .line 1662
    invoke-direct {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->hasDefaultAppearance()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1665
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DR:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getAcroFormObject(Lcom/itextpdf/kernel/pdf/PdfName;I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-nez v0, :cond_0

    .line 1668
    invoke-direct {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->addAcroFormToCatalog()V

    .line 1669
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 1670
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DR:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->putAcroFormObject(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1672
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Font:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1674
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 1675
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Font:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1677
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/font/PdfFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFontNameFromDR(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1679
    invoke-direct {p0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getUniqueFontNameForDR(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 1680
    iget-object v2, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/font/PdfFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1681
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1684
    :cond_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DA:Lcom/itextpdf/kernel/pdf/PdfName;

    iget v2, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    iget-object v3, p0, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    invoke-static {v0, v2, v3}, Lcom/itextpdf/forms/fields/PdfFormField;->generateDefaultAppearance(Lcom/itextpdf/kernel/pdf/PdfName;FLcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1686
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addFont(Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/kernel/font/PdfFont;

    goto :goto_0

    .line 1688
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1689
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    :goto_0
    return-void
.end method
