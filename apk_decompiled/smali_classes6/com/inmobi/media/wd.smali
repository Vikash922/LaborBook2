.class public final Lcom/inmobi/media/wd;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/yd;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/yd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/wd;->a:Lcom/inmobi/media/yd;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/inmobi/media/td;

    iget-object v1, p0, Lcom/inmobi/media/wd;->a:Lcom/inmobi/media/yd;

    .line 2
    iget-object v2, v1, Lcom/inmobi/media/yd;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-direct {v0, v1, v2}, Lcom/inmobi/media/td;-><init>(Lcom/inmobi/media/yd;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-object v0
.end method
