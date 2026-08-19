.class public final Lcom/laborbook/base/BaseConstants;
.super Ljava/lang/Object;
.source "BaseConstants.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/base/BaseConstants$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/laborbook/base/BaseConstants;",
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
.field public static final AMPLITUDE_API_KEY:Ljava/lang/String; = "d0a4a5ed1590d8bfa29213c6f9ab786f"

.field public static final APP_VERSION:Ljava/lang/String; = "1.6.0"

.field public static final BASE_URL:Ljava/lang/String; = "https://api.laborbook.app/"

.field public static final BASE_URL_SBOX:Ljava/lang/String; = "https://api.laborbook.app/"

.field public static final COUNTRY_CODE:Ljava/lang/String; = "91"

.field public static final Companion:Lcom/laborbook/base/BaseConstants$Companion;

.field public static final DEBUG:Z = false

.field public static final IN_MOBI_ACCOUNT_ID:Ljava/lang/String; = "c5554ec7671548e49b8fb4a624c315b9"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/base/BaseConstants$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/base/BaseConstants$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/base/BaseConstants;->Companion:Lcom/laborbook/base/BaseConstants$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
