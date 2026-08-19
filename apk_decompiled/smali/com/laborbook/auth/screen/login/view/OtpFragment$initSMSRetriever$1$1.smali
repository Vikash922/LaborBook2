.class public final Lcom/laborbook/auth/screen/login/view/OtpFragment$initSMSRetriever$1$1;
.super Ljava/lang/Object;
.source "OtpFragment.kt"

# interfaces
.implements Lcom/laborbook/auth/common/sms/SMSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/auth/screen/login/view/OtpFragment;->initSMSRetriever()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/laborbook/auth/screen/login/view/OtpFragment$initSMSRetriever$1$1",
        "Lcom/laborbook/auth/common/sms/SMSListener;",
        "onSuccess",
        "",
        "message",
        "",
        "onError",
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
.field final synthetic this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/auth/screen/login/view/OtpFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$initSMSRetriever$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 250
    :try_start_0
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$initSMSRetriever$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;

    invoke-virtual {v0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->otpView:Lcom/mukeshsolanki/OtpView;

    if-eqz v0, :cond_1

    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/mukeshsolanki/OtpView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$initSMSRetriever$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;

    invoke-virtual {v0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->otpView:Lcom/mukeshsolanki/OtpView;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/mukeshsolanki/OtpView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
