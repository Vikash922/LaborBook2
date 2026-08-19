.class public final Lcom/boilerplate/navigator/NavigatorConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/boilerplate/navigator/NavigatorConfiguration;",
        "",
        "initialTabIndex",
        "",
        "alwaysExitFromInitial",
        "",
        "defaultNavigatorTransaction",
        "Lcom/boilerplate/navigator/transaction/NavigatorTransaction;",
        "<init>",
        "(IZLcom/boilerplate/navigator/transaction/NavigatorTransaction;)V",
        "getInitialTabIndex",
        "()I",
        "getAlwaysExitFromInitial",
        "()Z",
        "getDefaultNavigatorTransaction",
        "()Lcom/boilerplate/navigator/transaction/NavigatorTransaction;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
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


# instance fields
.field private final alwaysExitFromInitial:Z

.field private final defaultNavigatorTransaction:Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

.field private final initialTabIndex:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/boilerplate/navigator/NavigatorConfiguration;-><init>(IZLcom/boilerplate/navigator/transaction/NavigatorTransaction;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IZLcom/boilerplate/navigator/transaction/NavigatorTransaction;)V
    .locals 1

    .line 2
    const-string v0, "defaultNavigatorTransaction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/boilerplate/navigator/NavigatorConfiguration;->initialTabIndex:I

    iput-boolean p2, p0, Lcom/boilerplate/navigator/NavigatorConfiguration;->alwaysExitFromInitial:Z

    iput-object p3, p0, Lcom/boilerplate/navigator/NavigatorConfiguration;->defaultNavigatorTransaction:Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    return-void
.end method

.method public synthetic constructor <init>(IZLcom/boilerplate/navigator/transaction/NavigatorTransaction;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 3
    sget-object p3, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;->ATTACH_DETACH:Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/boilerplate/navigator/NavigatorConfiguration;-><init>(IZLcom/boilerplate/navigator/transaction/NavigatorTransaction;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/boilerplate/navigator/NavigatorConfiguration;IZLcom/boilerplate/navigator/transaction/NavigatorTransaction;ILjava/lang/Object;)Lcom/boilerplate/navigator/NavigatorConfiguration;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/boilerplate/navigator/NavigatorConfiguration;->initialTabIndex:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/boilerplate/navigator/NavigatorConfiguration;->alwaysExitFromInitial:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/boilerplate/navigator/NavigatorConfiguration;->defaultNavigatorTransaction:Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/boilerplate/navigator/NavigatorConfiguration;->copy(IZLcom/boilerplate/navigator/transaction/NavigatorTransaction;)Lcom/boilerplate/navigator/NavigatorConfiguration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/boilerplate/navigator/NavigatorConfiguration;->initialTabIndex:I

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/boilerplate/navigator/NavigatorConfiguration;->alwaysExitFromInitial:Z

    return v0
.end method

.method public final component3()Lcom/boilerplate/navigator/transaction/NavigatorTransaction;
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/navigator/NavigatorConfiguration;->defaultNavigatorTransaction:Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    return-object v0
.end method

.method public final copy(IZLcom/boilerplate/navigator/transaction/NavigatorTransaction;)Lcom/boilerplate/navigator/NavigatorConfiguration;
    .locals 1

    const-string v0, "defaultNavigatorTransaction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/boilerplate/navigator/NavigatorConfiguration;

    invoke-direct {v0, p1, p2, p3}, Lcom/boilerplate/navigator/NavigatorConfiguration;-><init>(IZLcom/boilerplate/navigator/transaction/NavigatorTransaction;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/boilerplate/navigator/NavigatorConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/boilerplate/navigator/NavigatorConfiguration;

    iget v1, p0, Lcom/boilerplate/navigator/NavigatorConfiguration;->initialTabIndex:I

    iget v3, p1, Lcom/boilerplate/navigator/NavigatorConfiguration;->initialTabIndex:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/boilerplate/navigator/NavigatorConfiguration;->alwaysExitFromInitial:Z

    iget-boolean v3, p1, Lcom/boilerplate/navigator/NavigatorConfiguration;->alwaysExitFromInitial:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/boilerplate/navigator/NavigatorConfiguration;->defaultNavigatorTransaction:Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    iget-object p1, p1, Lcom/boilerplate/navigator/NavigatorConfiguration;->defaultNavigatorTransaction:Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAlwaysExitFromInitial()Z
    .locals 1

    iget-boolean v0, p0, Lcom/boilerplate/navigator/NavigatorConfiguration;->alwaysExitFromInitial:Z

    return v0
.end method

.method public final getDefaultNavigatorTransaction()Lcom/boilerplate/navigator/transaction/NavigatorTransaction;
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/navigator/NavigatorConfiguration;->defaultNavigatorTransaction:Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    return-object v0
.end method

.method public final getInitialTabIndex()I
    .locals 1

    iget v0, p0, Lcom/boilerplate/navigator/NavigatorConfiguration;->initialTabIndex:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/boilerplate/navigator/NavigatorConfiguration;->initialTabIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/boilerplate/navigator/NavigatorConfiguration;->alwaysExitFromInitial:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/boilerplate/navigator/NavigatorConfiguration;->defaultNavigatorTransaction:Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    invoke-virtual {v0}, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NavigatorConfiguration(initialTabIndex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/boilerplate/navigator/NavigatorConfiguration;->initialTabIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alwaysExitFromInitial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/boilerplate/navigator/NavigatorConfiguration;->alwaysExitFromInitial:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultNavigatorTransaction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boilerplate/navigator/NavigatorConfiguration;->defaultNavigatorTransaction:Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
