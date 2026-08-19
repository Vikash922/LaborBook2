.class public abstract Lcom/inmobi/media/r4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/Y1;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "b64feature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/inmobi/media/Y1;

    invoke-direct {v0}, Lcom/inmobi/media/Y1;-><init>()V

    iput-object v0, p0, Lcom/inmobi/media/r4;->a:Lcom/inmobi/media/Y1;

    .line 6
    invoke-virtual {v0, p1}, Lcom/inmobi/media/Y1;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/r4;->a:Lcom/inmobi/media/Y1;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/Y1;->a:Ljava/util/BitSet;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    :cond_0
    return p1
.end method
