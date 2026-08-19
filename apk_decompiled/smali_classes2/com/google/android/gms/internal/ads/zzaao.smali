.class public final Lcom/google/android/gms/internal/ads/zzaao;
.super Landroid/view/Surface;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field private static zzb:I

.field private static zzc:Z


# instance fields
.field public final zza:Z

.field private final zzd:Lcom/google/android/gms/internal/ads/zzaam;

.field private zze:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaam;Landroid/graphics/SurfaceTexture;ZLcom/google/android/gms/internal/ads/zzaan;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaao;->zzd:Lcom/google/android/gms/internal/ads/zzaam;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzaao;->zza:Z

    return-void
.end method

.method public static zza(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzaao;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaao;->zzb(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    .line 2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzaam;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaam;-><init>()V

    if-eqz p1, :cond_2

    sget v0, Lcom/google/android/gms/internal/ads/zzaao;->zzb:I

    .line 3
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzaam;->zza(I)Lcom/google/android/gms/internal/ads/zzaao;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized zzb(Landroid/content/Context;)Z
    .locals 4

    const-class v0, Lcom/google/android/gms/internal/ads/zzaao;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzaao;->zzc:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdo;->zzb(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdo;->zzc()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    sput p0, Lcom/google/android/gms/internal/ads/zzaao;->zzb:I

    sput-boolean v3, Lcom/google/android/gms/internal/ads/zzaao;->zzc:Z

    :cond_2
    sget p0, Lcom/google/android/gms/internal/ads/zzaao;->zzb:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz p0, :cond_3

    return v3

    :cond_3
    return v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final release()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaao;->zzd:Lcom/google/android/gms/internal/ads/zzaam;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaao;->zze:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaam;->zzb()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaao;->zze:Z

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
