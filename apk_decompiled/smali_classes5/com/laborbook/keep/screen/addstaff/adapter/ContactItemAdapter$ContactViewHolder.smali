.class public final Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ContactViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ContactItemAdapter.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ContactViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lorg/koin/core/component/KoinComponent;",
        "binding",
        "Lcom/laborbook/keep/databinding/ItemContactListBinding;",
        "observerUtil",
        "Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;",
        "<init>",
        "(Lcom/laborbook/keep/databinding/ItemContactListBinding;Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;)V",
        "bind",
        "",
        "contactItem",
        "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;",
        "keep_release"
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
.field private final binding:Lcom/laborbook/keep/databinding/ItemContactListBinding;

.field private final observerUtil:Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;


# direct methods
.method public static synthetic $r8$lambda$IL7GDAoMARt2BuwiCJKS3YuwR3w(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ContactViewHolder;Lcom/laborbook/keep/screen/addstaff/model/ContactItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ContactViewHolder;->bind$lambda$0(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ContactViewHolder;Lcom/laborbook/keep/screen/addstaff/model/ContactItem;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/laborbook/keep/databinding/ItemContactListBinding;Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observerUtil"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/laborbook/keep/databinding/ItemContactListBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 55
    iput-object p1, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ContactViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemContactListBinding;

    .line 56
    iput-object p2, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ContactViewHolder;->observerUtil:Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;

    return-void
.end method

.method private static final bind$lambda$0(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ContactViewHolder;Lcom/laborbook/keep/screen/addstaff/model/ContactItem;Landroid/view/View;)V
    .locals 6

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$contactItem"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object p0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ContactViewHolder;->observerUtil:Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->getOnStaffUserAddedListener()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p2, Lcom/laborbook/keep/model/Staff;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;->getMobileNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/laborbook/keep/model/Staff;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final bind(Lcom/laborbook/keep/screen/addstaff/model/ContactItem;)V
    .locals 2

    const-string v0, "contactItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ContactViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemContactListBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemContactListBinding;->tvInitial:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    const-string v1, "tvInitial"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Lcom/laborbook/base/BaseExtensionKt;->setRandomLightCircleBackground(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 61
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ContactViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemContactListBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemContactListBinding;->tvName:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ContactViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemContactListBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemContactListBinding;->tvNumber:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;->getMobileNumber()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ContactViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemContactListBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemContactListBinding;->tvInitial:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ContactViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemContactListBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemContactListBinding;->itemRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ContactViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ContactViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ContactViewHolder;Lcom/laborbook/keep/screen/addstaff/model/ContactItem;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 54
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method
