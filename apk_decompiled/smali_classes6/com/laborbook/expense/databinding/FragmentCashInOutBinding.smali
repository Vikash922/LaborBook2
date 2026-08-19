.class public final Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;
.super Ljava/lang/Object;
.source "FragmentCashInOutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnDelete:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldError14;

.field public final btnSave:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

.field public final clAttendance:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final divider1:Landroid/view/View;

.field public final divider2:Landroid/view/View;

.field public final etAmount:Lcom/google/android/material/textfield/TextInputEditText;

.field public final etDescription:Landroid/widget/EditText;

.field public final ivClose:Landroid/widget/ImageView;

.field public final llPaymentMethod:Landroid/widget/LinearLayout;

.field public final pb:Landroid/widget/ProgressBar;

.field public final rbCash:Landroid/widget/TextView;

.field public final rbOnline:Landroid/widget/TextView;

.field public final rlAmount:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final rupeeSymbol:Lcom/boilerplate/uikit/views/textviews/text48/TextViewBoldPrimaryColor48;

.field public final tvDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

.field public final tvDateEdit:Landroid/widget/TextView;

.field public final tvTitle:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldError14;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/view/View;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/textviews/text48/TextViewBoldPrimaryColor48;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;Landroid/widget/TextView;Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;)V
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
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "btnDelete",
            "btnSave",
            "clAttendance",
            "divider1",
            "divider2",
            "etAmount",
            "etDescription",
            "ivClose",
            "llPaymentMethod",
            "pb",
            "rbCash",
            "rbOnline",
            "rlAmount",
            "rupeeSymbol",
            "tvDate",
            "tvDateEdit",
            "tvTitle"
        }
    .end annotation

    move-object v0, p0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 91
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    .line 92
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;->btnDelete:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldError14;

    move-object v1, p3

    .line 93
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;->btnSave:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    move-object v1, p4

    .line 94
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;->clAttendance:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p5

    .line 95
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;->divider1:Landroid/view/View;

    move-object v1, p6

    .line 96
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;->divider2:Landroid/view/View;

    move-object v1, p7

    .line 97
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;->etAmount:Lcom/google/android/material/textfield/TextInputEditText;

    move-object v1, p8

    .line 98
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;->etDescription:Landroid/widget/EditText;

    move-object v1, p9

    .line 99
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;->ivClose:Landroid/widget/ImageView;

    move-object v1, p10

    .line 100
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;->llPaymentMethod:Landroid/widget/LinearLayout;

    move-object v1, p11

    .line 101
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;->pb:Landroid/widget/ProgressBar;

    move-object v1, p12

    .line 102
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;->rbCash:Landroid/widget/TextView;

    move-object v1, p13

    .line 103
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;->rbOnline:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 104
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;->rlAmount:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p15

    .line 105
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;->rupeeSymbol:Lcom/boilerplate/uikit/views/textviews/text48/TextViewBoldPrimaryColor48;

    move-object/from16 v1, p16

    .line 106
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;->tvDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    move-object/from16 v1, p17

    .line 107
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;->tvDateEdit:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 108
    iput-object v1, v0, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;->tvTitle:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 138
    sget v1, Lcom/laborbook/expense/R$id;->btn_delete:I

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldError14;

    if-eqz v5, :cond_0

    .line 144
    sget v1, Lcom/laborbook/expense/R$id;->btn_save:I

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    if-eqz v6, :cond_0

    .line 150
    sget v1, Lcom/laborbook/expense/R$id;->cl_attendance:I

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_0

    .line 156
    sget v1, Lcom/laborbook/expense/R$id;->divider_1:I

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 162
    sget v1, Lcom/laborbook/expense/R$id;->divider_2:I

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 168
    sget v1, Lcom/laborbook/expense/R$id;->et_amount:I

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v10, :cond_0

    .line 174
    sget v1, Lcom/laborbook/expense/R$id;->et_description:I

    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/EditText;

    if-eqz v11, :cond_0

    .line 180
    sget v1, Lcom/laborbook/expense/R$id;->iv_close:I

    .line 181
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    .line 186
    sget v1, Lcom/laborbook/expense/R$id;->ll_payment_method:I

    .line 187
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    .line 192
    sget v1, Lcom/laborbook/expense/R$id;->pb:I

    .line 193
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ProgressBar;

    if-eqz v14, :cond_0

    .line 198
    sget v1, Lcom/laborbook/expense/R$id;->rb_cash:I

    .line 199
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 204
    sget v1, Lcom/laborbook/expense/R$id;->rb_online:I

    .line 205
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 210
    sget v1, Lcom/laborbook/expense/R$id;->rl_amount:I

    .line 211
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v17, :cond_0

    .line 216
    sget v1, Lcom/laborbook/expense/R$id;->rupee_symbol:I

    .line 217
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/boilerplate/uikit/views/textviews/text48/TextViewBoldPrimaryColor48;

    if-eqz v18, :cond_0

    .line 222
    sget v1, Lcom/laborbook/expense/R$id;->tv_date:I

    .line 223
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    if-eqz v19, :cond_0

    .line 228
    sget v1, Lcom/laborbook/expense/R$id;->tv_date_edit:I

    .line 229
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 234
    sget v1, Lcom/laborbook/expense/R$id;->tv_title:I

    .line 235
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    if-eqz v21, :cond_0

    .line 240
    new-instance v1, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v21}, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldError14;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/view/View;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/textviews/text48/TextViewBoldPrimaryColor48;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;Landroid/widget/TextView;Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;)V

    return-object v1

    .line 244
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;
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

    .line 119
    invoke-static {p0, v0, v1}, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;
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

    .line 125
    sget v0, Lcom/laborbook/expense/R$layout;->fragment_cash_in_out:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 127
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    :cond_0
    invoke-static {p0}, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;->bind(Landroid/view/View;)Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
