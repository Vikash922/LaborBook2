.class public final Lcom/google/android/gms/internal/ads/zzul;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzvl;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzuk;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzajy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzadh;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzgk;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzajt;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzajt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzul;->zzc:Lcom/google/android/gms/internal/ads/zzajy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzuk;

    .line 2
    invoke-direct {v1, p2, p1}, Lcom/google/android/gms/internal/ads/zzuk;-><init>(Lcom/google/android/gms/internal/ads/zzadh;Lcom/google/android/gms/internal/ads/zzajy;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzul;->zza:Lcom/google/android/gms/internal/ads/zzuk;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzuk;->zza(Lcom/google/android/gms/internal/ads/zzgd;)V

    return-void
.end method
