.class public final Lcom/laborbook/keep/databinding/DialogOvertimeTimepickerBinding;
.super Ljava/lang/Object;
.source "DialogOvertimeTimepickerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnPickerOk:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

.field public final clContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final ivClosePicker:Landroid/widget/ImageView;

.field public final llNumbers:Landroid/widget/LinearLayout;

.field public final llPickerContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final npHours:Landroid/widget/NumberPicker;

.field public final npMinutes:Landroid/widget/NumberPicker;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvColon:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

.field public final tvHrsLabel:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

.field public final tvMinsLabel:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

.field public final tvPickerTitle:Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;)V
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
            0x0
        }
        names = {
            "rootView",
            "btnPickerOk",
            "clContainer",
            "ivClosePicker",
            "llNumbers",
            "llPickerContainer",
            "npHours",
            "npMinutes",
            "tvColon",
            "tvHrsLabel",
            "tvMinsLabel",
            "tvPickerTitle"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/laborbook/keep/databinding/DialogOvertimeTimepickerBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 68
    iput-object p2, p0, Lcom/laborbook/keep/databinding/DialogOvertimeTimepickerBinding;->btnPickerOk:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    .line 69
    iput-object p3, p0, Lcom/laborbook/keep/databinding/DialogOvertimeTimepickerBinding;->clContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 70
    iput-object p4, p0, Lcom/laborbook/keep/databinding/DialogOvertimeTimepickerBinding;->ivClosePicker:Landroid/widget/ImageView;

    .line 71
    iput-object p5, p0, Lcom/laborbook/keep/databinding/DialogOvertimeTimepickerBinding;->llNumbers:Landroid/widget/LinearLayout;

    .line 72
    iput-object p6, p0, Lcom/laborbook/keep/databinding/DialogOvertimeTimepickerBinding;->llPickerContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 73
    iput-object p7, p0, Lcom/laborbook/keep/databinding/DialogOvertimeTimepickerBinding;->npHours:Landroid/widget/NumberPicker;

    .line 74
    iput-object p8, p0, Lcom/laborbook/keep/databinding/DialogOvertimeTimepickerBinding;->npMinutes:Landroid/widget/NumberPicker;

    .line 75
    iput-object p9, p0, Lcom/laborbook/keep/databinding/DialogOvertimeTimepickerBinding;->tvColon:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    .line 76
    iput-object p10, p0, Lcom/laborbook/keep/databinding/DialogOvertimeTimepickerBinding;->tvHrsLabel:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    .line 77
    iput-object p11, p0, Lcom/laborbook/keep/databinding/DialogOvertimeTimepickerBinding;->tvMinsLabel:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    .line 78
    iput-object p12, p0, Lcom/laborbook/keep/databinding/DialogOvertimeTimepickerBinding;->tvPickerTitle:Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/DialogOvertimeTimepickerBinding;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 108
    sget v0, Lcom/laborbook/keep/R$id;->btn_picker_ok:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    if-eqz v4, :cond_0

    .line 114
    sget v0, Lcom/laborbook/keep/R$id;->cl_container:I

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_0

    .line 120
    sget v0, Lcom/laborbook/keep/R$id;->iv_close_picker:I

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 126
    sget v0, Lcom/laborbook/keep/R$id;->ll_numbers:I

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 132
    sget v0, Lcom/laborbook/keep/R$id;->ll_picker_container:I

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_0

    .line 138
    sget v0, Lcom/laborbook/keep/R$id;->np_hours:I

    .line 139
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/NumberPicker;

    if-eqz v9, :cond_0

    .line 144
    sget v0, Lcom/laborbook/keep/R$id;->np_minutes:I

    .line 145
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/NumberPicker;

    if-eqz v10, :cond_0

    .line 150
    sget v0, Lcom/laborbook/keep/R$id;->tv_colon:I

    .line 151
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    if-eqz v11, :cond_0

    .line 156
    sget v0, Lcom/laborbook/keep/R$id;->tv_hrs_label:I

    .line 157
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    if-eqz v12, :cond_0

    .line 162
    sget v0, Lcom/laborbook/keep/R$id;->tv_mins_label:I

    .line 163
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    if-eqz v13, :cond_0

    .line 168
    sget v0, Lcom/laborbook/keep/R$id;->tv_picker_title:I

    .line 169
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;

    if-eqz v14, :cond_0

    .line 174
    new-instance v0, Lcom/laborbook/keep/databinding/DialogOvertimeTimepickerBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/laborbook/keep/databinding/DialogOvertimeTimepickerBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;)V

    return-object v0

    .line 178
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 179
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/keep/databinding/DialogOvertimeTimepickerBinding;
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

    .line 89
    invoke-static {p0, v0, v1}, Lcom/laborbook/keep/databinding/DialogOvertimeTimepickerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/DialogOvertimeTimepickerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/DialogOvertimeTimepickerBinding;
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

    .line 95
    sget v0, Lcom/laborbook/keep/R$layout;->dialog_overtime_timepicker:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    :cond_0
    invoke-static {p0}, Lcom/laborbook/keep/databinding/DialogOvertimeTimepickerBinding;->bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/DialogOvertimeTimepickerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/laborbook/keep/databinding/DialogOvertimeTimepickerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/laborbook/keep/databinding/DialogOvertimeTimepickerBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
