.class public final synthetic Lcom/google/android/gms/internal/ads/zzfic;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfif;

.field public final synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfif;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfic;->zza:Lcom/google/android/gms/internal/ads/zzfif;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfic;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfic;->zza:Lcom/google/android/gms/internal/ads/zzfif;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfic;->zzb:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfif;->zza(Lcom/google/android/gms/internal/ads/zzfif;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/util/client/zzt;

    move-result-object v0

    return-object v0
.end method
