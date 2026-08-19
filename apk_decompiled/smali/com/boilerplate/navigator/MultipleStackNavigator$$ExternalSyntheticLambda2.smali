.class public final synthetic Lcom/boilerplate/navigator/MultipleStackNavigator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$1:Lcom/boilerplate/navigator/MultipleStackNavigator;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/boilerplate/navigator/MultipleStackNavigator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$$ExternalSyntheticLambda2;->f$1:Lcom/boilerplate/navigator/MultipleStackNavigator;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/boilerplate/navigator/MultipleStackNavigator$$ExternalSyntheticLambda2;->f$1:Lcom/boilerplate/navigator/MultipleStackNavigator;

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {v0, v1, p1}, Lcom/boilerplate/navigator/MultipleStackNavigator;->$r8$lambda$ZNdqG_al4FXBe96r6WT_ShyFfbM(Lkotlin/jvm/functions/Function2;Lcom/boilerplate/navigator/MultipleStackNavigator;Landroidx/fragment/app/Fragment;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
