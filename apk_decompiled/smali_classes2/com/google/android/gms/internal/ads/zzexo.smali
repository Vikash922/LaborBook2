.class public final synthetic Lcom/google/android/gms/internal/ads/zzexo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgaz;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzexr;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzeym;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzexq;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzeyk;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzcui;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzexr;Lcom/google/android/gms/internal/ads/zzeym;Lcom/google/android/gms/internal/ads/zzexq;Lcom/google/android/gms/internal/ads/zzeyk;Lcom/google/android/gms/internal/ads/zzcui;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzexo;->zza:Lcom/google/android/gms/internal/ads/zzexr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzexo;->zzb:Lcom/google/android/gms/internal/ads/zzeym;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzexo;->zzc:Lcom/google/android/gms/internal/ads/zzexq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzexo;->zzd:Lcom/google/android/gms/internal/ads/zzeyk;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzexo;->zze:Lcom/google/android/gms/internal/ads/zzcui;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzexo;->zza:Lcom/google/android/gms/internal/ads/zzexr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzexo;->zzb:Lcom/google/android/gms/internal/ads/zzeym;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzexo;->zzc:Lcom/google/android/gms/internal/ads/zzexq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzexo;->zzd:Lcom/google/android/gms/internal/ads/zzeyk;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzexo;->zze:Lcom/google/android/gms/internal/ads/zzcui;

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzexw;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzexr;->zzb(Lcom/google/android/gms/internal/ads/zzexr;Lcom/google/android/gms/internal/ads/zzeym;Lcom/google/android/gms/internal/ads/zzexq;Lcom/google/android/gms/internal/ads/zzeyk;Lcom/google/android/gms/internal/ads/zzcui;Lcom/google/android/gms/internal/ads/zzexw;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
