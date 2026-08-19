.class public final synthetic Lcom/google/android/gms/internal/ads/zzeys;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeyw;

.field public final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zze;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeyw;Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeys;->zza:Lcom/google/android/gms/internal/ads/zzeyw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeys;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeys;->zza:Lcom/google/android/gms/internal/ads/zzeyw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyw;->zze:Lcom/google/android/gms/internal/ads/zzeyx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeyx;->zzc(Lcom/google/android/gms/internal/ads/zzeyx;)Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeys;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzejr;->zzdz(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method
