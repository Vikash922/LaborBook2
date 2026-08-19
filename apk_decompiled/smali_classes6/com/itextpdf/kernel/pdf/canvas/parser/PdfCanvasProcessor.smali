.class public Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;
.super Ljava/lang/Object;
.source "PdfCanvasProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ClipPathOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$RectangleOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$CloseSubpathOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$CurveFourhPointDuplicatedOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$CurveFirstPointDuplicatedOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$CurveOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$LineToOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$MoveToOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$IgnoreXObjectDoHandler;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ImageXObjectDoHandler;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$FormXObjectDoHandler;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetLineDashPatternOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetMiterLimitOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetLineJoinOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetLineCapOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetLineWidthOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$EndImageOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$DoOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$EndMarkedContentOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$BeginMarkedContentDictionaryOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$BeginMarkedContentOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$EndTextOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$BeginTextOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorStrokeOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorFillOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorSpaceStrokeOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorSpaceFillOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetCMYKStrokeOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetCMYKFillOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetRGBStrokeOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetRGBFillOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetGrayStrokeOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetGrayFillOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PopGraphicsStateOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ModifyCurrentTransformationMatrixOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PushGraphicsStateOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ProcessGraphicsStateResourceOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextWordSpacingOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextCharacterSpacingOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextHorizontalScalingOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextLeadingOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextRiseOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextRenderModeOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextFontOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveStartNextLineOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveStartNextLineWithLeadingOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextSetTextMatrixOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveNextLineOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ShowTextOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$MoveNextLineAndShowTextOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$MoveNextLineAndShowTextWithSpacingOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ShowTextArrayOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$IgnoreOperator;
    }
.end annotation


# static fields
.field public static final DEFAULT_OPERATOR:Ljava/lang/String; = "DefaultOperator"


# instance fields
.field private cachedFonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/itextpdf/kernel/font/PdfFont;",
            ">;>;"
        }
    .end annotation
.end field

.field protected clippingRule:I

.field protected currentPath:Lcom/itextpdf/kernel/geom/Path;

.field protected final eventListener:Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;

.field private final gsStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;",
            ">;"
        }
    .end annotation
.end field

.field protected isClip:Z

.field private markedContentStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;",
            ">;"
        }
    .end annotation
.end field

.field private operators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;",
            ">;"
        }
    .end annotation
.end field

.field private resourcesStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/pdf/PdfResources;",
            ">;"
        }
    .end annotation
.end field

.field protected final supportedEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;",
            ">;"
        }
    .end annotation
.end field

.field private textLineMatrix:Lcom/itextpdf/kernel/geom/Matrix;

.field private textMatrix:Lcom/itextpdf/kernel/geom/Matrix;

