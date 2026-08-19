.class public abstract Lcom/inmobi/media/z5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/inmobi/media/e6;


# direct methods
.method public static final a(Lcom/inmobi/media/l3;)J
    .locals 4

    const-string v0, "crashType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/inmobi/media/z5;->a()Lcom/inmobi/media/e6;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/inmobi/media/l3;->b:Ljava/lang/String;

    .line 11
    const-string v3, "key"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, v0, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    :cond_0
    return-wide v1
.end method

.method public static final a()Lcom/inmobi/media/e6;
    .locals 2

    .line 1
    sget-object v0, Lcom/inmobi/media/z5;->a:Lcom/inmobi/media/e6;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "CrashSession-store"

    invoke-static {v0, v1}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    sput-object v0, Lcom/inmobi/media/z5;->a:Lcom/inmobi/media/e6;

    .line 8
    :cond_1
    sget-object v0, Lcom/inmobi/media/z5;->a:Lcom/inmobi/media/e6;

    return-object v0
.end method
