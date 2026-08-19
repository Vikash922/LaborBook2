.class public final synthetic Lcom/google/android/gms/internal/ads/zzcdn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgd;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcdt;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcdt;Lcom/google/android/gms/internal/ads/zzgd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zza:Lcom/google/android/gms/internal/ads/zzcdt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzb:Lcom/google/android/gms/internal/ads/zzgd;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzge;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zza:Lcom/google/android/gms/internal/ads/zzcdt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzb:Lcom/google/android/gms/internal/ads/zzgd;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcdt;->zzZ(Lcom/google/android/gms/internal/ads/zzcdt;Lcom/google/android/gms/internal/ads/zzgd;)Lcom/google/android/gms/internal/ads/zzge;

    move-result-object v0

    return-object v0
.end method
