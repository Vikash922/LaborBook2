.class final Lcom/google/android/gms/internal/ads/zzjy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzla;


# instance fields
.field private final zza:Ljava/lang/Object;

.field private zzb:Lcom/google/android/gms/internal/ads/zzbl;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzut;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjy;->zza:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzut;->zzC()Lcom/google/android/gms/internal/ads/zzbl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjy;->zzb:Lcom/google/android/gms/internal/ads/zzbl;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjy;->zzb:Lcom/google/android/gms/internal/ads/zzbl;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjy;->zza:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjy;->zzb:Lcom/google/android/gms/internal/ads/zzbl;

    return-void
.end method
