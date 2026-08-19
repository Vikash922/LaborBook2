.class public final synthetic Lcom/google/android/gms/internal/ads/zzdvl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdvo;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbuy;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdvo;Lcom/google/android/gms/internal/ads/zzbuy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zza:Lcom/google/android/gms/internal/ads/zzdvo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzb:Lcom/google/android/gms/internal/ads/zzbuy;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zza:Lcom/google/android/gms/internal/ads/zzdvo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzb:Lcom/google/android/gms/internal/ads/zzbuy;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvo;->zza(Lcom/google/android/gms/internal/ads/zzdvo;Lcom/google/android/gms/internal/ads/zzbuy;)Lcom/google/android/gms/internal/ads/zzdxr;

    move-result-object v0

    return-object v0
.end method
