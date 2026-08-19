.class final Lcom/google/android/gms/internal/ads/zzgms;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic zza:Ljava/util/List;

.field final synthetic zzb:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgmw;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgms;->zza:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgms;->zzb:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgms;->zzb:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgms;->zza:Ljava/util/List;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgmu;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzgmu;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;Lcom/google/android/gms/internal/ads/zzgmv;)V

    return-object v2
.end method
