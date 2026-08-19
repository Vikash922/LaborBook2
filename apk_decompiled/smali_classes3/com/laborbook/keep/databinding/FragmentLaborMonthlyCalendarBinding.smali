.class public final Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;
.super Ljava/lang/Object;
.source "FragmentLaborMonthlyCalendarBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnMarkAttendance:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

.field public final btnOpenReport:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;

.field public final btnShare:Landroid/widget/TextView;

.field public final divider1:Landroid/view/View;

.field public final divider2:Landroid/view/View;

.field public final divider3:Landroid/view/View;

.field public final divider4:Landroid/view/View;

.field public final dividerButton:Landroid/view/View;

.field public final flButton:Landroid/widget/FrameLayout;

.field public final ivBack:Landroid/widget/ImageView;

.field public final ivDeleteStaff:Landroid/widget/ImageView;

.field public final ivMore:Landroid/widget/ImageView;

.field public final ivRefreshAmount:Landroid/widget/ImageView;

.field public final ivReportIcon:Landroid/widget/ImageView;

.field public final ivStatsDropdown:Landroid/widget/ImageView;

.field public final llContent:Landroid/widget/LinearLayout;

.field public final llDateSelector:Landroid/widget/LinearLayout;

.field public final llOpenReport:Landroid/widget/LinearLayout;

.field public final llStats:Landroid/widget/LinearLayout;

.field public final llStatsFirstRow:Landroid/widget/LinearLayout;

.field public final llStatsSecondRow:Landroid/widget/LinearLayout;

.field public final llTableHeader:Landroid/widget/LinearLayout;

.field public final nestedScrollView:Landroidx/core/widget/NestedScrollView;

.field public final pb:Landroid/widget/ProgressBar;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final rvAttendance:Landroidx/recyclerview/widget/RecyclerView;

.field public final toolbar:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvAddAmount:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;

.field public final tvEdit:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

.field public final tvMonthYear:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

.field public final tvToolbarText:Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;

.field public final tvTotalAbsent:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldError16;

.field public final tvTotalAdvance:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

.field public final tvTotalHalfDay:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

.field public final tvTotalOt:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

.field public final tvTotalPh:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

.field public final tvTotalPp:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

