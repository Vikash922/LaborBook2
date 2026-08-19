.class public final synthetic Lcom/google/android/gms/internal/ads/zzcbo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcby;

.field public final synthetic zzb:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcby;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbo;->zza:Lcom/google/android/gms/internal/ads/zzcby;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcbo;->zzb:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbo;->zza:Lcom/google/android/gms/internal/ads/zzcby;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcbo;->zzb:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcby;->zzH(Lcom/google/android/gms/internal/ads/zzcby;I)V

    return-void
.end method
