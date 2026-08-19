.class public final synthetic Lcom/google/android/gms/internal/ads/zzghu;
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
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgia;->zza:Lcom/google/android/gms/internal/ads/zzgfz;

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfl;-><init>(Lcom/google/android/gms/internal/ads/zzgfn;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfl;->zza(I)Lcom/google/android/gms/internal/ads/zzgfl;

    const/16 v2, 0x20

    .line 2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgfl;->zzb(I)Lcom/google/android/gms/internal/ads/zzgfl;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfl;->zzc(I)Lcom/google/android/gms/internal/ads/zzgfl;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfm;->zza:Lcom/google/android/gms/internal/ads/zzgfm;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfl;->zzd(Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzgfl;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgfl;->zze()Lcom/google/android/gms/internal/ads/zzgfo;

    move-result-object v0

    return-object v0
.end method
