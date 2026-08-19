.class public Lcom/itextpdf/signatures/PdfSignatureAppearance;
.super Ljava/lang/Object;
.source "PdfSignatureAppearance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;
    }
.end annotation


# static fields
.field private static final MARGIN:F = 2.0f

.field private static final TOP_SECTION:F = 0.3f


# instance fields
.field private contact:Ljava/lang/String;

.field private document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private fieldName:Ljava/lang/String;

.field private image:Lcom/itextpdf/io/image/ImageData;

.field private imageScale:F

.field private layer2Font:Lcom/itextpdf/kernel/font/PdfFont;

.field private layer2FontColor:Lcom/itextpdf/kernel/colors/Color;

.field private layer2FontSize:F

.field private layer2Text:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private locationCaption:Ljava/lang/String;

.field private n0:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

.field private n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

.field private page:I

.field private pageRect:Lcom/itextpdf/kernel/geom/Rectangle;

.field private reason:Ljava/lang/String;

.field private reasonCaption:Ljava/lang/String;

.field private rect:Lcom/itextpdf/kernel/geom/Rectangle;

.field private renderingMode:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

.field private reuseAppearance:Z

.field private signCertificate:Ljava/security/cert/Certificate;

.field private signDate:Ljava/util/Calendar;

.field private signatureCreator:Ljava/lang/String;

.field private signatureGraphic:Lcom/itextpdf/io/image/ImageData;

.field private topLayer:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;


