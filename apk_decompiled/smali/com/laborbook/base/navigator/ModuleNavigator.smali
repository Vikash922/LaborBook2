.class public final Lcom/laborbook/base/navigator/ModuleNavigator;
.super Ljava/lang/Object;
.source "ModuleNavigator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/base/navigator/ModuleNavigator$ActivityAddress;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleNavigator.kt\ncom/laborbook/base/navigator/ModuleNavigator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,32:1\n230#2,2:33\n*S KotlinDebug\n*F\n+ 1 ModuleNavigator.kt\ncom/laborbook/base/navigator/ModuleNavigator\n*L\n10#1:33,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\rB\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cR\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/laborbook/base/navigator/ModuleNavigator;",
        "",
        "classAddresses",
        "",
        "Lcom/laborbook/base/navigator/ModuleNavigator$ActivityAddress;",
        "<init>",
        "(Ljava/util/List;)V",
        "startActivity",
        "",
        "context",
        "Landroid/content/Context;",
        "classNameEnum",
        "Lcom/laborbook/base/navigator/ActivitiesNameEnum;",
        "ActivityAddress",
        "base_release"
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
.field private final classAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/laborbook/base/navigator/ModuleNavigator$ActivityAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/laborbook/base/navigator/ModuleNavigator$ActivityAddress;",
            ">;)V"
        }
    .end annotation

    const-string v0, "classAddresses"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/laborbook/base/navigator/ModuleNavigator;->classAddresses:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final startActivity(Landroid/content/Context;Lcom/laborbook/base/navigator/ActivitiesNameEnum;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classNameEnum"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/laborbook/base/navigator/ModuleNavigator;->classAddresses:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 33
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laborbook/base/navigator/ModuleNavigator$ActivityAddress;

    .line 10
    invoke-virtual {v1}, Lcom/laborbook/base/navigator/ModuleNavigator$ActivityAddress;->getRequestedActivity()Lcom/laborbook/base/navigator/ActivitiesNameEnum;

    move-result-object v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v1}, Lcom/laborbook/base/navigator/ModuleNavigator$ActivityAddress;->getActivityAddress()Ljava/lang/String;

    move-result-object p2

    .line 12
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 14
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 12
    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return-void

    .line 34
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "Collection contains no element matching the predicate."

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
