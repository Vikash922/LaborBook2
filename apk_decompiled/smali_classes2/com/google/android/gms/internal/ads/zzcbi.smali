.class final Lcom/google/android/gms/internal/ads/zzcbi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcau;

.field private zzb:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcau;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzb:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zza:Lcom/google/android/gms/internal/ads/zzcau;

    return-void
.end method

.method private final zzc()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfqf;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfqf;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfqf;

    const-wide/16 v1, 0xfa

    .line 2
    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfqf;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzb:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zza:Lcom/google/android/gms/internal/ads/zzcau;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcau;->zzt()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcbi;->zzc()V

    :cond_0
    return-void
.end method

.method public final zza()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zza:Lcom/google/android/gms/internal/ads/zzcau;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcau;->zzt()V

    return-void
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzb:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcbi;->zzc()V

    return-void
.end method
