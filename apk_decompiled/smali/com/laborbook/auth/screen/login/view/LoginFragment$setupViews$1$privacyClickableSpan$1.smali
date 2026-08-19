.class public final Lcom/laborbook/auth/screen/login/view/LoginFragment$setupViews$1$privacyClickableSpan$1;
.super Landroid/text/style/ClickableSpan;
.source "LoginFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/auth/screen/login/view/LoginFragment;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/laborbook/auth/screen/login/view/LoginFragment$setupViews$1$privacyClickableSpan$1",
        "Landroid/text/style/ClickableSpan;",
        "onClick",
        "",
        "widget",
        "Landroid/view/View;",
        "auth_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laborbook/auth/screen/login/view/LoginFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/auth/screen/login/view/LoginFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$setupViews$1$privacyClickableSpan$1;->this$0:Lcom/laborbook/auth/screen/login/view/LoginFragment;

    .line 155
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "widget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$setupViews$1$privacyClickableSpan$1;->this$0:Lcom/laborbook/auth/screen/login/view/LoginFragment;

    invoke-virtual {p1}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "https://laborbook.app/privacy-policy"

    invoke-virtual {p1, v0, v1}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->openUrlInCustomTab(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
