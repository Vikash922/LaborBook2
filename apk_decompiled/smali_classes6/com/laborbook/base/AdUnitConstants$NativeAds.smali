.class public final Lcom/laborbook/base/AdUnitConstants$NativeAds;
.super Ljava/lang/Object;
.source "AdUnitConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/base/AdUnitConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeAds"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/laborbook/base/AdUnitConstants$NativeAds;",
        "",
        "<init>",
        "()V",
        "EXPENSE_LIST",
        "",
        "INCOME_LIST",
        "STAFF_LIST",
        "CONTACTS_LIST",
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
.field public static final CONTACTS_LIST:Ljava/lang/String; = "ca-app-pub-4991346658410627/2868638273"

.field public static final EXPENSE_LIST:Ljava/lang/String; = "ca-app-pub-4991346658410627/8368376961"

.field public static final INCOME_LIST:Ljava/lang/String; = "ca-app-pub-4991346658410627/7055295298"

.field public static final INSTANCE:Lcom/laborbook/base/AdUnitConstants$NativeAds;

.field public static final STAFF_LIST:Ljava/lang/String; = "ca-app-pub-4991346658410627/9633233465"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/laborbook/base/AdUnitConstants$NativeAds;

    invoke-direct {v0}, Lcom/laborbook/base/AdUnitConstants$NativeAds;-><init>()V

    sput-object v0, Lcom/laborbook/base/AdUnitConstants$NativeAds;->INSTANCE:Lcom/laborbook/base/AdUnitConstants$NativeAds;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
