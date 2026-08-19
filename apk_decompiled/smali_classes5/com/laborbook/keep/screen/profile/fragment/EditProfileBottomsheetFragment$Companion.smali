.class public final Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment$Companion;
.super Ljava/lang/Object;
.source "EditProfileBottomsheetFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditProfileBottomsheetFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditProfileBottomsheetFragment.kt\ncom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,199:1\n1#2:200\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J3\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00052\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment$Companion;",
        "",
        "<init>",
        "()V",
        "ARG_STAFF_ID",
        "",
        "ARG_STAFF_NAME",
        "ARG_INITIAL_SALARY",
        "ARG_INITIAL_SALARY_TYPE",
        "newInstance",
        "Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment;",
        "staffId",
        "staffName",
        "initialSalary",
        "",
        "initialSalaryType",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment;",
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

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ILjava/lang/Object;)Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment;
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 182
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment;
    .locals 3

    const-string v0, "staffId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "staffName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    new-instance v0, Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment;

    invoke-direct {v0}, Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment;-><init>()V

    .line 189
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 190
    const-string v2, "staff_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string p1, "staff_name"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 192
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    const-string p3, "initial_salary"

    invoke-virtual {v1, p3, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_0
    if-eqz p4, :cond_1

    .line 193
    const-string p1, "initial_salary_type"

    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_1
    invoke-virtual {v0, v1}, Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
