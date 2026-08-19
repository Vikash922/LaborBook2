.class public final synthetic Lcom/google/android/gms/internal/ads/zzeds;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgaz;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzedu;

.field public final synthetic zzb:Landroid/net/Uri;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfbg;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfau;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzfax;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzedu;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfax;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeds;->zza:Lcom/google/android/gms/internal/ads/zzedu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzb:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzc:Lcom/google/android/gms/internal/ads/zzfbg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzd:Lcom/google/android/gms/internal/ads/zzfau;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeds;->zze:Lcom/google/android/gms/internal/ads/zzfax;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeds;->zza:Lcom/google/android/gms/internal/ads/zzedu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzb:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzc:Lcom/google/android/gms/internal/ads/zzfbg;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzd:Lcom/google/android/gms/internal/ads/zzfau;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeds;->zze:Lcom/google/android/gms/internal/ads/zzfax;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzedu;->zzd(Lcom/google/android/gms/internal/ads/zzedu;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfax;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
