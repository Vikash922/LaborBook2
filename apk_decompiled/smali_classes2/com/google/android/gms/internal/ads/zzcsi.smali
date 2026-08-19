.class public final Lcom/google/android/gms/internal/ads/zzcsi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdaq;
.implements Lcom/google/android/gms/internal/ads/zzcwq;


# instance fields
.field private final zza:Lcom/google/android/gms/common/util/Clock;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcsk;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfbp;

.field private final zzd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzcsk;Lcom/google/android/gms/internal/ads/zzfbp;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zza:Lcom/google/android/gms/common/util/Clock;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzb:Lcom/google/android/gms/internal/ads/zzcsk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzc:Lcom/google/android/gms/internal/ads/zzfbp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zza:Lcom/google/android/gms/common/util/Clock;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzb:Lcom/google/android/gms/internal/ads/zzcsk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzd:Ljava/lang/String;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcsk;->zze(Ljava/lang/String;J)V

    return-void
.end method

.method public final zzt()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zza:Lcom/google/android/gms/common/util/Clock;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzd:Ljava/lang/String;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzc:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzb:Lcom/google/android/gms/internal/ads/zzcsk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfbp;->zzf:Ljava/lang/String;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcsk;->zzd(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
