.class public final synthetic Lcom/google/android/gms/internal/ads/zzgej;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgmy;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgdh;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgih;

    sget v0, Lcom/google/android/gms/internal/ads/zzgel;->zza:I

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgkg;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgkg;->zzb(Lcom/google/android/gms/internal/ads/zzgih;)Lcom/google/android/gms/internal/ads/zzgcy;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgvr;->zzb(Lcom/google/android/gms/internal/ads/zzgih;)Lcom/google/android/gms/internal/ads/zzgcy;

    move-result-object p1

    :goto_0
    return-object p1
.end method
