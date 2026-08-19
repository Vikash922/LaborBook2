.class public final synthetic Lcom/google/android/gms/ads/internal/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgaz;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/ads/internal/zzf;

.field public final synthetic zzb:Ljava/lang/Long;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzdre;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfgc;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzfgq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/internal/zzf;Ljava/lang/Long;Lcom/google/android/gms/internal/ads/zzdre;Lcom/google/android/gms/internal/ads/zzfgc;Lcom/google/android/gms/internal/ads/zzfgq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzd;->zza:Lcom/google/android/gms/ads/internal/zzf;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzd;->zzb:Ljava/lang/Long;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzd;->zzc:Lcom/google/android/gms/internal/ads/zzdre;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzd;->zzd:Lcom/google/android/gms/internal/ads/zzfgc;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzd;->zze:Lcom/google/android/gms/internal/ads/zzfgq;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzd;->zza:Lcom/google/android/gms/ads/internal/zzf;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzd;->zzb:Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzd;->zzc:Lcom/google/android/gms/internal/ads/zzdre;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzd;->zzd:Lcom/google/android/gms/internal/ads/zzfgc;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzd;->zze:Lcom/google/android/gms/internal/ads/zzfgq;

    move-object v5, p1

    check-cast v5, Lorg/json/JSONObject;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzf;->zza(Lcom/google/android/gms/ads/internal/zzf;Ljava/lang/Long;Lcom/google/android/gms/internal/ads/zzdre;Lcom/google/android/gms/internal/ads/zzfgc;Lcom/google/android/gms/internal/ads/zzfgq;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
