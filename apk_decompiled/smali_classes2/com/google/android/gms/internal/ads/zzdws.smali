.class public final synthetic Lcom/google/android/gms/internal/ads/zzdws;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdwu;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdyw;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdwu;Lcom/google/android/gms/internal/ads/zzdyw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdws;->zza:Lcom/google/android/gms/internal/ads/zzdwu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdws;->zzb:Lcom/google/android/gms/internal/ads/zzdyw;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdws;->zza:Lcom/google/android/gms/internal/ads/zzdwu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdws;->zzb:Lcom/google/android/gms/internal/ads/zzdyw;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwu;->zzd(Lcom/google/android/gms/internal/ads/zzdwu;Lcom/google/android/gms/internal/ads/zzdyw;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
