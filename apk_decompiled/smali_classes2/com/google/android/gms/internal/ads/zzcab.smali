.class public final synthetic Lcom/google/android/gms/internal/ads/zzcab;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcak;

.field public final synthetic zzb:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcak;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcab;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcab;->zzb:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcab;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcab;->zzb:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcak;->zzk(Lcom/google/android/gms/internal/ads/zzcak;I)V

    return-void
.end method
