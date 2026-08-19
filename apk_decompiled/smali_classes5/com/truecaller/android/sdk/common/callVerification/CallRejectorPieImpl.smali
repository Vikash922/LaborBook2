.class public final Lcom/truecaller/android/sdk/common/callVerification/CallRejectorPieImpl;
.super Ljava/lang/Object;
.source "CallRejector.kt"

# interfaces
.implements Lcom/truecaller/android/sdk/common/callVerification/CallRejector;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/truecaller/android/sdk/common/callVerification/CallRejectorPieImpl;",
        "Lcom/truecaller/android/sdk/common/callVerification/CallRejector;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "telecomManager",
        "Landroid/telecom/TelecomManager;",
        "reject",
        "",
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


# instance fields
.field private final telecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, "telecom"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.telecom.TelecomManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/telecom/TelecomManager;

    iput-object p1, p0, Lcom/truecaller/android/sdk/common/callVerification/CallRejectorPieImpl;->telecomManager:Landroid/telecom/TelecomManager;

    return-void
.end method


# virtual methods
.method public reject()Z
    .locals 1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/callVerification/CallRejectorPieImpl;->telecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
