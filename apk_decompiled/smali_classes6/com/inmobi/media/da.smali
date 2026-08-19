.class public final Lcom/inmobi/media/da;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/inmobi/media/fa;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lcom/inmobi/media/ga;

    .line 2
    sget-object v0, Lcom/inmobi/media/fa;->a:Ljava/lang/String;

    const/4 v0, 0x2

    .line 3
    sput v0, Lcom/inmobi/media/fa;->d:I

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 4
    sget-object p1, Lcom/inmobi/media/fa;->b:Lcom/inmobi/media/wa;

    if-eqz p1, :cond_0

    .line 5
    iput-object v0, p1, Lcom/inmobi/media/wa;->a:Lcom/inmobi/media/da;

    .line 6
    iget-object p1, p1, Lcom/inmobi/media/wa;->b:Lcom/android/billingclient/api/BillingClient;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    .line 7
    :cond_0
    sput-object v0, Lcom/inmobi/media/fa;->b:Lcom/inmobi/media/wa;

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/media/ga;->toString()Ljava/lang/String;

    .line 9
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    iget v2, p1, Lcom/inmobi/media/ga;->a:I

    if-lez v2, :cond_2

    .line 11
    const-string v3, "p"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    :cond_2
    iget p1, p1, Lcom/inmobi/media/ga;->b:I

    if-lez p1, :cond_3

    .line 13
    const-string v2, "s"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_4

    move-object v3, v0

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    :goto_0
    if-eqz v3, :cond_6

    .line 19
    sput-object v3, Lcom/inmobi/media/fa;->a:Ljava/lang/String;

    .line 20
    const-string p1, "nipMapJSON"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_5

    sget-object v1, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "purchase_store"

    invoke-static {p1, v1}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object p1

    move-object v1, p1

    goto :goto_1

    :cond_5
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_6

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 40
    const-string v2, "purchase_pref"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 41
    :cond_6
    sget-object p1, Lcom/inmobi/media/fa;->b:Lcom/inmobi/media/wa;

    if-eqz p1, :cond_7

    .line 42
    iput-object v0, p1, Lcom/inmobi/media/wa;->a:Lcom/inmobi/media/da;

    .line 43
    iget-object p1, p1, Lcom/inmobi/media/wa;->b:Lcom/android/billingclient/api/BillingClient;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    .line 44
    :cond_7
    sput-object v0, Lcom/inmobi/media/fa;->b:Lcom/inmobi/media/wa;

    .line 45
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
