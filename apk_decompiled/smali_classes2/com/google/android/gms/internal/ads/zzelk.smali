.class public final Lcom/google/android/gms/internal/ads/zzelk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzesu;


# instance fields
.field public final zza:Lcom/google/android/gms/ads/internal/client/zzr;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Z

.field public final zzd:Ljava/lang/String;

.field public final zze:F

.field public final zzf:I

.field public final zzg:I

.field public final zzh:Ljava/lang/String;

.field public final zzi:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "the adSize must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelk;->zza:Lcom/google/android/gms/ads/internal/client/zzr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzelk;->zzb:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzelk;->zzc:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzelk;->zzd:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzelk;->zze:F

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzelk;->zzf:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzelk;->zzg:I

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzelk;->zzh:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzelk;->zzi:Z

    return-void
.end method

.method private final zzc(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelk;->zza:Lcom/google/android/gms/ads/internal/client/zzr;

    iget v1, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v5, "smart_w"

    const-string v6, "full"

    invoke-static {p1, v5, v6, v2}, Lcom/google/android/gms/internal/ads/zzfcd;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2
    iget v2, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    const/4 v5, -0x2

    if-ne v2, v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    const-string v6, "smart_h"

    const-string v7, "auto"

    invoke-static {p1, v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzfcd;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    iget-boolean v5, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzj:Z

    const-string v6, "ene"

    invoke-static {p1, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzfcd;->zzg(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    const-string v5, "102"

    .line 4
    iget-boolean v6, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzm:Z

    const-string v7, "rafmt"

    invoke-static {p1, v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzfcd;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "103"

    .line 5
    iget-boolean v6, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzn:Z

    invoke-static {p1, v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzfcd;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "105"

    .line 6
    iget-boolean v6, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzo:Z

    invoke-static {p1, v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzfcd;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzelk;->zzi:Z

    const-string v6, "inline_adaptive_slot"

    .line 7
    invoke-static {p1, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzfcd;->zzg(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    .line 8
    iget-boolean v5, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzo:Z

    const-string v6, "interscroller_slot"

    invoke-static {p1, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzfcd;->zzg(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    const-string v5, "format"

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzelk;->zzb:Ljava/lang/String;

    .line 9
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzfcd;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "fluid"

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzelk;->zzc:Z

    .line 10
    const-string v7, "height"

    invoke-static {p1, v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzfcd;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzelk;->zzd:Ljava/lang/String;

    .line 11
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v4

    const-string v8, "sz"

    .line 12
    invoke-static {p1, v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzfcd;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "u_sd"

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzelk;->zze:F

    .line 13
    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v5, "sw"

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzelk;->zzf:I

    .line 14
    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "sh"

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzelk;->zzg:I

    .line 15
    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzelk;->zzh:Ljava/lang/String;

    .line 16
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v4, v6

    const-string v6, "sc"

    invoke-static {p1, v6, v5, v4}, Lcom/google/android/gms/internal/ads/zzfcd;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v4, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object v5, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzg:[Lcom/google/android/gms/ads/internal/client/zzr;

    const-string v6, "is_fluid_height"

    const-string v8, "width"

    if-nez v5, :cond_2

    new-instance v3, Landroid/os/Bundle;

    .line 25
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 26
    invoke-virtual {v3, v7, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 27
    invoke-virtual {v3, v8, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    invoke-virtual {v3, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 30
    :cond_2
    :goto_2
    array-length v0, v5

    if-ge v3, v0, :cond_3

    .line 19
    aget-object v0, v5, v3

    new-instance v1, Landroid/os/Bundle;

    .line 20
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 21
    iget-boolean v2, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    iget v2, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    invoke-virtual {v1, v7, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    iget v0, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    invoke-virtual {v1, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 24
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 29
    :cond_3
    :goto_3
    const-string v0, "valid_ad_sizes"

    .line 30
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcue;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcue;->zzb:Landroid/os/Bundle;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzelk;->zzc(Landroid/os/Bundle;)V

    return-void
.end method

.method public final synthetic zzb(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcue;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcue;->zza:Landroid/os/Bundle;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzelk;->zzc(Landroid/os/Bundle;)V

    return-void
.end method
