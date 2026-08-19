.class public abstract Lcom/google/android/gms/internal/ads/zzheh;
.super Lcom/google/android/gms/internal/ads/zzhef;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaqw;


# instance fields
.field private zzg:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "mvhd"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhef;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zzg()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzheh;->zzb:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhef;->zzf()V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzheh;->zzg:I

    return v0
.end method

.method protected final zzh(Ljava/nio/ByteBuffer;)J
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaqv;->zzc(B)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzheh;->zzg:I

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaqv;->zzd(Ljava/nio/ByteBuffer;)I

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    const-wide/16 v0, 0x4

    return-wide v0
.end method
