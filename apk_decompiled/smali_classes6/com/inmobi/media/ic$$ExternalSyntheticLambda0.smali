.class public final synthetic Lcom/inmobi/media/ic$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:Lcom/inmobi/media/mc;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/ic$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/inmobi/media/ic$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    iput-object p3, p0, Lcom/inmobi/media/ic$$ExternalSyntheticLambda0;->f$2:Lcom/inmobi/media/mc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/inmobi/media/ic$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/inmobi/media/ic$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    iget-object v2, p0, Lcom/inmobi/media/ic$$ExternalSyntheticLambda0;->f$2:Lcom/inmobi/media/mc;

    invoke-static {v0, v1, v2}, Lcom/inmobi/media/ic;->c(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    return-void
.end method
