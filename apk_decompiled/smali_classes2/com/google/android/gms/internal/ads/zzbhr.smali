.class final Lcom/google/android/gms/internal/ads/zzbhr;
.super Lcom/google/android/gms/internal/ads/zzbgw;
.source "com.google.android.gms:play-services-ads-api@@24.2.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbhu;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbhu;Lcom/google/android/gms/internal/ads/zzbht;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhr;->zza:Lcom/google/android/gms/internal/ads/zzbhu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgw;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbgn;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhr;->zza:Lcom/google/android/gms/internal/ads/zzbhu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbhu;->zza(Lcom/google/android/gms/internal/ads/zzbhu;)Lcom/google/android/gms/ads/formats/zzf;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbhu;->zza(Lcom/google/android/gms/internal/ads/zzbhu;)Lcom/google/android/gms/ads/formats/zzf;

    move-result-object v1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhu;->zze(Lcom/google/android/gms/internal/ads/zzbhu;Lcom/google/android/gms/internal/ads/zzbgn;)Lcom/google/android/gms/internal/ads/zzbgo;

    move-result-object p1

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/ads/formats/zzf;->zzb(Lcom/google/android/gms/internal/ads/zzbgo;Ljava/lang/String;)V

    return-void
.end method
