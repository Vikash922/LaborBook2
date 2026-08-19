.class public final Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;
.super Ljava/lang/Object;
.source "FragmentOvertimeBottomsheetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnOk:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

.field public final btnRemoveOt:Landroid/widget/TextView;

.field public final clContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final dividerButton:Landroid/view/View;

.field public final etHours:Landroid/widget/EditText;

.field public final etRate:Landroid/widget/EditText;

.field public final ivClose:Landroid/widget/ImageView;

.field public final llTotalAmount:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

.field public final tvHoursLabel:Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;

.field public final tvRateLabel:Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;

.field public final tvTitle:Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;

.field public final tvTotalAmount:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

.field public final tvTotalLabel:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;)V
    .locals 0
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
            0x0
        }
        names = {
            "rootView",
            "btnOk",
            "btnRemoveOt",
            "clContainer",
            "dividerButton",
            "etHours",
            "etRate",
            "ivClose",
            "llTotalAmount",
            "tvDate",
            "tvHoursLabel",
            "tvRateLabel",
            "tvTitle",
            "tvTotalAmount",
            "tvTotalLabel"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 80
    iput-object p2, p0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->btnOk:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    .line 81
    iput-object p3, p0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->btnRemoveOt:Landroid/widget/TextView;

    .line 82
    iput-object p4, p0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->clContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 83
    iput-object p5, p0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->dividerButton:Landroid/view/View;

    .line 84
    iput-object p6, p0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->etHours:Landroid/widget/EditText;

    .line 85
    iput-object p7, p0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->etRate:Landroid/widget/EditText;

    .line 86
    iput-object p8, p0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->ivClose:Landroid/widget/ImageView;

    .line 87
    iput-object p9, p0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->llTotalAmount:Landroid/widget/LinearLayout;

    .line 88
    iput-object p10, p0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->tvDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    .line 89
    iput-object p11, p0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->tvHoursLabel:Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;

    .line 90
    iput-object p12, p0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->tvRateLabel:Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;

    .line 91
    iput-object p13, p0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->tvTitle:Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;

    .line 92
    iput-object p14, p0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->tvTotalAmount:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    .line 93
    iput-object p15, p0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->tvTotalLabel:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 123
    sget v1, Lcom/laborbook/keep/R$id;->btn_ok:I

    .line 124
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    if-eqz v5, :cond_0

    .line 129
    sget v1, Lcom/laborbook/keep/R$id;->btn_remove_ot:I

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 135
    sget v1, Lcom/laborbook/keep/R$id;->cl_container:I

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_0

    .line 141
    sget v1, Lcom/laborbook/keep/R$id;->divider_button:I

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 147
    sget v1, Lcom/laborbook/keep/R$id;->et_hours:I

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/EditText;

    if-eqz v9, :cond_0

    .line 153
    sget v1, Lcom/laborbook/keep/R$id;->et_rate:I

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/EditText;

    if-eqz v10, :cond_0

    .line 159
    sget v1, Lcom/laborbook/keep/R$id;->iv_close:I

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 165
    sget v1, Lcom/laborbook/keep/R$id;->ll_total_amount:I

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 171
    sget v1, Lcom/laborbook/keep/R$id;->tv_date:I

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    if-eqz v13, :cond_0

    .line 177
    sget v1, Lcom/laborbook/keep/R$id;->tv_hours_label:I

    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;

    if-eqz v14, :cond_0

    .line 183
    sget v1, Lcom/laborbook/keep/R$id;->tv_rate_label:I

    .line 184
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;

    if-eqz v15, :cond_0

    .line 189
    sget v1, Lcom/laborbook/keep/R$id;->tv_title:I

    .line 190
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;

    if-eqz v16, :cond_0

    .line 195
    sget v1, Lcom/laborbook/keep/R$id;->tv_total_amount:I

    .line 196
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz v17, :cond_0

    .line 201
    sget v1, Lcom/laborbook/keep/R$id;->tv_total_label:I

    .line 202
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz v18, :cond_0

    .line 207
    new-instance v1, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;)V

    return-object v1

    .line 211
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;
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

    .line 104
    invoke-static {p0, v0, v1}, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;
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

    .line 110
    sget v0, Lcom/laborbook/keep/R$layout;->fragment_overtime_bottomsheet:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 112
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 114
    :cond_0
    invoke-static {p0}, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
