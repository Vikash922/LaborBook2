.class public Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;
.super Ljava/lang/Object;
.source "InMobiMemoryCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MemoryCache"


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private limit:J

.field size:J


# direct methods
.method constructor <init>()V
    .locals 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3fc00000    # 1.5f

    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->cache:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->size:J

    const-wide/32 v0, 0xf4240

    .line 40
    iput-wide v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->limit:J

    .line 44
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->setLimit(J)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Long;)V
    .locals 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3fc00000    # 1.5f

    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->cache:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->size:J

    const-wide/32 v0, 0xf4240

    .line 40
    iput-wide v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->limit:J

    .line 49
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->setLimit(J)V

    return-void
.end method

.method private checkSize()V
    .locals 7

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cache size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MemoryCache"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-wide v2, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->size:J

    iget-wide v4, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->limit:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 90
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 92
    iget-wide v3, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->size:J

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->getSizeInBytes(Landroid/graphics/Bitmap;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->size:J

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 94
    iget-wide v2, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->size:J

    iget-wide v4, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->limit:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Clean cache. New size "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private getSizeInBytes(Landroid/graphics/Bitmap;)J
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method private setLimit(J)V
    .locals 4

    .line 53
    iput-wide p1, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->limit:J

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "MemoryCache will use up to "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->limit:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    div-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "MB"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MemoryCache"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    .line 107
    iput-wide v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->size:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v0
.end method

.method put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-wide v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->size:J

    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->getSizeInBytes(Landroid/graphics/Bitmap;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->size:J

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-wide v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->size:J

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->getSizeInBytes(Landroid/graphics/Bitmap;)J

    move-result-wide p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->size:J

    .line 78
    invoke-direct {p0}, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->checkSize()V

    .line 79
    const-string p1, "MemoryCache"

    const-string p2, "Drawable used from cache"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
