.class public final synthetic Lcom/google/android/gms/internal/ads/zzgot;
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

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgoz;

    sget v0, Lcom/google/android/gms/internal/ads/zzgou;->zza:I

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgon;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgon;-><init>(Lcom/google/android/gms/internal/ads/zzgoo;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgon;->zzc(Lcom/google/android/gms/internal/ads/zzgoz;)Lcom/google/android/gms/internal/ads/zzgon;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgoz;->zzc()I

    move-result p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgvt;->zzc(I)Lcom/google/android/gms/internal/ads/zzgvt;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgon;->zzb(Lcom/google/android/gms/internal/ads/zzgvt;)Lcom/google/android/gms/internal/ads/zzgon;

    .line 3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzgon;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgon;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgon;->zzd()Lcom/google/android/gms/internal/ads/zzgop;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdh;

    return-object p1
.end method
