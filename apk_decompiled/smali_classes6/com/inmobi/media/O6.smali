.class public final Lcom/inmobi/media/O6;
.super Lcom/inmobi/media/e;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/c4;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/c4;)V
    .locals 1

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/inmobi/media/e;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/O6;->a:Lcom/inmobi/media/c4;

    return-void
.end method
