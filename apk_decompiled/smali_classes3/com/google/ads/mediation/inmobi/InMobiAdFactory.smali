.class public Lcom/google/ads/mediation/inmobi/InMobiAdFactory;
.super Ljava/lang/Object;
.source "InMobiAdFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInMobiAdViewHolder(Landroid/content/Context;)Lcom/google/ads/mediation/inmobi/InMobiAdViewHolder;
    .locals 2

    .line 19
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiAdViewHolder;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/google/ads/mediation/inmobi/InMobiAdViewHolder;-><init>(Landroid/widget/FrameLayout;)V

    return-object v0
.end method

.method public createInMobiBannerWrapper(Landroid/content/Context;Ljava/lang/Long;)Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;
    .locals 4

    .line 15
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;

    new-instance v1, Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Lcom/inmobi/ads/InMobiBanner;-><init>(Landroid/content/Context;J)V

    invoke-direct {v0, v1}, Lcom/google/ads/mediation/inmobi/InMobiBannerWrapper;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    return-object v0
.end method

.method public createInMobiInterstitialWrapper(Landroid/content/Context;Ljava/lang/Long;Lcom/inmobi/ads/listeners/InterstitialAdEventListener;)Lcom/google/ads/mediation/inmobi/InMobiInterstitialWrapper;
    .locals 4

    .line 24
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiInterstitialWrapper;

    new-instance v1, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3, p3}, Lcom/inmobi/ads/InMobiInterstitial;-><init>(Landroid/content/Context;JLcom/inmobi/ads/listeners/InterstitialAdEventListener;)V

    invoke-direct {v0, v1}, Lcom/google/ads/mediation/inmobi/InMobiInterstitialWrapper;-><init>(Lcom/inmobi/ads/InMobiInterstitial;)V

    return-object v0
.end method

.method public createInMobiNativeWrapper(Landroid/content/Context;Ljava/lang/Long;Lcom/inmobi/ads/listeners/NativeAdEventListener;)Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;
    .locals 4

    .line 29
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    new-instance v1, Lcom/inmobi/ads/InMobiNative;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3, p3}, Lcom/inmobi/ads/InMobiNative;-><init>(Landroid/content/Context;JLcom/inmobi/ads/listeners/NativeAdEventListener;)V

    invoke-direct {v0, v1}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;-><init>(Lcom/inmobi/ads/InMobiNative;)V

    return-object v0
.end method

.method public createInMobiNativeWrapper(Lcom/inmobi/ads/InMobiNative;)Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;
    .locals 1

    .line 33
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;

    invoke-direct {v0, p1}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;-><init>(Lcom/inmobi/ads/InMobiNative;)V

    return-object v0
.end method
