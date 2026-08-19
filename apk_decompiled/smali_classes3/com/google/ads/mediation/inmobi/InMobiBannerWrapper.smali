.class public Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;
.super Ljava/lang/Object;
.source "InMobiBannerWrapper.java"


# instance fields
.field private final inMobiBanner:Lcom/inmobi/ads/InMobiBanner;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->inMobiBanner:Lcom/inmobi/ads/InMobiBanner;

    return-void
.end method


# virtual methods
.method public getInMobiBanner()Lcom/inmobi/ads/InMobiBanner;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->inMobiBanner:Lcom/inmobi/ads/InMobiBanner;

    return-object v0
.end method

.method public load()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->inMobiBanner:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiBanner;->load()V

    return-void
.end method

.method public load([B)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->inMobiBanner:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/InMobiBanner;->load([B)V

    return-void
.end method

.method public setAnimationType(Lcom/inmobi/ads/InMobiBanner$AnimationType;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->inMobiBanner:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/InMobiBanner;->setAnimationType(Lcom/inmobi/ads/InMobiBanner$AnimationType;)V

    return-void
.end method

.method public setEnableAutoRefresh(Ljava/lang/Boolean;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->inMobiBanner:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/InMobiBanner;->setEnableAutoRefresh(Z)V

    return-void
.end method

.method public setExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->inMobiBanner:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/InMobiBanner;->setExtras(Ljava/util/Map;)V

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->inMobiBanner:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/InMobiBanner;->setKeywords(Ljava/lang/String;)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->inMobiBanner:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/InMobiBanner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setListener(Lcom/inmobi/ads/listeners/BannerAdEventListener;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->inMobiBanner:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/InMobiBanner;->setListener(Lcom/inmobi/ads/listeners/BannerAdEventListener;)V

    return-void
.end method

.method public setWatermarkData(Lcom/inmobi/ads/WatermarkData;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;->inMobiBanner:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/InMobiBanner;->setWatermarkData(Lcom/inmobi/ads/WatermarkData;)V

    return-void
.end method
