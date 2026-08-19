.class public Lcom/itextpdf/forms/PdfAcroForm;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfAcroForm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# static fields
.field public static final APPEND_ONLY:I = 0x2

.field private static final LOGGER:Lorg/slf4j/Logger;

.field public static final SIGNATURE_EXIST:I = 0x1


# instance fields
.field private defaultResources:Lcom/itextpdf/kernel/pdf/PdfDictionary;

.field protected document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field protected fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ">;"
        }
    .end annotation
.end field

.field private fieldsForFlattening:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ">;"
        }
    .end annotation
.end field

.field protected generateAppearance:Z

.field private xfaForm:Lcom/itextpdf/forms/xfa/XfaForm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    const-class v0, Lcom/itextpdf/forms/PdfAcroForm;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/forms/PdfAcroForm;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 1

    .line 164
    invoke-static {p1}, Lcom/itextpdf/forms/PdfAcroForm;->createAcroFormDictionaryByFields(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/forms/PdfAcroForm;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 165
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->setForbidRelease()V

    return-void
.end method

.method private constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 151
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->generateAppearance:Z

    .line 132
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->fields:Ljava/util/Map;

    .line 140
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->fieldsForFlattening:Ljava/util/Set;

    .line 152
    iput-object p2, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 153
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    .line 154
    new-instance p2, Lcom/itextpdf/forms/xfa/XfaForm;

    invoke-direct {p2, p1}, Lcom/itextpdf/forms/xfa/XfaForm;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    iput-object p2, p0, Lcom/itextpdf/forms/PdfAcroForm;->xfaForm:Lcom/itextpdf/forms/xfa/XfaForm;

    return-void
.end method

.method private addWidgetAnnotationToPage(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)V
    .locals 3

    .line 973
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->containsAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 978
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getAutoTaggingPointer()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v1

    .line 982
    const-string v2, "Form"

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->addTag(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 985
    :goto_0
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->addAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/PdfPage;

    if-eqz v0, :cond_2

    .line 988
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->moveToParent()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    :cond_2
    return-void
.end method

.method private calcFieldAppTransformToAnnotRect(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 16

    .line 1091
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getBBox()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 1092
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    .line 1093
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v1, v2, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    move-object/from16 v1, p1

    .line 1094
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->setBBox(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    .line 1096
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->toFloatArray()[F

    move-result-object v0

    .line 1098
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Matrix:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    .line 1100
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_2

    const/4 v8, 0x4

    .line 1101
    new-array v11, v8, [Lcom/itextpdf/kernel/geom/Point;

    new-instance v9, Lcom/itextpdf/kernel/geom/Point;

    aget v10, v0, v7

    float-to-double v12, v10

    aget v10, v0, v6

    float-to-double v14, v10

    invoke-direct {v9, v12, v13, v14, v15}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    aput-object v9, v11, v7

    new-instance v9, Lcom/itextpdf/kernel/geom/Point;

    aget v10, v0, v7

    float-to-double v12, v10

    aget v10, v0, v4

    float-to-double v14, v10

    invoke-direct {v9, v12, v13, v14, v15}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    aput-object v9, v11, v6

    new-instance v9, Lcom/itextpdf/kernel/geom/Point;

    aget v10, v0, v5

    float-to-double v12, v10

    aget v10, v0, v6

    float-to-double v14, v10

    invoke-direct {v9, v12, v13, v14, v15}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    aput-object v9, v11, v5

    new-instance v9, Lcom/itextpdf/kernel/geom/Point;

    aget v10, v0, v5

    float-to-double v12, v10

    aget v0, v0, v4

    float-to-double v14, v0

    invoke-direct {v9, v12, v13, v14, v15}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    aput-object v9, v11, v4

    .line 1107
    new-array v0, v8, [Lcom/itextpdf/kernel/geom/Point;

    .line 1108
    new-instance v10, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->toDoubleArray()[D

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>([D)V

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v13, v0

    move v15, v8

    invoke-virtual/range {v10 .. v15}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform([Lcom/itextpdf/kernel/geom/Point;I[Lcom/itextpdf/kernel/geom/Point;II)V

    .line 1110
    new-array v1, v3, [F

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    aput v3, v1, v7

    aput v3, v1, v6

    const v3, -0x800001

    aput v3, v1, v5

    aput v3, v1, v4

    move v3, v7

    :goto_1
    if-ge v3, v8, :cond_1

    .line 1114
    aget-object v9, v0, v3

    .line 1115
    aget v10, v1, v7

    float-to-double v10, v10

    iget-wide v12, v9, Lcom/itextpdf/kernel/geom/Point;->x:D

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    double-to-float v10, v10

    aput v10, v1, v7

    .line 1116
    aget v10, v1, v6

    float-to-double v10, v10

    iget-wide v12, v9, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    double-to-float v10, v10

    aput v10, v1, v6

    .line 1117
    aget v10, v1, v5

    float-to-double v10, v10

    iget-wide v12, v9, Lcom/itextpdf/kernel/geom/Point;->x:D

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    double-to-float v10, v10

    aput v10, v1, v5

    .line 1118
    aget v10, v1, v4

    float-to-double v10, v10

    iget-wide v12, v9, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    double-to-float v9, v9

    aput v9, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1121
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    aget v3, v1, v7

    aget v6, v1, v6

    aget v5, v1, v5

    sub-float/2addr v5, v3

    aget v1, v1, v4

    sub-float/2addr v1, v6

    invoke-direct {v0, v3, v6, v5, v1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    goto :goto_2

    .line 1123
    :cond_2
    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v1, v2, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    aget v3, v0, v7

    aget v6, v0, v6

    aget v5, v0, v5

    aget v0, v0, v4

    invoke-virtual {v1, v3, v6, v5, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setBbox(FFFF)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 1126
    :goto_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    neg-float v1, v1

    float-to-double v3, v1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    neg-float v1, v1

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    .line 1127
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    cmpl-float v3, v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    div-float/2addr v3, v5

    .line 1128
    :goto_3
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    cmpl-float v2, v5, v2

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    div-float v4, v2, v0

    :goto_4
    float-to-double v2, v3

    float-to-double v4, v4

    .line 1129
    invoke-static {v2, v3, v4, v5}, Lcom/itextpdf/kernel/geom/AffineTransform;->getScaleInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->preConcatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 1130
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->preConcatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    return-object v1
.end method

.method private static createAcroFormDictionaryByFields(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 2

    .line 1052
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 1053
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Fields:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method private defineWidgetPageAndAddToIt(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfDictionary;Z)V
    .locals 1

    .line 957
    invoke-static {p2}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p2

    .line 958
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPageObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    .line 960
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 961
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "The page has been already flushed. Use PdfAcroForm#addFieldAppearanceToPage() method before page flushing."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 964
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object p1

    .line 965
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p1

    .line 966
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/forms/PdfAcroForm;->addWidgetAnnotationToPage(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)V

    goto :goto_1

    .line 968
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/forms/PdfAcroForm;->addWidgetAnnotationToPage(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)V

    :goto_1
    return-void
.end method

.method public static getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;
    .locals 3

    .line 179
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 183
    new-instance p1, Lcom/itextpdf/forms/PdfAcroForm;

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    invoke-direct {p1, v0}, Lcom/itextpdf/forms/PdfAcroForm;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 184
    invoke-virtual {p1, p0}, Lcom/itextpdf/forms/PdfAcroForm;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 185
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 186
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 189
    :cond_1
    new-instance p1, Lcom/itextpdf/forms/PdfAcroForm;

    invoke-direct {p1, v0, p0}, Lcom/itextpdf/forms/PdfAcroForm;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    :goto_0
    if-eqz p1, :cond_3

    .line 193
    invoke-virtual {p1}, Lcom/itextpdf/forms/PdfAcroForm;->getDefaultResources()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    iput-object v0, p1, Lcom/itextpdf/forms/PdfAcroForm;->defaultResources:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-nez v0, :cond_2

    .line 195
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    iput-object v0, p1, Lcom/itextpdf/forms/PdfAcroForm;->defaultResources:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 197
    :cond_2
    iput-object p0, p1, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 198
    new-instance v0, Lcom/itextpdf/forms/xfa/XfaForm;

    invoke-direct {v0, p0}, Lcom/itextpdf/forms/xfa/XfaForm;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v0, p1, Lcom/itextpdf/forms/PdfAcroForm;->xfaForm:Lcom/itextpdf/forms/xfa/XfaForm;

    :cond_3
    return-object p1
.end method

.method private getFieldPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 3

    .line 1058
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1060
    iget-object p1, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 1062
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 1063
    iget-object v1, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v1

    .line 1064
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1065
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1066
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfPage;->containsAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private iterateFields(Lcom/itextpdf/kernel/pdf/PdfArray;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfArray;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ">;"
        }
    .end annotation

    .line 915
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/forms/PdfAcroForm;->iterateFields(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private iterateFields(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfArray;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ">;"
        }
    .end annotation

    .line 879
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 880
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isFlushed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 881
    sget-object v1, Lcom/itextpdf/forms/PdfAcroForm;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "A form field was flushed. There\'s no way to create this field in the AcroForm dictionary."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 884
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v1, v2}, Lcom/itextpdf/forms/fields/PdfFormField;->makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v2

    if-nez v2, :cond_3

    .line 886
    sget-object v2, Lcom/itextpdf/forms/PdfAcroForm;->LOGGER:Lorg/slf4j/Logger;

    .line 887
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    :goto_1
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 886
    const-string v3, "Cannot create form field from a given PDF object: {0}"

    invoke-static {v3, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 890
    :cond_3
    invoke-virtual {v2}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    if-nez v1, :cond_6

    .line 893
    invoke-virtual {v2}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    iget-object v4, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v3, v4}, Lcom/itextpdf/forms/fields/PdfFormField;->makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v3

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    .line 895
    invoke-virtual {v3}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    if-nez v1, :cond_4

    .line 897
    invoke-virtual {v3}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    iget-object v4, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v3, v4}, Lcom/itextpdf/forms/fields/PdfFormField;->makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v3

    goto :goto_2

    .line 900
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 903
    :cond_6
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v1

    .line 905
    :goto_3
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    invoke-virtual {v2}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 907
    invoke-virtual {v2}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/itextpdf/forms/PdfAcroForm;->iterateFields(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Map;)Ljava/util/Map;

    goto/16 :goto_0

    :cond_7
    return-object p2
.end method

.method private mergeWidgetWithParentField(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1

    .line 951
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 952
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 953
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->mergeDifferent(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-void
.end method

.method private prepareFieldsForFlattening(Lcom/itextpdf/forms/fields/PdfFormField;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ")",
            "Ljava/util/Set<",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ">;"
        }
    .end annotation

    .line 1075
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1076
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1077
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1079
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1080
    new-instance v2, Lcom/itextpdf/forms/fields/PdfFormField;

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2, v1}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 1081
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1082
    invoke-virtual {v2}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1083
    invoke-direct {p0, v2}, Lcom/itextpdf/forms/PdfAcroForm;->prepareFieldsForFlattening(Lcom/itextpdf/forms/fields/PdfFormField;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private processKids(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 3

    .line 919
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 920
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 921
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 922
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 923
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 926
    invoke-direct {p0, p2, p1}, Lcom/itextpdf/forms/PdfAcroForm;->mergeWidgetWithParentField(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 927
    invoke-direct {p0, p3, p2, v2}, Lcom/itextpdf/forms/PdfAcroForm;->defineWidgetPageAndAddToIt(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfDictionary;Z)V

    goto :goto_1

    .line 929
    :cond_0
    invoke-direct {p0, p3, p1, v2}, Lcom/itextpdf/forms/PdfAcroForm;->defineWidgetPageAndAddToIt(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfDictionary;Z)V

    goto :goto_1

    .line 932
    :cond_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 934
    invoke-direct {p0, v0, p1, p3}, Lcom/itextpdf/forms/PdfAcroForm;->processKids(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    goto :goto_1

    .line 938
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 939
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 940
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 942
    invoke-direct {p0, v2, v0, p3}, Lcom/itextpdf/forms/PdfAcroForm;->processKids(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object p2
.end method


# virtual methods
.method public addField(Lcom/itextpdf/forms/fields/PdfFormField;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addNewPage()Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getLastPage()Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    .line 216
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/forms/PdfAcroForm;->addField(Lcom/itextpdf/forms/fields/PdfFormField;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    return-void
.end method

.method public addField(Lcom/itextpdf/forms/fields/PdfFormField;Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 3

    .line 226
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 228
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v0, :cond_0

    .line 230
    invoke-direct {p0, v0, v1, p2}, Lcom/itextpdf/forms/PdfAcroForm;->processKids(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getFields()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 234
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 235
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 237
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->fields:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->fields:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/forms/PdfAcroForm;->iterateFields(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Map;)Ljava/util/Map;

    .line 242
    :cond_1
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 243
    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    .line 244
    invoke-direct {p0, p2, p1}, Lcom/itextpdf/forms/PdfAcroForm;->addWidgetAnnotationToPage(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)V

    .line 247
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    return-void
.end method

.method public addFieldAppearanceToPage(Lcom/itextpdf/forms/fields/PdfFormField;Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 4

    .line 259
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 260
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 261
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 265
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 266
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 267
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 271
    invoke-direct {p0, v0, p1}, Lcom/itextpdf/forms/PdfAcroForm;->mergeWidgetWithParentField(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 273
    :cond_1
    invoke-direct {p0, p2, v0, v1}, Lcom/itextpdf/forms/PdfAcroForm;->defineWidgetPageAndAddToIt(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfDictionary;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public copyField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2

    .line 838
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/PdfAcroForm;->getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 840
    new-instance v0, Lcom/itextpdf/forms/fields/PdfFormField;

    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->clone()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    iget-object v1, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public flattenFields()V
    .locals 21

    move-object/from16 v0, p0

    .line 622
    iget-object v1, v0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isAppendMode()Z

    move-result v1

    if-nez v1, :cond_18

    .line 626
    iget-object v1, v0, Lcom/itextpdf/forms/PdfAcroForm;->fieldsForFlattening:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 627
    iget-object v1, v0, Lcom/itextpdf/forms/PdfAcroForm;->fields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 628
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 630
    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 631
    iget-object v2, v0, Lcom/itextpdf/forms/PdfAcroForm;->fieldsForFlattening:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/forms/fields/PdfFormField;

    .line 632
    invoke-direct {v0, v3}, Lcom/itextpdf/forms/PdfAcroForm;->prepareFieldsForFlattening(Lcom/itextpdf/forms/fields/PdfFormField;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 641
    :cond_1
    :goto_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v3, 0x1

    move v4, v3

    .line 642
    :goto_2
    iget-object v5, v0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v5

    const/4 v6, 0x0

    if-gt v4, v5, :cond_3

    .line 643
    iget-object v5, v0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    .line 644
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfObject;->clone()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    :goto_3
    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 647
    :cond_3
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 649
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/forms/fields/PdfFormField;

    .line 650
    invoke-virtual {v5}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 651
    invoke-direct {v0, v7}, Lcom/itextpdf/forms/PdfAcroForm;->getFieldPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v8

    if-nez v8, :cond_5

    goto :goto_4

    .line 656
    :cond_5
    invoke-static {v7}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 658
    iget-object v10, v0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 659
    iget-object v10, v0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->removeAnnotationTag(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v10

    goto :goto_5

    :cond_6
    move-object v10, v6

    .line 662
    :goto_5
    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 665
    sget-object v12, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v12

    if-nez v12, :cond_8

    .line 667
    sget-object v12, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v12

    goto :goto_6

    :cond_7
    move-object v12, v6

    .line 670
    :cond_8
    :goto_6
    iget-boolean v13, v0, Lcom/itextpdf/forms/PdfAcroForm;->generateAppearance:Z

    if-eqz v13, :cond_a

    if-eqz v11, :cond_9

    if-nez v12, :cond_a

    .line 672
    :cond_9
    invoke-virtual {v5}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    .line 673
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v11

    :cond_a
    if-eqz v11, :cond_b

    .line 676
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v11, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    goto :goto_7

    :cond_b
    move-object v5, v6

    :goto_7
    if-eqz v5, :cond_11

    .line 679
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfObject;->isStream()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 680
    new-instance v11, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v11, v5}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    move-object v14, v11

    goto :goto_8

    .line 681
    :cond_c
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 682
    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->AS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v11

    .line 683
    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v5, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v12

    if-eqz v12, :cond_d

    .line 684
    new-instance v12, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-virtual {v5, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v5

    invoke-direct {v12, v5}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 685
    iget-object v5, v0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v12, v5}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    move-object v14, v12

    goto :goto_8

    :cond_d
    move-object v14, v6

    :goto_8
    if-eqz v14, :cond_12

    .line 691
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->Form:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v14, v5, v11}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 692
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Rect:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsRectangle(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    .line 693
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v11

    if-nez v11, :cond_10

    .line 697
    new-instance v11, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    xor-int/2addr v12, v3

    invoke-direct {v11, v8, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;Z)V

    .line 698
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 702
    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v13, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v12, v13}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v12

    .line 703
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfPage;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v13

    if-eqz v12, :cond_e

    if-ne v12, v13, :cond_e

    .line 705
    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v13, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v15, v0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v15, v8}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfPage;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v12, v13, v15}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_e
    if-eqz v10, :cond_f

    .line 709
    invoke-virtual {v10, v8}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setPageForTagging(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 710
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getTagReference()Lcom/itextpdf/kernel/pdf/tagutils/TagReference;

    move-result-object v12

    .line 711
    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->openTag(Lcom/itextpdf/kernel/pdf/tagutils/TagReference;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 714
    :cond_f
    invoke-direct {v0, v14, v5}, Lcom/itextpdf/forms/PdfAcroForm;->calcFieldAppTransformToAnnotRect(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v5

    const/4 v12, 0x6

    .line 715
    new-array v12, v12, [F

    .line 716
    invoke-virtual {v5, v12}, Lcom/itextpdf/kernel/geom/AffineTransform;->getMatrix([F)V

    const/4 v5, 0x0

    .line 717
    aget v15, v12, v5

    aget v16, v12, v3

    const/4 v5, 0x2

    aget v17, v12, v5

    const/4 v5, 0x3

    aget v18, v12, v5

    const/4 v5, 0x4

    aget v19, v12, v5

    const/4 v5, 0x5

    aget v20, v12, v5

    move-object v13, v11

    invoke-virtual/range {v13 .. v20}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObjectWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    if-eqz v10, :cond_12

    .line 720
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closeTag()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_9

    .line 694
    :cond_10
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "The page has been already flushed. Use PdfAcroForm#addFieldAppearanceToPage() method before page flushing."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 724
    :cond_11
    sget-object v5, Lcom/itextpdf/forms/PdfAcroForm;->LOGGER:Lorg/slf4j/Logger;

    const-string v10, "\\N entry is required to be present in an appearance dictionary."

    invoke-interface {v5, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 727
    :cond_12
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/PdfAcroForm;->getFields()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v5

    .line 728
    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    if-eqz v9, :cond_13

    .line 730
    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfPage;->removeAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 732
    :cond_13
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 734
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v9

    if-eqz v9, :cond_14

    .line 736
    invoke-virtual {v9, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 738
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfArray;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 739
    invoke-virtual {v5, v8}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto/16 :goto_4

    .line 742
    :cond_14
    invoke-virtual {v5, v8}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto/16 :goto_4

    .line 747
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->NeedAppearances:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 748
    iget-object v1, v0, Lcom/itextpdf/forms/PdfAcroForm;->fieldsForFlattening:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_16

    .line 749
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/PdfAcroForm;->getFields()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->clear()V

    .line 751
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/PdfAcroForm;->getFields()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 752
    iget-object v1, v0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    :cond_17
    return-void

    .line 623
    :cond_18
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "Field flattening is not supported in append mode."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCalculationOrder()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 438
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CO:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultAppearance()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 2

    .line 500
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultJustification()Lcom/itextpdf/kernel/pdf/PdfNumber;
    .locals 2

    .line 527
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Q:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultResources()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 2

    .line 475
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DR:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/forms/fields/PdfFormField;

    return-object p1
.end method

.method protected getFields()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 3

    .line 863
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Fields:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-nez v0, :cond_0

    .line 865
    sget-object v0, Lcom/itextpdf/forms/PdfAcroForm;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Required AcroForm entry /Fields does not exist in the document. Empty array /Fields will be created."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 866
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 867
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Fields:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_0
    return-object v0
.end method

.method public getFieldsForFlattening()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->fieldsForFlattening:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getFormFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getFields()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/forms/PdfAcroForm;->iterateFields(Lcom/itextpdf/kernel/pdf/PdfArray;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->fields:Ljava/util/Map;

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->fields:Ljava/util/Map;

    return-object v0
.end method

.method public getNeedAppearances()Lcom/itextpdf/kernel/pdf/PdfBoolean;
    .locals 2

    .line 346
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->NeedAppearances:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-object v0
.end method

.method public getSignatureFlags()I
    .locals 2

    .line 399
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->SigFlags:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getXFAResource()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 2

    .line 565
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->XFA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public getXfaForm()Lcom/itextpdf/forms/xfa/XfaForm;
    .locals 1

    .line 1007
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->xfaForm:Lcom/itextpdf/forms/xfa/XfaForm;

    return-object v0
.end method

.method public hasXfaForm()Z
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->xfaForm:Lcom/itextpdf/forms/xfa/XfaForm;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/forms/xfa/XfaForm;->isXfaPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGenerateAppearance()Z
    .locals 1

    .line 587
    iget-boolean v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->generateAppearance:Z

    return v0
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public partialFormFlattening(Ljava/lang/String;)V
    .locals 1

    .line 805
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/forms/fields/PdfFormField;

    if-eqz p1, :cond_0

    .line 807
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->fieldsForFlattening:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/PdfAcroForm;
    .locals 1

    .line 1023
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1024
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    return-object p0
.end method

.method public release()V
    .locals 2

    .line 1033
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->unsetForbidRelease()V

    .line 1034
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->release()V

    .line 1035
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1036
    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->release()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1038
    iput-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->fields:Ljava/util/Map;

    return-void
.end method

.method public removeField(Ljava/lang/String;)Z
    .locals 5

    .line 764
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/PdfAcroForm;->getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 769
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 770
    invoke-direct {p0, v2}, Lcom/itextpdf/forms/PdfAcroForm;->getFieldPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v3

    .line 772
    invoke-static {v2}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v4

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 774
    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfPage;->removeAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 777
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 779
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    .line 780
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 781
    iget-object v2, p0, Lcom/itextpdf/forms/PdfAcroForm;->fields:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 783
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    return v3

    .line 787
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getFields()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 788
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->contains(Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 789
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 790
    iget-object v1, p0, Lcom/itextpdf/forms/PdfAcroForm;->fields:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 792
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    return v3

    :cond_3
    return v1
.end method

.method public removeXfaForm()V
    .locals 2

    .line 1014
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->hasXfaForm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1016
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 1017
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->XFA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    const/4 v0, 0x0

    .line 1018
    iput-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->xfaForm:Lcom/itextpdf/forms/xfa/XfaForm;

    :cond_0
    return-void
.end method

.method public renameField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 818
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object v0

    .line 819
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 822
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/forms/fields/PdfFormField;

    if-eqz v1, :cond_1

    .line 824
    invoke-virtual {v1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;->setFieldName(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 825
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public replaceField(Ljava/lang/String;Lcom/itextpdf/forms/fields/PdfFormField;)V
    .locals 0

    .line 853
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/PdfAcroForm;->removeField(Ljava/lang/String;)Z

    .line 854
    invoke-virtual {p0, p2}, Lcom/itextpdf/forms/PdfAcroForm;->addField(Lcom/itextpdf/forms/fields/PdfFormField;)V

    return-void
.end method

.method public setCalculationOrder(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/forms/PdfAcroForm;
    .locals 1

    .line 421
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CO:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/PdfAcroForm;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultAppearance(Ljava/lang/String;)Lcom/itextpdf/forms/PdfAcroForm;
    .locals 2

    .line 488
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DA:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/PdfAcroForm;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultJustification(I)Lcom/itextpdf/forms/PdfAcroForm;
    .locals 2

    .line 514
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Q:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/PdfAcroForm;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/forms/PdfAcroForm;
    .locals 1

    .line 457
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DR:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/PdfAcroForm;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object p1

    return-object p1
.end method

.method public setGenerateAppearance(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->NeedAppearances:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 610
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 612
    :cond_0
    iput-boolean p1, p0, Lcom/itextpdf/forms/PdfAcroForm;->generateAppearance:Z

    return-void
.end method

.method public setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ">;"
        }
    .end annotation

    .line 1043
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1044
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    goto :goto_0

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    :goto_0
    return-object p0
.end method

.method public setNeedAppearances(Z)Lcom/itextpdf/forms/PdfAcroForm;
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    const-string v2, "NeedAppearances has been deprecated in PDF 2.0. Appearance streams are required in PDF 2.0."

    invoke-static {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/VersionConforming;->validatePdfVersionForDeprecatedFeatureLogError(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfVersion;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->NeedAppearances:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 325
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    goto :goto_0

    .line 327
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->NeedAppearances:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->valueOf(Z)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/PdfAcroForm;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/PdfAcroForm;

    :goto_0
    return-object p0
.end method

.method public setSignatureFlag(I)Lcom/itextpdf/forms/PdfAcroForm;
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getSignatureFlags()I

    move-result v0

    or-int/2addr p1, v0

    .line 384
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/PdfAcroForm;->setSignatureFlags(I)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object p1

    return-object p1
.end method

.method public setSignatureFlags(I)Lcom/itextpdf/forms/PdfAcroForm;
    .locals 2

    .line 363
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->SigFlags:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/PdfAcroForm;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object p1

    return-object p1
.end method

.method public setXFAResource(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/forms/PdfAcroForm;
    .locals 1

    .line 555
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XFA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/PdfAcroForm;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object p1

    return-object p1
.end method

.method public setXFAResource(Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/forms/PdfAcroForm;
    .locals 1

    .line 540
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XFA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/PdfAcroForm;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object p1

    return-object p1
.end method
