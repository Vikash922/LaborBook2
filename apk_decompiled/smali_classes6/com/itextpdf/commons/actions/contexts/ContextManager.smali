.class public Lcom/itextpdf/commons/actions/contexts/ContextManager;
.super Ljava/lang/Object;
.source "ContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/commons/actions/contexts/ContextManager$LengthComparator;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/itextpdf/commons/actions/contexts/ContextManager;


# instance fields
.field private final contextMappings:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/commons/actions/contexts/IContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    new-instance v0, Lcom/itextpdf/commons/actions/contexts/ContextManager;

    invoke-direct {v0}, Lcom/itextpdf/commons/actions/contexts/ContextManager;-><init>()V

    .line 65
    sget-object v1, Lcom/itextpdf/commons/actions/NamespaceConstant;->ITEXT_CORE_NAMESPACES:Ljava/util/List;

    const-string v2, "itext-core"

    .line 66
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/commons/actions/contexts/ContextManager;->registerGenericContext(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 68
    const-string v1, "com.itextpdf.html2pdf"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "pdfHtml"

    .line 69
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/commons/actions/contexts/ContextManager;->registerGenericContext(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 71
    const-string v1, "com.itextpdf.pdfcleanup"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "pdfSweep"

    .line 72
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/commons/actions/contexts/ContextManager;->registerGenericContext(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 74
    const-string v1, "com.itextpdf.pdfocr.tesseract4"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "pdfOcr-tesseract4"

    .line 75
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/commons/actions/contexts/ContextManager;->registerGenericContext(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 77
    sput-object v0, Lcom/itextpdf/commons/actions/contexts/ContextManager;->INSTANCE:Lcom/itextpdf/commons/actions/contexts/ContextManager;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/itextpdf/commons/actions/contexts/ContextManager$LengthComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/itextpdf/commons/actions/contexts/ContextManager$LengthComparator;-><init>(Lcom/itextpdf/commons/actions/contexts/ContextManager$1;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/itextpdf/commons/actions/contexts/ContextManager;->contextMappings:Ljava/util/SortedMap;

    return-void
.end method

.method public static getInstance()Lcom/itextpdf/commons/actions/contexts/ContextManager;
    .locals 1

    .line 90
    sget-object v0, Lcom/itextpdf/commons/actions/contexts/ContextManager;->INSTANCE:Lcom/itextpdf/commons/actions/contexts/ContextManager;

    return-object v0
.end method

.method private getNamespaceMapping(Ljava/lang/String;)Lcom/itextpdf/commons/actions/contexts/IContext;
    .locals 1

    if-eqz p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/itextpdf/commons/actions/contexts/ContextManager;->contextMappings:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/commons/actions/contexts/IContext;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getContext(Ljava/lang/Class;)Lcom/itextpdf/commons/actions/contexts/IContext;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/itextpdf/commons/actions/contexts/IContext;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/commons/actions/contexts/ContextManager;->getContext(Ljava/lang/String;)Lcom/itextpdf/commons/actions/contexts/IContext;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getContext(Ljava/lang/String;)Lcom/itextpdf/commons/actions/contexts/IContext;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lcom/itextpdf/commons/actions/contexts/ContextManager;->getRecognisedNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/commons/actions/contexts/ContextManager;->getNamespaceMapping(Ljava/lang/String;)Lcom/itextpdf/commons/actions/contexts/IContext;

    move-result-object p1

    return-object p1
.end method

.method getRecognisedNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    .line 117
    invoke-static {p1}, Lcom/itextpdf/commons/actions/contexts/ContextManager;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/itextpdf/commons/actions/contexts/ContextManager;->contextMappings:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 122
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method registerGenericContext(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/itextpdf/commons/actions/contexts/GenericContext;

    invoke-direct {v0, p2}, Lcom/itextpdf/commons/actions/contexts/GenericContext;-><init>(Ljava/util/Collection;)V

    .line 145
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/itextpdf/commons/actions/contexts/ContextManager;->contextMappings:Ljava/util/SortedMap;

    invoke-static {p2}, Lcom/itextpdf/commons/actions/contexts/ContextManager;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method unregisterContext(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 131
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcom/itextpdf/commons/actions/contexts/ContextManager;->contextMappings:Ljava/util/SortedMap;

    invoke-static {v0}, Lcom/itextpdf/commons/actions/contexts/ContextManager;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
