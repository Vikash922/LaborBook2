.class public final synthetic Lcom/google/android/gms/internal/ads/zzdxz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgaz;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdyc;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdyb;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbuy;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzgaz;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdyc;Lcom/google/android/gms/internal/ads/zzdyb;Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzgaz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxz;->zza:Lcom/google/android/gms/internal/ads/zzdyc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxz;->zzb:Lcom/google/android/gms/internal/ads/zzdyb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdxz;->zzc:Lcom/google/android/gms/internal/ads/zzbuy;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdxz;->zzd:Lcom/google/android/gms/internal/ads/zzgaz;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxz;->zza:Lcom/google/android/gms/internal/ads/zzdyc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxz;->zzb:Lcom/google/android/gms/internal/ads/zzdyb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxz;->zzc:Lcom/google/android/gms/internal/ads/zzbuy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdxz;->zzd:Lcom/google/android/gms/internal/ads/zzgaz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdxq;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdyc;->zzd(Lcom/google/android/gms/internal/ads/zzdyc;Lcom/google/android/gms/internal/ads/zzdyb;Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzgaz;Lcom/google/android/gms/internal/ads/zzdxq;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
