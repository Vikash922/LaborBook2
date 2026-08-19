.class public final synthetic Lcom/google/android/gms/internal/ads/zzett;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzftl;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzetv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzetv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzett;->zza:Lcom/google/android/gms/internal/ads/zzetv;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzett;->zza:Lcom/google/android/gms/internal/ads/zzetv;

    check-cast p1, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzetv;->zzc(Lcom/google/android/gms/internal/ads/zzetv;Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Lcom/google/android/gms/internal/ads/zzetw;

    move-result-object p1

    return-object p1
.end method
