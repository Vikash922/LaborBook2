.class final Lcom/google/android/gms/internal/ads/zzcas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcau;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcau;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcas;->zza:Lcom/google/android/gms/internal/ads/zzcau;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcas;->zza:Lcom/google/android/gms/internal/ads/zzcau;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "surfaceDestroyed"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcau;->zzo(Lcom/google/android/gms/internal/ads/zzcau;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
