.class public final Lcom/google/android/gms/internal/ads/zzdij;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdic;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdij;->zza:Lcom/google/android/gms/internal/ads/zzdic;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzdic;)Lcom/google/android/gms/internal/ads/zzdhq;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdic;->zza()Lcom/google/android/gms/internal/ads/zzdhq;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhfg;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdhq;

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdhq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdij;->zza:Lcom/google/android/gms/internal/ads/zzdic;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdij;->zzc(Lcom/google/android/gms/internal/ads/zzdic;)Lcom/google/android/gms/internal/ads/zzdhq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdij;->zza:Lcom/google/android/gms/internal/ads/zzdic;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdij;->zzc(Lcom/google/android/gms/internal/ads/zzdic;)Lcom/google/android/gms/internal/ads/zzdhq;

    move-result-object v0

    return-object v0
.end method
