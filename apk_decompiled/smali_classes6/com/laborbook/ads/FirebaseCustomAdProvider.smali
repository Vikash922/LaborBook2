.class public final Lcom/laborbook/ads/FirebaseCustomAdProvider;
.super Ljava/lang/Object;
.source "FirebaseCustomAdProvider.kt"

# interfaces
.implements Lcom/laborbook/base/ads/CustomAdProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/laborbook/ads/FirebaseCustomAdProvider;",
        "Lcom/laborbook/base/ads/CustomAdProvider;",
        "<init>",
        "()V",
        "remoteConfig",
        "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;",
        "getCustomAdData",
        "Lcom/laborbook/base/ads/CustomAdData;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/google/firebase/ktx/Firebase;->INSTANCE:Lcom/google/firebase/ktx/Firebase;

    invoke-static {v0}, Lcom/google/firebase/remoteconfig/ktx/RemoteConfigKt;->getRemoteConfig(Lcom/google/firebase/ktx/Firebase;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/ads/FirebaseCustomAdProvider;->remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    return-void
.end method


# virtual methods
.method public getCustomAdData()Lcom/laborbook/base/ads/CustomAdData;
    .locals 7

    .line 16
    const-string v0, "getString(...)"

    .line 17
    :try_start_0
    new-instance v1, Lcom/laborbook/base/ads/CustomAdData;

    .line 18
    iget-object v2, p0, Lcom/laborbook/ads/FirebaseCustomAdProvider;->remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    const-string v3, "custom_ad_enabled"

    invoke-virtual {v2, v3}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 19
    iget-object v3, p0, Lcom/laborbook/ads/FirebaseCustomAdProvider;->remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    const-string v4, "custom_ad_image_url"

    invoke-virtual {v3, v4}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v4, p0, Lcom/laborbook/ads/FirebaseCustomAdProvider;->remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    const-string v5, "custom_ad_redirect_url"

    invoke-virtual {v4, v5}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v5, p0, Lcom/laborbook/ads/FirebaseCustomAdProvider;->remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    const-string v6, "custom_ad_title"

    invoke-virtual {v5, v6}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/laborbook/base/ads/CustomAdData;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 25
    :catch_0
    new-instance v1, Lcom/laborbook/base/ads/CustomAdData;

    const/4 v0, 0x0

    const-string v2, ""

    invoke-direct {v1, v0, v2, v2, v2}, Lcom/laborbook/base/ads/CustomAdData;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method
