.class public final synthetic Lcom/google/android/gms/internal/ads/zzdtf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdtg;

.field public final synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdtg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zza:Lcom/google/android/gms/internal/ads/zzdtg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zza:Lcom/google/android/gms/internal/ads/zzdtg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdtg;->zza:Lcom/google/android/gms/internal/ads/zzdti;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zzb:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdti;->zzo(Lcom/google/android/gms/internal/ads/zzdti;Ljava/lang/String;)V

    return-void
.end method
