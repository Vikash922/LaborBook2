.class final Lcom/google/android/gms/internal/ads/zzeyd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzftl;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzeyh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeyh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyd;->zza:Lcom/google/android/gms/internal/ads/zzeyh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdxq;

    .line 2
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, ""

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "Failed to get a cache key, reverting to legacy flow."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyd;->zza:Lcom/google/android/gms/internal/ads/zzeyh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeyf;

    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeyh;->zzb(Lcom/google/android/gms/internal/ads/zzeyh;)Lcom/google/android/gms/internal/ads/zzfdm;

    move-result-object v2

    invoke-direct {v0, v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzeyf;-><init>(Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzfdm;Lcom/google/android/gms/internal/ads/zzeyg;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzeyh;->zzd(Lcom/google/android/gms/internal/ads/zzeyh;Lcom/google/android/gms/internal/ads/zzeyf;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeyh;->zza(Lcom/google/android/gms/internal/ads/zzeyh;)Lcom/google/android/gms/internal/ads/zzeyf;

    move-result-object p1

    return-object p1
.end method
