.class public final Lcom/google/ads/mediation/inmobi/InMobiExtras;
.super Ljava/lang/Object;
.source "InMobiExtras.java"


# instance fields
.field private final keywords:Ljava/lang/String;

.field private final parameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiExtras;->parameterMap:Ljava/util/HashMap;

    .line 13
    iput-object p2, p0, Lcom/google/ads/mediation/inmobi/InMobiExtras;->keywords:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKeywords()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiExtras;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiExtras;->parameterMap:Ljava/util/HashMap;

    return-object v0
.end method
