.class public final synthetic Lcom/google/android/gms/internal/ads/zzexc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzexg;

.field public final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zze;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzexg;Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzexc;->zza:Lcom/google/android/gms/internal/ads/zzexg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzexc;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzexc;->zza:Lcom/google/android/gms/internal/ads/zzexg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzexc;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexg;->zzi(Lcom/google/android/gms/internal/ads/zzexg;Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method
