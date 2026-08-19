.class public final synthetic Lcom/google/android/gms/internal/ads/zzeuu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeuv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeuv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeuu;->zza:Lcom/google/android/gms/internal/ads/zzeuv;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuu;->zza:Lcom/google/android/gms/internal/ads/zzeuv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeuw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeuv;->zzb:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzeuw;-><init>(Ljava/util/List;)V

    return-object v1
.end method
