.class public abstract Lcom/inmobi/media/n5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/Lazy;

.field public static b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/inmobi/media/m5;->a:Lcom/inmobi/media/m5;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/inmobi/media/n5;->a:Lkotlin/Lazy;

    .line 12
    const-string v1, "n5"

    sput-object v1, Lcom/inmobi/media/n5;->c:Ljava/lang/String;

    .line 15
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/e6;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 18
    const-string v2, "key"

    const-string v3, "cip"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, v0, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    :cond_0
    sput-object v1, Lcom/inmobi/media/n5;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/inmobi/media/n5;->b:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/inmobi/media/n5;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/e6;

    if-eqz v0, :cond_0

    .line 3
    const-string v1, "cip"

    invoke-virtual {v0, v1}, Lcom/inmobi/media/e6;->a(Ljava/lang/String;)Z

    .line 4
    :cond_0
    sget-object v0, Lcom/inmobi/media/n5;->c:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-void
.end method
