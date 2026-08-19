.class public final Lcom/laborbook/base/AdUnitConstants$BannerAds;
.super Ljava/lang/Object;
.source "AdUnitConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/base/AdUnitConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BannerAds"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/laborbook/base/AdUnitConstants$BannerAds;",
        "",
        "<init>",
        "()V",
        "HOME_PAGE",
        "",
        "TRANSACTION_STATUS_KEEP",
        "TRANSACTION_STATUS_EXPENSE",
        "TRANSACTION_STATUS_INCOME",
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
.field public static final HOME_PAGE:Ljava/lang/String; = "ca-app-pub-4991346658410627/7843571317"

.field public static final INSTANCE:Lcom/laborbook/base/AdUnitConstants$BannerAds;

.field public static final TRANSACTION_STATUS_EXPENSE:Ljava/lang/String; = "ca-app-pub-4991346658410627/1765482230"

.field public static final TRANSACTION_STATUS_INCOME:Ljava/lang/String; = "ca-app-pub-4991346658410627/2079007696"

.field public static final TRANSACTION_STATUS_KEEP:Ljava/lang/String; = "ca-app-pub-4991346658410627/4760367156"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/laborbook/base/AdUnitConstants$BannerAds;

    invoke-direct {v0}, Lcom/laborbook/base/AdUnitConstants$BannerAds;-><init>()V

    sput-object v0, Lcom/laborbook/base/AdUnitConstants$BannerAds;->INSTANCE:Lcom/laborbook/base/AdUnitConstants$BannerAds;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
