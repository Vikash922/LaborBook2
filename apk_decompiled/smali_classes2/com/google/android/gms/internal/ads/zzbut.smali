.class public final synthetic Lcom/google/android/gms/internal/ads/zzbut;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzftl;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbuu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbuu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbut;->zza:Lcom/google/android/gms/internal/ads/zzbuu;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbut;->zza:Lcom/google/android/gms/internal/ads/zzbuu;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbuu;->zzb(Lcom/google/android/gms/internal/ads/zzbuu;Lorg/json/JSONObject;)Ljava/lang/Void;

    const/4 p1, 0x0

    return-object p1
.end method
