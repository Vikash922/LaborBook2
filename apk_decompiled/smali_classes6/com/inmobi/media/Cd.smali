.class public final Lcom/inmobi/media/Cd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/inmobi/media/L3;

.field public final b:Lcom/inmobi/media/Bd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webAssetCacheConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/inmobi/media/Bd;

    invoke-direct {v0}, Lcom/inmobi/media/Bd;-><init>()V

    iput-object v0, p0, Lcom/inmobi/media/Cd;->b:Lcom/inmobi/media/Bd;

    .line 50
    new-instance v0, Lcom/inmobi/media/Cd$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p0, p1}, Lcom/inmobi/media/Cd$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;Lcom/inmobi/media/Cd;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/inmobi/media/Kb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 1

    .line 133
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "size"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 134
    sget-object p2, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string p2, "web_asset_file_key"

    invoke-static {p0, p2}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object p0

    .line 136
    const-string p2, "key"

    const-string v0, "cache_enabled"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iget-object p0, p0, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    const/4 p2, 0x0

    invoke-interface {p0, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 224
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 225
    const-string v0, "state"

    invoke-static {v0, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    aput-object p1, v0, p2

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 226
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    .line 227
    sget-object p1, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 228
    sget-object p1, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 229
    const-string p2, "LowAvailableSpaceForCache"

    invoke-static {p2, p0, p1}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    return-void
.end method

.method public static final a(Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;Lcom/inmobi/media/Cd;Landroid/content/Context;)V
    .locals 10

    const-string v0, "$webAssetCacheConfig"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    :try_start_0
    sget-object v0, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/E3;

    invoke-virtual {v0}, Lcom/inmobi/media/E3;->e()J

    move-result-wide v0

    .line 14
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->getMinAvailableDiskSpace()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    const-string v3, "web_asset_file_key"

    if-gez v2, :cond_0

    .line 15
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v0, v1}, Lcom/inmobi/media/Cd;->a(Landroid/content/Context;J)V

    .line 16
    sget-object p0, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, v3}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v4

    .line 17
    const-string v5, "cache_enabled"

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;ZZILjava/lang/Object;)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1, p2, p0, v0, v1}, Lcom/inmobi/media/Cd;->a(Landroid/content/Context;Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;J)V

    .line 20
    sget-object p0, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, v3}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v4

    .line 21
    const-string v5, "cache_enabled"

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;ZZILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 25
    const-string p1, "event"

    invoke-static {p0, p1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p0

    .line 26
    sget-object p1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {p1, p0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/inmobi/media/f5;)Ljava/io/InputStream;
    .locals 7

    const-string v0, "did not find any valid cache entry for "

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/inmobi/media/Cd;->a:Lcom/inmobi/media/L3;

    const-string v2, "WebAssetLRUCacheHelper"

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-nez v1, :cond_0

    .line 2
    :try_start_0
    const-string v1, "diskLruCache"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {v1, v4}, Lcom/inmobi/media/L3;->b(Ljava/lang/String;)Lcom/inmobi/media/K3;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v4, v1, Lcom/inmobi/media/K3;->a:[Ljava/io/InputStream;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 6
    new-instance v5, Ljava/io/InputStreamReader;

    sget-object v6, Lcom/inmobi/media/Wc;->b:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v5}, Lcom/inmobi/media/Wc;->a(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    iget-object v0, v1, Lcom/inmobi/media/K3;->a:[Ljava/io/InputStream;

    const/4 v1, 0x1

    aget-object p1, v0, v1

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v2, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p2, :cond_2

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Failed to read from cache with: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/inmobi/media/g5;

    invoke-virtual {p2, v2, p1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v3

    :cond_3
    if-eqz p2, :cond_4

    .line 12
    const-string v0, "Disk Cache Failed to Initialize. Failed readFromCache: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/inmobi/media/g5;

    invoke-virtual {p2, v2, p1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v3
.end method

.method public final a(Landroid/content/Context;Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;J)V
    .locals 6

    .line 30
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "inmobiwebassetcache"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    const-string p1, "webAssetCacheConfig"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    cmp-long p1, p3, v1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p2}, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->getCacheSize()I

    move-result p1

    .line 98
    invoke-virtual {p2}, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->getCacheSizeToDiskSpaceMaxPercent()I

    move-result p2

    int-to-long v1, p2

    mul-long/2addr p3, v1

    const/16 p2, 0x64

    int-to-long v1, p2

    div-long/2addr p3, v1

    long-to-int p2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    int-to-long p1, p1

    const-wide/16 p3, 0x400

    mul-long/2addr p1, p3

    const/16 p3, 0x400

    int-to-long p3, p3

    mul-long/2addr p1, p3

    .line 99
    iget-object p3, p0, Lcom/inmobi/media/Cd;->b:Lcom/inmobi/media/Bd;

    .line 100
    sget-object p4, Lcom/inmobi/media/L3;->p:Ljava/util/regex/Pattern;

    const-wide/16 v1, 0x0

    cmp-long p4, p1, v1

    if-lez p4, :cond_5

    .line 101
    new-instance p4, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {p4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 107
    :cond_1
    invoke-virtual {p4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_1

    .line 108
    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 109
    :cond_3
    :goto_1
    new-instance p4, Lcom/inmobi/media/L3;

    invoke-direct {p4, v0, p1, p2, p3}, Lcom/inmobi/media/L3;-><init>(Ljava/io/File;JLcom/inmobi/media/Bd;)V

    .line 110
    iget-object v1, p4, Lcom/inmobi/media/L3;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 112
    :try_start_0
    invoke-virtual {p4}, Lcom/inmobi/media/L3;->c()V

    .line 113
    invoke-virtual {p4}, Lcom/inmobi/media/L3;->b()V

    .line 114
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p4, Lcom/inmobi/media/L3;->b:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/inmobi/media/Wc;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p4, Lcom/inmobi/media/L3;->j:Ljava/io/BufferedWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 118
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DiskLruCache "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 122
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", removing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p4}, Lcom/inmobi/media/L3;->close()V

    .line 125
    iget-object p4, p4, Lcom/inmobi/media/L3;->a:Ljava/io/File;

    invoke-static {p4}, Lcom/inmobi/media/Wc;->a(Ljava/io/File;)V

    .line 126
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 127
    new-instance p4, Lcom/inmobi/media/L3;

    invoke-direct {p4, v0, p1, p2, p3}, Lcom/inmobi/media/L3;-><init>(Ljava/io/File;JLcom/inmobi/media/Bd;)V

    .line 128
    invoke-virtual {p4}, Lcom/inmobi/media/L3;->d()V

    .line 129
    :goto_2
    const-string p1, "open(...)"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/inmobi/media/Cd;->a:Lcom/inmobi/media/L3;

    return-void

    .line 130
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxSize <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
