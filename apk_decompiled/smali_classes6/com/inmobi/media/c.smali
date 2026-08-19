.class public final Lcom/inmobi/media/c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/a0;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/c;->a:Lcom/inmobi/media/a0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/c;->a:Lcom/inmobi/media/a0;

    invoke-virtual {v0}, Lcom/inmobi/media/a0;->invoke()Ljava/lang/Object;

    .line 2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
