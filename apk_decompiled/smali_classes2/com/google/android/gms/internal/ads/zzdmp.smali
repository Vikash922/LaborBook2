.class public final Lcom/google/android/gms/internal/ads/zzdmp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcva;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcwj;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcww;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcxi;

.field private final zze:Lcom/google/android/gms/internal/ads/zzczz;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfau;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfax;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzclx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcva;Lcom/google/android/gms/internal/ads/zzcwj;Lcom/google/android/gms/internal/ads/zzcww;Lcom/google/android/gms/internal/ads/zzcxi;Lcom/google/android/gms/internal/ads/zzczz;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfax;Lcom/google/android/gms/internal/ads/zzclx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmp;->zza:Lcom/google/android/gms/internal/ads/zzcva;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmp;->zzb:Lcom/google/android/gms/internal/ads/zzcwj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmp;->zzc:Lcom/google/android/gms/internal/ads/zzcww;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdmp;->zzd:Lcom/google/android/gms/internal/ads/zzcxi;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdmp;->zze:Lcom/google/android/gms/internal/ads/zzczz;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdmp;->zzf:Lcom/google/android/gms/internal/ads/zzfau;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdmp;->zzg:Lcom/google/android/gms/internal/ads/zzfax;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdmp;->zzh:Lcom/google/android/gms/internal/ads/zzclx;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdmt;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmp;->zzb:Lcom/google/android/gms/internal/ads/zzcwj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdmt;->zzb(Lcom/google/android/gms/internal/ads/zzdmt;)Lcom/google/android/gms/internal/ads/zzdmg;

    move-result-object v1

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzdmo;

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/zzdmo;-><init>(Lcom/google/android/gms/internal/ads/zzcwj;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdmp;->zza:Lcom/google/android/gms/internal/ads/zzcva;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdmp;->zzc:Lcom/google/android/gms/internal/ads/zzcww;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdmp;->zzd:Lcom/google/android/gms/internal/ads/zzcxi;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdmp;->zze:Lcom/google/android/gms/internal/ads/zzczz;

    .line 1
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdmg;->zzh(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/internal/ads/zzbhz;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/internal/ads/zzbib;Lcom/google/android/gms/ads/internal/overlay/zzac;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmp;->zzf:Lcom/google/android/gms/internal/ads/zzfau;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmp;->zzg:Lcom/google/android/gms/internal/ads/zzfax;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdmp;->zzh:Lcom/google/android/gms/internal/ads/zzclx;

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdmt;->zzh(Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfax;Lcom/google/android/gms/internal/ads/zzclx;)V

    return-void
.end method
