.class public final Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;
.super Ljava/lang/Object;
.source "ItemCalendarAttendanceBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final divider1:Landroid/view/View;

.field public final divider2:Landroid/view/View;

.field public final divider3:Landroid/view/View;

.field public final ivAttendanceOne:Landroid/widget/ImageView;

.field public final ivAttendanceTwo:Landroid/widget/ImageView;

.field public final ivEdit:Landroid/widget/ImageView;

.field public final ivMore:Landroid/widget/ImageView;

.field public final ivOtPill:Landroid/widget/ImageView;

.field public final llAttendance:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvAddAdvance:Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;

.field public final tvCurrentDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;

.field public final tvCurrentDay:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegularPrimaryColor14;

.field public final tvDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

.field public final tvDay:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegularPrimaryColor14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;)V
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
            "divider1",
            "divider2",
            "divider3",
            "ivAttendanceOne",
            "ivAttendanceTwo",
            "ivEdit",
            "ivMore",
            "ivOtPill",
            "llAttendance",
            "tvAddAdvance",
            "tvCurrentDate",
            "tvCurrentDay",
            "tvDate",
            "tvDay"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->rootView:Landroid/widget/LinearLayout;

    .line 78
    iput-object p2, p0, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->divider1:Landroid/view/View;

    .line 79
    iput-object p3, p0, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->divider2:Landroid/view/View;

    .line 80
    iput-object p4, p0, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->divider3:Landroid/view/View;

    .line 81
    iput-object p5, p0, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    .line 82
    iput-object p6, p0, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    .line 83
    iput-object p7, p0, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivEdit:Landroid/widget/ImageView;

    .line 84
    iput-object p8, p0, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivMore:Landroid/widget/ImageView;

    .line 85
    iput-object p9, p0, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    .line 86
    iput-object p10, p0, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->llAttendance:Landroid/widget/LinearLayout;

    .line 87
    iput-object p11, p0, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvAddAdvance:Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;

    .line 88
    iput-object p12, p0, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvCurrentDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;

    .line 89
    iput-object p13, p0, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvCurrentDay:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegularPrimaryColor14;

    .line 90
    iput-object p14, p0, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    .line 91
    iput-object p15, p0, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvDay:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 121
    sget v1, Lcom/laborbook/keep/R$id;->divider_1:I

    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 127
    sget v1, Lcom/laborbook/keep/R$id;->divider_2:I

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 133
    sget v1, Lcom/laborbook/keep/R$id;->divider_3:I

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 139
    sget v1, Lcom/laborbook/keep/R$id;->iv_attendance_one:I

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 145
    sget v1, Lcom/laborbook/keep/R$id;->iv_attendance_two:I

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 151
    sget v1, Lcom/laborbook/keep/R$id;->iv_edit:I

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    .line 157
    sget v1, Lcom/laborbook/keep/R$id;->iv_more:I

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 163
    sget v1, Lcom/laborbook/keep/R$id;->iv_ot_pill:I

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 169
    sget v1, Lcom/laborbook/keep/R$id;->ll_attendance:I

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 175
    sget v1, Lcom/laborbook/keep/R$id;->tv_add_advance:I

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;

    if-eqz v13, :cond_0

    .line 181
    sget v1, Lcom/laborbook/keep/R$id;->tv_current_date:I

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;

    if-eqz v14, :cond_0

    .line 187
    sget v1, Lcom/laborbook/keep/R$id;->tv_current_day:I

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegularPrimaryColor14;

    if-eqz v15, :cond_0

    .line 193
    sget v1, Lcom/laborbook/keep/R$id;->tv_date:I

    .line 194
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    if-eqz v16, :cond_0

    .line 199
    sget v1, Lcom/laborbook/keep/R$id;->tv_day:I

    .line 200
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    if-eqz v17, :cond_0

    .line 205
    new-instance v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegularPrimaryColor14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;)V

    return-object v1

    .line 209
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;
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

    .line 102
    invoke-static {p0, v0, v1}, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;
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

    .line 108
    sget v0, Lcom/laborbook/keep/R$layout;->item_calendar_attendance:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    :cond_0
    invoke-static {p0}, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
