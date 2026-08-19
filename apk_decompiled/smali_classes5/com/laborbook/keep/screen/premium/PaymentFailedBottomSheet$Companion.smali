.class public final Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet$Companion;
.super Ljava/lang/Object;
.source "PaymentFailedBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentFailedBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentFailedBottomSheet.kt\ncom/laborbook/keep/screen/premium/PaymentFailedBottomSheet$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,60:1\n1#2:61\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "ARG_MESSAGE",
        "ARG_TITLE",
        "newInstance",
        "Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;",
        "message",
        "title",
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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 48
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v1, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;

    invoke-direct {v1}, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;-><init>()V

    .line 53
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 54
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 55
    const-string p1, "title"

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    invoke-virtual {v1, v2}, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method
