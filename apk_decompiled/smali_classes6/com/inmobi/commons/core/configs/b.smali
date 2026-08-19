.class public final Lcom/inmobi/commons/core/configs/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/inmobi/media/U5;
    .locals 5

    .line 1
    new-instance v0, Lcom/inmobi/media/U5;

    invoke-direct {v0}, Lcom/inmobi/media/U5;-><init>()V

    .line 3
    new-instance v1, Lcom/inmobi/media/ub;

    const-string v2, "cache"

    const-class v3, Lcom/inmobi/commons/core/configs/AdConfig;

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/ub;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 4
    new-instance v2, Lcom/inmobi/media/Q6;

    new-instance v3, Lcom/inmobi/commons/core/configs/a;

    invoke-direct {v3}, Lcom/inmobi/commons/core/configs/a;-><init>()V

    const-class v4, Lcom/inmobi/commons/core/configs/AdConfig$CacheConfig;

    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/Q6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/U5;->a(Lcom/inmobi/media/ub;Lcom/inmobi/media/tb;)Lcom/inmobi/media/U5;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/inmobi/media/ub;

    const-string v2, "allowedContentType"

    const-class v3, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/ub;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 15
    new-instance v2, Lcom/inmobi/media/v6;

    new-instance v3, Lcom/inmobi/media/t;

    invoke-direct {v3}, Lcom/inmobi/media/t;-><init>()V

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/v6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/U5;->a(Lcom/inmobi/media/ub;Lcom/inmobi/media/tb;)Lcom/inmobi/media/U5;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/inmobi/media/ub;

    const-string v2, "gestures"

    const-class v3, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/ub;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 26
    new-instance v2, Lcom/inmobi/media/v6;

    .line 27
    new-instance v3, Lcom/inmobi/media/u;

    invoke-direct {v3}, Lcom/inmobi/media/u;-><init>()V

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 28
    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/v6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/U5;->a(Lcom/inmobi/media/ub;Lcom/inmobi/media/tb;)Lcom/inmobi/media/U5;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/inmobi/media/ub;

    const-string v2, "skipFields"

    const-class v3, Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/ub;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 41
    new-instance v2, Lcom/inmobi/media/v6;

    new-instance v3, Lcom/inmobi/media/v;

    invoke-direct {v3}, Lcom/inmobi/media/v;-><init>()V

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/v6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/U5;->a(Lcom/inmobi/media/ub;Lcom/inmobi/media/tb;)Lcom/inmobi/media/U5;

    move-result-object v0

    return-object v0
.end method
