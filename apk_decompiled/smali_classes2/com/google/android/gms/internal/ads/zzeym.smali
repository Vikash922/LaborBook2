.class public final Lcom/google/android/gms/internal/ads/zzeym;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzbuy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final zzb:Lcom/google/android/gms/internal/ads/zzeyj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeyj;Lcom/google/android/gms/internal/ads/zzbuy;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/zzbuy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeym;->zzb:Lcom/google/android/gms/internal/ads/zzeyj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeym;->zza:Lcom/google/android/gms/internal/ads/zzbuy;

    return-void
.end method
