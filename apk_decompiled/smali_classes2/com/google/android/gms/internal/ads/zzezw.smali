.class public final synthetic Lcom/google/android/gms/internal/ads/zzezw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexy;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbvk;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbvk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzezw;->zza:Lcom/google/android/gms/internal/ads/zzbvk;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezw;->zza:Lcom/google/android/gms/internal/ads/zzbvk;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbwg;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbwu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbvk;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbvk;->zzb()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbwu;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzbwg;->zzk(Lcom/google/android/gms/internal/ads/zzbwa;)V

    return-void
.end method
