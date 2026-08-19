.class public final Lcom/google/android/gms/internal/ads/zzmb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzir;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcdr;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzir;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzir;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcdr;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzmb;->zza:Lcom/google/android/gms/internal/ads/zzir;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzkr;)Lcom/google/android/gms/internal/ads/zzmb;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmb;->zza:Lcom/google/android/gms/internal/ads/zzir;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzir;->zzr:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzij;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzij;-><init>(Lcom/google/android/gms/internal/ads/zzkr;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzir;->zzf:Lcom/google/android/gms/internal/ads/zzfuo;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzyv;)Lcom/google/android/gms/internal/ads/zzmb;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmb;->zza:Lcom/google/android/gms/internal/ads/zzir;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzir;->zzr:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/ads/zziq;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zziq;-><init>(Lcom/google/android/gms/internal/ads/zzyv;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzir;->zze:Lcom/google/android/gms/internal/ads/zzfuo;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzmc;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmb;->zza:Lcom/google/android/gms/internal/ads/zzir;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzir;->zzr:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzir;->zzr:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/zzmc;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzmc;-><init>(Lcom/google/android/gms/internal/ads/zzir;)V

    return-object v1
.end method