# direct methods
.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;I)V
    .locals 2

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 93
    iput v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->page:I

    .line 124
    sget-object v0, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->DESCRIPTION:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reason:Ljava/lang/String;

    .line 134
    const-string v1, "Reason: "

    iput-object v1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reasonCaption:Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->location:Ljava/lang/String;

    .line 144
    const-string v1, "Location: "

    iput-object v1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->locationCaption:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureCreator:Ljava/lang/String;

    .line 154
    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->contact:Ljava/lang/String;

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    const/4 v0, 0x0

    .line 194
    iput v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2FontSize:F

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reuseAppearance:Z

    .line 220
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 221
    new-instance p1, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 222
    new-instance p1, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p2

    invoke-direct {p1, v0, p2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 223
    iput p3, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->page:I

    return-void
.end method

.method private addTextToCanvas(Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 3

    .line 936
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 937
    new-instance v1, Lcom/itextpdf/layout/element/Paragraph;

    invoke-direct {v1, p1}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/itextpdf/layout/element/Paragraph;->setFont(Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/Paragraph;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/element/Paragraph;->setMargin(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/Paragraph;

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {p1, v1}, Lcom/itextpdf/layout/element/Paragraph;->setMultipliedLeading(F)Lcom/itextpdf/layout/element/Paragraph;

    move-result-object p1

    .line 938
    new-instance v1, Lcom/itextpdf/layout/Canvas;

    invoke-direct {v1, v0, p3}, Lcom/itextpdf/layout/Canvas;-><init>(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 939
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2FontColor:Lcom/itextpdf/kernel/colors/Color;

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/element/Paragraph;->setFontColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 940
    iget v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2FontSize:F

    cmpl-float p2, v0, p2

    if-nez p2, :cond_0

    .line 941
    invoke-virtual {v1}, Lcom/itextpdf/layout/Canvas;->getRenderer()Lcom/itextpdf/layout/renderer/RootRenderer;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->applyCopyFittingFontSize(Lcom/itextpdf/layout/element/Paragraph;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_0

    .line 943
    :cond_0
    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/element/Paragraph;->setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;

    .line 945
    :goto_0
    invoke-virtual {v1, p1}, Lcom/itextpdf/layout/Canvas;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/IPropertyContainer;

    return-void
.end method

.method private applyCopyFittingFontSize(Lcom/itextpdf/layout/element/Paragraph;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 6

    .line 949
    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Paragraph;->createRendererSubTree()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object p3

    .line 950
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v1, Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    const p2, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xf

    if-ge v3, v4, :cond_1

    add-float v4, p2, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 955
    invoke-virtual {p1, v4}, Lcom/itextpdf/layout/element/Paragraph;->setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;

    .line 956
    invoke-interface {p3, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v5

    .line 957
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

    .line 963
    :cond_1
    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/element/Paragraph;->setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;

    return-void
.end method

.method private createBlankN0()V
    .locals 3

    .line 927
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v1, v2, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n0:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 928
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 930
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n0:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 931
    const-string v1, "% DSBlank\n"

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->writeLiteral(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method private static rotateRectangle(Lcom/itextpdf/kernel/geom/Rectangle;I)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 919
    div-int/lit8 p1, p1, 0x5a

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    .line 920
    new-instance p1, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p0

    invoke-direct {p1, v0, p0}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    return-object p1

    .line 922
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p0

    invoke-direct {p1, v0, p0}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    return-object p1
.end method


# virtual methods
.method generateLayer2Text()Ljava/lang/String;
    .locals 4

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Digitally signed by "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 970
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signCertificate:Ljava/security/cert/Certificate;

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-static {v1}, Lcom/itextpdf/signatures/CertificateInfo;->getSubjectFields(Ljava/security/cert/X509Certificate;)Lcom/itextpdf/signatures/CertificateInfo$X500Name;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 972
    const-string v2, "CN"

    invoke-virtual {v1, v2}, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 974
    const-string v2, "E"

    invoke-virtual {v1, v2}, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 978
    const-string v2, ""

    .line 980
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signDate:Ljava/util/Calendar;

    invoke-static {v1}, Lcom/itextpdf/signatures/SignUtils;->dateToString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reason:Ljava/lang/String;

    const/16 v2, 0xa

    if-eqz v1, :cond_3

    .line 983
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reasonCaption:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reason:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->location:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 986
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->locationCaption:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->location:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAppearance()Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->isInvisible()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 651
    new-instance v1, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v3, v2, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    invoke-direct {v1, v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 652
    iget-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    return-object v1

    .line 656
    :cond_0
    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n0:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reuseAppearance:Z

    if-nez v1, :cond_1

    .line 657
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->createBlankN0()V

    .line 660
    :cond_1
    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    const/4 v3, 0x1

    if-nez v1, :cond_19

    .line 661
    new-instance v1, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v4, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v1, v4}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 662
    iget-object v4, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 664
    new-instance v5, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v4, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v5, v1, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 665
    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget v4, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->page:I

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getRotation()I

    move-result v1

    const/16 v4, 0x5a

    if-ne v1, v4, :cond_2

    .line 668
    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    float-to-double v14, v1

    const-wide/16 v16, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const-wide/16 v12, 0x0

    invoke-virtual/range {v5 .. v17}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    :cond_2
    const/16 v4, 0xb4

    if-ne v1, v4, :cond_3

    .line 670
    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    float-to-double v14, v1

    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    float-to-double v12, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    move-wide/from16 v18, v12

    move-wide/from16 v12, v16

    move-wide/from16 v16, v18

    invoke-virtual/range {v5 .. v17}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    :cond_3
    const/16 v4, 0x10e

    if-ne v1, v4, :cond_4

    .line 672
    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    float-to-double v14, v1

    const-wide/16 v6, 0x0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    invoke-virtual/range {v5 .. v17}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 675
    :cond_4
    :goto_0
    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v4, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget v5, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->page:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfPage;->getRotation()I

    move-result v4

    invoke-static {v1, v4}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rotateRectangle(Lcom/itextpdf/kernel/geom/Rectangle;I)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 677
    iget-object v4, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2Text:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 679
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->generateLayer2Text()Ljava/lang/String;

    move-result-object v4

    .line 682
    :cond_5
    iget-object v5, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->image:Lcom/itextpdf/io/image/ImageData;

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v5, :cond_8

    .line 683
    iget v5, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->imageScale:F

    cmpl-float v7, v5, v2

    if-nez v7, :cond_6

    .line 684
    new-instance v8, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v5, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v7, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v8, v5, v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 685
    iget-object v9, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->image:Lcom/itextpdf/io/image/ImageData;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v10

    .line 686
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 685
    invoke-virtual/range {v8 .. v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageWithTransformationMatrix(Lcom/itextpdf/io/image/ImageData;FFFFFF)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    goto :goto_1

    :cond_6
    cmpg-float v7, v5, v2

    if-gez v7, :cond_7

    .line 691
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    iget-object v7, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->image:Lcom/itextpdf/io/image/ImageData;

    invoke-virtual {v7}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v7

    div-float/2addr v5, v7

    .line 692
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v7

    iget-object v8, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->image:Lcom/itextpdf/io/image/ImageData;

    invoke-virtual {v8}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v8

    div-float/2addr v7, v8

    .line 691
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 695
    :cond_7
    iget-object v7, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->image:Lcom/itextpdf/io/image/ImageData;

    invoke-virtual {v7}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v7

    mul-float v10, v7, v5

    .line 696
    iget-object v7, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->image:Lcom/itextpdf/io/image/ImageData;

    invoke-virtual {v7}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v7

    mul-float v13, v7, v5

    .line 697
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    sub-float/2addr v5, v10

    div-float v14, v5, v6

    .line 698
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    sub-float/2addr v5, v13

    div-float v15, v5, v6

    .line 700
    new-instance v8, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v5, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v7, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v8, v5, v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 701
    iget-object v9, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->image:Lcom/itextpdf/io/image/ImageData;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageWithTransformationMatrix(Lcom/itextpdf/io/image/ImageData;FFFFFF)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    .line 707
    :cond_8
    :goto_1
    iget-object v5, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2Font:Lcom/itextpdf/kernel/font/PdfFont;

    if-nez v5, :cond_9

    .line 708
    invoke-static {}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v5

    .line 716
    :cond_9
    iget-object v7, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    sget-object v8, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->NAME_AND_DESCRIPTION:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    const/high16 v9, 0x40800000    # 4.0f

    if-eq v7, v8, :cond_d

    iget-object v7, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    sget-object v8, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->GRAPHIC_AND_DESCRIPTION:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    if-ne v7, v8, :cond_a

    iget-object v7, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    if-eqz v7, :cond_a

    goto :goto_2

    .line 742
    :cond_a
    iget-object v7, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    sget-object v8, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->GRAPHIC:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    const/4 v10, 0x0

    if-ne v7, v8, :cond_c

    .line 743
    iget-object v7, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    if-eqz v7, :cond_b

    .line 747
    new-instance v7, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 750
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v8

    sub-float/2addr v8, v9

    .line 751
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    sub-float/2addr v1, v9

    invoke-direct {v7, v6, v6, v8, v1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move-object/from16 v20, v10

    move-object v10, v7

    move-object/from16 v7, v20

    goto :goto_3

    .line 744
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "A signature image must be present when rendering mode is graphic. Use setSignatureGraphic()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 753
    :cond_c
    new-instance v7, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 756
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v8

    sub-float/2addr v8, v9

    .line 757
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    const v11, 0x3f333333    # 0.7f

    mul-float/2addr v1, v11

    sub-float/2addr v1, v9

    invoke-direct {v7, v6, v6, v8, v1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    goto :goto_3

    .line 718
    :cond_d
    :goto_2
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v7

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_e

    .line 719
    new-instance v10, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 721
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v7

    div-float/2addr v7, v6

    .line 722
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v8

    sub-float/2addr v8, v9

    .line 723
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v11

    div-float/2addr v11, v6

    invoke-direct {v10, v6, v7, v8, v11}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 724
    new-instance v7, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 727
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v8

    sub-float/2addr v8, v9

    .line 728
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    div-float/2addr v1, v6

    sub-float/2addr v1, v9

    invoke-direct {v7, v6, v6, v8, v1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    goto :goto_3

    .line 731
    :cond_e
    new-instance v10, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 734
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v7

    div-float/2addr v7, v6

    sub-float/2addr v7, v9

    .line 735
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v8

    sub-float/2addr v8, v9

    invoke-direct {v10, v6, v6, v7, v8}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 736
    new-instance v7, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 737
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v8

    div-float/2addr v8, v6

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v8, v11

    .line 739
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v11

    div-float/2addr v11, v6

    sub-float/2addr v11, v6

    .line 740
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    sub-float/2addr v1, v9

    invoke-direct {v7, v8, v6, v11, v1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 760
    :goto_3
    sget-object v1, Lcom/itextpdf/signatures/PdfSignatureAppearance$1;->$SwitchMap$com$itextpdf$signatures$PdfSignatureAppearance$RenderingMode:[I

    iget-object v8, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    invoke-virtual {v8}, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->ordinal()I

    move-result v8

    aget v1, v1, v8

    if-eq v1, v3, :cond_16

    const/4 v8, 0x2

    if-eq v1, v8, :cond_12

    const/4 v8, 0x3

    if-eq v1, v8, :cond_f

    goto/16 :goto_4

    .line 806
    :cond_f
    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    invoke-virtual {v1}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v1

    cmpl-float v8, v1, v2

    if-nez v8, :cond_10

    .line 809
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    .line 812
    :cond_10
    iget-object v8, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    invoke-virtual {v8}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v8

    cmpl-float v2, v8, v2

    if-nez v2, :cond_11

    .line 815
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v8

    .line 818
    :cond_11
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    iget-object v9, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    invoke-virtual {v9}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v9

    div-float/2addr v2, v9

    .line 819
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v9

    iget-object v11, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    invoke-virtual {v11}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v11

    div-float/2addr v9, v11

    .line 820
    invoke-static {v2, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v13, v1, v2

    mul-float v16, v8, v2

    .line 824
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v1

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    sub-float/2addr v2, v13

    div-float/2addr v2, v6

    add-float v17, v1, v2

    .line 825
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v1

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    sub-float v2, v2, v16

    div-float/2addr v2, v6

    add-float v18, v1, v2

    .line 827
    new-instance v11, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v11, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 828
    iget-object v12, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v11 .. v18}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageWithTransformationMatrix(Lcom/itextpdf/io/image/ImageData;FFFFFF)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    goto/16 :goto_4

    .line 776
    :cond_12
    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    if-eqz v1, :cond_15

    .line 780
    invoke-virtual {v1}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v1

    cmpl-float v8, v1, v2

    if-nez v8, :cond_13

    .line 783
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    .line 786
    :cond_13
    iget-object v8, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    invoke-virtual {v8}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v8

    cmpl-float v2, v8, v2

    if-nez v2, :cond_14

    .line 789
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v8

    .line 792
    :cond_14
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    iget-object v9, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    invoke-virtual {v9}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v9

    div-float/2addr v2, v9

    .line 793
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v9

    iget-object v11, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    invoke-virtual {v11}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v11

    div-float/2addr v9, v11

    .line 794
    invoke-static {v2, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v13, v1, v2

    mul-float v16, v8, v2

    .line 798
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v1

    sub-float v17, v1, v13

    .line 799
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v1

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    sub-float v2, v2, v16

    div-float/2addr v2, v6

    add-float v18, v1, v2

    .line 801
    new-instance v11, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v11, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 802
    iget-object v12, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v11 .. v18}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageWithTransformationMatrix(Lcom/itextpdf/io/image/ImageData;FFFFFF)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    goto :goto_4

    .line 777
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "A signature image must be present when rendering mode is graphic and description. Use setSignatureGraphic()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 762
    :cond_16
    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signCertificate:Ljava/security/cert/Certificate;

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 763
    invoke-static {v1}, Lcom/itextpdf/signatures/CertificateInfo;->getSubjectFields(Ljava/security/cert/X509Certificate;)Lcom/itextpdf/signatures/CertificateInfo$X500Name;

    move-result-object v1

    const-string v2, "CN"

    invoke-virtual {v1, v2}, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    .line 766
    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signCertificate:Ljava/security/cert/Certificate;

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-static {v1}, Lcom/itextpdf/signatures/CertificateInfo;->getSubjectFields(Ljava/security/cert/X509Certificate;)Lcom/itextpdf/signatures/CertificateInfo$X500Name;

    move-result-object v1

    const-string v2, "E"

    invoke-virtual {v1, v2}, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_17
    if-nez v1, :cond_18

    .line 770
    const-string v1, ""

    .line 773
    :cond_18
    invoke-direct {v0, v1, v5, v10}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->addTextToCanvas(Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 832
    :goto_4
    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    sget-object v2, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->GRAPHIC:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    if-eq v1, v2, :cond_19

    .line 833
    invoke-direct {v0, v4, v5, v7}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->addTextToCanvas(Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 837
    :cond_19
    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 839
    iget-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->topLayer:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    const/4 v4, 0x0

    if-nez v2, :cond_1d

    .line 840
    new-instance v2, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->topLayer:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 841
    iget-object v5, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2, v5}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 843
    iget-boolean v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reuseAppearance:Z

    const-string v5, "n0"

    if-eqz v2, :cond_1b

    .line 844
    iget-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v2, v3}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v2

    .line 845
    iget-object v6, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->fieldName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/itextpdf/forms/PdfAcroForm;->getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v2

    .line 846
    invoke-virtual {v2}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getAppearanceDictionary()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v2

    .line 847
    new-instance v7, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {v7, v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    if-eqz v2, :cond_1a

    .line 850
    iget-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->topLayer:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v2

    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v6, v5}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v6}, Lcom/itextpdf/kernel/pdf/PdfResources;->addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    .line 851
    new-instance v6, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->topLayer:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v8, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v6, v2, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    .line 852
    invoke-virtual/range {v6 .. v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObjectWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_5

    .line 854
    :cond_1a
    iput-boolean v4, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reuseAppearance:Z

    .line 856
    iget-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n0:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-nez v2, :cond_1b

    .line 857
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->createBlankN0()V

    .line 862
    :cond_1b
    :goto_5
    iget-boolean v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reuseAppearance:Z

    if-nez v2, :cond_1c

    .line 863
    iget-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->topLayer:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v2

    iget-object v6, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n0:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v7, v5}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfResources;->addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    .line 864
    new-instance v8, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->topLayer:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v5, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v8, v2, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 865
    iget-object v9, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n0:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual/range {v8 .. v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObjectWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 868
    :cond_1c
    iget-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->topLayer:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v2

    iget-object v5, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v7, "n2"

    invoke-direct {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfResources;->addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    .line 869
    new-instance v8, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->topLayer:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v5, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v8, v2, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 870
    iget-object v9, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual/range {v8 .. v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObjectWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 873
    :cond_1d
    new-instance v2, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 874
    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 875
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v1

    iget-object v5, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->topLayer:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v7, "FRM"

    invoke-direct {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfResources;->addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    .line 877
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v5, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v1, v2, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 878
    iget-object v5, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->topLayer:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 879
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getBBox()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v4

    iget-object v6, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->topLayer:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 880
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getBBox()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v3

    .line 878
    invoke-virtual {v1, v5, v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObjectAt(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-object v2
.end method

.method public getCertificate()Ljava/security/cert/Certificate;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signCertificate:Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getContact()Ljava/lang/String;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->contact:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/itextpdf/io/image/ImageData;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->image:Lcom/itextpdf/io/image/ImageData;

    return-object v0
.end method

.method public getImageScale()F
    .locals 1

    .line 528
    iget v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->imageScale:F

    return v0
.end method

.method public getLayer0()Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n0:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n0:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 291
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n0:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    return-object v0
.end method

.method public getLayer2()Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 309
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    return-object v0
.end method

.method public getLayer2Font()Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2Font:Lcom/itextpdf/kernel/font/PdfFont;

    return-object v0
.end method

.method public getLayer2FontColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2FontColor:Lcom/itextpdf/kernel/colors/Color;

    return-object v0
.end method

.method public getLayer2FontSize()F
    .locals 1

    .line 607
    iget v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2FontSize:F

    return v0
.end method

.method public getLayer2Text()Ljava/lang/String;
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2Text:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNumber()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->page:I

    return v0
.end method

.method public getPageRect()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/kernel/geom/Rectangle;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderingMode()Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    return-object v0
.end method

.method protected getSignDate()Ljava/util/Calendar;
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getSignatureCreator()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureCreator:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureGraphic()Lcom/itextpdf/io/image/ImageData;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    return-object v0
.end method

.method public isInvisible()Z
    .locals 2

    .line 637
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

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

.method public setCertificate(Ljava/security/cert/Certificate;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signCertificate:Ljava/security/cert/Certificate;

    return-object p0
.end method

.method public setContact(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->contact:Ljava/lang/String;

    return-object p0
.end method

.method protected setFieldName(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0

    .line 914
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->fieldName:Ljava/lang/String;

    return-object p0
.end method

.method public setImage(Lcom/itextpdf/io/image/ImageData;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->image:Lcom/itextpdf/io/image/ImageData;

    return-object p0
.end method

.method public setImageScale(F)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0

    .line 542
    iput p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->imageScale:F

    return-object p0
.end method

.method public setLayer2Font(Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2Font:Lcom/itextpdf/kernel/font/PdfFont;

    return-object p0
.end method

.method public setLayer2FontColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2FontColor:Lcom/itextpdf/kernel/colors/Color;

    return-object p0
.end method

.method public setLayer2FontSize(F)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0

    .line 597
    iput p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2FontSize:F

    return-object p0
.end method

.method public setLayer2Text(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2Text:Ljava/lang/String;

    return-object p0
.end method

.method public setLocation(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->location:Ljava/lang/String;

    return-object p0
.end method

.method public setLocationCaption(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->locationCaption:Ljava/lang/String;

    return-object p0
.end method

.method public setPageNumber(I)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0

    .line 248
    iput p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->page:I

    .line 249
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p0, p1}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->setPageRect(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/signatures/PdfSignatureAppearance;

    return-object p0
.end method

.method public setPageRect(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 2

    .line 274
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 275
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    return-object p0
.end method

.method public setReason(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reason:Ljava/lang/String;

    return-object p0
.end method

.method public setReasonCaption(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reasonCaption:Ljava/lang/String;

    return-object p0
.end method

.method public setRenderingMode(Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    return-object p0
.end method

.method public setReuseAppearance(Z)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0

    .line 495
    iput-boolean p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reuseAppearance:Z

    return-object p0
.end method

.method protected setSignDate(Ljava/util/Calendar;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0

    .line 902
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signDate:Ljava/util/Calendar;

    return-object p0
.end method

.method public setSignatureCreator(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureCreator:Ljava/lang/String;

    return-object p0
.end method

.method public setSignatureGraphic(Lcom/itextpdf/io/image/ImageData;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    return-object p0
.end method
