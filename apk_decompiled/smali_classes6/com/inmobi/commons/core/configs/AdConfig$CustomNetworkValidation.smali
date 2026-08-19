.class public final Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/configs/AdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomNetworkValidation"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u000c\"\u0004\u0008\u001a\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;",
        "",
        "()V",
        "enabled",
        "",
        "getEnabled",
        "()Z",
        "setEnabled",
        "(Z)V",
        "nonValidatedExpiry",
        "",
        "getNonValidatedExpiry",
        "()J",
        "setNonValidatedExpiry",
        "(J)V",
        "refreshDebounceTime",
        "getRefreshDebounceTime",
        "setRefreshDebounceTime",
        "urlDomain",
        "",
        "getUrlDomain",
        "()Ljava/lang/String;",
        "setUrlDomain",
        "(Ljava/lang/String;)V",
        "validatedExpiry",
        "getValidatedExpiry",
        "setValidatedExpiry",
        "media_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private enabled:Z

.field private nonValidatedExpiry:J

.field private refreshDebounceTime:J

.field private urlDomain:Ljava/lang/String;

.field private validatedExpiry:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "supply.inmobicdn.net"

    iput-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->urlDomain:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    .line 5
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->refreshDebounceTime:J

    const-wide/32 v0, 0x1d4c0

    .line 6
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->validatedExpiry:J

    const-wide/16 v0, 0x7530

    .line 7
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->nonValidatedExpiry:J

    return-void
.end method


# virtual methods
.method public final getEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->enabled:Z

    return v0
.end method

.method public final getNonValidatedExpiry()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->nonValidatedExpiry:J

    return-wide v0
.end method

.method public final getRefreshDebounceTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->refreshDebounceTime:J

    return-wide v0
.end method

.method public final getUrlDomain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->urlDomain:Ljava/lang/String;

    return-object v0
.end method

.method public final getValidatedExpiry()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->validatedExpiry:J

    return-wide v0
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->enabled:Z

    return-void
.end method

.method public final setNonValidatedExpiry(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->nonValidatedExpiry:J

    return-void
.end method

.method public final setRefreshDebounceTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->refreshDebounceTime:J

    return-void
.end method

.method public final setUrlDomain(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->urlDomain:Ljava/lang/String;

    return-void
.end method

.method public final setValidatedExpiry(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->validatedExpiry:J

    return-void
.end method
