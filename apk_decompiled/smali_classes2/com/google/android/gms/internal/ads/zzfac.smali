.class public final synthetic Lcom/google/android/gms/internal/ads/zzfac;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfae;

.field public final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zze;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfae;Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfac;->zza:Lcom/google/android/gms/internal/ads/zzfae;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfac;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfac;->zza:Lcom/google/android/gms/internal/ads/zzfae;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfae;->zze:Lcom/google/android/gms/internal/ads/zzfah;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfah;->zzf(Lcom/google/android/gms/internal/ads/zzfah;)Lcom/google/android/gms/internal/ads/zzezx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfac;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzezx;->zzdz(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method
