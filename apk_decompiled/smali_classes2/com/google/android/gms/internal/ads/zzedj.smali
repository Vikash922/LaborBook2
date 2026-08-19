.class public final synthetic Lcom/google/android/gms/internal/ads/zzedj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcqe;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfcn;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfcn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedj;->zza:Lcom/google/android/gms/internal/ads/zzfcn;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/internal/client/zzea;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedj;->zza:Lcom/google/android/gms/internal/ads/zzfcn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfcn;->zzb()Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object v0

    return-object v0
.end method
