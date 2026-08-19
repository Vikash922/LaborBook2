.class public final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

.field public final synthetic zzb:[Lcom/google/android/gms/internal/ads/zzdmt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;[Lcom/google/android/gms/internal/ads/zzdmt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;->zzb:[Lcom/google/android/gms/internal/ads/zzdmt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;->zzb:[Lcom/google/android/gms/internal/ads/zzdmt;

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzH(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;[Lcom/google/android/gms/internal/ads/zzdmt;)V

    return-void
.end method
