.class public final Lcom/boilerplate/navigator/FragmentStackStateMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boilerplate/navigator/FragmentStackStateMapper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J&\u0010\u0008\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\n\u0018\u00010\t2\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u000cH\u0002J\u001c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\t2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0005J\u0016\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00100\r2\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J\u001c\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u000c2\u0006\u0010\u0013\u001a\u00020\u0005H\u0002\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/boilerplate/navigator/FragmentStackStateMapper;",
        "",
        "<init>",
        "()V",
        "toBundle",
        "Landroid/os/Bundle;",
        "fragmentStackState",
        "Lcom/boilerplate/navigator/FragmentStackState;",
        "convertTagStackToArrayListOfParcelables",
        "Ljava/util/ArrayList;",
        "Landroid/os/Parcelable;",
        "fragmentTagStack",
        "",
        "Ljava/util/Stack;",
        "Lcom/boilerplate/navigator/data/StackItem;",
        "convertTabIndexToArrayListOfParcelables",
        "",
        "tabIndexStack",
        "fromBundle",
        "bundle",
        "getTabIndexStack",
        "getTagStack",
        "Companion",
        "navigator_release"
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
.field public static final Companion:Lcom/boilerplate/navigator/FragmentStackStateMapper$Companion;

.field public static final MEDUSA_STACK:Ljava/lang/String; = "stack"

.field public static final MEDUSA_STACK_ITEMS:Ljava/lang/String; = "stackItems"

.field public static final MEDUSA_TAB_INDEX:Ljava/lang/String; = "tabIndex"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/boilerplate/navigator/FragmentStackStateMapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/boilerplate/navigator/FragmentStackStateMapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/boilerplate/navigator/FragmentStackStateMapper;->Companion:Lcom/boilerplate/navigator/FragmentStackStateMapper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final convertTabIndexToArrayListOfParcelables(Ljava/util/Stack;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final convertTagStackToArrayListOfParcelables(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Stack<",
            "Lcom/boilerplate/navigator/data/StackItem;",
            ">;>;)",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boilerplate/navigator/data/StackItem;

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v1, "stackItems"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final getTabIndexStack(Landroid/os/Bundle;)Ljava/util/Stack;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "tabIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ljava/util/Stack;

    if-eqz p1, :cond_0

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    :cond_1
    return-object v0
.end method

.method private final getTagStack(Landroid/os/Bundle;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Stack<",
            "Lcom/boilerplate/navigator/data/StackItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "stack"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "stackItems"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boilerplate/navigator/data/StackItem;

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    return-object v0
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/boilerplate/navigator/FragmentStackState;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/boilerplate/navigator/FragmentStackState;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0, v1}, Lcom/boilerplate/navigator/FragmentStackState;-><init>(Ljava/util/List;Ljava/util/Stack;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/boilerplate/navigator/FragmentStackStateMapper;->getTabIndexStack(Landroid/os/Bundle;)Ljava/util/Stack;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/boilerplate/navigator/FragmentStackStateMapper;->getTagStack(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/boilerplate/navigator/FragmentStackState;

    invoke-direct {v1, p1, v0}, Lcom/boilerplate/navigator/FragmentStackState;-><init>(Ljava/util/List;Ljava/util/Stack;)V

    return-object v1
.end method

.method public final toBundle(Lcom/boilerplate/navigator/FragmentStackState;)Landroid/os/Bundle;
    .locals 3

    const-string v0, "fragmentStackState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/boilerplate/navigator/FragmentStackState;->getFragmentTagStack()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/boilerplate/navigator/FragmentStackStateMapper;->convertTagStackToArrayListOfParcelables(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "stack"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Lcom/boilerplate/navigator/FragmentStackState;->getTabIndexStack()Ljava/util/Stack;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/boilerplate/navigator/FragmentStackStateMapper;->convertTabIndexToArrayListOfParcelables(Ljava/util/Stack;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v1, "tabIndex"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
