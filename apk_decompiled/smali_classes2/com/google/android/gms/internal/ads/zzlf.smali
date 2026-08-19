.class public final synthetic Lcom/google/android/gms/internal/ads/zzlf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzlh;

.field public final synthetic zzb:Landroid/util/Pair;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzuu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzlh;Landroid/util/Pair;Lcom/google/android/gms/internal/ads/zzuu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzlh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzb:Landroid/util/Pair;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzc:Lcom/google/android/gms/internal/ads/zzuu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzb:Landroid/util/Pair;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlf;->zza:Lcom/google/android/gms/internal/ads/zzlh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlh;->zza:Lcom/google/android/gms/internal/ads/zzll;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzll;->zze(Lcom/google/android/gms/internal/ads/zzll;)Lcom/google/android/gms/internal/ads/zzmg;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzuy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzlf;->zzc:Lcom/google/android/gms/internal/ads/zzuu;

    .line 1
    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzmg;->zzag(ILcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzuu;)V

    return-void
.end method
