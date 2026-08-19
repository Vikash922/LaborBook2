.class public final synthetic Lcom/google/android/gms/internal/ads/zzjs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Landroid/content/Context;

.field public final synthetic zzb:Z

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzka;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzoz;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZLcom/google/android/gms/internal/ads/zzka;Lcom/google/android/gms/internal/ads/zzoz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zza:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzb:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzc:Lcom/google/android/gms/internal/ads/zzka;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzd:Lcom/google/android/gms/internal/ads/zzoz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzov;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ExoPlayerImpl"

    const-string v1, "MediaMetricsService unavailable."

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzb:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzc:Lcom/google/android/gms/internal/ads/zzka;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzka;->zzz(Lcom/google/android/gms/internal/ads/zzmj;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzd:Lcom/google/android/gms/internal/ads/zzoz;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzov;->zza()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzoz;->zzb(Landroid/media/metrics/LogSessionId;)V

    return-void
.end method
