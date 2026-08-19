.class public final synthetic Lcom/google/android/gms/internal/ads/zzgmg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgnv;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgmi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgmi;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgmh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgmh;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzglc;

    const-class v3, Lcom/google/android/gms/internal/ads/zzglm;

    const-class v4, Lcom/google/android/gms/internal/ads/zzgnl;

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzglc;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgld;)V

    .line 2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgmi;->zzg(Lcom/google/android/gms/internal/ads/zzglf;)V

    return-object v0
.end method
