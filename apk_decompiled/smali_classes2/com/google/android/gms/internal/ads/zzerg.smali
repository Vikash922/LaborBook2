.class public final synthetic Lcom/google/android/gms/internal/ads/zzerg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgaz;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzerh;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzerh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzerg;->zza:Lcom/google/android/gms/internal/ads/zzerh;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzerg;->zza:Lcom/google/android/gms/internal/ads/zzerh;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzerh;->zzc(Lcom/google/android/gms/internal/ads/zzerh;Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
