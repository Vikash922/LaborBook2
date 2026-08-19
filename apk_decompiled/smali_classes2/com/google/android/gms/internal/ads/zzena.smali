.class public final Lcom/google/android/gms/internal/ads/zzena;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzesv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfbp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfbp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzena;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x3a

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzena;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzenb;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfbp;->zzp:Z

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzenb;-><init>(Z)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
