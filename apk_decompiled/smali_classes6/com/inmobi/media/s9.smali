.class public final Lcom/inmobi/media/s9;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/t9;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/t9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/s9;->a:Lcom/inmobi/media/t9;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/inmobi/media/m9;

    .line 2
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/inmobi/media/s9;->a:Lcom/inmobi/media/t9;

    .line 67
    iget-object p1, p1, Lcom/inmobi/media/t9;->b:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    .line 68
    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "NovatiqDataHandler"

    const-string v1, "Novatiq hyper id synced"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
