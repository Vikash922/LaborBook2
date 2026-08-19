.class public final synthetic Lcom/google/android/gms/internal/ads/zzgik;
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
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgin;

    sget v0, Lcom/google/android/gms/internal/ads/zzgil;->zza:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgin;->zzb()Lcom/google/android/gms/internal/ads/zzgim;

    move-result-object p1

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgvt;->zzc(I)Lcom/google/android/gms/internal/ads/zzgvt;

    move-result-object v0

    .line 2
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgih;->zzc(Lcom/google/android/gms/internal/ads/zzgim;Lcom/google/android/gms/internal/ads/zzgvt;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgih;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdh;

    return-object p1
.end method
