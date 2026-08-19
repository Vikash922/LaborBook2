.class public final synthetic Lcom/google/android/gms/internal/ads/zzgdl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzgkw;

.field public final synthetic zzb:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgkw;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdl;->zza:Lcom/google/android/gms/internal/ads/zzgkw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgdl;->zzb:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzglg;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdl;->zza:Lcom/google/android/gms/internal/ads/zzgkw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzglg;->zzb()Lcom/google/android/gms/internal/ads/zzgdh;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgdl;->zzb:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgkw;->zzb(Lcom/google/android/gms/internal/ads/zzgdh;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
