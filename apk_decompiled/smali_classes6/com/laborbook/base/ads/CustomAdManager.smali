.class public final Lcom/laborbook/base/ads/CustomAdManager;
.super Ljava/lang/Object;
.source "CustomAdManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0007R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/laborbook/base/ads/CustomAdManager;",
        "",
        "provider",
        "Lcom/laborbook/base/ads/CustomAdProvider;",
        "<init>",
        "(Lcom/laborbook/base/ads/CustomAdProvider;)V",
        "getCustomAdDataSync",
        "Lcom/laborbook/base/ads/CustomAdData;",
        "base_release"
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
.field private final provider:Lcom/laborbook/base/ads/CustomAdProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/laborbook/base/ads/CustomAdManager;-><init>(Lcom/laborbook/base/ads/CustomAdProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/laborbook/base/ads/CustomAdProvider;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/laborbook/base/ads/CustomAdManager;->provider:Lcom/laborbook/base/ads/CustomAdProvider;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/laborbook/base/ads/CustomAdProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Lcom/laborbook/base/ads/CustomAdManager;-><init>(Lcom/laborbook/base/ads/CustomAdProvider;)V

    return-void
.end method


# virtual methods
.method public final getCustomAdDataSync()Lcom/laborbook/base/ads/CustomAdData;
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/laborbook/base/ads/CustomAdManager;->provider:Lcom/laborbook/base/ads/CustomAdProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/laborbook/base/ads/CustomAdProvider;->getCustomAdData()Lcom/laborbook/base/ads/CustomAdData;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/laborbook/base/ads/CustomAdData;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/laborbook/base/ads/CustomAdData;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method
