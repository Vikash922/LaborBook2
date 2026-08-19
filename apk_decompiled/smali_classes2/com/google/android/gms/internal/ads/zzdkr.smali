.class public final synthetic Lcom/google/android/gms/internal/ads/zzdkr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzftl;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdkx;

.field public final synthetic zzb:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdkx;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkr;->zza:Lcom/google/android/gms/internal/ads/zzdkx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkr;->zzb:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkr;->zza:Lcom/google/android/gms/internal/ads/zzdkx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkr;->zzb:Lorg/json/JSONObject;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdkx;->zza(Lcom/google/android/gms/internal/ads/zzdkx;Lorg/json/JSONObject;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzbfd;

    move-result-object p1

    return-object p1
.end method
