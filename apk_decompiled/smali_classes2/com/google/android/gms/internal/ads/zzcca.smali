.class public final Lcom/google/android/gms/internal/ads/zzcca;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzge;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzge;

.field private final zzc:Ljava/lang/String;

.field private final zzd:I

.field private final zze:Z

.field private zzf:Ljava/io/InputStream;

.field private zzg:Z

.field private zzh:Landroid/net/Uri;

.field private volatile zzi:Lcom/google/android/gms/internal/ads/zzbas;

.field private zzj:Z

.field private zzk:Z

.field private zzl:Lcom/google/android/gms/internal/ads/zzgj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzge;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzhe;Lcom/google/android/gms/internal/ads/zzcbz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcca;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzb:Lcom/google/android/gms/internal/ads/zzge;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzc:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzd:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzj:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzk:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, -0x1

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zzcc:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcca;->zze:Z

    return-void
.end method

.method private final zzg()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zze:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzeA:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzj:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzeB:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzk:Z

    if-nez v0, :cond_3

    return v2

    :cond_3
    return v1
.end method


# virtual methods
.method public final zza([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzf:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzb:Lcom/google/android/gms/internal/ads/zzge;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzge;->zza([BII)I

    move-result p1

    :goto_0
    return p1

    .line 1
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempt to read closed CacheDataSource."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgj;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzg:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzg:Z

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgj;->zza:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzh:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzl:Lcom/google/android/gms/internal/ads/zzgj;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbas;->zza(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzbas;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzi:Lcom/google/android/gms/internal/ads/zzbas;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzex:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzi:Lcom/google/android/gms/internal/ads/zzbas;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzi:Lcom/google/android/gms/internal/ads/zzbas;

    .line 6
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzgj;->zze:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzbas;->zzh:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzi:Lcom/google/android/gms/internal/ads/zzbas;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzc:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfun;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzbas;->zzi:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzi:Lcom/google/android/gms/internal/ads/zzbas;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzd:I

    .line 8
    iput v0, p1, Lcom/google/android/gms/internal/ads/zzbas;->zzj:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzi:Lcom/google/android/gms/internal/ads/zzbas;

    .line 9
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbas;->zzg:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zzez:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Long;

    goto :goto_0

    .line 35
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zzey:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Long;

    .line 9
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzd()Lcom/google/android/gms/internal/ads/zzbbd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcca;->zza:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzi:Lcom/google/android/gms/internal/ads/zzbas;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbbd;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbas;)Ljava/util/concurrent/Future;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    invoke-interface {p1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbbe;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbbe;->zzd()Z

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbbe;->zzf()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzj:Z

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbbe;->zze()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzk:Z

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbbe;->zza()J

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcca;->zzg()Z

    move-result v3

    if-nez v3, :cond_1

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbbe;->zzc()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzf:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 23
    :catch_0
    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 25
    :catch_1
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :catchall_0
    :cond_1
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 27
    throw v1

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzi:Lcom/google/android/gms/internal/ads/zzbas;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzi:Lcom/google/android/gms/internal/ads/zzbas;

    .line 28
    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzgj;->zze:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzbas;->zzh:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzi:Lcom/google/android/gms/internal/ads/zzbas;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzc:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfun;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbas;->zzi:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzi:Lcom/google/android/gms/internal/ads/zzbas;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzd:I

    .line 30
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzbas;->zzj:I

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzc()Lcom/google/android/gms/internal/ads/zzbao;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzi:Lcom/google/android/gms/internal/ads/zzbas;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbao;->zzb(Lcom/google/android/gms/internal/ads/zzbas;)Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbap;->zze()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbap;->zzg()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzj:Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbap;->zzf()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzk:Z

    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcca;->zzg()Z

    move-result v0

    if-nez v0, :cond_4

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbap;->zzc()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzf:Ljava/io/InputStream;

    const-wide/16 v0, -0x1

    return-wide v0

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzi:Lcom/google/android/gms/internal/ads/zzbas;

    if-eqz v0, :cond_5

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgj;->zza()Lcom/google/android/gms/internal/ads/zzgh;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzi:Lcom/google/android/gms/internal/ads/zzbas;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbas;->zza:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzd(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzgh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgh;->zze()Lcom/google/android/gms/internal/ads/zzgj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzl:Lcom/google/android/gms/internal/ads/zzgj;

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzb:Lcom/google/android/gms/internal/ads/zzge;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzl:Lcom/google/android/gms/internal/ads/zzgj;

    .line 34
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzge;->zzb(Lcom/google/android/gms/internal/ads/zzgj;)J

    move-result-wide v0

    return-wide v0

    .line 1
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attempt to open an already open CacheDataSource."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzh:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzg:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzg:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzh:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzf:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzf:Ljava/io/InputStream;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzb:Lcom/google/android/gms/internal/ads/zzge;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzge;->zzd()V

    return-void

    .line 1
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempt to close an already closed CacheDataSource."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic zze()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzhe;)V
    .locals 0

    return-void
.end method
