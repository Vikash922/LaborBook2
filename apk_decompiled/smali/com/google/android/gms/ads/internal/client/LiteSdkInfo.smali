.class public Lcom/google/android/gms/ads/internal/client/LiteSdkInfo;
.super Lcom/google/android/gms/ads/internal/client/zzcu;
.source "com.google.android.gms:play-services-ads-api@@24.2.0"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzcu;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdapterCreator()Lcom/google/android/gms/internal/ads/zzboy;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbou;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbou;-><init>()V

    return-object v0
.end method

.method public getLiteSdkVersion()Lcom/google/android/gms/ads/internal/client/zzex;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzex;

    const v1, 0xefaafb0

    const v2, 0xefc3650

    .line 2
    const-string v3, "24.2.0"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/client/zzex;-><init>(IILjava/lang/String;)V

    return-object v0
.end method
