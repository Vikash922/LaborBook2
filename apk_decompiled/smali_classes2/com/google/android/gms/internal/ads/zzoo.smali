.class public final Lcom/google/android/gms/internal/ads/zzoo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzox;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzfuo;

.field private static final zzb:Ljava/util/Random;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzbk;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbj;

.field private final zze:Ljava/util/HashMap;

.field private zzf:Lcom/google/android/gms/internal/ads/zzow;

.field private zzg:Lcom/google/android/gms/internal/ads/zzbl;

.field private zzh:Ljava/lang/String;

.field private zzi:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzom;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzom;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzoo;->zza:Lcom/google/android/gms/internal/ads/zzfuo;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzoo;->zzb:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfuo;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzc:Lcom/google/android/gms/internal/ads/zzbk;

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzd:Lcom/google/android/gms/internal/ads/zzbj;

    new-instance p1, Ljava/util/HashMap;

    .line 3
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zze:Ljava/util/HashMap;

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbl;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzg:Lcom/google/android/gms/internal/ads/zzbl;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzi:J

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzoo;)J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoo;->zzl()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzoo;)Lcom/google/android/gms/internal/ads/zzbj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzd:Lcom/google/android/gms/internal/ads/zzbj;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzoo;)Lcom/google/android/gms/internal/ads/zzbk;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzc:Lcom/google/android/gms/internal/ads/zzbk;

    return-object p0
.end method

