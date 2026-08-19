.class public final Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet$Companion;
.super Ljava/lang/Object;
.source "UpiSelectionBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "ARG_SELECTED_PACKAGE",
        "newInstance",
        "Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;",
        "selectedPackage",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet$Companion;Ljava/lang/String;ILjava/lang/Object;)Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 76
    const-string p1, ""

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet$Companion;->newInstance(Ljava/lang/String;)Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;)Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "selectedPackage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;

    invoke-direct {v0}, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;-><init>()V

    .line 78
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 79
    const-string v2, "selected_package"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, v1}, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
