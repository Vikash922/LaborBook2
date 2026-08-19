.class public final synthetic Lcom/inmobi/media/L8$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/inmobi/media/L8;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/L8;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/L8$$ExternalSyntheticLambda4;->f$0:Lcom/inmobi/media/L8;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/inmobi/media/L8$$ExternalSyntheticLambda4;->f$0:Lcom/inmobi/media/L8;

    invoke-static {v0, p1, p2, p3}, Lcom/inmobi/media/L8;->a(Lcom/inmobi/media/L8;Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
