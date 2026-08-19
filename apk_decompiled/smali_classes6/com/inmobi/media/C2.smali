.class public final Lcom/inmobi/media/C2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/commons/core/configs/Config;
    .locals 1

    const-string v0, "configType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "signals"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Lcom/inmobi/commons/core/configs/SignalsConfig;

    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/configs/SignalsConfig;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :sswitch_1
    const-string v0, "telemetry"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;

    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/configs/TelemetryConfig;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :sswitch_2
    const-string v0, "root"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    new-instance p0, Lcom/inmobi/commons/core/configs/RootConfig;

    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/configs/RootConfig;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :sswitch_3
    const-string v0, "ads"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 18
    :cond_3
    new-instance p0, Lcom/inmobi/commons/core/configs/AdConfig;

    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/configs/AdConfig;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :sswitch_4
    const-string v0, "crashReporting"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    .line 26
    :cond_4
    new-instance p0, Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/configs/CrashConfig;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :goto_0
    new-instance p0, Lcom/inmobi/commons/core/configs/AdConfig;

    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/configs/AdConfig;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x39d51b9 -> :sswitch_4
        0x178b0 -> :sswitch_3
        0x3580e2 -> :sswitch_2
        0x2e8323b9 -> :sswitch_1
        0x7c7866cb -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)Lcom/inmobi/commons/core/configs/Config;
    .locals 4

    const-string v0, "configType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "signals"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    .line 33
    :cond_0
    sget-object p0, Lcom/inmobi/commons/core/configs/SignalsConfig;->Companion:Lcom/inmobi/commons/core/configs/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/inmobi/commons/core/configs/f;->a()Lcom/inmobi/media/U5;

    move-result-object p0

    const-class v0, Lcom/inmobi/commons/core/configs/SignalsConfig;

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/media/U5;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inmobi/commons/core/configs/Config;

    goto/16 :goto_1

    .line 34
    :sswitch_1
    const-string v0, "telemetry"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    .line 42
    :cond_1
    sget-object p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->Companion:Lcom/inmobi/media/kc;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    new-instance p0, Lcom/inmobi/media/U5;

    invoke-direct {p0}, Lcom/inmobi/media/U5;-><init>()V

    .line 44
    new-instance v0, Lcom/inmobi/media/ub;

    const-string v1, "priorityEvents"

    const-class v2, Lcom/inmobi/commons/core/configs/TelemetryConfig;

    invoke-direct {v0, v1, v2}, Lcom/inmobi/media/ub;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 45
    new-instance v1, Lcom/inmobi/media/v6;

    new-instance v2, Lcom/inmobi/media/jc;

    invoke-direct {v2}, Lcom/inmobi/media/jc;-><init>()V

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/v6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/U5;->a(Lcom/inmobi/media/ub;Lcom/inmobi/media/tb;)Lcom/inmobi/media/U5;

    move-result-object p0

    .line 47
    const-class v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/media/U5;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inmobi/commons/core/configs/Config;

    goto/16 :goto_1

    .line 48
    :sswitch_2
    const-string v0, "root"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    .line 52
    :cond_2
    sget-object p0, Lcom/inmobi/commons/core/configs/RootConfig;->Companion:Lcom/inmobi/commons/core/configs/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    new-instance p0, Lcom/inmobi/media/U5;

    invoke-direct {p0}, Lcom/inmobi/media/U5;-><init>()V

    .line 54
    new-instance v0, Lcom/inmobi/media/ub;

    const-string v1, "components"

    const-class v2, Lcom/inmobi/commons/core/configs/RootConfig;

    invoke-direct {v0, v1, v2}, Lcom/inmobi/media/ub;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 55
    new-instance v1, Lcom/inmobi/media/v6;

    new-instance v2, Lcom/inmobi/commons/core/configs/d;

    invoke-direct {v2}, Lcom/inmobi/commons/core/configs/d;-><init>()V

    const-class v3, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/v6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/U5;->a(Lcom/inmobi/media/ub;Lcom/inmobi/media/tb;)Lcom/inmobi/media/U5;

    move-result-object p0

    .line 64
    new-instance v0, Lcom/inmobi/media/ub;

    const-string v1, "ipAddrTPSupport"

    const-class v2, Lcom/inmobi/commons/core/configs/RootConfig;

    invoke-direct {v0, v1, v2}, Lcom/inmobi/media/ub;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 65
    new-instance v1, Lcom/inmobi/media/v6;

    new-instance v2, Lcom/inmobi/media/sb;

    invoke-direct {v2}, Lcom/inmobi/media/sb;-><init>()V

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/v6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 66
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/U5;->a(Lcom/inmobi/media/ub;Lcom/inmobi/media/tb;)Lcom/inmobi/media/U5;

    move-result-object p0

    .line 67
    const-class v0, Lcom/inmobi/commons/core/configs/RootConfig;

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/media/U5;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inmobi/commons/core/configs/Config;

    goto :goto_1

    .line 68
    :sswitch_3
    const-string v0, "ads"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 78
    :cond_3
    sget-object p0, Lcom/inmobi/commons/core/configs/AdConfig;->Companion:Lcom/inmobi/commons/core/configs/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/media/U5;

    move-result-object p0

    const-class v0, Lcom/inmobi/commons/core/configs/AdConfig;

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/media/U5;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inmobi/commons/core/configs/Config;

    goto :goto_1

    .line 79
    :sswitch_4
    const-string v0, "crashReporting"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    .line 91
    :cond_4
    sget-object p0, Lcom/inmobi/commons/core/configs/CrashConfig;->Companion:Lcom/inmobi/media/f3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    new-instance p0, Lcom/inmobi/media/U5;

    invoke-direct {p0}, Lcom/inmobi/media/U5;-><init>()V

    .line 93
    const-class v0, Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/media/U5;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inmobi/commons/core/configs/Config;

    goto :goto_1

    .line 90
    :goto_0
    sget-object p0, Lcom/inmobi/commons/core/configs/AdConfig;->Companion:Lcom/inmobi/commons/core/configs/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/media/U5;

    move-result-object p0

    const-class v0, Lcom/inmobi/commons/core/configs/AdConfig;

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/media/U5;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inmobi/commons/core/configs/Config;

    :goto_1
    if-eqz p0, :cond_5

    .line 105
    invoke-virtual {p0, p2}, Lcom/inmobi/commons/core/configs/Config;->setAccountId$media_release(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, p3, p4}, Lcom/inmobi/commons/core/configs/Config;->setLastUpdateTimeStamp(J)V

    :cond_5
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x39d51b9 -> :sswitch_4
        0x178b0 -> :sswitch_3
        0x3580e2 -> :sswitch_2
        0x2e8323b9 -> :sswitch_1
        0x7c7866cb -> :sswitch_0
    .end sparse-switch
.end method
