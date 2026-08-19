.class public final Lcom/inmobi/media/l7;
.super Lcom/inmobi/media/X1;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/inmobi/media/t7;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/t7;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/l7;->a:Lcom/inmobi/media/t7;

    .line 1
    invoke-direct {p0}, Lcom/inmobi/media/X1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/i2;)V
    .locals 4

    const-string v0, "click"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/l7;->a:Lcom/inmobi/media/t7;

    .line 2
    new-instance v0, Lcom/inmobi/media/rc;

    .line 3
    iget-object v1, p1, Lcom/inmobi/media/t7;->R:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    .line 4
    const-string v2, "AdImpressionSuccessful"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/S0;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p1, Lcom/inmobi/media/t7;->i:Lcom/inmobi/media/u6;

    .line 6
    iget-object v2, v2, Lcom/inmobi/media/u6;->f:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/inmobi/media/t7;->getCreativeId()Ljava/lang/String;

    move-result-object p1

    .line 8
    const-string v3, "inmobiJson"

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/inmobi/media/rc;-><init>(Lcom/inmobi/media/S0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string p1, "nativeBeacon"

    const-string v1, "<set-?>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, v0, Lcom/inmobi/media/rc;->e:Ljava/lang/String;

    .line 48
    iget-object v2, p0, Lcom/inmobi/media/l7;->a:Lcom/inmobi/media/t7;

    .line 49
    iget-object v2, v2, Lcom/inmobi/media/t7;->w:Lcom/inmobi/media/O0;

    if-eqz v2, :cond_2

    .line 50
    const-string v3, "telemetryOnAdImpression"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1955
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1992
    iput-object p1, v0, Lcom/inmobi/media/rc;->e:Ljava/lang/String;

    .line 1993
    iget-object p1, v2, Lcom/inmobi/media/O0;->a:Lcom/inmobi/media/Q0;

    invoke-virtual {p1}, Lcom/inmobi/media/Q0;->Z()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1994
    invoke-virtual {v0}, Lcom/inmobi/media/rc;->b()V

    goto :goto_1

    .line 1997
    :cond_1
    iget-object p1, v2, Lcom/inmobi/media/O0;->a:Lcom/inmobi/media/Q0;

    .line 1998
    iget-object p1, p1, Lcom/inmobi/media/Q0;->D:Lcom/inmobi/media/N;

    .line 1999
    invoke-virtual {p1, v0}, Lcom/inmobi/media/N;->a(Lcom/inmobi/media/rc;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Lcom/inmobi/media/i2;Ljava/lang/String;)V
    .locals 5

    const-string v0, "click"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    iget-object p1, p0, Lcom/inmobi/media/l7;->a:Lcom/inmobi/media/t7;

    .line 2001
    new-instance v0, Lcom/inmobi/media/rc;

    .line 2002
    iget-object v1, p1, Lcom/inmobi/media/t7;->R:Ljava/util/LinkedHashMap;

    const-string v2, "AdImpressionSuccessful"

    if-eqz v1, :cond_0

    .line 2003
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/S0;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2004
    :goto_0
    iget-object v3, p1, Lcom/inmobi/media/t7;->i:Lcom/inmobi/media/u6;

    .line 2005
    iget-object v3, v3, Lcom/inmobi/media/u6;->f:Ljava/lang/String;

    .line 2006
    invoke-virtual {p1}, Lcom/inmobi/media/t7;->getCreativeId()Ljava/lang/String;

    move-result-object p1

    .line 2007
    const-string v4, "inmobiJson"

    invoke-direct {v0, v1, v3, p1, v4}, Lcom/inmobi/media/rc;-><init>(Lcom/inmobi/media/S0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    const-string p1, "<set-?>"

    const-string v1, "nativeBeacon"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2046
    iput-object v1, v0, Lcom/inmobi/media/rc;->e:Ljava/lang/String;

    .line 2047
    const-string p1, "reason"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2119
    invoke-virtual {v0}, Lcom/inmobi/media/rc;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 2120
    invoke-static {}, Lcom/inmobi/media/E3;->q()Ljava/lang/String;

    move-result-object v1

    const-string v3, "networkType"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x882

    .line 2121
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v3, "errorCode"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2122
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2123
    sget-object p1, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 2124
    sget-object p1, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 2125
    invoke-static {v2, v0, p1}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    return-void
.end method
