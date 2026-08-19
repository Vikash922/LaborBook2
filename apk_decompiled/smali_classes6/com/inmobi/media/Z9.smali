.class public final Lcom/inmobi/media/Z9;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final a:Lcom/inmobi/media/Z9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/Z9;

    invoke-direct {v0}, Lcom/inmobi/media/Z9;-><init>()V

    sput-object v0, Lcom/inmobi/media/Z9;->a:Lcom/inmobi/media/Z9;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lcom/inmobi/media/aa;->a:Lcom/inmobi/media/aa;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    sget-object v2, Lcom/inmobi/media/aa;->c:Lcom/inmobi/media/U9;

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Lcom/inmobi/media/U9;

    const-string v3, "pub_signals_store"

    invoke-direct {v2, v0, v3}, Lcom/inmobi/media/U9;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v2, Lcom/inmobi/media/aa;->c:Lcom/inmobi/media/U9;

    .line 6
    :cond_0
    sget-object v0, Lcom/inmobi/media/aa;->c:Lcom/inmobi/media/U9;

    if-nez v0, :cond_1

    const-string v0, "prefDao"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    const-string v2, "saved_signals"

    invoke-virtual {v0, v2}, Lcom/inmobi/media/U9;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_2
    if-nez v1, :cond_3

    .line 8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_3
    return-object v1
.end method
