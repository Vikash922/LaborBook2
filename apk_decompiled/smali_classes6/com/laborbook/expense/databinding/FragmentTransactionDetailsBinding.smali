.class public final Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;
.super Ljava/lang/Object;
.source "FragmentTransactionDetailsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnOk:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

.field public final clContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final flAmountContainer:Landroid/widget/FrameLayout;

.field public final ivClose:Landroid/widget/ImageView;

.field public final ivSecretAmount:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvAmount:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

.field public final tvAmountLabel:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

.field public final tvEdit:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

.field public final tvHeaderDate:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

.field public final tvNotes:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

.field public final tvNotesLabel:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

.field public final tvPaymentMethodLabel:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

.field public final tvPaymentMethodValue:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

.field public final tvTitle:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

.field public final tvTitleLabel:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "btnOk",
            "clContainer",
            "flAmountContainer",
            "ivClose",
            "ivSecretAmount",
            "tvAmount",
            "tvAmountLabel",
            "tvEdit",
            "tvHeaderDate",
            "tvNotes",
            "tvNotesLabel",
            "tvPaymentMethodLabel",
            "tvPaymentMethodValue",
            "tvTitle",
            "tvTitleLabel"
        }
    .end annotation

    move-object v0, p0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 82
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    .line 83
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;->btnOk:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    move-object v1, p3

    .line 84
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;->clContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p4

    .line 85
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;->flAmountContainer:Landroid/widget/FrameLayout;

    move-object v1, p5

    .line 86
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;->ivClose:Landroid/widget/ImageView;

    move-object v1, p6

    .line 87
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;->ivSecretAmount:Landroid/widget/ImageView;

    move-object v1, p7

    .line 88
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;->tvAmount:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    move-object v1, p8

    .line 89
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;->tvAmountLabel:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    move-object v1, p9

    .line 90
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;->tvEdit:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    move-object v1, p10

    .line 91
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;->tvHeaderDate:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    move-object v1, p11

    .line 92
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;->tvNotes:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    move-object v1, p12

    .line 93
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;->tvNotesLabel:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    move-object v1, p13

    .line 94
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;->tvPaymentMethodLabel:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    move-object/from16 v1, p14

    .line 95
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;->tvPaymentMethodValue:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    move-object/from16 v1, p15

    .line 96
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;->tvTitle:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    move-object/from16 v1, p16

    .line 97
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;->tvTitleLabel:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 127
    sget v1, Lcom/laborbook/expense/R$id;->btn_ok:I

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    if-eqz v5, :cond_0

    .line 133
    sget v1, Lcom/laborbook/expense/R$id;->cl_container:I

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v6, :cond_0

    .line 139
    sget v1, Lcom/laborbook/expense/R$id;->fl_amount_container:I

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    .line 145
    sget v1, Lcom/laborbook/expense/R$id;->iv_close:I

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 151
    sget v1, Lcom/laborbook/expense/R$id;->iv_secret_amount:I

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    .line 157
    sget v1, Lcom/laborbook/expense/R$id;->tv_amount:I

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz v10, :cond_0

    .line 163
    sget v1, Lcom/laborbook/expense/R$id;->tv_amount_label:I

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    if-eqz v11, :cond_0

    .line 169
    sget v1, Lcom/laborbook/expense/R$id;->tv_edit:I

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    if-eqz v12, :cond_0

    .line 175
    sget v1, Lcom/laborbook/expense/R$id;->tv_header_date:I

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    if-eqz v13, :cond_0

    .line 181
    sget v1, Lcom/laborbook/expense/R$id;->tv_notes:I

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz v14, :cond_0

    .line 187
    sget v1, Lcom/laborbook/expense/R$id;->tv_notes_label:I

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    if-eqz v15, :cond_0

    .line 193
    sget v1, Lcom/laborbook/expense/R$id;->tv_payment_method_label:I

    .line 194
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    if-eqz v16, :cond_0

    .line 199
    sget v1, Lcom/laborbook/expense/R$id;->tv_payment_method_value:I

    .line 200
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz v17, :cond_0

    .line 205
    sget v1, Lcom/laborbook/expense/R$id;->tv_title:I

    .line 206
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz v18, :cond_0

    .line 211
    sget v1, Lcom/laborbook/expense/R$id;->tv_title_label:I

    .line 212
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    if-eqz v19, :cond_0

    .line 217
    new-instance v1, Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v19}, Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;)V

    return-object v1

    .line 221
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-static {p0, v0, v1}, Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "parent",
            "attachToParent"
        }
    .end annotation

    .line 114
    sget v0, Lcom/laborbook/expense/R$layout;->fragment_transaction_details:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    :cond_0
    invoke-static {p0}, Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;->bind(Landroid/view/View;)Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/laborbook/expense/databinding/FragmentTransactionDetailsBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
