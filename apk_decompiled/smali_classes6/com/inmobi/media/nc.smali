.class public abstract Lcom/inmobi/media/nc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/inmobi/media/e6;

.field public static b:I

.field public static c:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "imtelemetrydboverflow"

    invoke-static {v0, v1}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    sput-object v0, Lcom/inmobi/media/nc;->a:Lcom/inmobi/media/e6;

    const/4 v0, -0x1

    .line 7
    sput v0, Lcom/inmobi/media/nc;->b:I

    return-void
.end method

.method public static a()I
    .locals 4

    .line 1
    sget v0, Lcom/inmobi/media/nc;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2
    sget-object v0, Lcom/inmobi/media/nc;->a:Lcom/inmobi/media/e6;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    const-string v2, "key"

    const-string v3, "count"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, v0, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 55
    :cond_0
    sput v1, Lcom/inmobi/media/nc;->b:I

    .line 57
    :cond_1
    sget v0, Lcom/inmobi/media/nc;->b:I

    return v0
.end method
