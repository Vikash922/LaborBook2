.class public final Lcom/itextpdf/kernel/actions/events/LinkDocumentIdEvent;
.super Lcom/itextpdf/commons/actions/AbstractITextConfigurationEvent;
.source "LinkDocumentIdEvent.java"


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

.field private final sequenceId:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/itextpdf/commons/actions/sequence/SequenceId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/commons/actions/sequence/AbstractIdentifiableElement;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {p2}, Lcom/itextpdf/commons/actions/sequence/SequenceIdManager;->getSequenceId(Lcom/itextpdf/commons/actions/sequence/AbstractIdentifiableElement;)Lcom/itextpdf/commons/actions/sequence/SequenceId;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/actions/events/LinkDocumentIdEvent;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/commons/actions/sequence/SequenceId;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/commons/actions/sequence/SequenceId;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/itextpdf/commons/actions/AbstractITextConfigurationEvent;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/actions/events/LinkDocumentIdEvent;->document:Ljava/lang/ref/WeakReference;

    .line 52
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/itextpdf/kernel/actions/events/LinkDocumentIdEvent;->sequenceId:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public doAction()V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/itextpdf/kernel/actions/events/LinkDocumentIdEvent;->sequenceId:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/commons/actions/sequence/SequenceId;

    .line 72
    iget-object v1, p0, Lcom/itextpdf/kernel/actions/events/LinkDocumentIdEvent;->document:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/actions/events/LinkDocumentIdEvent;->getEvents(Lcom/itextpdf/commons/actions/sequence/SequenceId;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentIdWrapper()Lcom/itextpdf/commons/actions/sequence/SequenceId;

    move-result-object v1

    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/commons/actions/AbstractProductProcessITextEvent;

    .line 83
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/actions/events/LinkDocumentIdEvent;->getEvents(Lcom/itextpdf/commons/actions/sequence/SequenceId;)Ljava/util/List;

    move-result-object v3

    .line 84
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 85
    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/kernel/actions/events/LinkDocumentIdEvent;->addEvent(Lcom/itextpdf/commons/actions/sequence/SequenceId;Lcom/itextpdf/commons/actions/AbstractProductProcessITextEvent;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
