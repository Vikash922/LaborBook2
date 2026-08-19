.class public final synthetic Lcom/google/android/gms/internal/ads/zzfie;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgaz;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfif;

.field public final synthetic zzb:I

.field public final synthetic zzc:J

.field public final synthetic zzd:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfif;IJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfie;->zza:Lcom/google/android/gms/internal/ads/zzfif;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzc:J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfie;->zza:Lcom/google/android/gms/internal/ads/zzfif;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzb:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzc:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzd:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/ads/internal/util/client/zzt;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfif;->zzc(Lcom/google/android/gms/internal/ads/zzfif;IJLjava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzt;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
