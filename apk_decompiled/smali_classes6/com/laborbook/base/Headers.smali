.class public final Lcom/laborbook/base/Headers;
.super Ljava/lang/Object;
.source "Headers.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/base/Headers$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/laborbook/base/Headers;",
        "",
        "<init>",
        "()V",
        "Companion",
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
.field public static final AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final BEARER:Ljava/lang/String; = "Bearer"

.field public static final COMPANY_ID:Ljava/lang/String; = "x-lb-companyID"

.field public static final Companion:Lcom/laborbook/base/Headers$Companion;

.field public static final GENERIC_USER_ID:Ljava/lang/String; = "User-ID"

.field public static final USER_ID:Ljava/lang/String; = "x-lb-userID"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/base/Headers$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/base/Headers$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/base/Headers;->Companion:Lcom/laborbook/base/Headers$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
