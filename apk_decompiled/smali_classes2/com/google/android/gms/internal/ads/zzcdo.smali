.class public final synthetic Lcom/google/android/gms/internal/ads/zzcdo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgd;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzgd;

.field public final synthetic zzb:[B


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgd;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdo;->zza:Lcom/google/android/gms/internal/ads/zzgd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdo;->zzb:[B

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzge;
    .locals 4

    sget v0, Lcom/google/android/gms/internal/ads/zzcdt;->zza:I

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdo;->zza:Lcom/google/android/gms/internal/ads/zzgd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgd;->zza()Lcom/google/android/gms/internal/ads/zzge;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdo;->zzb:[B

    .line 2
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfz;-><init>([B)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcdh;

    array-length v2, v2

    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcdh;-><init>(Lcom/google/android/gms/internal/ads/zzge;ILcom/google/android/gms/internal/ads/zzge;)V

    return-object v3
.end method
