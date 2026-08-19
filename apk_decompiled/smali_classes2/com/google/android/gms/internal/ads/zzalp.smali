.class final Lcom/google/android/gms/internal/ads/zzalp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final zza:I

.field public final zzb:Lcom/google/android/gms/internal/ads/zzalk;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzalk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalp;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalp;->zzb:Lcom/google/android/gms/internal/ads/zzalk;

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzalp;

    .line 2
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzalp;->zza:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalp;->zza:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method
