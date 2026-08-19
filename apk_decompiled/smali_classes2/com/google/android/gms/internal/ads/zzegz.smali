.class public final synthetic Lcom/google/android/gms/internal/ads/zzegz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeha;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfbg;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfau;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzeci;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeha;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzeci;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegz;->zza:Lcom/google/android/gms/internal/ads/zzeha;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzb:Lcom/google/android/gms/internal/ads/zzfbg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzc:Lcom/google/android/gms/internal/ads/zzfau;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzd:Lcom/google/android/gms/internal/ads/zzeci;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegz;->zza:Lcom/google/android/gms/internal/ads/zzeha;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeha;->zzd:Lcom/google/android/gms/internal/ads/zzehd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzb:Lcom/google/android/gms/internal/ads/zzfbg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzc:Lcom/google/android/gms/internal/ads/zzfau;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzd:Lcom/google/android/gms/internal/ads/zzeci;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzehd;->zzd(Lcom/google/android/gms/internal/ads/zzehd;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzeci;)V

    return-void
.end method
