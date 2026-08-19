.class public final Lcom/laborbook/base/AdUnitConstants;
.super Ljava/lang/Object;
.source "AdUnitConstants.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/base/AdUnitConstants$BannerAds;,
        Lcom/laborbook/base/AdUnitConstants$InterstitialAds;,
        Lcom/laborbook/base/AdUnitConstants$NativeAds;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003\u0006\u0007\u0008B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/laborbook/base/AdUnitConstants;",
        "",
        "<init>",
        "()V",
        "PUBLISHER_ID",
        "",
        "NativeAds",
        "BannerAds",
        "InterstitialAds",
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


# static fields
.field public static final INSTANCE:Lcom/laborbook/base/AdUnitConstants;

.field private static final PUBLISHER_ID:Ljava/lang/String; = "ca-app-pub-4991346658410627"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/laborbook/base/AdUnitConstants;

    invoke-direct {v0}, Lcom/laborbook/base/AdUnitConstants;-><init>()V

    sput-object v0, Lcom/laborbook/base/AdUnitConstants;->INSTANCE:Lcom/laborbook/base/AdUnitConstants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
