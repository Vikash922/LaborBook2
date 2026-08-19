.class public final Lcom/inmobi/media/qc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/inmobi/commons/core/configs/TelemetryConfig;


# direct methods
.method public constructor <init>(Lcom/inmobi/commons/core/configs/TelemetryConfig;)V
    .locals 1

    const-string v0, "telemetryConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/qc;->a:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/b1;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget v0, p1, Lcom/inmobi/media/b1;->g:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 3
    const-string v0, "ANREvent"

    invoke-virtual {p0, v0, p1}, Lcom/inmobi/media/qc;->a(Ljava/lang/String;Lcom/inmobi/media/x5;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/inmobi/media/x5;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/qc;->a:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getPriorityEventsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 5
    invoke-static {p2}, Lcom/inmobi/media/Xc;->a(Lcom/inmobi/media/x5;)Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 8
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    sget-object v0, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 10
    invoke-static {p1, p2, v0}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    :cond_0
    return-void
.end method
