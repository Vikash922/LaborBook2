.class public final Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ItemDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "ContactItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemDiffCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ItemDiffCallback;",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;",
        "<init>",
        "()V",
        "areItemsTheSame",
        "",
        "oldItem",
        "newItem",
        "areContentsTheSame",
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
.method public constructor <init>()V
    .locals 0

    .line 542
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 542
    check-cast p1, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;

    check-cast p2, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ItemDiffCallback;->areContentsTheSame(Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;)Z
    .locals 2

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    instance-of v0, p1, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;

    if-eqz v0, :cond_0

    .line 546
    check-cast p1, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;->getContactItem()Lcom/laborbook/keep/screen/addstaff/model/ContactItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;->getMobileNumber()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;

    invoke-virtual {p2}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;->getContactItem()Lcom/laborbook/keep/screen/addstaff/model/ContactItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;->getMobileNumber()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 548
    :cond_0
    instance-of v0, p1, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$AdItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$AdItem;

    if-eqz v0, :cond_1

    .line 550
    check-cast p1, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$AdItem;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$AdItem;->getAdPosition()I

    move-result p1

    check-cast p2, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$AdItem;

    invoke-virtual {p2}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$AdItem;->getAdPosition()I

    move-result p2

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 542
    check-cast p1, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;

    check-cast p2, Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ItemDiffCallback;->areItemsTheSame(Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;)Z

    move-result p1

    return p1
.end method
