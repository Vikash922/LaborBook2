.class public final Lcom/google/android/gms/internal/ads/zzcpw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpw;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpw;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcpw;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpw;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcqx;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqx;->zza()Lcom/google/android/gms/internal/ads/zzfau;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfau;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpw;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcvu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcpw;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcwz;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcpv;

    .line 3
    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcpv;-><init>(Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzcvu;Lcom/google/android/gms/internal/ads/zzcwz;)V

    return-object v3
.end method
