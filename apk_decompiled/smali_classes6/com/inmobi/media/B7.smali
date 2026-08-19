.class public final Lcom/inmobi/media/B7;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/C7;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/C7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/B7;->a:Lcom/inmobi/media/C7;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/inmobi/media/c4;

    .line 2
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/inmobi/media/B7;->a:Lcom/inmobi/media/C7;

    .line 197
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NETWORK_UNREACHABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 199
    invoke-static {p1}, Lcom/inmobi/media/tc;->a(Lcom/inmobi/media/c4;)S

    move-result p1

    const/4 v2, 0x1

    .line 200
    invoke-virtual {v0, v1, v2, p1}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    .line 201
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
