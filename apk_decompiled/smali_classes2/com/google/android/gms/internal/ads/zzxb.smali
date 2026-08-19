.class public final Lcom/google/android/gms/internal/ads/zzxb;
.super Lcom/google/android/gms/internal/ads/zzum;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzap;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbl;Lcom/google/android/gms/internal/ads/zzap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzum;-><init>(Lcom/google/android/gms/internal/ads/zzbl;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzc:Lcom/google/android/gms/internal/ads/zzap;

    return-void
.end method


# virtual methods
.method public final zze(ILcom/google/android/gms/internal/ads/zzbk;J)Lcom/google/android/gms/internal/ads/zzbk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzum;->zzb:Lcom/google/android/gms/internal/ads/zzbl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbl;->zze(ILcom/google/android/gms/internal/ads/zzbk;J)Lcom/google/android/gms/internal/ads/zzbk;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzc:Lcom/google/android/gms/internal/ads/zzap;

    .line 2
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzbk;->zzd:Lcom/google/android/gms/internal/ads/zzap;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzap;->zzb:Lcom/google/android/gms/internal/ads/zzak;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzbk;->zzc:Ljava/lang/Object;

    return-object p2
.end method
