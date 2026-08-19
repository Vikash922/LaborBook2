.class public final Lcom/google/android/gms/internal/ads/zzzs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzzl;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzzl;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzaaa;

.field private zzd:Lcom/google/android/gms/internal/ads/zzzm;

.field private zze:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzl;

    const/4 v1, 0x2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzzl;-><init>(IJLcom/google/android/gms/internal/ads/zzzr;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzzs;->zza:Lcom/google/android/gms/internal/ads/zzzl;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzl;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzzl;-><init>(IJLcom/google/android/gms/internal/ads/zzzr;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzzs;->zzb:Lcom/google/android/gms/internal/ads/zzzl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "ExoPlayer:Loader:ProgressiveMediaPeriod"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeu;->zzF(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzzj;-><init>()V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzzy;->zza(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdk;)Lcom/google/android/gms/internal/ads/zzaaa;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzs;->zzc:Lcom/google/android/gms/internal/ads/zzaaa;

    return-void
.end method

.method public static zzb(ZJ)Lcom/google/android/gms/internal/ads/zzzl;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzzl;-><init>(IJLcom/google/android/gms/internal/ads/zzzr;)V

    return-object v0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzzs;)Lcom/google/android/gms/internal/ads/zzzm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzs;->zzd:Lcom/google/android/gms/internal/ads/zzzm;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzzs;)Lcom/google/android/gms/internal/ads/zzaaa;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzs;->zzc:Lcom/google/android/gms/internal/ads/zzaaa;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzzs;Lcom/google/android/gms/internal/ads/zzzm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzs;->zzd:Lcom/google/android/gms/internal/ads/zzzm;

    return-void
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzzs;Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzs;->zze:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzzn;Lcom/google/android/gms/internal/ads/zzzk;I)J
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Landroid/os/Looper;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzs;->zze:Ljava/io/IOException;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v10, Lcom/google/android/gms/internal/ads/zzzm;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzzm;-><init>(Lcom/google/android/gms/internal/ads/zzzs;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzzn;Lcom/google/android/gms/internal/ads/zzzk;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v10, p1, p2}, Lcom/google/android/gms/internal/ads/zzzm;->zzc(J)V

    return-wide v8
.end method

.method public final zzg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzs;->zzd:Lcom/google/android/gms/internal/ads/zzzm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzzm;->zza(Z)V

    return-void
.end method

.method public final zzh()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzs;->zze:Ljava/io/IOException;

    return-void
.end method

.method public final zzi(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzs;->zze:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzs;->zzd:Lcom/google/android/gms/internal/ads/zzzm;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzm;->zzb(I)V

    :cond_0
    return-void

    .line 1
    :cond_1
    throw v0
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzzo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzs;->zzd:Lcom/google/android/gms/internal/ads/zzzm;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzzm;->zza(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzs;->zzc:Lcom/google/android/gms/internal/ads/zzaaa;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzzp;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzzp;-><init>(Lcom/google/android/gms/internal/ads/zzzo;)V

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaaa;->execute(Ljava/lang/Runnable;)V

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaaa;->zza()V

    return-void
.end method

.method public final zzk()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzs;->zze:Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzl()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzs;->zzd:Lcom/google/android/gms/internal/ads/zzzm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
