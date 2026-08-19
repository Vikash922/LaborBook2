.class public final synthetic Lcom/google/android/gms/internal/ads/zzdmh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgaz;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdmt;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdmt;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zza:Lcom/google/android/gms/internal/ads/zzdmt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzc:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zza:Lcom/google/android/gms/internal/ads/zzdmt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzc:Lorg/json/JSONObject;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcel;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdmt;->zzf(Lcom/google/android/gms/internal/ads/zzdmt;Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzcel;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
