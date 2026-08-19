.class public final Lcom/itextpdf/kernel/actions/events/FlushPdfDocumentEvent;
.super Lcom/itextpdf/commons/actions/AbstractITextConfigurationEvent;
.source "FlushPdfDocumentEvent.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final document:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/itextpdf/kernel/actions/events/FlushPdfDocumentEvent;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/actions/events/FlushPdfDocumentEvent;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/itextpdf/commons/actions/AbstractITextConfigurationEvent;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/actions/events/FlushPdfDocumentEvent;->document:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getConfirmedEvents(Lcom/itextpdf/commons/actions/sequence/SequenceId;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/commons/actions/sequence/SequenceId;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/commons/actions/confirmations/ConfirmedEventWrapper;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/actions/events/FlushPdfDocumentEvent;->getEvents(Lcom/itextpdf/commons/actions/sequence/SequenceId;)Ljava/util/List;

    move-result-object p1

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/commons/actions/AbstractProductProcessITextEvent;

    .line 111
    instance-of v2, v1, Lcom/itextpdf/commons/actions/confirmations/ConfirmedEventWrapper;

    if-eqz v2, :cond_0

    .line 112
    check-cast v1, Lcom/itextpdf/commons/actions/confirmations/ConfirmedEventWrapper;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_0
    sget-object v2, Lcom/itextpdf/kernel/actions/events/FlushPdfDocumentEvent;->LOGGER:Lorg/slf4j/Logger;

    .line 115
    invoke-virtual {v1}, Lcom/itextpdf/commons/actions/AbstractProductProcessITextEvent;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/itextpdf/commons/actions/AbstractProductProcessITextEvent;->getEventType()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 114
    const-string v3, "Event for the product {0} with type {1} was reported but was not confirmed. Probably appropriate process fail"

    invoke-static {v3, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected doAction()V
    .locals 7

    .line 71
    iget-object v0, p0, Lcom/itextpdf/kernel/actions/events/FlushPdfDocumentEvent;->document:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentIdWrapper()Lcom/itextpdf/commons/actions/sequence/SequenceId;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/actions/events/FlushPdfDocumentEvent;->getEvents(Lcom/itextpdf/commons/actions/sequence/SequenceId;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 77
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 85
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 86
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/commons/actions/AbstractProductProcessITextEvent;

    .line 87
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getFingerPrint()Lcom/itextpdf/kernel/pdf/FingerPrint;

    move-result-object v4

    invoke-virtual {v3}, Lcom/itextpdf/commons/actions/AbstractProductProcessITextEvent;->getProductData()Lcom/itextpdf/commons/actions/data/ProductData;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/FingerPrint;->registerProduct(Lcom/itextpdf/commons/actions/data/ProductData;)Z

    .line 88
    invoke-virtual {v3}, Lcom/itextpdf/commons/actions/AbstractProductProcessITextEvent;->getConfirmationType()Lcom/itextpdf/commons/actions/confirmations/EventConfirmationType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/commons/actions/confirmations/EventConfirmationType;->ON_CLOSE:Lcom/itextpdf/commons/actions/confirmations/EventConfirmationType;

    if-ne v4, v5, :cond_2

    .line 89
    invoke-static {}, Lcom/itextpdf/commons/actions/EventManager;->getInstance()Lcom/itextpdf/commons/actions/EventManager;

    move-result-object v4

    new-instance v5, Lcom/itextpdf/commons/actions/confirmations/ConfirmEvent;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentIdWrapper()Lcom/itextpdf/commons/actions/sequence/SequenceId;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/itextpdf/commons/actions/confirmations/ConfirmEvent;-><init>(Lcom/itextpdf/commons/actions/sequence/SequenceId;Lcom/itextpdf/commons/actions/AbstractProductProcessITextEvent;)V

    invoke-virtual {v4, v5}, Lcom/itextpdf/commons/actions/EventManager;->onEvent(Lcom/itextpdf/commons/actions/IEvent;)V

    .line 91
    :cond_2
    invoke-virtual {v3}, Lcom/itextpdf/commons/actions/AbstractProductProcessITextEvent;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/actions/events/FlushPdfDocumentEvent;->getActiveProcessor(Ljava/lang/String;)Lcom/itextpdf/commons/actions/processors/ITextProductEventProcessor;

    move-result-object v3

    if-nez v3, :cond_4

    .line 96
    sget-object v3, Lcom/itextpdf/kernel/actions/events/FlushPdfDocumentEvent;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 97
    const-string v4, "Unknown product {0} was involved into PDF processing. It will be ignored"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 101
    :cond_5
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentInfo()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getProducer()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentIdWrapper()Lcom/itextpdf/commons/actions/sequence/SequenceId;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/itextpdf/kernel/actions/events/FlushPdfDocumentEvent;->getConfirmedEvents(Lcom/itextpdf/commons/actions/sequence/SequenceId;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/itextpdf/commons/actions/producer/ProducerBuilder;->modifyProducer(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentInfo()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->setProducer(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    return-void

    .line 78
    :cond_6
    :goto_2
    invoke-static {}, Lcom/itextpdf/kernel/actions/data/ITextCoreProductData;->getInstance()Lcom/itextpdf/commons/actions/data/ProductData;

    move-result-object v1

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "iText\u00ae \u00a9"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/itextpdf/commons/actions/data/ProductData;->getSinceCopyrightYear()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 80
    invoke-virtual {v1}, Lcom/itextpdf/commons/actions/data/ProductData;->getToCopyrightYear()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " iText Group NV (no registered products)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentInfo()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->setProducer(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    return-void
.end method
