.class public final Lcom/inmobi/media/xc;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/inmobi/media/yc;

.field public final synthetic b:B


# direct methods
.method public constructor <init>(Lcom/inmobi/media/yc;B)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/xc;->a:Lcom/inmobi/media/yc;

    iput-byte p2, p0, Lcom/inmobi/media/xc;->b:B

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/xc;->a:Lcom/inmobi/media/yc;

    iget-byte v1, p0, Lcom/inmobi/media/xc;->b:B

    .line 2
    invoke-virtual {v0, v1}, Lcom/inmobi/media/yc;->a(B)V

    return-void
.end method
