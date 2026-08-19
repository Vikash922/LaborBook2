.class Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;
.super Ljava/lang/Object;
.source "SimpleImageCache.java"


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;",
            ">;"
        }
    .end annotation
.end field

.field private capacity:I

.field private imagesFrequency:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->cache:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->imagesFrequency:Ljava/util/Map;

    const/16 v0, 0x64

    .line 68
    iput v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->capacity:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->cache:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->imagesFrequency:Ljava/util/Map;

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 80
    iput p1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->capacity:I

    return-void

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "capacity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ensureCapacity()V
    .locals 6

    .line 136
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->capacity:I

    if-lt v0, v1, :cond_4

    .line 141
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 142
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->imagesFrequency:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 143
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v2, :cond_0

    :cond_1
    if-nez v4, :cond_2

    move-object v1, v3

    goto :goto_1

    .line 148
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v2, v1

    move-object v1, v3

    goto :goto_0

    .line 153
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->cache:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method


# virtual methods
.method getImage(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->imagesFrequency:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 106
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->imagesFrequency:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->imagesFrequency:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    return-object p1
.end method

.method putImage(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->ensureCapacity()V

    .line 94
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method reset()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 128
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->imagesFrequency:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method size()I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
