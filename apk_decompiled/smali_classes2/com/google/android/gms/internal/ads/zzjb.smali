.class public final synthetic Lcom/google/android/gms/internal/ads/zzjb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdt;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbe;

    sget v0, Lcom/google/android/gms/internal/ads/zzka;->zzd:I

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzko;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzko;-><init>(I)V

    const/16 v1, 0x3eb

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzii;->zzd(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object v0

    .line 1
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbe;->zzk(Lcom/google/android/gms/internal/ads/zzba;)V

    return-void
.end method
