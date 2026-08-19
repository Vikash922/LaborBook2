.class public final synthetic Lcom/google/android/gms/internal/ads/zzffo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdas;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfez;

.field public final synthetic zzb:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfez;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffo;->zza:Lcom/google/android/gms/internal/ads/zzfez;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzffo;->zzb:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->zza:Lcom/google/android/gms/internal/ads/zzfez;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzffu;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfez;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzffn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfez;->zzb()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzffo;->zzb:Ljava/lang/Throwable;

    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzffu;->zzdB(Lcom/google/android/gms/internal/ads/zzffn;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
