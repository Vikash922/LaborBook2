.class Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool$MarkedContentEventListener;
.super Ljava/lang/Object;
.source "TaggedPdfReaderTool.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkedContentEventListener"
.end annotation


# instance fields
.field private contentByMcid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextExtractionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;


# direct methods
.method private constructor <init>(Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool$MarkedContentEventListener;->this$0:Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool$MarkedContentEventListener;->contentByMcid:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool$1;)V
    .locals 0

    .line 342
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool$MarkedContentEventListener;-><init>(Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;)V

    return-void
.end method


# virtual methods
.method public eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V
    .locals 3

    .line 355
    sget-object v0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool$1;->$SwitchMap$com$itextpdf$kernel$pdf$canvas$parser$EventType:[I

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;

    .line 358
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getMcid()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 360
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool$MarkedContentEventListener;->contentByMcid:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextExtractionStrategy;

    if-nez v1, :cond_1

    .line 362
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/LocationTextExtractionStrategy;-><init>()V

    .line 363
    iget-object v2, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool$MarkedContentEventListener;->contentByMcid:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_1
    invoke-interface {v1, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextExtractionStrategy;->eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getMcidContent()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 346
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 347
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool$MarkedContentEventListener;->contentByMcid:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 348
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool$MarkedContentEventListener;->contentByMcid:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextExtractionStrategy;

    invoke-interface {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextExtractionStrategy;->getResultantText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSupportedEvents()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
