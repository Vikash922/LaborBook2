.class public final synthetic Lcom/google/android/gms/internal/ads/zzdtd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdti;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbll;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfcn;

.field public final synthetic zze:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdti;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbll;Lcom/google/android/gms/internal/ads/zzfcn;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zza:Lcom/google/android/gms/internal/ads/zzdti;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zzc:Lcom/google/android/gms/internal/ads/zzbll;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zzd:Lcom/google/android/gms/internal/ads/zzfcn;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zze:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zza:Lcom/google/android/gms/internal/ads/zzdti;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zzc:Lcom/google/android/gms/internal/ads/zzbll;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zzd:Lcom/google/android/gms/internal/ads/zzfcn;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zze:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdti;->zzm(Lcom/google/android/gms/internal/ads/zzdti;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbll;Lcom/google/android/gms/internal/ads/zzfcn;Ljava/util/List;)V

    return-void
.end method
