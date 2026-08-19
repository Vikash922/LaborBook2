.class public final Lcom/inmobi/media/U1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/V1;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/V1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/U1;->a:Lcom/inmobi/media/V1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/U1;->a:Lcom/inmobi/media/V1;

    invoke-virtual {v0}, Lcom/inmobi/media/V1;->f()Lcom/inmobi/media/o6;

    move-result-object v0

    return-object v0
.end method
