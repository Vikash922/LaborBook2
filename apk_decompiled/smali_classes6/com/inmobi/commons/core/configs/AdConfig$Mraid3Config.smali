.class public final Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/configs/AdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mraid3Config"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000e\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;",
        "",
        "()V",
        "bannerEnabled",
        "",
        "getBannerEnabled",
        "()Z",
        "setBannerEnabled",
        "(Z)V",
        "exposureChangeInterval",
        "",
        "getExposureChangeInterval",
        "()J",
        "setExposureChangeInterval",
        "(J)V",
        "interstitialEnabled",
        "getInterstitialEnabled",
        "setInterstitialEnabled",
        "muteChangeInterval",
        "getMuteChangeInterval",
        "setMuteChangeInterval",
        "media_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private bannerEnabled:Z

.field private exposureChangeInterval:J

.field private interstitialEnabled:Z

.field private muteChangeInterval:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->bannerEnabled:Z

    .line 4
    iput-boolean v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->interstitialEnabled:Z

    const-wide/16 v0, 0x1f4

    .line 5
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->exposureChangeInterval:J

    .line 6
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->muteChangeInterval:J

    return-void
.end method


# virtual methods
.method public final getBannerEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->bannerEnabled:Z

    return v0
.end method

.method public final getExposureChangeInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->exposureChangeInterval:J

    return-wide v0
.end method

.method public final getInterstitialEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->interstitialEnabled:Z

    return v0
.end method

.method public final getMuteChangeInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->muteChangeInterval:J

    return-wide v0
.end method

.method public final setBannerEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->bannerEnabled:Z

    return-void
.end method

.method public final setExposureChangeInterval(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->exposureChangeInterval:J

    return-void
.end method

.method public final setInterstitialEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->interstitialEnabled:Z

    return-void
.end method

.method public final setMuteChangeInterval(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->muteChangeInterval:J

    return-void
.end method
