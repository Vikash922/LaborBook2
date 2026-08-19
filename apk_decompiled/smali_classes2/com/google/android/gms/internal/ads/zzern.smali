.class public final Lcom/google/android/gms/internal/ads/zzern;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzern;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzern;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcuo;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcuo;->zza()Landroid/os/Bundle;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzerl;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzerl;-><init>(Landroid/os/Bundle;)V

    return-object v1
.end method
