.class public final synthetic Lcom/google/android/gms/internal/ads/zzky;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzkz;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfwt;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzuy;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzkz;Lcom/google/android/gms/internal/ads/zzfwt;Lcom/google/android/gms/internal/ads/zzuy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzky;->zza:Lcom/google/android/gms/internal/ads/zzkz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzky;->zzb:Lcom/google/android/gms/internal/ads/zzfwt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzky;->zzc:Lcom/google/android/gms/internal/ads/zzuy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzky;->zza:Lcom/google/android/gms/internal/ads/zzkz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzky;->zzb:Lcom/google/android/gms/internal/ads/zzfwt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzky;->zzc:Lcom/google/android/gms/internal/ads/zzuy;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzkz;->zzr(Lcom/google/android/gms/internal/ads/zzkz;Lcom/google/android/gms/internal/ads/zzfwt;Lcom/google/android/gms/internal/ads/zzuy;)V

    return-void
.end method
