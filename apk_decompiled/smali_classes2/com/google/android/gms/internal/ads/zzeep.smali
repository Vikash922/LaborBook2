.class public final synthetic Lcom/google/android/gms/internal/ads/zzeep;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeeu;

.field public final synthetic zzb:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic zzc:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfbg;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzfau;

.field public final synthetic zzf:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeeu;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeep;->zza:Lcom/google/android/gms/internal/ads/zzeeu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeep;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeep;->zzc:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeep;->zzd:Lcom/google/android/gms/internal/ads/zzfbg;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeep;->zze:Lcom/google/android/gms/internal/ads/zzfau;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeep;->zzf:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeep;->zza:Lcom/google/android/gms/internal/ads/zzeeu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeep;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeep;->zzc:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeep;->zzd:Lcom/google/android/gms/internal/ads/zzfbg;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeep;->zze:Lcom/google/android/gms/internal/ads/zzfau;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeep;->zzf:Lorg/json/JSONObject;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeeu;->zzc(Lcom/google/android/gms/internal/ads/zzeeu;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdhl;

    move-result-object v0

    return-object v0
.end method
