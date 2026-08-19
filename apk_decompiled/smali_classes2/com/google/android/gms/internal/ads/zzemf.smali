.class public final synthetic Lcom/google/android/gms/internal/ads/zzemf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzftl;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzemh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzemh;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method
