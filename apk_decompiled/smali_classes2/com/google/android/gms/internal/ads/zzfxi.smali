.class final Lcom/google/android/gms/internal/ads/zzfxi;
.super Lcom/google/android/gms/internal/ads/zzfzb;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfxj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfxj;Ljava/util/ListIterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfxi;->zza:Lcom/google/android/gms/internal/ads/zzfxj;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzfzb;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxi;->zza:Lcom/google/android/gms/internal/ads/zzfxj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfxj;->zzb:Lcom/google/android/gms/internal/ads/zzftl;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzftl;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
