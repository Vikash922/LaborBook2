.class public final synthetic Lcom/inmobi/media/E;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/I;)V
    .locals 7

    .line 1
    const-class v3, Lcom/inmobi/media/I;

    const-string v5, "calculateMetrics()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v4, "calculateMetrics"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/FunctionReferenceImpl;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/media/I;

    invoke-static {v0}, Lcom/inmobi/media/I;->a(Lcom/inmobi/media/I;)V

    .line 2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
