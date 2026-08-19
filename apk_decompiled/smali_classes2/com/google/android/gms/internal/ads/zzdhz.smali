.class public final Lcom/google/android/gms/internal/ads/zzdhz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field zza:Lcom/google/android/gms/internal/ads/zzbgu;

.field zzb:Lcom/google/android/gms/internal/ads/zzbgr;

.field zzc:Lcom/google/android/gms/internal/ads/zzbhh;

.field zzd:Lcom/google/android/gms/internal/ads/zzbhe;

.field zze:Lcom/google/android/gms/internal/ads/zzbmc;

.field final zzf:Landroidx/collection/SimpleArrayMap;

.field final zzg:Landroidx/collection/SimpleArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhz;->zzf:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    .line 2
    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhz;->zzg:Landroidx/collection/SimpleArrayMap;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbgr;)Lcom/google/android/gms/internal/ads/zzdhz;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhz;->zzb:Lcom/google/android/gms/internal/ads/zzbgr;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbgu;)Lcom/google/android/gms/internal/ads/zzdhz;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhz;->zza:Lcom/google/android/gms/internal/ads/zzbgu;

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbha;Lcom/google/android/gms/internal/ads/zzbgx;)Lcom/google/android/gms/internal/ads/zzdhz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhz;->zzf:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhz;->zzg:Landroidx/collection/SimpleArrayMap;

    .line 2
    invoke-virtual {p2, p1, p3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbmc;)Lcom/google/android/gms/internal/ads/zzdhz;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhz;->zze:Lcom/google/android/gms/internal/ads/zzbmc;

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzbhe;)Lcom/google/android/gms/internal/ads/zzdhz;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhz;->zzd:Lcom/google/android/gms/internal/ads/zzbhe;

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzbhh;)Lcom/google/android/gms/internal/ads/zzdhz;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhz;->zzc:Lcom/google/android/gms/internal/ads/zzbhh;

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzdib;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdib;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzdib;-><init>(Lcom/google/android/gms/internal/ads/zzdhz;Lcom/google/android/gms/internal/ads/zzdia;)V

    return-object v0
.end method
