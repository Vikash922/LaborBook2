.class public abstract Lcom/truecaller/android/sdk/oAuth/OAuthResponse;
.super Ljava/lang/Object;
.source "OAuthResponse.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/android/sdk/oAuth/OAuthResponse$Companion;,
        Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;,
        Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 \u00062\u00020\u0001:\u0003\u0006\u0007\u0008B\u000f\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0005\u0082\u0001\u0002\t\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/truecaller/android/sdk/oAuth/OAuthResponse;",
        "Landroid/os/Parcelable;",
        "isSuccessful",
        "",
        "(Z)V",
        "()Z",
        "Companion",
        "FailureResponse",
        "SuccessResponse",
        "Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;",
        "Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;",
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
.field public static final Companion:Lcom/truecaller/android/sdk/oAuth/OAuthResponse$Companion;

.field public static final OAUTH_RESPONSE_EXTRA:Ljava/lang/String; = "OAUTH_SDK_RESPONSE_EXTRA"


# instance fields
.field private final isSuccessful:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse;->Companion:Lcom/truecaller/android/sdk/oAuth/OAuthResponse$Companion;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean p1, p0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse;->isSuccessful:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final isSuccessful()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse;->isSuccessful:Z

    return v0
.end method
