.class public final Lcom/google/android/gms/internal/ads/zzdyu;
.super Lcom/google/android/gms/internal/ads/zzbul;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgcd;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdzc;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzckk;

.field private final zze:Ljava/util/ArrayDeque;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfgq;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzbvg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgcd;Lcom/google/android/gms/internal/ads/zzbvg;Lcom/google/android/gms/internal/ads/zzckk;Lcom/google/android/gms/internal/ads/zzdzc;Ljava/util/ArrayDeque;Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzfgq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbul;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbci;->zza(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzb:Lcom/google/android/gms/internal/ads/zzgcd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzg:Lcom/google/android/gms/internal/ads/zzbvg;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzc:Lcom/google/android/gms/internal/ads/zzdzc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzd:Lcom/google/android/gms/internal/ads/zzckk;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zze:Ljava/util/ArrayDeque;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzf:Lcom/google/android/gms/internal/ads/zzfgq;

    return-void
.end method

.method public static synthetic zzk(Lcom/google/android/gms/internal/ads/zzdyu;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzfgc;)Ljava/io/InputStream;
    .locals 7

    .line 1
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbva;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbva;->zze()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p2}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lorg/json/JSONObject;

    .line 3
    iget-object v4, p3, Lcom/google/android/gms/internal/ads/zzbuy;->zzh:Ljava/lang/String;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdyr;

    .line 4
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbva;

    move-object v1, p2

    move-object v5, v0

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdyr;-><init>(Lcom/google/android/gms/internal/ads/zzbva;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfgc;)V

    .line 5
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzdyu;->zzo(Lcom/google/android/gms/internal/ads/zzdyr;)V

    new-instance p0, Ljava/io/ByteArrayInputStream;

    .line 6
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p0
.end method

