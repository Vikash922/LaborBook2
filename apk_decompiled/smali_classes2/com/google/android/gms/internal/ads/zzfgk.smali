.class final Lcom/google/android/gms/internal/ads/zzfgk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgbo;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfgn;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfgc;

.field final synthetic zzc:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzfgc;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgk;->zza:Lcom/google/android/gms/internal/ads/zzfgn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgk;->zzb:Lcom/google/android/gms/internal/ads/zzfgc;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzfgk;->zzc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgk;->zzb:Lcom/google/android/gms/internal/ads/zzfgc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfgc;->zzk()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgk;->zza:Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfgc;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfgc;

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfgc;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfgc;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lcom/google/android/gms/internal/ads/zzfgc;)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfgk;->zzc:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzh()V

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgk;->zzb:Lcom/google/android/gms/internal/ads/zzfgc;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzfgc;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfgc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgk;->zza:Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lcom/google/android/gms/internal/ads/zzfgc;)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfgk;->zzc:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgn;->zzh()V

    :cond_0
    return-void
.end method
