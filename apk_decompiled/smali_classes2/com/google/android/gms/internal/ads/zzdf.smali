.class public final Lcom/google/android/gms/internal/ads/zzdf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdq;

.field private zzc:Ljava/lang/Object;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzjf;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdg;Lcom/google/android/gms/internal/ads/zzjf;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p4, p2, v0}, Lcom/google/android/gms/internal/ads/zzdg;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdq;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdf;->zza:Lcom/google/android/gms/internal/ads/zzdq;

    .line 2
    invoke-interface {p4, p3, v0}, Lcom/google/android/gms/internal/ads/zzdg;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdq;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdf;->zzb:Lcom/google/android/gms/internal/ads/zzdq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdf;->zzc:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdf;->zzd:Lcom/google/android/gms/internal/ads/zzjf;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzdf;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->zzc:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdf;->zzc:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdf;->zzd:Lcom/google/android/gms/internal/ads/zzjf;

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzjf;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->zza:Lcom/google/android/gms/internal/ads/zzdq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdq;->zzi(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzc(Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzde;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzde;-><init>(Lcom/google/android/gms/internal/ads/zzdf;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdf;->zzb:Lcom/google/android/gms/internal/ads/zzdq;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdq;->zzi(Ljava/lang/Runnable;)Z

    return-void
.end method