.field public final tvTotalPresent:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldGreen16;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldError16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldGreen16;)V
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
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "btnMarkAttendance",
            "btnOpenReport",
            "btnShare",
            "divider1",
            "divider2",
            "divider3",
            "divider4",
            "dividerButton",
            "flButton",
            "ivBack",
            "ivDeleteStaff",
            "ivMore",
            "ivRefreshAmount",
            "ivReportIcon",
            "ivStatsDropdown",
            "llContent",
            "llDateSelector",
            "llOpenReport",
            "llStats",
            "llStatsFirstRow",
            "llStatsSecondRow",
            "llTableHeader",
            "nestedScrollView",
            "pb",
            "rvAttendance",
            "toolbar",
            "tvAddAmount",
            "tvEdit",
            "tvMonthYear",
            "tvToolbarText",
            "tvTotalAbsent",
            "tvTotalAdvance",
            "tvTotalHalfDay",
            "tvTotalOt",
            "tvTotalPh",
            "tvTotalPp",
            "tvTotalPresent"
        }
    .end annotation

    move-object v0, p0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 164
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    .line 165
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->btnMarkAttendance:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    move-object v1, p3

    .line 166
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->btnOpenReport:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;

    move-object v1, p4

    .line 167
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->btnShare:Landroid/widget/TextView;

    move-object v1, p5

    .line 168
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->divider1:Landroid/view/View;

    move-object v1, p6

    .line 169
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->divider2:Landroid/view/View;

    move-object v1, p7

    .line 170
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->divider3:Landroid/view/View;

    move-object v1, p8

    .line 171
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->divider4:Landroid/view/View;

    move-object v1, p9

    .line 172
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->dividerButton:Landroid/view/View;

    move-object v1, p10

    .line 173
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->flButton:Landroid/widget/FrameLayout;

    move-object v1, p11

    .line 174
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->ivBack:Landroid/widget/ImageView;

    move-object v1, p12

    .line 175
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->ivDeleteStaff:Landroid/widget/ImageView;

    move-object v1, p13

    .line 176
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->ivMore:Landroid/widget/ImageView;

    move-object/from16 v1, p14

    .line 177
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->ivRefreshAmount:Landroid/widget/ImageView;

    move-object/from16 v1, p15

    .line 178
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->ivReportIcon:Landroid/widget/ImageView;

    move-object/from16 v1, p16

    .line 179
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->ivStatsDropdown:Landroid/widget/ImageView;

    move-object/from16 v1, p17

    .line 180
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->llContent:Landroid/widget/LinearLayout;

    move-object/from16 v1, p18

    .line 181
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->llDateSelector:Landroid/widget/LinearLayout;

    move-object/from16 v1, p19

    .line 182
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->llOpenReport:Landroid/widget/LinearLayout;

    move-object/from16 v1, p20

    .line 183
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->llStats:Landroid/widget/LinearLayout;

    move-object/from16 v1, p21

    .line 184
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->llStatsFirstRow:Landroid/widget/LinearLayout;

    move-object/from16 v1, p22

    .line 185
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->llStatsSecondRow:Landroid/widget/LinearLayout;

    move-object/from16 v1, p23

    .line 186
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->llTableHeader:Landroid/widget/LinearLayout;

    move-object/from16 v1, p24

    .line 187
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->nestedScrollView:Landroidx/core/widget/NestedScrollView;

    move-object/from16 v1, p25

    .line 188
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->pb:Landroid/widget/ProgressBar;

    move-object/from16 v1, p26

    .line 189
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->rvAttendance:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v1, p27

    .line 190
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->toolbar:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p28

    .line 191
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvAddAmount:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;

    move-object/from16 v1, p29

    .line 192
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvEdit:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    move-object/from16 v1, p30

    .line 193
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvMonthYear:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    move-object/from16 v1, p31

    .line 194
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvToolbarText:Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;

    move-object/from16 v1, p32

    .line 195
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvTotalAbsent:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldError16;

    move-object/from16 v1, p33

    .line 196
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvTotalAdvance:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    move-object/from16 v1, p34

    .line 197
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvTotalHalfDay:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    move-object/from16 v1, p35

    .line 198
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvTotalOt:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    move-object/from16 v1, p36

    .line 199
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvTotalPh:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    move-object/from16 v1, p37

    .line 200
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvTotalPp:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    move-object/from16 v1, p38

    .line 201
    iput-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvTotalPresent:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldGreen16;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;
    .locals 42
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 231
    sget v1, Lcom/laborbook/keep/R$id;->btn_mark_attendance:I

    .line 232
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    if-eqz v5, :cond_0

    .line 237
    sget v1, Lcom/laborbook/keep/R$id;->btn_open_report:I

    .line 238
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;

    if-eqz v6, :cond_0

    .line 243
    sget v1, Lcom/laborbook/keep/R$id;->btn_share:I

    .line 244
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 249
    sget v1, Lcom/laborbook/keep/R$id;->divider_1:I

    .line 250
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 255
    sget v1, Lcom/laborbook/keep/R$id;->divider_2:I

    .line 256
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 261
    sget v1, Lcom/laborbook/keep/R$id;->divider_3:I

    .line 262
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 267
    sget v1, Lcom/laborbook/keep/R$id;->divider_4:I

    .line 268
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 273
    sget v1, Lcom/laborbook/keep/R$id;->divider_button:I

    .line 274
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 279
    sget v1, Lcom/laborbook/keep/R$id;->fl_button:I

    .line 280
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/FrameLayout;

    if-eqz v13, :cond_0

    .line 285
    sget v1, Lcom/laborbook/keep/R$id;->iv_back:I

    .line 286
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    .line 291
    sget v1, Lcom/laborbook/keep/R$id;->iv_delete_staff:I

    .line 292
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_0

    .line 297
    sget v1, Lcom/laborbook/keep/R$id;->iv_more:I

    .line 298
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_0

    .line 303
    sget v1, Lcom/laborbook/keep/R$id;->iv_refresh_amount:I

    .line 304
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ImageView;

    if-eqz v17, :cond_0

    .line 309
    sget v1, Lcom/laborbook/keep/R$id;->iv_report_icon:I

    .line 310
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/ImageView;

    if-eqz v18, :cond_0

    .line 315
    sget v1, Lcom/laborbook/keep/R$id;->iv_stats_dropdown:I

    .line 316
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/ImageView;

    if-eqz v19, :cond_0

    .line 321
    sget v1, Lcom/laborbook/keep/R$id;->ll_content:I

    .line 322
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/LinearLayout;

    if-eqz v20, :cond_0

    .line 327
    sget v1, Lcom/laborbook/keep/R$id;->ll_date_selector:I

    .line 328
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/LinearLayout;

    if-eqz v21, :cond_0

    .line 333
    sget v1, Lcom/laborbook/keep/R$id;->ll_open_report:I

    .line 334
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/LinearLayout;

    if-eqz v22, :cond_0

    .line 339
    sget v1, Lcom/laborbook/keep/R$id;->ll_stats:I

    .line 340
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/LinearLayout;

    if-eqz v23, :cond_0

    .line 345
    sget v1, Lcom/laborbook/keep/R$id;->ll_stats_first_row:I

    .line 346
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/LinearLayout;

    if-eqz v24, :cond_0

    .line 351
    sget v1, Lcom/laborbook/keep/R$id;->ll_stats_second_row:I

    .line 352
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/LinearLayout;

    if-eqz v25, :cond_0

    .line 357
    sget v1, Lcom/laborbook/keep/R$id;->ll_table_header:I

    .line 358
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/LinearLayout;

    if-eqz v26, :cond_0

    .line 363
    sget v1, Lcom/laborbook/keep/R$id;->nested_scroll_view:I

    .line 364
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroidx/core/widget/NestedScrollView;

    if-eqz v27, :cond_0

    .line 369
    sget v1, Lcom/laborbook/keep/R$id;->pb:I

    .line 370
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Landroid/widget/ProgressBar;

    if-eqz v28, :cond_0

    .line 375
    sget v1, Lcom/laborbook/keep/R$id;->rv_attendance:I

    .line 376
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v29, :cond_0

    .line 381
    sget v1, Lcom/laborbook/keep/R$id;->toolbar:I

    .line 382
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v30, :cond_0

    .line 387
    sget v1, Lcom/laborbook/keep/R$id;->tv_add_amount:I

    .line 388
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v31, v2

    check-cast v31, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;

    if-eqz v31, :cond_0

    .line 393
    sget v1, Lcom/laborbook/keep/R$id;->tv_edit:I

    .line 394
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    if-eqz v32, :cond_0

    .line 399
    sget v1, Lcom/laborbook/keep/R$id;->tv_month_year:I

    .line 400
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    if-eqz v33, :cond_0

    .line 405
    sget v1, Lcom/laborbook/keep/R$id;->tv_toolbar_text:I

    .line 406
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;

    if-eqz v34, :cond_0

    .line 411
    sget v1, Lcom/laborbook/keep/R$id;->tv_total_absent:I

    .line 412
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v35, v2

    check-cast v35, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldError16;

    if-eqz v35, :cond_0

    .line 417
    sget v1, Lcom/laborbook/keep/R$id;->tv_total_advance:I

    .line 418
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v36, v2

    check-cast v36, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz v36, :cond_0

    .line 423
    sget v1, Lcom/laborbook/keep/R$id;->tv_total_half_day:I

    .line 424
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v37, v2

    check-cast v37, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz v37, :cond_0

    .line 429
    sget v1, Lcom/laborbook/keep/R$id;->tv_total_ot:I

    .line 430
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v38, v2

    check-cast v38, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz v38, :cond_0

    .line 435
    sget v1, Lcom/laborbook/keep/R$id;->tv_total_ph:I

    .line 436
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v39, v2

    check-cast v39, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz v39, :cond_0

    .line 441
    sget v1, Lcom/laborbook/keep/R$id;->tv_total_pp:I

    .line 442
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v40, v2

    check-cast v40, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz v40, :cond_0

    .line 447
    sget v1, Lcom/laborbook/keep/R$id;->tv_total_present:I

    .line 448
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v41, v2

    check-cast v41, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldGreen16;

    if-eqz v41, :cond_0

    .line 453
    new-instance v1, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v41}, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldError16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldGreen16;)V

    return-object v1

    .line 461
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 462
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;
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

    .line 212
    invoke-static {p0, v0, v1}, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;
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

    .line 218
    sget v0, Lcom/laborbook/keep/R$layout;->fragment_labor_monthly_calendar:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 220
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 222
    :cond_0
    invoke-static {p0}, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
