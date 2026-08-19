.class public final Lcom/google/android/gms/internal/ads/zzfbn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private zza:Lcom/google/android/gms/ads/internal/client/zzm;

.field private zzb:Lcom/google/android/gms/ads/internal/client/zzr;

.field private zzc:Ljava/lang/String;

.field private zzd:Lcom/google/android/gms/ads/internal/client/zzfw;

.field private zze:Z

.field private zzf:Ljava/util/ArrayList;

.field private zzg:Ljava/util/ArrayList;

.field private zzh:Lcom/google/android/gms/internal/ads/zzbfi;

.field private zzi:Lcom/google/android/gms/ads/internal/client/zzx;

.field private zzj:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

.field private zzk:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field private zzl:Lcom/google/android/gms/ads/internal/client/zzcl;

.field private zzm:I

.field private zzn:Lcom/google/android/gms/internal/ads/zzblt;

.field private final zzo:Lcom/google/android/gms/internal/ads/zzfba;

.field private zzp:Z

.field private zzq:Z

.field private zzr:Lcom/google/android/gms/internal/ads/zzejr;

.field private zzs:Z

.field private zzt:Landroid/os/Bundle;

.field private zzu:Lcom/google/android/gms/ads/internal/client/zzcp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzm:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfba;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfba;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzo:Lcom/google/android/gms/internal/ads/zzfba;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzp:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzq:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzs:Z

    return-void
.end method

