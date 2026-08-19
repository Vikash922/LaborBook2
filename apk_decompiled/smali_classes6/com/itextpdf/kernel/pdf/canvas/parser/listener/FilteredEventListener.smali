.class public Lcom/itextpdf/kernel/pdf/canvas/parser/listener/FilteredEventListener;
.super Ljava/lang/Object;
.source "FilteredEventListener.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;


# instance fields
.field protected final delegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/filter/IEventFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/FilteredEventListener;->delegates:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/FilteredEventListener;->filters:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;[Lcom/itextpdf/kernel/pdf/canvas/parser/filter/IEventFilter;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/FilteredEventListener;-><init>()V

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/FilteredEventListener;->attachEventListener(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;[Lcom/itextpdf/kernel/pdf/canvas/parser/filter/IEventFilter;)Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;

    return-void
.end method


# virtual methods
.method public varargs attachEventListener(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;[Lcom/itextpdf/kernel/pdf/canvas/parser/filter/IEventFilter;)Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;",
            ">(TT;[",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/filter/IEventFilter;",
            ")TT;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/FilteredEventListener;->delegates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/FilteredEventListener;->filters:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 104
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/FilteredEventListener;->delegates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 105
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/FilteredEventListener;->delegates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;

    .line 106
    invoke-interface {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;->getSupportedEvents()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;->getSupportedEvents()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    .line 107
    :goto_2
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/FilteredEventListener;->filters:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/itextpdf/kernel/pdf/canvas/parser/filter/IEventFilter;

    array-length v5, v4

    move v6, v0

    :goto_3
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 108
    invoke-interface {v7, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/filter/IEventFilter;->accept(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)Z

    move-result v7

    if-nez v7, :cond_2

    move v3, v0

    goto :goto_4

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    .line 114
    invoke-interface {v2, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;->eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
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