.method public static synthetic zzd()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzoo;->zzn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final zzl()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zze:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzon;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzon;->zzb(Lcom/google/android/gms/internal/ads/zzon;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzon;->zzb(Lcom/google/android/gms/internal/ads/zzon;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzi:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method private final zzm(ILcom/google/android/gms/internal/ads/zzuy;)Lcom/google/android/gms/internal/ads/zzon;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zze:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzon;

    .line 2
    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/ads/zzon;->zzg(ILcom/google/android/gms/internal/ads/zzuy;)V

    .line 3
    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/ads/zzon;->zzj(ILcom/google/android/gms/internal/ads/zzuy;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzon;->zzb(Lcom/google/android/gms/internal/ads/zzon;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_2

    cmp-long v8, v6, v2

    if-gez v8, :cond_1

    goto :goto_1

    :cond_1
    if-nez v8, :cond_0

    .line 5
    sget v6, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    move-object v6, v4

    check-cast v6, Lcom/google/android/gms/internal/ads/zzon;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzon;->zzc(Lcom/google/android/gms/internal/ads/zzon;)Lcom/google/android/gms/internal/ads/zzuy;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzon;->zzc(Lcom/google/android/gms/internal/ads/zzon;)Lcom/google/android/gms/internal/ads/zzuy;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_2
    :goto_1
    move-object v4, v5

    move-wide v2, v6

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzoo;->zzn()Ljava/lang/String;

    move-result-object v1

    .line 7
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzon;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzon;-><init>(Lcom/google/android/gms/internal/ads/zzoo;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzuy;)V

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_4
    return-object v4
.end method

.method private static zzn()Ljava/lang/String;
    .locals 2

    const/16 v0, 0xc

    .line 1
    new-array v0, v0, [B

    sget-object v1, Lcom/google/android/gms/internal/ads/zzoo;->zzb:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    const/16 v1, 0xa

    .line 2
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final zzo(Lcom/google/android/gms/internal/ads/zzon;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzon;->zzb(Lcom/google/android/gms/internal/ads/zzon;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzon;->zzb(Lcom/google/android/gms/internal/ads/zzon;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzi:J

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzh:Ljava/lang/String;

    return-void
.end method

.method private final zzp(Lcom/google/android/gms/internal/ads/zzmh;)V
    .locals 8
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzmh;->zzb:Lcom/google/android/gms/internal/ads/zzbl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzh:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zze:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzon;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzon;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzoo;->zzo(Lcom/google/android/gms/internal/ads/zzon;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zze:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzh:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzon;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzmh;->zzc:I

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzmh;->zzd:Lcom/google/android/gms/internal/ads/zzuy;

    .line 5
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzoo;->zzm(ILcom/google/android/gms/internal/ads/zzuy;)Lcom/google/android/gms/internal/ads/zzon;

    move-result-object v3

    .line 6
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzon;->zzd(Lcom/google/android/gms/internal/ads/zzon;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzh:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzoo;->zzi(Lcom/google/android/gms/internal/ads/zzmh;)V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzuy;->zzb()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzuy;->zzd:J

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzon;->zzb(Lcom/google/android/gms/internal/ads/zzon;)J

    move-result-wide v6

    cmp-long p1, v6, v4

    if-nez p1, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzon;->zzc(Lcom/google/android/gms/internal/ads/zzon;)Lcom/google/android/gms/internal/ads/zzuy;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzon;->zzc(Lcom/google/android/gms/internal/ads/zzon;)Lcom/google/android/gms/internal/ads/zzuy;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzuy;->zzb:I

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzuy;->zzb:I

    if-ne p1, v4, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzon;->zzc(Lcom/google/android/gms/internal/ads/zzon;)Lcom/google/android/gms/internal/ads/zzuy;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzuy;->zzc:I

    iget v0, v2, Lcom/google/android/gms/internal/ads/zzuy;->zzc:I

    if-eq p1, v0, :cond_2

    :cond_1
    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzuy;->zza:Ljava/lang/Object;

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzuy;->zzd:J

    new-instance v0, Lcom/google/android/gms/internal/ads/zzuy;

    invoke-direct {v0, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzuy;-><init>(Ljava/lang/Object;J)V

    .line 9
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzoo;->zzm(ILcom/google/android/gms/internal/ads/zzuy;)Lcom/google/android/gms/internal/ads/zzon;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzon;->zzd(Lcom/google/android/gms/internal/ads/zzon;)Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzon;->zzd(Lcom/google/android/gms/internal/ads/zzon;)Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public final declared-synchronized zze()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzh:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzf(Lcom/google/android/gms/internal/ads/zzbl;Lcom/google/android/gms/internal/ads/zzuy;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzuy;->zza:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzd:Lcom/google/android/gms/internal/ads/zzbj;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbl;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbj;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbj;->zzc:I

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzoo;->zzm(ILcom/google/android/gms/internal/ads/zzuy;)Lcom/google/android/gms/internal/ads/zzon;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzon;->zzd(Lcom/google/android/gms/internal/ads/zzon;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzg(Lcom/google/android/gms/internal/ads/zzmh;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzh:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zze:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzon;

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzon;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzoo;->zzo(Lcom/google/android/gms/internal/ads/zzon;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1

    .line 1
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zze:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzon;

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzon;->zzi(Lcom/google/android/gms/internal/ads/zzon;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzf:Lcom/google/android/gms/internal/ads/zzow;

    if-eqz v2, :cond_2

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzon;->zzd(Lcom/google/android/gms/internal/ads/zzon;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2, p1, v1, v3}, Lcom/google/android/gms/internal/ads/zzow;->zzv(Lcom/google/android/gms/internal/ads/zzmh;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 8
    :cond_3
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

.method public final zzh(Lcom/google/android/gms/internal/ads/zzow;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzf:Lcom/google/android/gms/internal/ads/zzow;

    return-void
.end method

.method public final declared-synchronized zzi(Lcom/google/android/gms/internal/ads/zzmh;)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzf:Lcom/google/android/gms/internal/ads/zzow;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzmh;->zzb:Lcom/google/android/gms/internal/ads/zzbl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzmh;->zzd:Lcom/google/android/gms/internal/ads/zzuy;

    if-eqz v1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoo;->zzl()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzuy;->zzd:J

    cmp-long v2, v4, v2

    if-ltz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzoo;->zze:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzh:Ljava/lang/String;

    .line 3
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzon;

    if-eqz v2, :cond_1

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzon;->zzb(Lcom/google/android/gms/internal/ads/zzon;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzon;->zza(Lcom/google/android/gms/internal/ads/zzon;)I

    move-result v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzmh;->zzc:I

    if-ne v2, v3, :cond_5

    :cond_1
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzmh;->zzc:I

    .line 5
    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/internal/ads/zzoo;->zzm(ILcom/google/android/gms/internal/ads/zzuy;)Lcom/google/android/gms/internal/ads/zzon;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzh:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 6
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzon;->zzd(Lcom/google/android/gms/internal/ads/zzon;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzh:Ljava/lang/String;

    :cond_2
    const/4 v4, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzuy;->zzb()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzuy;->zza:Ljava/lang/Object;

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzuy;->zzd:J

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzuy;->zzb:I

    new-instance v8, Lcom/google/android/gms/internal/ads/zzuy;

    invoke-direct {v8, v5, v6, v7, v1}, Lcom/google/android/gms/internal/ads/zzuy;-><init>(Ljava/lang/Object;JI)V

    .line 7
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/ads/zzoo;->zzm(ILcom/google/android/gms/internal/ads/zzuy;)Lcom/google/android/gms/internal/ads/zzon;

    move-result-object v2

    .line 8
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzon;->zzi(Lcom/google/android/gms/internal/ads/zzon;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 9
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/zzon;->zzf(Lcom/google/android/gms/internal/ads/zzon;Z)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzd:Lcom/google/android/gms/internal/ads/zzbj;

    .line 10
    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzbl;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbj;)Lcom/google/android/gms/internal/ads/zzbj;

    .line 11
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzbj;->zzg(I)J

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeu;->zzv(J)J

    move-result-wide v5

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeu;->zzv(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 12
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 13
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzon;->zzd(Lcom/google/android/gms/internal/ads/zzon;)Ljava/lang/String;

    .line 14
    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzon;->zzi(Lcom/google/android/gms/internal/ads/zzon;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 15
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzon;->zzf(Lcom/google/android/gms/internal/ads/zzon;Z)V

    .line 16
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzon;->zzd(Lcom/google/android/gms/internal/ads/zzon;)Ljava/lang/String;

    .line 17
    :cond_4
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzon;->zzd(Lcom/google/android/gms/internal/ads/zzon;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzon;->zzh(Lcom/google/android/gms/internal/ads/zzon;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 18
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzon;->zze(Lcom/google/android/gms/internal/ads/zzon;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzf:Lcom/google/android/gms/internal/ads/zzow;

    .line 19
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzon;->zzd(Lcom/google/android/gms/internal/ads/zzon;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzow;->zzu(Lcom/google/android/gms/internal/ads/zzmh;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1
    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    :cond_6
    const/4 p1, 0x0

    .line 20
    :try_start_1
    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzj(Lcom/google/android/gms/internal/ads/zzmh;I)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzf:Lcom/google/android/gms/internal/ads/zzow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zze:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzon;

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzon;->zzk(Lcom/google/android/gms/internal/ads/zzmh;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzon;->zzi(Lcom/google/android/gms/internal/ads/zzon;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzon;->zzd(Lcom/google/android/gms/internal/ads/zzon;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzh:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez p2, :cond_1

    if-eqz v2, :cond_1

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzon;->zzh(Lcom/google/android/gms/internal/ads/zzon;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v2, :cond_2

    .line 9
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzoo;->zzo(Lcom/google/android/gms/internal/ads/zzon;)V

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzf:Lcom/google/android/gms/internal/ads/zzow;

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzon;->zzd(Lcom/google/android/gms/internal/ads/zzon;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p1, v1, v3}, Lcom/google/android/gms/internal/ads/zzow;->zzv(Lcom/google/android/gms/internal/ads/zzmh;Ljava/lang/String;Z)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzoo;->zzp(Lcom/google/android/gms/internal/ads/zzmh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 12
    :try_start_1
    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzk(Lcom/google/android/gms/internal/ads/zzmh;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzf:Lcom/google/android/gms/internal/ads/zzow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzg:Lcom/google/android/gms/internal/ads/zzbl;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzmh;->zzb:Lcom/google/android/gms/internal/ads/zzbl;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzg:Lcom/google/android/gms/internal/ads/zzbl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zze:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzon;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzg:Lcom/google/android/gms/internal/ads/zzbl;

    .line 4
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzon;->zzl(Lcom/google/android/gms/internal/ads/zzbl;Lcom/google/android/gms/internal/ads/zzbl;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzon;->zzk(Lcom/google/android/gms/internal/ads/zzmh;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzon;->zzi(Lcom/google/android/gms/internal/ads/zzon;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzon;->zzd(Lcom/google/android/gms/internal/ads/zzon;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzh:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzoo;->zzo(Lcom/google/android/gms/internal/ads/zzon;)V

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzf:Lcom/google/android/gms/internal/ads/zzow;

    .line 10
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzon;->zzd(Lcom/google/android/gms/internal/ads/zzon;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v3, p1, v2, v4}, Lcom/google/android/gms/internal/ads/zzow;->zzv(Lcom/google/android/gms/internal/ads/zzmh;Ljava/lang/String;Z)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzoo;->zzp(Lcom/google/android/gms/internal/ads/zzmh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 12
    :try_start_1
    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
