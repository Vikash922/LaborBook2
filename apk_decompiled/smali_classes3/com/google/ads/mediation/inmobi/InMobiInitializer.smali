.class public Lcom/google/ads/mediation/inmobi/InMobiInitializer;
.super Ljava/lang/Object;
.source "InMobiInitializer.java"

# interfaces
.implements Lcom/inmobi/sdk/SdkInitializationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/inmobi/InMobiInitializer$Listener;,
        Lcom/google/ads/mediation/inmobi/InMobiInitializer$InitializationStatus;
    }
.end annotation


# static fields
.field public static final INITIALIZED:I = 0x2

.field public static final INITIALIZING:I = 0x1

.field public static final UNINITIALIZED:I

.field private static instance:Lcom/google/ads/mediation/inmobi/InMobiInitializer;


# instance fields
.field private final inMobiSdkWrapper:Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;

.field initializationStatus:I

.field final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/ads/mediation/inmobi/InMobiInitializer$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->listeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->initializationStatus:I

    .line 73
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;

    invoke-direct {v0}, Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->inMobiSdkWrapper:Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;

    return-void
.end method

.method constructor <init>(Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->listeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->initializationStatus:I

    .line 86
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->inMobiSdkWrapper:Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;

    return-void
.end method

.method public static getInstance()Lcom/google/ads/mediation/inmobi/InMobiInitializer;
    .locals 1

    .line 77
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->instance:Lcom/google/ads/mediation/inmobi/InMobiInitializer;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;

    invoke-direct {v0}, Lcom/google/ads/mediation/inmobi/InMobiInitializer;-><init>()V

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->instance:Lcom/google/ads/mediation/inmobi/InMobiInitializer;

    .line 80
    :cond_0
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->instance:Lcom/google/ads/mediation/inmobi/InMobiInitializer;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/mediation/inmobi/InMobiInitializer$Listener;)V
    .locals 2

    .line 92
    iget v0, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->initializationStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 93
    invoke-interface {p3}, Lcom/google/ads/mediation/inmobi/InMobiInitializer$Listener;->onInitializeSuccess()V

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget p3, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->initializationStatus:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    return-void

    .line 102
    :cond_1
    iput v0, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->initializationStatus:I

    .line 104
    iget-object p3, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->inMobiSdkWrapper:Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;

    invoke-static {}, Lcom/google/ads/mediation/inmobi/InMobiConsent;->getConsentObj()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0, p0}, Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;->init(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/inmobi/sdk/SdkInitializationListener;)V

    return-void
.end method

.method public onInitializationComplete(Ljava/lang/Error;)V
    .locals 2

    if-nez p1, :cond_0

    .line 110
    sget-object p1, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string v0, "InMobi SDK initialized."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 112
    iput p1, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->initializationStatus:I

    .line 113
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/inmobi/InMobiInitializer$Listener;

    .line 114
    invoke-interface {v0}, Lcom/google/ads/mediation/inmobi/InMobiInitializer$Listener;->onInitializeSuccess()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->initializationStatus:I

    const/16 v0, 0x65

    .line 121
    invoke-virtual {p1}, Ljava/lang/Error;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {v0, p1}, Lcom/google/ads/mediation/inmobi/InMobiConstants;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/mediation/inmobi/InMobiInitializer$Listener;

    .line 123
    invoke-interface {v1, p1}, Lcom/google/ads/mediation/inmobi/InMobiInitializer$Listener;->onInitializeError(Lcom/google/android/gms/ads/AdError;)V

    goto :goto_1

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
