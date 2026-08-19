.class public final Lcom/google/android/gms/internal/ads/zzxd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzxd;


# instance fields
.field public final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfww;

.field private zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxd;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/android/gms/internal/ads/zzbm;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzxd;-><init>([Lcom/google/android/gms/internal/ads/zzbm;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzxd;->zza:Lcom/google/android/gms/internal/ads/zzxd;

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v0, 0x24

    .line 3
    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/zzbm;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfww;->zzm([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    .line 2
    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzb:I

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfww;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfww;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    .line 5
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzfww;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzfww;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbm;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Multiple identical TrackGroups added to one TrackGroupArray."

    .line 6
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v3, "TrackGroupArray"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move p1, v0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzxd;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzb:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzxd;->zzb:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzxd;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    .line 2
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzfww;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzd:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfww;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzd:I

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfww;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbm;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfww;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzbm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfww;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbm;

    return-object p1
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzfww;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzxc;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfxm;->zzb(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzftl;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfww;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    return-object v0
.end method
