.class final Lcom/google/android/gms/internal/ads/zzefs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgbo;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfax;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfau;

.field final synthetic zzd:Ljava/lang/String;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzfik;

.field final synthetic zzf:Lcom/google/android/gms/internal/ads/zzfbg;

.field final synthetic zzg:Lcom/google/android/gms/internal/ads/zzefu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzefu;JLcom/google/android/gms/internal/ads/zzfax;Lcom/google/android/gms/internal/ads/zzfau;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfik;Lcom/google/android/gms/internal/ads/zzfbg;)V
    .locals 0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzefs;->zza:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzefs;->zzb:Lcom/google/android/gms/internal/ads/zzfax;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzefs;->zzc:Lcom/google/android/gms/internal/ads/zzfau;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzefs;->zzd:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzefs;->zze:Lcom/google/android/gms/internal/ads/zzfik;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzefs;->zzf:Lcom/google/android/gms/internal/ads/zzfbg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefs;->zzg:Lcom/google/android/gms/internal/ads/zzefu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzefs;->zzg:Lcom/google/android/gms/internal/ads/zzefu;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzefu;->zze(Lcom/google/android/gms/internal/ads/zzefu;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzefs;->zza:J

    sub-long/2addr v3, v5

    .line 2
    instance-of v5, v0, Ljava/util/concurrent/TimeoutException;

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    :goto_0
    move-object v14, v7

    goto :goto_2

    .line 23
    :cond_0
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/zzefc;

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_0

    .line 3
    :cond_1
    instance-of v5, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    goto :goto_0

    :cond_2
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/zzfbw;

    if-eqz v5, :cond_3

    const/4 v5, 0x5

    goto :goto_0

    :cond_3
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/zzdvg;

    const/4 v8, 0x6

    if-eqz v5, :cond_5

    .line 4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfcq;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v5

    .line 5
    iget v5, v5, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    if-ne v5, v6, :cond_4

    const/4 v8, 0x1

    .line 6
    :cond_4
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbci;->zzbO:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v5

    .line 6
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    instance-of v5, v0, Lcom/google/android/gms/internal/ads/zzecj;

    if-eqz v5, :cond_5

    .line 8
    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzecj;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzecj;->zzb()Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v5

    if-eqz v5, :cond_5

    iget v5, v5, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    .line 9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v14, v5

    goto :goto_1

    :cond_5
    move-object v14, v7

    :goto_1
    move v5, v8

    .line 2
    :goto_2
    monitor-enter v2

    :try_start_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzefu;->zzn(Lcom/google/android/gms/internal/ads/zzefu;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzefu;->zzc(Lcom/google/android/gms/internal/ads/zzefu;)Lcom/google/android/gms/internal/ads/zzefw;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzefs;->zzb:Lcom/google/android/gms/internal/ads/zzfax;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzefs;->zzc:Lcom/google/android/gms/internal/ads/zzfau;

    instance-of v11, v0, Lcom/google/android/gms/internal/ads/zzecj;

    if-eqz v11, :cond_6

    .line 10
    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/ads/zzecj;

    :cond_6
    move-object v11, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v5

    move-wide v12, v3

    .line 11
    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/zzefw;->zza(Lcom/google/android/gms/internal/ads/zzfax;Lcom/google/android/gms/internal/ads/zzfau;ILcom/google/android/gms/internal/ads/zzecj;J)V

    .line 12
    :cond_7
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbci;->zziu:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v7

    .line 12
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzefu;->zzd(Lcom/google/android/gms/internal/ads/zzefu;)Lcom/google/android/gms/internal/ads/zzfio;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzefs;->zze:Lcom/google/android/gms/internal/ads/zzfik;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzefs;->zzf:Lcom/google/android/gms/internal/ads/zzfbg;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzefs;->zzc:Lcom/google/android/gms/internal/ads/zzfau;

    .line 14
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzfau;->zzn:Ljava/util/List;

    .line 15
    invoke-virtual {v8, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzfik;->zzd(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iget-object v9, v10, Lcom/google/android/gms/internal/ads/zzfau;->zzax:Lcom/google/android/gms/ads/internal/util/client/zzv;

    .line 14
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzfio;->zze(Ljava/util/List;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    :cond_8
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzefu;->zzo(Lcom/google/android/gms/internal/ads/zzefu;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 24
    monitor-exit v2

    return-void

    :cond_9
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzefu;->zzh(Lcom/google/android/gms/internal/ads/zzefu;)Ljava/util/LinkedHashMap;

    move-result-object v15

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzefs;->zzc:Lcom/google/android/gms/internal/ads/zzfau;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzeft;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzefs;->zzd:Ljava/lang/String;

    .line 16
    iget-object v9, v13, Lcom/google/android/gms/internal/ads/zzfau;->zzaf:Ljava/lang/String;

    move-object v7, v11

    move v10, v5

    move-object v5, v11

    move-wide v11, v3

    move-object v6, v13

    move-object v13, v14

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/zzeft;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Integer;)V

    invoke-virtual {v15, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfcq;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    .line 18
    iget v5, v0, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    const/4 v7, 0x3

    if-eq v5, v7, :cond_a

    if-nez v5, :cond_b

    :cond_a
    iget-object v5, v0, Lcom/google/android/gms/ads/internal/client/zze;->zzd:Lcom/google/android/gms/ads/internal/client/zze;

    if-eqz v5, :cond_b

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/client/zze;->zzc:Ljava/lang/String;

    const-string v7, "com.google.android.gms.ads"

    .line 19
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    new-instance v5, Lcom/google/android/gms/internal/ads/zzecj;

    .line 20
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zze;->zzd:Lcom/google/android/gms/ads/internal/client/zze;

    const/16 v7, 0xd

    invoke-direct {v5, v7, v0}, Lcom/google/android/gms/internal/ads/zzecj;-><init>(ILcom/google/android/gms/ads/internal/client/zze;)V

    .line 21
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfcq;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    :cond_b
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzefu;->zzb(Lcom/google/android/gms/internal/ads/zzefu;)Lcom/google/android/gms/internal/ads/zzeck;

    move-result-object v5

    .line 22
    invoke-virtual {v5, v6, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzeck;->zzf(Lcom/google/android/gms/internal/ads/zzfau;JLcom/google/android/gms/ads/internal/client/zze;)V

    .line 23
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 12

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzefs;->zzg:Lcom/google/android/gms/internal/ads/zzefu;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefu;->zze(Lcom/google/android/gms/internal/ads/zzefu;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzefs;->zza:J

    sub-long/2addr v0, v2

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefu;->zzn(Lcom/google/android/gms/internal/ads/zzefu;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefu;->zzc(Lcom/google/android/gms/internal/ads/zzefu;)Lcom/google/android/gms/internal/ads/zzefw;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzefs;->zzb:Lcom/google/android/gms/internal/ads/zzfax;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzefs;->zzc:Lcom/google/android/gms/internal/ads/zzfau;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v9, v0

    .line 2
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzefw;->zza(Lcom/google/android/gms/internal/ads/zzfax;Lcom/google/android/gms/internal/ads/zzfau;ILcom/google/android/gms/internal/ads/zzecj;J)V

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefu;->zzo(Lcom/google/android/gms/internal/ads/zzefu;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    monitor-exit p1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefs;->zzc:Lcom/google/android/gms/internal/ads/zzfau;

    .line 3
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzefu;->zzp(Lcom/google/android/gms/internal/ads/zzefu;Lcom/google/android/gms/internal/ads/zzfau;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefu;->zzh(Lcom/google/android/gms/internal/ads/zzefu;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 5
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzeft;

    iput-wide v0, v3, Lcom/google/android/gms/internal/ads/zzeft;->zzd:J

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefu;->zzh(Lcom/google/android/gms/internal/ads/zzefu;)Ljava/util/LinkedHashMap;

    move-result-object v3

    new-instance v11, Lcom/google/android/gms/internal/ads/zzeft;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzefs;->zzd:Ljava/lang/String;

    .line 4
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzfau;->zzaf:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v4, v11

    move-wide v8, v0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzeft;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Integer;)V

    invoke-virtual {v3, v2, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzefu;->zzb(Lcom/google/android/gms/internal/ads/zzefu;)Lcom/google/android/gms/internal/ads/zzeck;

    move-result-object v3

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzeck;->zzg(Lcom/google/android/gms/internal/ads/zzfau;JLcom/google/android/gms/ads/internal/client/zze;)V

    .line 7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
