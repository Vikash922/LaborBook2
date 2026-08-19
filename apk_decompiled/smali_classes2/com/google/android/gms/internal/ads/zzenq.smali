.class public final Lcom/google/android/gms/internal/ads/zzenq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzesu;


# instance fields
.field private final zza:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzenq;->zza:J

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcue;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcue;->zza:Landroid/os/Bundle;

    const-string v0, "cldut"

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzenq;->zza:J

    .line 2
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method
