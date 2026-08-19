.class public final synthetic Lcom/google/android/gms/internal/ads/zzctv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzctx;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzctx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctv;->zza:Lcom/google/android/gms/internal/ads/zzctx;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctv;->zza:Lcom/google/android/gms/internal/ads/zzctx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzctx;->zzh(Lcom/google/android/gms/internal/ads/zzctx;)V

    return-void
.end method
