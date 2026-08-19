.class public final synthetic Lcom/google/android/gms/internal/ads/zzbnj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbnk;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbmh;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbnk;Lcom/google/android/gms/internal/ads/zzbmh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnj;->zza:Lcom/google/android/gms/internal/ads/zzbnk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbnj;->zzb:Lcom/google/android/gms/internal/ads/zzbmh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnj;->zzb:Lcom/google/android/gms/internal/ads/zzbmh;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbmh;

    const-string v1, "/result"

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbji;->zzo:Lcom/google/android/gms/internal/ads/zzbjz;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbmh;->zzr(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbmh;->zzc()V

    return-void
.end method
