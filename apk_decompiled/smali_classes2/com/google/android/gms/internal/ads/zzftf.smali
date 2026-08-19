.class abstract Lcom/google/android/gms/internal/ads/zzftf;
.super Lcom/google/android/gms/internal/ads/zzftd;
.source "com.google.android.gms:play-services-ads-api@@24.2.0"


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzftd;-><init>()V

    const-string p1, "CharMatcher.none()"

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzftf;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftf;->zza:Ljava/lang/String;

    return-object v0
.end method
