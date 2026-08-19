.class public final synthetic Lcom/google/android/gms/internal/ads/zzeyv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeyw;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeyw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyv;->zza:Lcom/google/android/gms/internal/ads/zzeyw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyv;->zza:Lcom/google/android/gms/internal/ads/zzeyw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyw;->zze:Lcom/google/android/gms/internal/ads/zzeyx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeyx;->zzd(Lcom/google/android/gms/internal/ads/zzeyx;)Lcom/google/android/gms/internal/ads/zzezx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzezx;->zzt()V

    return-void
.end method
