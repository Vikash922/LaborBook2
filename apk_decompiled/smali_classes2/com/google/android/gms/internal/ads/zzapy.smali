.class public Lcom/google/android/gms/internal/ads/zzapy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzapc;


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzaqa;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzapx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzapx;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqa;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqa;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapy;->zzb:Lcom/google/android/gms/internal/ads/zzapx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzapy;->zza:Lcom/google/android/gms/internal/ads/zzaqa;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/ads/zzapj;)Lcom/google/android/gms/internal/ads/zzapf;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaps;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    const-string v3, "Error occurred when closing InputStream"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    const/4 v6, 0x0

    .line 3
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzapj;->zzd()Lcom/google/android/gms/internal/ads/zzaos;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 45
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    .line 5
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzb:Ljava/lang/String;

    if-eqz v8, :cond_1

    const-string v9, "If-None-Match"

    .line 6
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzd:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-lez v0, :cond_2

    const-string v0, "If-Modified-Since"

    .line 7
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzaqg;->zzc(J)Ljava/lang/String;

    move-result-object v8

    .line 8
    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v0, v7

    .line 4
    :goto_1
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzapy;->zzb:Lcom/google/android/gms/internal/ads/zzapx;

    .line 9
    invoke-virtual {v7, v2, v0}, Lcom/google/android/gms/internal/ads/zzapx;->zza(Lcom/google/android/gms/internal/ads/zzapj;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzaqh;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaqh;->zzb()I

    move-result v9

    .line 10
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaqh;->zzd()Ljava/util/List;

    move-result-object v0

    const/16 v8, 0x130

    if-ne v9, v8, :cond_9

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v14, v8, v4

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzapj;->zzd()Lcom/google/android/gms/internal/ads/zzaos;

    move-result-object v8

    if-nez v8, :cond_3

    new-instance v8, Lcom/google/android/gms/internal/ads/zzapf;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v11, 0x130

    move-object v10, v8

    move-object/from16 v16, v0

    .line 27
    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzapf;-><init>(I[BZJLjava/util/List;)V

    goto/16 :goto_5

    :cond_3
    new-instance v9, Ljava/util/TreeSet;

    sget-object v10, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 13
    invoke-direct {v9, v10}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzapb;

    .line 16
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzapb;->zza()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v13, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzaos;->zzh:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzaos;->zzh:Ljava/util/List;

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzapb;

    .line 20
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzapb;->zza()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 21
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 26
    :cond_6
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzaos;->zzg:Ljava/util/Map;

    .line 22
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzaos;->zzg:Ljava/util/Map;

    .line 23
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    new-instance v11, Lcom/google/android/gms/internal/ads/zzapb;

    .line 25
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v11, v12, v10}, Lcom/google/android/gms/internal/ads/zzapb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 21
    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapf;

    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzaos;->zza:[B

    const/4 v8, 0x1

    const/16 v11, 0x130

    move-object v10, v0

    move-object v9, v13

    move v13, v8

    move-object/from16 v16, v9

    .line 26
    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzapf;-><init>(I[BZJLjava/util/List;)V

    move-object v8, v0

    :goto_5
    return-object v8

    .line 25
    :cond_9
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaqh;->zzc()Ljava/io/InputStream;

    move-result-object v8

    const/4 v10, 0x0

    if-eqz v8, :cond_b

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaqh;->zza()I

    move-result v11

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzapy;->zza:Lcom/google/android/gms/internal/ads/zzaqa;

    .line 28
    new-instance v13, Lcom/google/android/gms/internal/ads/zzaqn;

    invoke-direct {v13, v12, v11}, Lcom/google/android/gms/internal/ads/zzaqn;-><init>(Lcom/google/android/gms/internal/ads/zzaqa;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v11, 0x400

    .line 29
    :try_start_2
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzaqa;->zzb(I)[B

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    :goto_6
    :try_start_3
    invoke-virtual {v8, v11}, Ljava/io/InputStream;->read([B)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    .line 31
    invoke-virtual {v13, v11, v10, v14}, Lcom/google/android/gms/internal/ads/zzaqn;->write([BII)V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_8

    .line 32
    :cond_a
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaqn;->toByteArray()[B

    move-result-object v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    .line 37
    :catch_0
    :try_start_5
    new-array v8, v10, [Ljava/lang/Object;

    .line 34
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/ads/zzapv;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :goto_7
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzaqa;->zza([B)V

    .line 36
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaqn;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v11, v6

    .line 33
    :goto_8
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_9

    .line 66
    :catch_1
    :try_start_7
    new-array v8, v10, [Ljava/lang/Object;

    .line 34
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/ads/zzapv;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :goto_9
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzaqa;->zza([B)V

    .line 36
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaqn;->close()V

    .line 37
    throw v0

    .line 45
    :cond_b
    new-array v14, v10, [B
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :goto_a
    move-object v15, v14

    .line 38
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v4

    .line 39
    sget-boolean v8, Lcom/google/android/gms/internal/ads/zzapv;->zzb:Z

    if-nez v8, :cond_c

    const-wide/16 v12, 0xbb8

    cmp-long v8, v10, v12

    if-lez v8, :cond_e

    :cond_c
    const-string v8, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    .line 40
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    if-eqz v15, :cond_d

    array-length v11, v15

    .line 41
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_b

    .line 45
    :cond_d
    const-string v11, "null"

    .line 42
    :goto_b
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzapj;->zzy()Lcom/google/android/gms/internal/ads/zzaox;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaox;->zza()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v2, v10, v11, v12, v13}, [Ljava/lang/Object;

    move-result-object v10

    .line 44
    invoke-static {v8, v10}, Lcom/google/android/gms/internal/ads/zzapv;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    const/16 v8, 0xc8

    if-lt v9, v8, :cond_f

    const/16 v8, 0x12b

    if-gt v9, v8, :cond_f

    new-instance v16, Lcom/google/android/gms/internal/ads/zzapf;

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v12, v10, v4

    const/4 v11, 0x0

    move-object/from16 v8, v16

    move-object v10, v15

    move-object v14, v0

    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzapf;-><init>(I[BZJLjava/util/List;)V

    return-object v16

    .line 34
    :cond_f
    new-instance v0, Ljava/io/IOException;

    .line 46
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v0

    move-object v10, v15

    goto :goto_c

    :catch_3
    move-exception v0

    move-object v10, v6

    goto :goto_c

    :catch_4
    move-exception v0

    move-object v7, v6

    move-object v10, v7

    .line 47
    :goto_c
    instance-of v8, v0, Ljava/net/SocketTimeoutException;

    if-eqz v8, :cond_10

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaql;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzapr;

    .line 48
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzapr;-><init>()V

    const-string v8, "socket"

    invoke-direct {v0, v8, v7, v6}, Lcom/google/android/gms/internal/ads/zzaql;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaps;Lcom/google/android/gms/internal/ads/zzaqm;)V

    :goto_d
    move-object v6, v0

    goto :goto_f

    .line 49
    :cond_10
    instance-of v8, v0, Ljava/net/MalformedURLException;

    if-nez v8, :cond_16

    if-eqz v7, :cond_15

    .line 34
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaqh;->zzb()I

    move-result v0

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzapj;->zzk()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Unexpected response code %d for %s"

    invoke-static {v9, v8}, Lcom/google/android/gms/internal/ads/zzapv;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v10, :cond_14

    .line 51
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaqh;->zzd()Ljava/util/List;

    move-result-object v14

    new-instance v7, Lcom/google/android/gms/internal/ads/zzapf;

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v12, v8, v4

    const/4 v11, 0x0

    move-object v8, v7

    move v9, v0

    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzapf;-><init>(I[BZJLjava/util/List;)V

    const/16 v8, 0x191

    if-eq v0, v8, :cond_13

    const/16 v8, 0x193

    if-ne v0, v8, :cond_11

    goto :goto_e

    :cond_11
    const/16 v2, 0x190

    if-lt v0, v2, :cond_12

    const/16 v2, 0x1f3

    if-gt v0, v2, :cond_12

    .line 61
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaow;

    .line 62
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzaow;-><init>(Lcom/google/android/gms/internal/ads/zzapf;)V

    throw v0

    .line 54
    :cond_12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapq;

    .line 61
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzapq;-><init>(Lcom/google/android/gms/internal/ads/zzapf;)V

    throw v0

    .line 52
    :cond_13
    :goto_e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaql;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaor;

    .line 53
    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/zzaor;-><init>(Lcom/google/android/gms/internal/ads/zzapf;)V

    const-string v7, "auth"

    invoke-direct {v0, v7, v8, v6}, Lcom/google/android/gms/internal/ads/zzaql;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaps;Lcom/google/android/gms/internal/ads/zzaqm;)V

    goto :goto_d

    .line 60
    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaql;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzape;

    .line 54
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzape;-><init>()V

    const-string v8, "network"

    invoke-direct {v0, v8, v7, v6}, Lcom/google/android/gms/internal/ads/zzaql;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaps;Lcom/google/android/gms/internal/ads/zzaqm;)V

    goto :goto_d

    .line 55
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzapj;->zzy()Lcom/google/android/gms/internal/ads/zzaox;

    move-result-object v0

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzapj;->zzb()I

    move-result v7

    :try_start_9
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaql;->zza(Lcom/google/android/gms/internal/ads/zzaql;)Lcom/google/android/gms/internal/ads/zzaps;

    move-result-object v8

    .line 57
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzaox;->zzc(Lcom/google/android/gms/internal/ads/zzaps;)V
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzaps; {:try_start_9 .. :try_end_9} :catch_5

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaql;->zzb(Lcom/google/android/gms/internal/ads/zzaql;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, "%s-retry [timeout=%s]"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzapj;->zzm(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_5
    move-exception v0

    .line 59
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaql;->zzb(Lcom/google/android/gms/internal/ads/zzaql;)Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s-timeout-giveup [timeout=%s]"

    .line 64
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzapj;->zzm(Ljava/lang/String;)V

    .line 66
    throw v0

    .line 53
    :cond_15
    new-instance v2, Lcom/google/android/gms/internal/ads/zzapg;

    .line 60
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzapg;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 49
    :cond_16
    new-instance v3, Ljava/lang/RuntimeException;

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzapj;->zzk()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Bad URL "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