.method private final declared-synchronized zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdyr;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zze:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdyr;

    .line 4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzdyr;->zzc:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfft;Lcom/google/android/gms/internal/ads/zzboa;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzfgc;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbnx;->zza:Lcom/google/android/gms/internal/ads/zzbnu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdyl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdyl;-><init>()V

    const-string v2, "AFMA_getAdDictionary"

    .line 2
    invoke-virtual {p2, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzboa;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbnt;Lcom/google/android/gms/internal/ads/zzbns;)Lcom/google/android/gms/internal/ads/zzbnq;

    move-result-object p2

    .line 3
    invoke-static {p0, p4}, Lcom/google/android/gms/internal/ads/zzfgm;->zzd(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfgc;)V

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzffn;->zzg:Lcom/google/android/gms/internal/ads/zzffn;

    .line 5
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzffl;->zzb(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzffj;->zzf(Lcom/google/android/gms/internal/ads/zzgaz;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzffj;->zza()Lcom/google/android/gms/internal/ads/zzfez;

    move-result-object p0

    .line 6
    invoke-static {p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzfgm;->zzc(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzfgc;)V

    return-object p0
.end method

.method private static zzn(Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzfft;Lcom/google/android/gms/internal/ads/zzety;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyf;

    invoke-direct {v0, p2, p0}, Lcom/google/android/gms/internal/ads/zzdyf;-><init>(Lcom/google/android/gms/internal/ads/zzety;Lcom/google/android/gms/internal/ads/zzbuy;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdyg;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdyg;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzffn;->zze:Lcom/google/android/gms/internal/ads/zzffn;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbuy;->zza:Landroid/os/Bundle;

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/internal/ads/zzffl;->zzb(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzffj;->zzf(Lcom/google/android/gms/internal/ads/zzgaz;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzffj;->zze(Lcom/google/android/gms/internal/ads/zzfex;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzffj;->zza()Lcom/google/android/gms/internal/ads/zzfez;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized zzo(Lcom/google/android/gms/internal/ads/zzdyr;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdyu;->zzp()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zze:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzp()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbep;->zzb:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zze:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    if-lt v2, v0, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final zzq(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbuq;Lcom/google/android/gms/internal/ads/zzbuy;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdym;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdym;-><init>(Lcom/google/android/gms/internal/ads/zzdyu;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbzk;->zza:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyq;

    invoke-direct {v0, p0, p3, p2}, Lcom/google/android/gms/internal/ads/zzdyq;-><init>(Lcom/google/android/gms/internal/ads/zzdyu;Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzbuq;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 3
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgbs;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgbo;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzbuy;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbep;->zza:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Split request is disabled."

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbuy;->zzi:Lcom/google/android/gms/internal/ads/zzfdj;

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Pool configuration missing from request."

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfdj;->zzc:I

    if-eqz v1, :cond_3

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfdj;->zzd:I

    if-nez v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzf:Lcom/google/android/gms/internal/ads/zzfgq;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzg()Lcom/google/android/gms/internal/ads/zzbnr;

    move-result-object v2

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->forPackage()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzbnr;->zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfgq;)Lcom/google/android/gms/internal/ads/zzboa;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzd:Lcom/google/android/gms/internal/ads/zzckk;

    .line 8
    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzckk;->zzq(Lcom/google/android/gms/internal/ads/zzbuy;I)Lcom/google/android/gms/internal/ads/zzety;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzety;->zze()Lcom/google/android/gms/internal/ads/zzfft;

    move-result-object v2

    .line 10
    invoke-static {p1, v2, p2}, Lcom/google/android/gms/internal/ads/zzdyu;->zzn(Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzfft;Lcom/google/android/gms/internal/ads/zzety;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzety;->zzf()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object p2

    const/16 v3, 0x9

    .line 12
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzfgb;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfgc;

    move-result-object v8

    .line 13
    invoke-static {v6, v2, v1, p2, v8}, Lcom/google/android/gms/internal/ads/zzdyu;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfft;Lcom/google/android/gms/internal/ads/zzboa;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzfgc;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    .line 14
    sget-object p2, Lcom/google/android/gms/internal/ads/zzffn;->zzz:Lcom/google/android/gms/internal/ads/zzffn;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    const/4 v1, 0x1

    aput-object v5, v0, v1

    .line 15
    invoke-virtual {v2, p2, v0}, Lcom/google/android/gms/internal/ads/zzffl;->zza(Ljava/lang/Object;[Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzffb;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyj;

    move-object v3, v0

    move-object v4, p0

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzdyj;-><init>(Lcom/google/android/gms/internal/ads/zzdyu;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzfgc;)V

    .line 16
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzffb;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzffj;->zza()Lcom/google/android/gms/internal/ads/zzfez;

    move-result-object p1

    return-object p1

    .line 4
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Caching is disabled."

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbuy;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzg()Lcom/google/android/gms/internal/ads/zzbnr;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdyu;->zza:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->forPackage()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdyu;->zzf:Lcom/google/android/gms/internal/ads/zzfgq;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzbnr;->zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfgq;)Lcom/google/android/gms/internal/ads/zzboa;

    move-result-object v3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdyu;->zzd:Lcom/google/android/gms/internal/ads/zzckk;

    .line 3
    invoke-interface {v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzckk;->zzq(Lcom/google/android/gms/internal/ads/zzbuy;I)Lcom/google/android/gms/internal/ads/zzety;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/ads/zzdyt;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 4
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbnx;->zzb:Lcom/google/android/gms/internal/ads/zzbns;

    .line 5
    const-string v8, "google.afma.response.normalize"

    invoke-virtual {v3, v8, v6, v7}, Lcom/google/android/gms/internal/ads/zzboa;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbnt;Lcom/google/android/gms/internal/ads/zzbns;)Lcom/google/android/gms/internal/ads/zzbnq;

    move-result-object v6

    .line 6
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbep;->zza:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    .line 7
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbuy;->zzj:Ljava/lang/String;

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "Request contained a PoolKey but split request is disabled."

    .line 8
    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbuy;->zzh:Ljava/lang/String;

    .line 10
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzdyu;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdyr;

    move-result-object v8

    if-nez v8, :cond_1

    const-string v7, "Request contained a PoolKey but no matching parameters were found."

    .line 11
    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-nez v8, :cond_2

    const/16 v7, 0x9

    .line 12
    invoke-static {v4, v7}, Lcom/google/android/gms/internal/ads/zzfgb;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfgc;

    move-result-object v7

    goto :goto_1

    .line 48
    :cond_2
    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzdyr;->zzd:Lcom/google/android/gms/internal/ads/zzfgc;

    .line 13
    :goto_1
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzety;->zzf()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object v9

    .line 14
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzbuy;->zza:Landroid/os/Bundle;

    const-string v11, "ad_types"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzfgn;->zzd(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfgn;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzdzb;

    .line 15
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzbuy;->zzg:Ljava/lang/String;

    invoke-direct {v10, v11, v9, v7}, Lcom/google/android/gms/internal/ads/zzdzb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzfgc;)V

    .line 16
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzbuy;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v11, v11, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzdyu;->zzg:Lcom/google/android/gms/internal/ads/zzbvg;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzdyy;

    invoke-direct {v13, v4, v11, v12, v2}, Lcom/google/android/gms/internal/ads/zzdyy;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;I)V

    .line 17
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzety;->zze()Lcom/google/android/gms/internal/ads/zzfft;

    move-result-object v2

    const/16 v11, 0xb

    .line 18
    invoke-static {v4, v11}, Lcom/google/android/gms/internal/ads/zzfgb;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfgc;

    move-result-object v11

    const/16 v12, 0xa

    const/4 v15, 0x0

    const/4 v14, 0x2

    if-nez v8, :cond_3

    .line 19
    invoke-static {v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzdyu;->zzn(Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzfft;Lcom/google/android/gms/internal/ads/zzety;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    .line 20
    invoke-static {v5, v2, v3, v9, v7}, Lcom/google/android/gms/internal/ads/zzdyu;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfft;Lcom/google/android/gms/internal/ads/zzboa;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzfgc;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    .line 21
    invoke-static {v4, v12}, Lcom/google/android/gms/internal/ads/zzfgb;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfgc;

    move-result-object v4

    .line 22
    sget-object v7, Lcom/google/android/gms/internal/ads/zzffn;->zzi:Lcom/google/android/gms/internal/ads/zzffn;

    new-array v8, v14, [Lcom/google/common/util/concurrent/ListenableFuture;

    aput-object v3, v8, v15

    const/4 v12, 0x1

    aput-object v5, v8, v12

    .line 23
    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/internal/ads/zzffl;->zza(Ljava/lang/Object;[Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzffb;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/zzdyh;

    invoke-direct {v8, v3, v1, v5}, Lcom/google/android/gms/internal/ads/zzdyh;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 24
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzffb;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v7

    .line 25
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzffj;->zze(Lcom/google/android/gms/internal/ads/zzfex;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfgi;

    invoke-direct {v8, v4}, Lcom/google/android/gms/internal/ads/zzfgi;-><init>(Lcom/google/android/gms/internal/ads/zzfgc;)V

    .line 26
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzffj;->zze(Lcom/google/android/gms/internal/ads/zzfex;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v7

    .line 27
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/zzffj;->zze(Lcom/google/android/gms/internal/ads/zzfex;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v7

    .line 28
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzffj;->zza()Lcom/google/android/gms/internal/ads/zzfez;

    move-result-object v7

    .line 29
    invoke-static {v7, v9, v4}, Lcom/google/android/gms/internal/ads/zzfgm;->zza(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzfgc;)V

    .line 30
    invoke-static {v7, v11}, Lcom/google/android/gms/internal/ads/zzfgm;->zzd(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfgc;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzffn;->zzk:Lcom/google/android/gms/internal/ads/zzffn;

    const/4 v8, 0x3

    new-array v8, v8, [Lcom/google/common/util/concurrent/ListenableFuture;

    aput-object v5, v8, v15

    const/4 v10, 0x1

    aput-object v3, v8, v10

    aput-object v7, v8, v14

    .line 31
    invoke-virtual {v2, v4, v8}, Lcom/google/android/gms/internal/ads/zzffl;->zza(Ljava/lang/Object;[Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzffb;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdyi;

    invoke-direct {v4, v1, v7, v5, v3}, Lcom/google/android/gms/internal/ads/zzdyi;-><init>(Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 32
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzffb;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v1

    .line 33
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzffj;->zzf(Lcom/google/android/gms/internal/ads/zzgaz;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzffj;->zza()Lcom/google/android/gms/internal/ads/zzfez;

    move-result-object v1

    goto :goto_2

    .line 49
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdza;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzdyr;->zzb:Lorg/json/JSONObject;

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzdyr;->zza:Lcom/google/android/gms/internal/ads/zzbva;

    invoke-direct {v1, v3, v5}, Lcom/google/android/gms/internal/ads/zzdza;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbva;)V

    .line 35
    invoke-static {v4, v12}, Lcom/google/android/gms/internal/ads/zzfgb;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfgc;

    move-result-object v3

    .line 36
    sget-object v4, Lcom/google/android/gms/internal/ads/zzffn;->zzi:Lcom/google/android/gms/internal/ads/zzffn;

    .line 37
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/google/android/gms/internal/ads/zzffl;->zzb(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v1

    .line 38
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzffj;->zze(Lcom/google/android/gms/internal/ads/zzfex;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfgi;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzfgi;-><init>(Lcom/google/android/gms/internal/ads/zzfgc;)V

    .line 39
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzffj;->zze(Lcom/google/android/gms/internal/ads/zzfex;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v1

    .line 40
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzffj;->zze(Lcom/google/android/gms/internal/ads/zzfex;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzffj;->zza()Lcom/google/android/gms/internal/ads/zzfez;

    move-result-object v1

    .line 42
    invoke-static {v1, v9, v3}, Lcom/google/android/gms/internal/ads/zzfgm;->zza(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzfgc;)V

    .line 43
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    .line 44
    invoke-static {v1, v11}, Lcom/google/android/gms/internal/ads/zzfgm;->zzd(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfgc;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzffn;->zzk:Lcom/google/android/gms/internal/ads/zzffn;

    new-array v5, v14, [Lcom/google/common/util/concurrent/ListenableFuture;

    aput-object v1, v5, v15

    const/4 v7, 0x1

    aput-object v3, v5, v7

    .line 45
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzffl;->zza(Ljava/lang/Object;[Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzffb;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdye;

    invoke-direct {v4, v1, v3}, Lcom/google/android/gms/internal/ads/zzdye;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 46
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzffb;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v1

    .line 47
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzffj;->zzf(Lcom/google/android/gms/internal/ads/zzgaz;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzffj;->zza()Lcom/google/android/gms/internal/ads/zzfez;

    move-result-object v1

    .line 49
    :goto_2
    invoke-static {v1, v9, v11}, Lcom/google/android/gms/internal/ads/zzfgm;->zza(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzfgc;)V

    return-object v1
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbuy;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzg()Lcom/google/android/gms/internal/ads/zzbnr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zza:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->forPackage()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzf:Lcom/google/android/gms/internal/ads/zzfgq;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbnr;->zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfgq;)Lcom/google/android/gms/internal/ads/zzboa;

    move-result-object v0

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbeu;->zza:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Signal collection disabled."

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzd:Lcom/google/android/gms/internal/ads/zzckk;

    .line 5
    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzckk;->zzq(Lcom/google/android/gms/internal/ads/zzbuy;I)Lcom/google/android/gms/internal/ads/zzety;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzety;->zza()Lcom/google/android/gms/internal/ads/zzesy;

    move-result-object v2

    .line 7
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbnx;->zza:Lcom/google/android/gms/internal/ads/zzbnu;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbnx;->zzb:Lcom/google/android/gms/internal/ads/zzbns;

    .line 8
    const-string v5, "google.afma.request.getSignals"

    invoke-virtual {v0, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzboa;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbnt;Lcom/google/android/gms/internal/ads/zzbns;)Lcom/google/android/gms/internal/ads/zzbnq;

    move-result-object v0

    const/16 v3, 0x16

    .line 9
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzfgb;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfgc;

    move-result-object v1

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzety;->zze()Lcom/google/android/gms/internal/ads/zzfft;

    move-result-object v3

    .line 11
    sget-object v4, Lcom/google/android/gms/internal/ads/zzffn;->zzl:Lcom/google/android/gms/internal/ads/zzffn;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzbuy;->zza:Landroid/os/Bundle;

    .line 12
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzffl;->zzb(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfgi;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzfgi;-><init>(Lcom/google/android/gms/internal/ads/zzfgc;)V

    .line 13
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzffj;->zze(Lcom/google/android/gms/internal/ads/zzfex;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdyn;

    invoke-direct {v4, v2, p1}, Lcom/google/android/gms/internal/ads/zzdyn;-><init>(Lcom/google/android/gms/internal/ads/zzesy;Lcom/google/android/gms/internal/ads/zzbuy;)V

    .line 14
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzffj;->zzf(Lcom/google/android/gms/internal/ads/zzgaz;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object p1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzffn;->zzm:Lcom/google/android/gms/internal/ads/zzffn;

    .line 15
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzffj;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzffj;->zzf(Lcom/google/android/gms/internal/ads/zzgaz;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzffj;->zza()Lcom/google/android/gms/internal/ads/zzfez;

    move-result-object p1

    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzety;->zzf()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object p2

    const-string v0, "ad_types"

    .line 19
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfgn;->zzd(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfgn;

    const-string v0, "extras"

    .line 20
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfgn;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfgn;

    .line 21
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzfgm;->zzb(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzfgc;)V

    .line 22
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbei;->zzf:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzc:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 23
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyk;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzdyk;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzb:Lcom/google/android/gms/internal/ads/zzgcd;

    invoke-interface {p1, v0, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzbuq;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdyu;->zzb(Lcom/google/android/gms/internal/ads/zzbuy;I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdyu;->zzq(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbuq;Lcom/google/android/gms/internal/ads/zzbuy;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzbuq;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzcq:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbuy;->zzm:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdqm;->zzg:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdyu;->zzd(Lcom/google/android/gms/internal/ads/zzbuy;I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 7
    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdyu;->zzq(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbuq;Lcom/google/android/gms/internal/ads/zzbuy;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzbuq;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzcq:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbuy;->zzm:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdqm;->zzg:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdyu;->zzc(Lcom/google/android/gms/internal/ads/zzbuy;I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 7
    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdyu;->zzq(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbuq;Lcom/google/android/gms/internal/ads/zzbuy;)V

    .line 8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbei;->zze:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzc:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdyk;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdyk;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzb:Lcom/google/android/gms/internal/ads/zzgcd;

    invoke-interface {v0, p2, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    return-void
.end method

.method public final zzh(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbuq;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdyu;->zzj(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdyu;->zzq(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbuq;Lcom/google/android/gms/internal/ads/zzbuy;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzbui;Lcom/google/android/gms/internal/ads/zzbur;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbew;->zza:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, ""

    .line 2
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzbur;->zzf(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbui;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    const-string p2, "Service can\'t call client"

    .line 3
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzd:Lcom/google/android/gms/internal/ads/zzckk;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzckk;->zzD()Lcom/google/android/gms/internal/ads/zzbyp;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbui;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdyo;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdyo;-><init>(Lcom/google/android/gms/internal/ads/zzdyu;Lcom/google/android/gms/internal/ads/zzbur;Lcom/google/android/gms/internal/ads/zzbui;)V

    .line 7
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 8
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgbo;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zzj(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbep;->zza:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Split request is disabled."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyp;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdyp;-><init>(Lcom/google/android/gms/internal/ads/zzdyu;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdyu;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdyr;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "URL to be removed not found for cache key: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
