.class public final Lcom/google/android/gms/internal/ads/zzfkn;
.super Landroid/database/ContentObserver;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Landroid/media/AudioManager;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfkz;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfkk;Lcom/google/android/gms/internal/ads/zzfkz;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/high16 p3, -0x40800000    # -1.0f

    .line 2
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkn;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkn;->zza:Landroid/content/Context;

    const-string p1, "audio"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkn;->zzb:Landroid/media/AudioManager;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfkn;->zzd:Lcom/google/android/gms/internal/ads/zzfkz;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzfkn;)F
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfkn;->zzb:Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 2
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v1

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float v1, v0, p0

    if-lez v1, :cond_1

    move v0, p0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzfkn;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfkn;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzfkn;)Lcom/google/android/gms/internal/ads/zzfkz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfkn;->zzd:Lcom/google/android/gms/internal/ads/zzfkz;

    return-object p0
.end method

.method private final zzf()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfkm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfkm;-><init>(Lcom/google/android/gms/internal/ads/zzfkn;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfkn;->zzf()V

    return-void
.end method

.method public final zzc()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfkn;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkn;->zza:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final zzd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkn;->zza:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
