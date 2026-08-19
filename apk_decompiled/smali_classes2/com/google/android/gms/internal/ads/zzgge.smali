.class public final synthetic Lcom/google/android/gms/internal/ads/zzgge;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzglx;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgdv;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgdh;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzggk;

    sget v0, Lcom/google/android/gms/internal/ads/zzggg;->zza:I

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgga;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgga;-><init>(Lcom/google/android/gms/internal/ads/zzggb;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zzc(Lcom/google/android/gms/internal/ads/zzggk;)Lcom/google/android/gms/internal/ads/zzgga;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzgga;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzggk;->zzb()I

    move-result p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgvt;->zzc(I)Lcom/google/android/gms/internal/ads/zzgvt;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zzb(Lcom/google/android/gms/internal/ads/zzgvt;)Lcom/google/android/gms/internal/ads/zzgga;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzd()Lcom/google/android/gms/internal/ads/zzggc;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdh;

    return-object p1
.end method
