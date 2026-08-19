.class public final Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/configs/TelemetryConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LandingPageConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;",
        "",
        "()V",
        "maxFunnelsToTrackPerAd",
        "",
        "getMaxFunnelsToTrackPerAd",
        "()I",
        "setMaxFunnelsToTrackPerAd",
        "(I)V",
        "nativeEnabled",
        "",
        "getNativeEnabled",
        "()Z",
        "setNativeEnabled",
        "(Z)V",
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
.field private maxFunnelsToTrackPerAd:I

.field private nativeEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 4
    iput v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;->maxFunnelsToTrackPerAd:I

    return-void
.end method


# virtual methods
.method public final getMaxFunnelsToTrackPerAd()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;->maxFunnelsToTrackPerAd:I

    return v0
.end method

.method public final getNativeEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;->nativeEnabled:Z

    return v0
.end method

.method public final setMaxFunnelsToTrackPerAd(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;->maxFunnelsToTrackPerAd:I

    return-void
.end method

.method public final setNativeEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;->nativeEnabled:Z

    return-void
.end method
