.class public final Lcom/google/android/gms/internal/ads/zzddg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfio;

.field private final zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

.field private zzd:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfio;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfau;->zzp:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzddg;->zza:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzddg;->zzb:Lcom/google/android/gms/internal/ads/zzfio;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfau;->zzax:Lcom/google/android/gms/ads/internal/util/client/zzv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddg;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzddg;->zzd:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddg;->zzb:Lcom/google/android/gms/internal/ads/zzfio;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzddg;->zza:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzddg;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfio;->zze(Ljava/util/List;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzddg;->zzd:Z

    :cond_0
    return-void
.end method
