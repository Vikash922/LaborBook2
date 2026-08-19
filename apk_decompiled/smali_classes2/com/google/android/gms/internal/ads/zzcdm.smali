.class public final synthetic Lcom/google/android/gms/internal/ads/zzcdm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgd;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcdt;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcdt;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zza:Lcom/google/android/gms/internal/ads/zzcdt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzb:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzc:Z

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzge;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zza:Lcom/google/android/gms/internal/ads/zzcdt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzb:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzc:Z

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcdt;->zzY(Lcom/google/android/gms/internal/ads/zzcdt;Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzge;

    move-result-object v0

    return-object v0
.end method
