.class public final Lcom/inmobi/commons/core/configs/f;
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

    const-string v2, "carrierNames"

    const-class v3, Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/ub;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 4
    new-instance v2, Lcom/inmobi/media/v6;

    new-instance v3, Lcom/inmobi/media/Rb;

    invoke-direct {v3}, Lcom/inmobi/media/Rb;-><init>()V

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/v6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/U5;->a(Lcom/inmobi/media/ub;Lcom/inmobi/media/tb;)Lcom/inmobi/media/U5;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/inmobi/media/ub;

    const-string v2, "control"

    const-class v3, Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/ub;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 15
    new-instance v2, Lcom/inmobi/media/v6;

    new-instance v3, Lcom/inmobi/media/Sb;

    invoke-direct {v3}, Lcom/inmobi/media/Sb;-><init>()V

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/v6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/U5;->a(Lcom/inmobi/media/ub;Lcom/inmobi/media/tb;)Lcom/inmobi/media/U5;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/inmobi/media/ub;

    const-string v2, "generalKeys"

    const-class v3, Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/ub;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 26
    new-instance v2, Lcom/inmobi/media/Q6;

    new-instance v3, Lcom/inmobi/media/Tb;

    invoke-direct {v3}, Lcom/inmobi/media/Tb;-><init>()V

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/Q6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/U5;->a(Lcom/inmobi/media/ub;Lcom/inmobi/media/tb;)Lcom/inmobi/media/U5;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/inmobi/media/ub;

    const-string v2, "adSpecificKeys"

    const-class v3, Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/ub;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 37
    new-instance v2, Lcom/inmobi/media/Q6;

    new-instance v3, Lcom/inmobi/media/Ub;

    invoke-direct {v3}, Lcom/inmobi/media/Ub;-><init>()V

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/Q6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/U5;->a(Lcom/inmobi/media/ub;Lcom/inmobi/media/tb;)Lcom/inmobi/media/U5;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/inmobi/media/ub;

    const-string v2, "versionList"

    const-class v3, Lcom/inmobi/commons/core/configs/SignalsConfig$Purchases;

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/ub;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 47
    new-instance v2, Lcom/inmobi/media/v6;

    new-instance v3, Lcom/inmobi/media/Vb;

    invoke-direct {v3}, Lcom/inmobi/media/Vb;-><init>()V

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/v6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/U5;->a(Lcom/inmobi/media/ub;Lcom/inmobi/media/tb;)Lcom/inmobi/media/U5;

    move-result-object v0

    return-object v0
.end method
