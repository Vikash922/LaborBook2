.class public final synthetic Lcom/google/android/gms/internal/ads/zzcnd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcne;

.field public final synthetic zzb:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcne;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnd;->zza:Lcom/google/android/gms/internal/ads/zzcne;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnd;->zzb:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnd;->zza:Lcom/google/android/gms/internal/ads/zzcne;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnd;->zzb:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcne;->zza(Lcom/google/android/gms/internal/ads/zzcne;Lorg/json/JSONObject;)V

    return-void
.end method
