.class final Lcom/google/android/gms/internal/ads/zzbhs;
.super Lcom/google/android/gms/internal/ads/zzbgz;
.source "com.google.android.gms:play-services-ads-api@@24.2.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbhu;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbhu;Lcom/google/android/gms/internal/ads/zzbht;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zza:Lcom/google/android/gms/internal/ads/zzbhu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgz;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbgn;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zza:Lcom/google/android/gms/internal/ads/zzbhu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbhu;->zzb(Lcom/google/android/gms/internal/ads/zzbhu;)Lcom/google/android/gms/ads/formats/zzg;

    move-result-object v1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhu;->zze(Lcom/google/android/gms/internal/ads/zzbhu;Lcom/google/android/gms/internal/ads/zzbgn;)Lcom/google/android/gms/internal/ads/zzbgo;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/ads/formats/zzg;->zzc(Lcom/google/android/gms/internal/ads/zzbgo;)V

    return-void
.end method
