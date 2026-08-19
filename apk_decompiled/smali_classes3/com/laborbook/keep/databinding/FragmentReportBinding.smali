.class public final Lcom/laborbook/keep/databinding/FragmentReportBinding;
.super Ljava/lang/Object;
.source "FragmentReportBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnSharePdf:Lcom/google/android/material/button/MaterialButton;

.field public final dividerToolbar:Landroid/view/View;

.field public final ivBack:Landroid/widget/ImageView;

.field public final reportToolbar:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvAbsentCount:Landroid/widget/TextView;

.field public final tvAdvanceAmount:Landroid/widget/TextView;

.field public final tvBalance:Landroid/widget/TextView;

.field public final tvHalfdayCount:Landroid/widget/TextView;

.field public final tvOvertimeCount:Landroid/widget/TextView;

.field public final tvPPlusHalf:Landroid/widget/TextView;

.field public final tvPPlusP:Landroid/widget/TextView;

.field public final tvPresentCount:Landroid/widget/TextView;

.field public final tvReportMonth:Landroid/widget/TextView;

.field public final tvReportNameValue:Landroid/widget/TextView;

.field public final tvReportPhone:Landroid/widget/TextView;

.field public final tvReportTitle:Landroid/widget/TextView;

.field public final tvTotalEarnings:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/button/MaterialButton;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
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
            "btnSharePdf",
            "dividerToolbar",
            "ivBack",
            "reportToolbar",
            "tvAbsentCount",
            "tvAdvanceAmount",
            "tvBalance",
            "tvHalfdayCount",
            "tvOvertimeCount",
            "tvPPlusHalf",
            "tvPPlusP",
            "tvPresentCount",
            "tvReportMonth",
            "tvReportNameValue",
            "tvReportPhone",
            "tvReportTitle",
            "tvTotalEarnings"
        }
    .end annotation

    move-object v0, p0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 85
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    .line 86
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->btnSharePdf:Lcom/google/android/material/button/MaterialButton;

    move-object v1, p3

    .line 87
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->dividerToolbar:Landroid/view/View;

    move-object v1, p4

    .line 88
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->ivBack:Landroid/widget/ImageView;

    move-object v1, p5

    .line 89
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->reportToolbar:Landroid/widget/LinearLayout;

    move-object v1, p6

    .line 90
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvAbsentCount:Landroid/widget/TextView;

    move-object v1, p7

    .line 91
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvAdvanceAmount:Landroid/widget/TextView;

    move-object v1, p8

    .line 92
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvBalance:Landroid/widget/TextView;

    move-object v1, p9

    .line 93
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvHalfdayCount:Landroid/widget/TextView;

    move-object v1, p10

    .line 94
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvOvertimeCount:Landroid/widget/TextView;

    move-object v1, p11

    .line 95
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvPPlusHalf:Landroid/widget/TextView;

    move-object v1, p12

    .line 96
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvPPlusP:Landroid/widget/TextView;

    move-object v1, p13

    .line 97
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvPresentCount:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 98
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvReportMonth:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 99
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvReportNameValue:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 100
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvReportPhone:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 101
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvReportTitle:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 102
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvTotalEarnings:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/FragmentReportBinding;
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

    .line 132
    sget v1, Lcom/laborbook/keep/R$id;->btn_share_pdf:I

    .line 133
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    if-eqz v5, :cond_0

    .line 138
    sget v1, Lcom/laborbook/keep/R$id;->divider_toolbar:I

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 144
    sget v1, Lcom/laborbook/keep/R$id;->iv_back:I

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 150
    sget v1, Lcom/laborbook/keep/R$id;->report_toolbar:I

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 156
    sget v1, Lcom/laborbook/keep/R$id;->tv_absent_count:I

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 162
    sget v1, Lcom/laborbook/keep/R$id;->tv_advance_amount:I

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 168
    sget v1, Lcom/laborbook/keep/R$id;->tv_balance:I

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 174
    sget v1, Lcom/laborbook/keep/R$id;->tv_halfday_count:I

    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 180
    sget v1, Lcom/laborbook/keep/R$id;->tv_overtime_count:I

    .line 181
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 186
    sget v1, Lcom/laborbook/keep/R$id;->tv_p_plus_half:I

    .line 187
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 192
    sget v1, Lcom/laborbook/keep/R$id;->tv_p_plus_p:I

    .line 193
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 198
    sget v1, Lcom/laborbook/keep/R$id;->tv_present_count:I

    .line 199
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 204
    sget v1, Lcom/laborbook/keep/R$id;->tv_report_month:I

    .line 205
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 210
    sget v1, Lcom/laborbook/keep/R$id;->tv_report_name_value:I

    .line 211
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 216
    sget v1, Lcom/laborbook/keep/R$id;->tv_report_phone:I

    .line 217
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 222
    sget v1, Lcom/laborbook/keep/R$id;->tv_report_title:I

    .line 223
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 228
    sget v1, Lcom/laborbook/keep/R$id;->tv_total_earnings:I

    .line 229
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    .line 234
    new-instance v1, Lcom/laborbook/keep/databinding/FragmentReportBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v21}, Lcom/laborbook/keep/databinding/FragmentReportBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/button/MaterialButton;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 239
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/keep/databinding/FragmentReportBinding;
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

    .line 113
    invoke-static {p0, v0, v1}, Lcom/laborbook/keep/databinding/FragmentReportBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentReportBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentReportBinding;
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

    .line 119
    sget v0, Lcom/laborbook/keep/R$layout;->fragment_report:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 121
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    :cond_0
    invoke-static {p0}, Lcom/laborbook/keep/databinding/FragmentReportBinding;->bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/FragmentReportBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/laborbook/keep/databinding/FragmentReportBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