.field private xobjectDoHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;)V
    .locals 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lcom/itextpdf/kernel/geom/Path;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Path;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->currentPath:Lcom/itextpdf/kernel/geom/Path;

    .line 152
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->gsStack:Ljava/util/Stack;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->cachedFonts:Ljava/util/Map;

    .line 170
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->markedContentStack:Ljava/util/Stack;

    .line 179
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->eventListener:Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;

    .line 180
    invoke-interface {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;->getSupportedEvents()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    .line 181
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->operators:Ljava/util/Map;

    .line 182
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->populateOperators()V

    .line 183
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->xobjectDoHandlers:Ljava/util/Map;

    .line 184
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->populateXObjectDoHandlers()V

    .line 185
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->reset()V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;",
            ">;)V"
        }
    .end annotation

    .line 198
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;)V

    .line 199
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 200
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$4700(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;Lcom/itextpdf/kernel/pdf/PdfString;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->displayPdfString(Lcom/itextpdf/kernel/pdf/PdfString;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;F)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->applyTextAdjust(F)V

    return-void
.end method

.method static synthetic access$4900(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;)Lcom/itextpdf/kernel/geom/Matrix;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->textLineMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    return-object p0
.end method

.method static synthetic access$4902(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Matrix;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->textLineMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    return-object p1
.end method

.method static synthetic access$5000(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;)Lcom/itextpdf/kernel/geom/Matrix;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->textMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    return-object p0
.end method

.method static synthetic access$5002(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Matrix;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->textMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;)Ljava/util/Stack;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->gsStack:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic access$5200(ILjava/util/List;)Lcom/itextpdf/kernel/colors/Color;
    .locals 0

    .line 109
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColor(ILjava/util/List;)Lcom/itextpdf/kernel/colors/Color;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5300(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfResources;)Lcom/itextpdf/kernel/colors/Color;
    .locals 0

    .line 109
    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfResources;)Lcom/itextpdf/kernel/colors/Color;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5400(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->beginText()V

    return-void
.end method

.method static synthetic access$5500(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->endText()V

    return-void
.end method

.method static synthetic access$5600(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->displayXObject(Lcom/itextpdf/kernel/pdf/PdfName;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;)Ljava/util/Stack;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->markedContentStack:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;Ljava/util/Stack;Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfName;Z)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->displayImage(Ljava/util/Stack;Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfName;Z)V

    return-void
.end method

.method private applyTextAdjust(F)V
    .locals 2

    neg-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    .line 584
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->getFontSize()F

    move-result v0

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->getHorizontalScaling()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr p1, v0

    .line 586
    new-instance v0, Lcom/itextpdf/kernel/geom/Matrix;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/kernel/geom/Matrix;-><init>(FF)V

    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->textMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/geom/Matrix;->multiply(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->textMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    return-void
.end method

.method private beginText()V
    .locals 2

    const/4 v0, 0x0

    .line 518
    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->BEGIN_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V

    return-void
.end method

.method private displayImage(Ljava/util/Stack;Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfName;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfStream;",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Z)V"
        }
    .end annotation

    .line 572
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResource(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v8

    .line 573
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;

    move-result-object v4

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->getCtm()Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object v5

    move-object v2, v0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;-><init>(Ljava/util/Stack;Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/geom/Matrix;Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;Z)V

    .line 575
    sget-object p1, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_IMAGE:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V

    return-void
.end method

.method private displayPdfString(Lcom/itextpdf/kernel/pdf/PdfString;)V
    .locals 4

    .line 549
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->textMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->markedContentStack:Ljava/util/Stack;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;-><init>(Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/geom/Matrix;Ljava/util/Stack;)V

    .line 550
    new-instance p1, Lcom/itextpdf/kernel/geom/Matrix;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getUnscaledWidth()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lcom/itextpdf/kernel/geom/Matrix;-><init>(FF)V

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->textMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/geom/Matrix;->multiply(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->textMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    .line 551
    sget-object p1, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V

    return-void
.end method

.method private displayXObject(Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 3

    .line 560
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getXObjectStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    .line 561
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 562
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->xobjectDoHandlers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;

    if-nez v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->xobjectDoHandlers:Ljava/util/Map;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Default:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;

    .line 568
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->markedContentStack:Ljava/util/Stack;

    invoke-interface {v1, p0, v2, v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;->handleXObject(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;Ljava/util/Stack;Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfName;)V

    return-void
.end method

.method private endText()V
    .locals 2

    const/4 v0, 0x0

    .line 525
    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->END_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V

    return-void
.end method

.method private static getColor(ILjava/util/List;)Lcom/itextpdf/kernel/colors/Color;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)",
            "Lcom/itextpdf/kernel/colors/Color;"
        }
    .end annotation

    .line 1043
    new-array v0, p0, [F

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_0

    .line 1045
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq p0, v3, :cond_2

    const/4 v4, 0x4

    if-eq p0, v4, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 1054
    :cond_1
    new-instance p0, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    aget v1, v0, v1

    aget p1, v0, p1

    aget v2, v0, v2

    aget v0, v0, v3

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/itextpdf/kernel/colors/DeviceCmyk;-><init>(FFFF)V

    return-object p0

    .line 1052
    :cond_2
    new-instance p0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    aget v1, v0, v1

    aget p1, v0, p1

    aget v0, v0, v2

    invoke-direct {p0, v1, p1, v0}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(FFF)V

    return-object p0

    .line 1050
    :cond_3
    new-instance p0, Lcom/itextpdf/kernel/colors/DeviceGray;

    aget p1, v0, v1

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>(F)V

    return-object p0
.end method

.method private static getColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfResources;)Lcom/itextpdf/kernel/colors/Color;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfResources;",
            ")",
            "Lcom/itextpdf/kernel/colors/Color;"
        }
    .end annotation

    .line 978
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 979
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    goto :goto_0

    .line 981
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 984
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isName()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 985
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceGray:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 986
    new-instance p0, Lcom/itextpdf/kernel/colors/DeviceGray;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColorants(Ljava/util/List;)[F

    move-result-object p1

    aget p1, p1, v3

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>(F)V

    return-object p0

    .line 987
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Pattern:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 988
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/itextpdf/kernel/pdf/PdfName;

    if-eqz v1, :cond_2

    .line 989
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPattern(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 991
    new-instance p0, Lcom/itextpdf/kernel/colors/PatternColor;

    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/colors/PatternColor;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;)V

    return-object p0

    .line 995
    :cond_2
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceRGB:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    .line 996
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColorants(Ljava/util/List;)[F

    move-result-object p0

    .line 997
    new-instance p1, Lcom/itextpdf/kernel/colors/DeviceRgb;

    aget p2, p0, v3

    aget v0, p0, v1

    aget p0, p0, v2

    invoke-direct {p1, p2, v0, p0}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(FFF)V

    return-object p1

    .line 998
    :cond_3
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceCMYK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 999
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColorants(Ljava/util/List;)[F

    move-result-object p0

    .line 1000
    new-instance p1, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    aget p2, p0, v3

    aget v0, p0, v1

    aget v1, p0, v2

    const/4 v2, 0x3

    aget p0, p0, v2

    invoke-direct {p1, p2, v0, v1, p0}, Lcom/itextpdf/kernel/colors/DeviceCmyk;-><init>(FFFF)V

    return-object p1

    .line 1002
    :cond_4
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1003
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 1004
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 1005
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CalGray:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1006
    new-instance p2, Lcom/itextpdf/kernel/colors/CalGray;

    check-cast p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalGray;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColorants(Ljava/util/List;)[F

    move-result-object p1

    aget p1, p1, v3

    invoke-direct {p2, p0, p1}, Lcom/itextpdf/kernel/colors/CalGray;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalGray;F)V

    return-object p2

    .line 1007
    :cond_5
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CalRGB:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1008
    new-instance p2, Lcom/itextpdf/kernel/colors/CalRgb;

    check-cast p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalRgb;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColorants(Ljava/util/List;)[F

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/itextpdf/kernel/colors/CalRgb;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalRgb;[F)V

    return-object p2

    .line 1009
    :cond_6
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Lab:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1010
    new-instance p2, Lcom/itextpdf/kernel/colors/Lab;

    check-cast p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$Lab;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColorants(Ljava/util/List;)[F

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/itextpdf/kernel/colors/Lab;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$Lab;[F)V

    return-object p2

    .line 1011
    :cond_7
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ICCBased:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1012
    new-instance p2, Lcom/itextpdf/kernel/colors/IccBased;

    check-cast p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColorants(Ljava/util/List;)[F

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/itextpdf/kernel/colors/IccBased;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;[F)V

    return-object p2

    .line 1013
    :cond_8
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Indexed:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1014
    new-instance p2, Lcom/itextpdf/kernel/colors/Indexed;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColorants(Ljava/util/List;)[F

    move-result-object p1

    aget p1, p1, v3

    float-to-int p1, p1

    invoke-direct {p2, p0, p1}, Lcom/itextpdf/kernel/colors/Indexed;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;I)V

    return-object p2

    .line 1015
    :cond_9
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Separation:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1016
    new-instance p2, Lcom/itextpdf/kernel/colors/Separation;

    check-cast p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColorants(Ljava/util/List;)[F

    move-result-object p1

    aget p1, p1, v3

    invoke-direct {p2, p0, p1}, Lcom/itextpdf/kernel/colors/Separation;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;F)V

    return-object p2

    .line 1017
    :cond_a
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceN:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1018
    new-instance p2, Lcom/itextpdf/kernel/colors/DeviceN;

    check-cast p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColorants(Ljava/util/List;)[F

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/itextpdf/kernel/colors/DeviceN;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;[F)V

    return-object p2

    .line 1019
    :cond_b
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Pattern:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1020
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1021
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1022
    move-object v2, p0

    check-cast v2, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$UncoloredTilingPattern;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$UncoloredTilingPattern;->getUnderlyingColorSpace()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v2

    .line 1023
    instance-of v3, v1, Lcom/itextpdf/kernel/pdf/PdfName;

    if-eqz v3, :cond_c

    .line 1024
    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPattern(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;

    move-result-object p2

    .line 1025
    instance-of v1, p2, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;

    if-eqz v1, :cond_c

    check-cast p2, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;->isColored()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1026
    new-instance p0, Lcom/itextpdf/kernel/colors/PatternColor;

    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColorants(Ljava/util/List;)[F

    move-result-object p1

    invoke-direct {p0, p2, v2, p1}, Lcom/itextpdf/kernel/colors/PatternColor;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)V

    return-object p0

    .line 1032
    :cond_c
    const-class p2, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;

    invoke-static {p2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p2

    .line 1034
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1033
    const-string p1, "Unable to parse color {0} within {1} color space"

    invoke-static {p1, p0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getColorants(Ljava/util/List;)[F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)[F"
        }
    .end annotation

    .line 1060
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 1061
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1062
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private initClippingPath(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 1

    .line 590
    new-instance v0, Lcom/itextpdf/kernel/geom/Path;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Path;-><init>()V

    .line 591
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getCropBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/geom/Path;->rectangle(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 592
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->setClippingPath(Lcom/itextpdf/kernel/geom/Path;)V

    return-void
.end method


# virtual methods
.method protected beginMarkedContent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->markedContentStack:Ljava/util/Stack;

    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;)V

    invoke-virtual {v1, p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->setProperties(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected endMarkedContent()V
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->markedContentStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method protected eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->eventListener:Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;

    invoke-interface {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;->eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V

    .line 538
    :cond_1
    instance-of p2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;

    if-eqz p2, :cond_2

    .line 539
    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;->releaseGraphicsState()V

    :cond_2
    return-void
.end method

.method public getEventListener()Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->eventListener:Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;

    return-object v0
.end method

.method protected getFont(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 3

    .line 483
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 484
    invoke-static {p1}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p1

    return-object p1

    .line 486
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v0

    .line 487
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->cachedFonts:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 488
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/font/PdfFont;

    :goto_0
    if-nez v1, :cond_2

    .line 490
    invoke-static {p1}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v1

    .line 491
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->cachedFonts:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method

.method public getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->gsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;

    return-object v0
.end method

.method public getRegisteredOperatorStrings()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->operators:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getResources()Lcom/itextpdf/kernel/pdf/PdfResources;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->resourcesStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfResources;

    return-object v0
.end method

.method protected getXObjectStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 2

    .line 457
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResource(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 458
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object p1

    return-object p1
.end method

.method protected invokeOperator(Lcom/itextpdf/kernel/pdf/PdfLiteral;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfLiteral;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->operators:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfLiteral;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->operators:Ljava/util/Map;

    const-string v1, "DefaultOperator"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 453
    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;->invoke(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;Lcom/itextpdf/kernel/pdf/PdfLiteral;Ljava/util/List;)V

    return-void
.end method

.method protected paintPath(II)V
    .locals 10

    .line 429
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;

    move-result-object v8

    .line 430
    new-instance v9, Lcom/itextpdf/kernel/pdf/canvas/parser/data/PathRenderInfo;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->markedContentStack:Ljava/util/Stack;

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->currentPath:Lcom/itextpdf/kernel/geom/Path;

    iget-boolean v6, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->isClip:Z

    iget v7, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->clippingRule:I

    move-object v0, v9

    move-object v2, v8

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/PathRenderInfo;-><init>(Ljava/util/Stack;Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/geom/Path;IIZI)V

    .line 431
    sget-object p1, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_PATH:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-virtual {p0, v9, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V

    .line 433
    iget-boolean p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->isClip:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 434
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->isClip:Z

    .line 435
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->currentPath:Lcom/itextpdf/kernel/geom/Path;

    iget p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->clippingRule:I

    invoke-virtual {v8, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->clip(Lcom/itextpdf/kernel/geom/Path;I)V

    .line 436
    new-instance p1, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ClippingPathInfo;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->getClippingPath()Lcom/itextpdf/kernel/geom/Path;

    move-result-object p2

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->getCtm()Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object v0

    invoke-direct {p1, v8, p2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ClippingPathInfo;-><init>(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/geom/Path;Lcom/itextpdf/kernel/geom/Matrix;)V

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->CLIP_PATH_CHANGED:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V

    .line 439
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/geom/Path;

    invoke-direct {p1}, Lcom/itextpdf/kernel/geom/Path;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->currentPath:Lcom/itextpdf/kernel/geom/Path;

    return-void
.end method

.method protected populateOperators()V
    .locals 7

    .line 319
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$IgnoreOperator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$IgnoreOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "DefaultOperator"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 321
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PushGraphicsStateOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PushGraphicsStateOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "q"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 322
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PopGraphicsStateOperator;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PopGraphicsStateOperator;-><init>()V

    const-string v2, "Q"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 323
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ModifyCurrentTransformationMatrixOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ModifyCurrentTransformationMatrixOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "cm"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 325
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$DoOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$DoOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "Do"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 327
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$BeginMarkedContentOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$BeginMarkedContentOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "BMC"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 328
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$BeginMarkedContentDictionaryOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$BeginMarkedContentDictionaryOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "BDC"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 329
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$EndMarkedContentOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$EndMarkedContentOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "EMC"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 331
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_PATH:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    .line 332
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->CLIP_PATH_CHANGED:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    .line 333
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetGrayFillOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetGrayFillOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "g"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 336
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetGrayStrokeOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetGrayStrokeOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "G"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 337
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetRGBFillOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetRGBFillOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "rg"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 338
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetRGBStrokeOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetRGBStrokeOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "RG"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 339
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetCMYKFillOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetCMYKFillOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "k"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 340
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetCMYKStrokeOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetCMYKStrokeOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "K"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 341
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorSpaceFillOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorSpaceFillOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "cs"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 342
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorSpaceStrokeOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorSpaceStrokeOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "CS"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 343
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorFillOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorFillOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "sc"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 344
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorStrokeOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorStrokeOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "SC"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 345
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorFillOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorFillOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "scn"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 346
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorStrokeOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorStrokeOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "SCN"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 347
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ProcessGraphicsStateResourceOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ProcessGraphicsStateResourceOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "gs"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_IMAGE:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 351
    :cond_2
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$EndImageOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$EndImageOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "EI"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    if-eqz v0, :cond_4

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->BEGIN_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    .line 355
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->END_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    .line 356
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 357
    :cond_4
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$BeginTextOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$BeginTextOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "BT"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 358
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$EndTextOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$EndTextOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "ET"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 361
    :cond_5
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    if-eqz v0, :cond_6

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 362
    :cond_6
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextCharacterSpacingOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextCharacterSpacingOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    .line 363
    const-string v2, "Tc"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 364
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextWordSpacingOperator;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextWordSpacingOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    .line 365
    const-string v3, "Tw"

    invoke-virtual {p0, v3, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 366
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextHorizontalScalingOperator;

    invoke-direct {v3, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextHorizontalScalingOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v4, "Tz"

    invoke-virtual {p0, v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 367
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextLeadingOperator;

    invoke-direct {v3, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextLeadingOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    .line 368
    const-string v4, "TL"

    invoke-virtual {p0, v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 369
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextFontOperator;

    invoke-direct {v4, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextFontOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v5, "Tf"

    invoke-virtual {p0, v5, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 370
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextRenderModeOperator;

    invoke-direct {v4, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextRenderModeOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v5, "Tr"

    invoke-virtual {p0, v5, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 371
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextRiseOperator;

    invoke-direct {v4, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextRiseOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v5, "Ts"

    invoke-virtual {p0, v5, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 373
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveStartNextLineOperator;

    invoke-direct {v4, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveStartNextLineOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    .line 374
    const-string v5, "Td"

    invoke-virtual {p0, v5, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 375
    new-instance v5, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveStartNextLineWithLeadingOperator;

    invoke-direct {v5, v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveStartNextLineWithLeadingOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveStartNextLineOperator;Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextLeadingOperator;)V

    const-string v3, "TD"

    invoke-virtual {p0, v3, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 376
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextSetTextMatrixOperator;

    invoke-direct {v3, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextSetTextMatrixOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v5, "Tm"

    invoke-virtual {p0, v5, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 377
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveNextLineOperator;

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveNextLineOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveStartNextLineOperator;)V

    .line 378
    const-string v4, "T*"

    invoke-virtual {p0, v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 380
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ShowTextOperator;

    invoke-direct {v4, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ShowTextOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    .line 381
    const-string v5, "Tj"

    invoke-virtual {p0, v5, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 382
    new-instance v5, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$MoveNextLineAndShowTextOperator;

    invoke-direct {v5, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$MoveNextLineAndShowTextOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveNextLineOperator;Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ShowTextOperator;)V

    .line 383
    const-string v3, "\'"

    invoke-virtual {p0, v3, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 384
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$MoveNextLineAndShowTextWithSpacingOperator;

    invoke-direct {v3, v2, v0, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$MoveNextLineAndShowTextWithSpacingOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextWordSpacingOperator;Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextCharacterSpacingOperator;Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$MoveNextLineAndShowTextOperator;)V

    const-string v0, "\""

    invoke-virtual {p0, v0, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 385
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ShowTextArrayOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ShowTextArrayOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "TJ"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 388
    :cond_7
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    if-eqz v0, :cond_8

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->CLIP_PATH_CHANGED:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_PATH:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    .line 389
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 390
    :cond_8
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetLineWidthOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetLineWidthOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "w"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 391
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetLineCapOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetLineCapOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "J"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 392
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetLineJoinOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetLineJoinOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "j"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 393
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetMiterLimitOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetMiterLimitOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "M"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 394
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetLineDashPatternOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetLineDashPatternOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "d"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 397
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$MoveToOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$MoveToOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "m"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 398
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$LineToOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$LineToOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "l"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 399
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$CurveOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$CurveOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "c"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 400
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$CurveFirstPointDuplicatedOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$CurveFirstPointDuplicatedOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "v"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 401
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$CurveFourhPointDuplicatedOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$CurveFourhPointDuplicatedOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "y"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 402
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$CloseSubpathOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$CloseSubpathOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "h"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 403
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$RectangleOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$RectangleOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v1, "re"

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 404
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;-><init>(IIZ)V

    const-string v4, "S"

    invoke-virtual {p0, v4, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 405
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;

    invoke-direct {v0, v1, v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;-><init>(IIZ)V

    const-string v4, "s"

    invoke-virtual {p0, v4, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 406
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;

    const/4 v4, 0x2

    invoke-direct {v0, v4, v1, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;-><init>(IIZ)V

    const-string v5, "f"

    invoke-virtual {p0, v5, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 407
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;

    invoke-direct {v0, v4, v1, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;-><init>(IIZ)V

    const-string v5, "F"

    invoke-virtual {p0, v5, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 408
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;

    invoke-direct {v0, v4, v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;-><init>(IIZ)V

    const-string v5, "f*"

    invoke-virtual {p0, v5, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 409
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;

    const/4 v5, 0x3

    invoke-direct {v0, v5, v1, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;-><init>(IIZ)V

    const-string v6, "B"

    invoke-virtual {p0, v6, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 410
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;

    invoke-direct {v0, v5, v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;-><init>(IIZ)V

    const-string v6, "B*"

    invoke-virtual {p0, v6, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 411
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;

    invoke-direct {v0, v5, v1, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;-><init>(IIZ)V

    const-string v6, "b"

    invoke-virtual {p0, v6, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 412
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;

    invoke-direct {v0, v5, v4, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;-><init>(IIZ)V

    const-string v5, "b*"

    invoke-virtual {p0, v5, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 413
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;

    invoke-direct {v0, v3, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;-><init>(IIZ)V

    const-string v2, "n"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 414
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ClipPathOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ClipPathOperator;-><init>(I)V

    const-string v1, "W"

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 415
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ClipPathOperator;

    invoke-direct {v0, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ClipPathOperator;-><init>(I)V

    const-string v1, "W*"

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    :cond_9
    return-void
.end method

.method protected populateXObjectDoHandlers()V
    .locals 3

    .line 466
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Default:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$IgnoreXObjectDoHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$IgnoreXObjectDoHandler;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerXObjectDoHandler(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;)Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;

    .line 467
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Form:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$FormXObjectDoHandler;

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$FormXObjectDoHandler;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerXObjectDoHandler(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;)Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;

    .line 469
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_IMAGE:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    .line 470
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Image:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ImageXObjectDoHandler;

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ImageXObjectDoHandler;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerXObjectDoHandler(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;)Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;

    :cond_1
    return-void
.end method

.method public processContent([BLcom/itextpdf/kernel/pdf/PdfResources;)V
    .locals 3

    if-eqz p2, :cond_1

    .line 274
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->resourcesStack:Ljava/util/Stack;

    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance v0, Lcom/itextpdf/io/source/PdfTokenizer;

    new-instance v1, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v2, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v2}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {v2, p1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/PdfTokenizer;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    .line 276
    new-instance p1, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;

    invoke-direct {p1, v0, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;-><init>(Lcom/itextpdf/io/source/PdfTokenizer;Lcom/itextpdf/kernel/pdf/PdfResources;)V

    .line 277
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 279
    :goto_0
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->parse(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 280
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    .line 281
    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->invokeOperator(Lcom/itextpdf/kernel/pdf/PdfLiteral;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->resourcesStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p1

    .line 284
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Cannot parse content stream."

    invoke-direct {p2, v0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 272
    :cond_1
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Resources cannot be null."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processPageContent(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 4

    .line 299
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->initClippingPath(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 300
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;

    move-result-object v0

    .line 301
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ClippingPathInfo;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->getClippingPath()Lcom/itextpdf/kernel/geom/Path;

    move-result-object v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->getCtm()Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ClippingPathInfo;-><init>(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/geom/Path;Lcom/itextpdf/kernel/geom/Matrix;)V

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->CLIP_PATH_CHANGED:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V

    .line 302
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->processContent([BLcom/itextpdf/kernel/pdf/PdfResources;)V

    return-void
.end method

.method public registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->operators:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    return-object p1
.end method

.method public registerXObjectDoHandler(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;)Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->xobjectDoHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;

    return-object p1
.end method

.method public reset()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->gsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    .line 246
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->gsStack:Ljava/util/Stack;

    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->textMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    .line 248
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->textLineMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    .line 249
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->resourcesStack:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->isClip:Z

    .line 251
    new-instance v0, Lcom/itextpdf/kernel/geom/Path;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Path;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->currentPath:Lcom/itextpdf/kernel/geom/Path;

    return-void
.end method
