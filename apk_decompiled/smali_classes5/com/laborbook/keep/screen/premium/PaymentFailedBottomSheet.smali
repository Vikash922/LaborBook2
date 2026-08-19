.class public final Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "PaymentFailedBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u001a\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0008\u0010\u0014\u001a\u00020\u0012H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "<init>",
        "()V",
        "_binding",
        "Lcom/laborbook/keep/databinding/BottomsheetPaymentFailedBinding;",
        "binding",
        "getBinding",
        "()Lcom/laborbook/keep/databinding/BottomsheetPaymentFailedBinding;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "",
        "view",
        "onDestroyView",
        "Companion",
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


# static fields
.field private static final ARG_MESSAGE:Ljava/lang/String; = "message"

.field private static final ARG_TITLE:Ljava/lang/String; = "title"

.field public static final Companion:Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet$Companion;

.field public static final TAG:Ljava/lang/String; = "PaymentFailedBottomSheet"


# instance fields
.field private _binding:Lcom/laborbook/keep/databinding/BottomsheetPaymentFailedBinding;


# direct methods
.method public static synthetic $r8$lambda$6e0qstDm3iZr_P7sThMPcSX3EjU(Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;->onViewCreated$lambda$2$lambda$0(Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ul5FqyOU1r_zqSa7dslmb42zUSA(Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;->onViewCreated$lambda$2$lambda$1(Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;->Companion:Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    return-void
.end method

.method private final getBinding()Lcom/laborbook/keep/databinding/BottomsheetPaymentFailedBinding;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;->_binding:Lcom/laborbook/keep/databinding/BottomsheetPaymentFailedBinding;

    return-object v0
.end method

.method public static final newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;->Companion:Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;

    move-result-object p0

    return-object p0
.end method

.method private static final onViewCreated$lambda$2$lambda$0(Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;->dismiss()V

    return-void
.end method

.method private static final onViewCreated$lambda$2$lambda$1(Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 21
    invoke-static {p1, p2, p3}, Lcom/laborbook/keep/databinding/BottomsheetPaymentFailedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/BottomsheetPaymentFailedBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;->_binding:Lcom/laborbook/keep/databinding/BottomsheetPaymentFailedBinding;

    .line 22
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;->getBinding()Lcom/laborbook/keep/databinding/BottomsheetPaymentFailedBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/laborbook/keep/databinding/BottomsheetPaymentFailedBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;->_binding:Lcom/laborbook/keep/databinding/BottomsheetPaymentFailedBinding;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-super {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "getString(...)"

    if-eqz p1, :cond_0

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    sget p1, Lcom/laborbook/keep/R$string;->payment_failed_try_again:I

    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    sget v0, Lcom/laborbook/keep/R$string;->payment_failed_title:I

    invoke-virtual {p0, v0}, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    :cond_3
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;->getBinding()Lcom/laborbook/keep/databinding/BottomsheetPaymentFailedBinding;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 31
    iget-object v1, p2, Lcom/laborbook/keep/databinding/BottomsheetPaymentFailedBinding;->tvTitle:Landroid/widget/TextView;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p2, Lcom/laborbook/keep/databinding/BottomsheetPaymentFailedBinding;->tvMessage:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object p1, p2, Lcom/laborbook/keep/databinding/BottomsheetPaymentFailedBinding;->ivClose:Landroid/widget/ImageView;

    new-instance v0, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object p1, p2, Lcom/laborbook/keep/databinding/BottomsheetPaymentFailedBinding;->btnTryAgain:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    new-instance p2, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet$$ExternalSyntheticLambda1;-><init>(Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;)V

    invoke-virtual {p1, p2}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method
