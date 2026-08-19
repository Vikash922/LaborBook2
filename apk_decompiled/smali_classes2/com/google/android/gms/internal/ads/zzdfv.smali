.class public final Lcom/google/android/gms/internal/ads/zzdfv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdib;

.field private final zzb:Lcom/google/android/gms/ads/internal/client/zzbk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdib;Lcom/google/android/gms/ads/internal/client/zzbk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfv;->zza:Lcom/google/android/gms/internal/ads/zzdib;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdfv;->zzb:Lcom/google/android/gms/ads/internal/client/zzbk;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/internal/client/zzbk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfv;->zzb:Lcom/google/android/gms/ads/internal/client/zzbk;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzdib;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfv;->zza:Lcom/google/android/gms/internal/ads/zzdib;

    return-object v0
.end method
