.class public final Lcom/inmobi/media/q6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/t6;

.field public final b:Lcom/inmobi/media/U3;

.field public final c:Ljava/util/LinkedHashSet;

.field public d:Ljava/lang/String;

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/inmobi/media/t6;Lcom/inmobi/media/U3;)V
    .locals 1

    const-string v0, "embeddedBrowserViewClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/q6;->a:Lcom/inmobi/media/t6;

    .line 3
    iput-object p2, p0, Lcom/inmobi/media/q6;->b:Lcom/inmobi/media/U3;

    .line 7
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/q6;->c:Ljava/util/LinkedHashSet;

    return-void
.end method