.method static bridge synthetic zzK(Lcom/google/android/gms/internal/ads/zzfbn;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zzM(Lcom/google/android/gms/internal/ads/zzfbn;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzf:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic zzN(Lcom/google/android/gms/internal/ads/zzfbn;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzg:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic zzO(Lcom/google/android/gms/internal/ads/zzfbn;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzp:Z

    return p0
.end method

.method static bridge synthetic zzP(Lcom/google/android/gms/internal/ads/zzfbn;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzq:Z

    return p0
.end method

.method static bridge synthetic zzQ(Lcom/google/android/gms/internal/ads/zzfbn;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzs:Z

    return p0
.end method

.method static bridge synthetic zzR(Lcom/google/android/gms/internal/ads/zzfbn;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zze:Z

    return p0
.end method

.method static bridge synthetic zzU(Lcom/google/android/gms/internal/ads/zzfbn;)Lcom/google/android/gms/ads/internal/client/zzcp;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzu:Lcom/google/android/gms/ads/internal/client/zzcp;

    return-object p0
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzfbn;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzm:I

    return p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzfbn;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzt:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfbn;)Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzj:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzfbn;)Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzk:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzfbn;)Lcom/google/android/gms/ads/internal/client/zzm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzfbn;)Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/ads/zzfbn;)Lcom/google/android/gms/ads/internal/client/zzx;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzi:Lcom/google/android/gms/ads/internal/client/zzx;

    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/ads/zzfbn;)Lcom/google/android/gms/ads/internal/client/zzcl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzl:Lcom/google/android/gms/ads/internal/client/zzcl;

    return-object p0
.end method

.method static bridge synthetic zzk(Lcom/google/android/gms/internal/ads/zzfbn;)Lcom/google/android/gms/ads/internal/client/zzfw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzd:Lcom/google/android/gms/ads/internal/client/zzfw;

    return-object p0
.end method

.method static bridge synthetic zzl(Lcom/google/android/gms/internal/ads/zzfbn;)Lcom/google/android/gms/internal/ads/zzbfi;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzh:Lcom/google/android/gms/internal/ads/zzbfi;

    return-object p0
.end method

.method static bridge synthetic zzm(Lcom/google/android/gms/internal/ads/zzfbn;)Lcom/google/android/gms/internal/ads/zzblt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzn:Lcom/google/android/gms/internal/ads/zzblt;

    return-object p0
.end method

.method static bridge synthetic zzn(Lcom/google/android/gms/internal/ads/zzfbn;)Lcom/google/android/gms/internal/ads/zzejr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzr:Lcom/google/android/gms/internal/ads/zzejr;

    return-object p0
.end method

.method static bridge synthetic zzo(Lcom/google/android/gms/internal/ads/zzfbn;)Lcom/google/android/gms/internal/ads/zzfba;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzo:Lcom/google/android/gms/internal/ads/zzfba;

    return-object p0
.end method


# virtual methods
.method public final zzA(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfbn;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzt:Landroid/os/Bundle;

    return-object p0
.end method

.method public final zzB(Z)Lcom/google/android/gms/internal/ads/zzfbn;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zze:Z

    return-object p0
.end method

.method public final zzC(I)Lcom/google/android/gms/internal/ads/zzfbn;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzm:I

    return-object p0
.end method

.method public final zzD(Lcom/google/android/gms/internal/ads/zzbfi;)Lcom/google/android/gms/internal/ads/zzfbn;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzh:Lcom/google/android/gms/internal/ads/zzbfi;

    return-object p0
.end method

.method public final zzE(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfbn;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzf:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final zzF(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfbn;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzg:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final zzG(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/internal/ads/zzfbn;
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzk:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzb()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zze:Z

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zza()Lcom/google/android/gms/ads/internal/client/zzcl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzl:Lcom/google/android/gms/ads/internal/client/zzcl;

    :cond_0
    return-object p0
.end method

.method public final zzH(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfbn;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    return-object p0
.end method

.method public final zzI(Lcom/google/android/gms/ads/internal/client/zzfw;)Lcom/google/android/gms/internal/ads/zzfbn;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzd:Lcom/google/android/gms/ads/internal/client/zzfw;

    return-object p0
.end method

.method public final zzJ()Lcom/google/android/gms/internal/ads/zzfbp;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzc:Ljava/lang/String;

    const-string v1, "ad unit must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    const-string v1, "ad size must not be null"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    const-string v1, "ad request must not be null"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfbp;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfbp;-><init>(Lcom/google/android/gms/internal/ads/zzfbn;Lcom/google/android/gms/internal/ads/zzfbo;)V

    return-object v0
.end method

.method public final zzL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzS()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzp:Z

    return v0
.end method

.method public final zzT()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzq:Z

    return v0
.end method

.method public final zzV(Lcom/google/android/gms/ads/internal/client/zzcp;)Lcom/google/android/gms/internal/ads/zzfbn;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzu:Lcom/google/android/gms/ads/internal/client/zzcp;

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/ads/internal/client/zzm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    return-object v0
.end method

.method public final zzp()Lcom/google/android/gms/internal/ads/zzfba;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzo:Lcom/google/android/gms/internal/ads/zzfba;

    return-object v0
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzfbp;)Lcom/google/android/gms/internal/ads/zzfbn;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzo:Lcom/google/android/gms/internal/ads/zzfba;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zzo:Lcom/google/android/gms/internal/ads/zzfbc;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfbc;->zza:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfba;->zza(I)Lcom/google/android/gms/internal/ads/zzfba;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zze:Lcom/google/android/gms/ads/internal/client/zzr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zzt:Lcom/google/android/gms/ads/internal/client/zzcp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzu:Lcom/google/android/gms/ads/internal/client/zzcp;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzc:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zza:Lcom/google/android/gms/ads/internal/client/zzfw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzd:Lcom/google/android/gms/ads/internal/client/zzfw;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zzg:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzf:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zzh:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzg:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zzi:Lcom/google/android/gms/internal/ads/zzbfi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzh:Lcom/google/android/gms/internal/ads/zzbfi;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zzj:Lcom/google/android/gms/ads/internal/client/zzx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzi:Lcom/google/android/gms/ads/internal/client/zzx;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zzl:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfbn;->zzr(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)Lcom/google/android/gms/internal/ads/zzfbn;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zzm:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfbn;->zzG(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/internal/ads/zzfbn;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zzp:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzp:Z

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zzq:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzq:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zzc:Lcom/google/android/gms/internal/ads/zzejr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzr:Lcom/google/android/gms/internal/ads/zzejr;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zzr:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzs:Z

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zzs:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzt:Landroid/os/Bundle;

    return-object p0
.end method

.method public final zzr(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)Lcom/google/android/gms/internal/ads/zzfbn;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzj:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->getManualImpressionsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zze:Z

    :cond_0
    return-object p0
.end method

.method public final zzs(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfbn;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    return-object p0
.end method

.method public final zzt(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfbn;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final zzu(Lcom/google/android/gms/ads/internal/client/zzx;)Lcom/google/android/gms/internal/ads/zzfbn;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzi:Lcom/google/android/gms/ads/internal/client/zzx;

    return-object p0
.end method

.method public final zzv(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzfbn;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzr:Lcom/google/android/gms/internal/ads/zzejr;

    return-object p0
.end method

.method public final zzw(Lcom/google/android/gms/internal/ads/zzblt;)Lcom/google/android/gms/internal/ads/zzfbn;
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzn:Lcom/google/android/gms/internal/ads/zzblt;

    new-instance p1, Lcom/google/android/gms/ads/internal/client/zzfw;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lcom/google/android/gms/ads/internal/client/zzfw;-><init>(ZZZ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzd:Lcom/google/android/gms/ads/internal/client/zzfw;

    return-object p0
.end method

.method public final zzx(Z)Lcom/google/android/gms/internal/ads/zzfbn;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzp:Z

    return-object p0
.end method

.method public final zzy(Z)Lcom/google/android/gms/internal/ads/zzfbn;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzq:Z

    return-object p0
.end method

.method public final zzz(Z)Lcom/google/android/gms/internal/ads/zzfbn;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzs:Z

    return-object p0
.end method
