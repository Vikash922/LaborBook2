.class public final Lcom/laborbook/auth/databinding/FragmentOtpBinding;
.super Ljava/lang/Object;
.source "FragmentOtpBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnVerifyOtp:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

.field public final ivResendOtp:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

.field public final otpView:Lcom/mukeshsolanki/OtpView;

.field public final pb:Landroid/widget/ProgressBar;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final toolbar:Lcom/laborbook/auth/databinding/ToolbarBinding;

.field public final tvOtpError:Lcom/boilerplate/uikit/views/textviews/text14/TextViewError14;

.field public final tvOtpSentToNumber:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

.field public final tvTermsAndConditions:Lcom/boilerplate/uikit/views/textviews/text10/TextViewRegular10;

.field public final tvVerifyOtp:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;Lcom/mukeshsolanki/OtpView;Landroid/widget/ProgressBar;Lcom/laborbook/auth/databinding/ToolbarBinding;Lcom/boilerplate/uikit/views/textviews/text14/TextViewError14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;Lcom/boilerplate/uikit/views/textviews/text10/TextViewRegular10;Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 61
    iput-object p2, p0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->btnVerifyOtp:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    .line 62
    iput-object p3, p0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->ivResendOtp:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    .line 63
    iput-object p4, p0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->otpView:Lcom/mukeshsolanki/OtpView;

    .line 64
    iput-object p5, p0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->pb:Landroid/widget/ProgressBar;

    .line 65
    iput-object p6, p0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->toolbar:Lcom/laborbook/auth/databinding/ToolbarBinding;

    .line 66
    iput-object p7, p0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->tvOtpError:Lcom/boilerplate/uikit/views/textviews/text14/TextViewError14;

    .line 67
    iput-object p8, p0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->tvOtpSentToNumber:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    .line 68
    iput-object p9, p0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->tvTermsAndConditions:Lcom/boilerplate/uikit/views/textviews/text10/TextViewRegular10;

    .line 69
    iput-object p10, p0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->tvVerifyOtp:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/auth/databinding/FragmentOtpBinding;
    .locals 13

    .line 99
    sget v0, Lcom/laborbook/auth/R$id;->btn_verify_otp:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    if-eqz v4, :cond_0

    .line 105
    sget v0, Lcom/laborbook/auth/R$id;->iv_resend_otp:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    if-eqz v5, :cond_0

    .line 111
    sget v0, Lcom/laborbook/auth/R$id;->otp_view:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/mukeshsolanki/OtpView;

    if-eqz v6, :cond_0

    .line 117
    sget v0, Lcom/laborbook/auth/R$id;->pb:I

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ProgressBar;

    if-eqz v7, :cond_0

    .line 123
    sget v0, Lcom/laborbook/auth/R$id;->toolbar:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    invoke-static {v1}, Lcom/laborbook/auth/databinding/ToolbarBinding;->bind(Landroid/view/View;)Lcom/laborbook/auth/databinding/ToolbarBinding;

    move-result-object v8

    .line 130
    sget v0, Lcom/laborbook/auth/R$id;->tv_otp_error:I

    .line 131
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/boilerplate/uikit/views/textviews/text14/TextViewError14;

    if-eqz v9, :cond_0

    .line 136
    sget v0, Lcom/laborbook/auth/R$id;->tv_otp_sent_to_number:I

    .line 137
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    if-eqz v10, :cond_0

    .line 142
    sget v0, Lcom/laborbook/auth/R$id;->tv_terms_and_conditions:I

    .line 143
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/boilerplate/uikit/views/textviews/text10/TextViewRegular10;

    if-eqz v11, :cond_0

    .line 148
    sget v0, Lcom/laborbook/auth/R$id;->tv_verify_otp:I

    .line 149
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    if-eqz v12, :cond_0

    .line 154
    new-instance v0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/laborbook/auth/databinding/FragmentOtpBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;Lcom/mukeshsolanki/OtpView;Landroid/widget/ProgressBar;Lcom/laborbook/auth/databinding/ToolbarBinding;Lcom/boilerplate/uikit/views/textviews/text14/TextViewError14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;Lcom/boilerplate/uikit/views/textviews/text10/TextViewRegular10;Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;)V

    return-object v0

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 158
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/auth/databinding/FragmentOtpBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-static {p0, v0, v1}, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/auth/databinding/FragmentOtpBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/auth/databinding/FragmentOtpBinding;
    .locals 2

    .line 86
    sget v0, Lcom/laborbook/auth/R$layout;->fragment_otp:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    :cond_0
    invoke-static {p0}, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->bind(Landroid/view/View;)Lcom/laborbook/auth/databinding/FragmentOtpBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
