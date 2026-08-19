.class final Lcom/google/android/gms/internal/ads/zzehx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzg;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbzp;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfbg;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfau;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzeid;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzehy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzehy;Lcom/google/android/gms/internal/ads/zzbzp;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzeid;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehx;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzb:Lcom/google/android/gms/internal/ads/zzfbg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzc:Lcom/google/android/gms/internal/ads/zzfau;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzd:Lcom/google/android/gms/internal/ads/zzeid;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehx;->zze:Lcom/google/android/gms/internal/ads/zzehy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzd:Lcom/google/android/gms/internal/ads/zzeid;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehx;->zze:Lcom/google/android/gms/internal/ads/zzehy;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzehy;->zzd(Lcom/google/android/gms/internal/ads/zzehy;)Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzb:Lcom/google/android/gms/internal/ads/zzfbg;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzc:Lcom/google/android/gms/internal/ads/zzfau;

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/google/android/gms/internal/ads/zzeih;->zza(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzeid;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehx;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbzp;->zzc(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzb()V
    .locals 0

    return-void
.end method

.method public final zzc()V
    .locals 0

    return-void
.end method
