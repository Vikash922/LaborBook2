.class final Lcom/google/android/gms/internal/ads/zzccf;
.super Lcom/google/android/gms/internal/ads/zzaqs;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field static final zzb:Lcom/google/android/gms/internal/ads/zzccf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzccf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzccf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzccf;->zzb:Lcom/google/android/gms/internal/ads/zzccf;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaqs;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzaqw;
    .locals 0

    .line 1
    const-string p2, "moov"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaqy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaqy;-><init>()V

    return-object p1

    :cond_0
    const-string p2, "mvhd"

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaqz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaqz;-><init>()V

    return-object p1

    .line 5
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzara;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzara;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
