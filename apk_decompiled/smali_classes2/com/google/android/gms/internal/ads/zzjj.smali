.class public final synthetic Lcom/google/android/gms/internal/ads/zzjj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzka;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzkk;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzka;Lcom/google/android/gms/internal/ads/zzkk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjj;->zza:Lcom/google/android/gms/internal/ads/zzka;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzb:Lcom/google/android/gms/internal/ads/zzkk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zza:Lcom/google/android/gms/internal/ads/zzka;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzb:Lcom/google/android/gms/internal/ads/zzkk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzka;->zzJ(Lcom/google/android/gms/internal/ads/zzka;Lcom/google/android/gms/internal/ads/zzkk;)V

    return-void
.end method
