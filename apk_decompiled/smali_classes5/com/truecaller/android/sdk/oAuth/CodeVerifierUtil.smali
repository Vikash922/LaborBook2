.class public final Lcom/truecaller/android/sdk/oAuth/CodeVerifierUtil;
.super Ljava/lang/Object;
.source "CodeVerifierUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/android/sdk/oAuth/CodeVerifierUtil$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/truecaller/android/sdk/oAuth/CodeVerifierUtil;",
        "",
        "()V",
        "Companion",
        "sdk-external_googlePlayOAuthReleasePartner"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/truecaller/android/sdk/oAuth/CodeVerifierUtil$Companion;

.field private static final DEFAULT_CODE_VERIFIER_ENTROPY:I = 0x40

.field private static final PKCE_BASE64_ENCODE_SETTINGS:I = 0xb


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/android/sdk/oAuth/CodeVerifierUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/android/sdk/oAuth/CodeVerifierUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/truecaller/android/sdk/oAuth/CodeVerifierUtil;->Companion:Lcom/truecaller/android/sdk/oAuth/CodeVerifierUtil$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
