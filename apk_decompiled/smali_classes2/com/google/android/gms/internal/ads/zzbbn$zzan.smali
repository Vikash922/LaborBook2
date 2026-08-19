.class public final Lcom/google/android/gms/internal/ads/zzbbn$zzan;
.super Lcom/google/android/gms/internal/ads/zzgxv;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbn$zzao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgxv<",
        "Lcom/google/android/gms/internal/ads/zzbbn$zzan;",
        "Lcom/google/android/gms/internal/ads/zzbbn$zzan$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbbn$zzao;"
    }
.end annotation


# static fields
.field public static final zza:I = 0x1

.field public static final zzb:I = 0x2

.field public static final zzc:I = 0x3

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzan;

.field private static volatile zze:Lcom/google/android/gms/internal/ads/zzgzo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgzo<",
            "Lcom/google/android/gms/internal/ads/zzbbn$zzan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/ads/zzbbn$zzap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzan;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbZ(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgxv;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgxv;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzg:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zzA(Lcom/google/android/gms/internal/ads/zzbbn$zzan;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzI()V

    return-void
.end method

.method static bridge synthetic zzB(Lcom/google/android/gms/internal/ads/zzbbn$zzan;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzJ()V

    return-void
.end method

.method static bridge synthetic zzC(Lcom/google/android/gms/internal/ads/zzbbn$zzan;Lcom/google/android/gms/internal/ads/zzbbn$zzap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzK(Lcom/google/android/gms/internal/ads/zzbbn$zzap;)V

    return-void
.end method

.method static bridge synthetic zzD(Lcom/google/android/gms/internal/ads/zzbbn$zzan;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzL(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic zzE(Lcom/google/android/gms/internal/ads/zzbbn$zzan;Lcom/google/android/gms/internal/ads/zzgwn;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzM(Lcom/google/android/gms/internal/ads/zzgwn;)V

    return-void
.end method

.method static bridge synthetic zzF(Lcom/google/android/gms/internal/ads/zzbbn$zzan;Lcom/google/android/gms/internal/ads/zzbbn$zzap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzN(Lcom/google/android/gms/internal/ads/zzbbn$zzap;)V

    return-void
.end method

.method static bridge synthetic zzG(Lcom/google/android/gms/internal/ads/zzbbn$zzan;Lcom/google/android/gms/internal/ads/zzbbn$zzq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzO(Lcom/google/android/gms/internal/ads/zzbbn$zzq;)V

    return-void
.end method

.method private zzH()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzf:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzf:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzf()Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzg:Ljava/lang/String;

    return-void
.end method

.method private zzI()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzi:Lcom/google/android/gms/internal/ads/zzbbn$zzap;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzf:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzf:I

    return-void
.end method

.method private zzJ()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzf:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzf:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzh:I

    return-void
.end method

.method private zzK(Lcom/google/android/gms/internal/ads/zzbbn$zzap;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzi:Lcom/google/android/gms/internal/ads/zzbbn$zzap;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzap;->zzi()Lcom/google/android/gms/internal/ads/zzbbn$zzap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzap;->zzd(Lcom/google/android/gms/internal/ads/zzbbn$zzap;)Lcom/google/android/gms/internal/ads/zzbbn$zzap$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbj(Lcom/google/android/gms/internal/ads/zzgxv;)Lcom/google/android/gms/internal/ads/zzgxp;

    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbn$zzap$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbo()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbn$zzap;

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzi:Lcom/google/android/gms/internal/ads/zzbbn$zzap;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzf:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzf:I

    return-void
.end method

.method private zzL(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzf:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzf:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzg:Ljava/lang/String;

    return-void
.end method

.method private zzM(Lcom/google/android/gms/internal/ads/zzgwn;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgwn;->zzx()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzg:Ljava/lang/String;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzf:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzf:I

    return-void
.end method

.method private zzN(Lcom/google/android/gms/internal/ads/zzbbn$zzap;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzi:Lcom/google/android/gms/internal/ads/zzbbn$zzap;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzf:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzf:I

    return-void
.end method

.method private zzO(Lcom/google/android/gms/internal/ads/zzbbn$zzq;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzh:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzf:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzf:I

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzbbn$zzan$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzaZ()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbn$zzan$zza;

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzbbn$zzan;)Lcom/google/android/gms/internal/ads/zzbbn$zzan$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzba(Lcom/google/android/gms/internal/ads/zzgxv;)Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan$zza;

    return-object p0
.end method

.method static bridge synthetic zzd()Lcom/google/android/gms/internal/ads/zzbbn$zzan;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    return-object v0
.end method

.method public static zzf()Lcom/google/android/gms/internal/ads/zzbbn$zzan;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    return-object v0
.end method

.method public static zzg(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzbbn$zzan;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzbk(Lcom/google/android/gms/internal/ads/zzgxv;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    return-object p0
.end method

.method public static zzh(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzbbn$zzan;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzbl(Lcom/google/android/gms/internal/ads/zzgxv;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    return-object p0
.end method

.method public static zzi(Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzbbn$zzan;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyk;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbm(Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    return-object p0
.end method

.method public static zzj(Lcom/google/android/gms/internal/ads/zzgwt;)Lcom/google/android/gms/internal/ads/zzbbn$zzan;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbn(Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgwt;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    return-object p0
.end method

.method public static zzq(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzbbn$zzan;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbo(Lcom/google/android/gms/internal/ads/zzgxv;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    return-object p0
.end method

.method public static zzr(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzbbn$zzan;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyk;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbp(Lcom/google/android/gms/internal/ads/zzgxv;Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    return-object p0
.end method

.method public static zzs([B)Lcom/google/android/gms/internal/ads/zzbbn$zzan;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyk;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbq(Lcom/google/android/gms/internal/ads/zzgxv;[B)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    return-object p0
.end method

.method public static zzt(Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzbbn$zzan;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyk;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbr(Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    return-object p0
.end method

.method public static zzu(Lcom/google/android/gms/internal/ads/zzgwt;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzbbn$zzan;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbs(Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgwt;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    return-object p0
.end method

.method public static zzv(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzbbn$zzan;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbu(Lcom/google/android/gms/internal/ads/zzgxv;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    return-object p0
.end method

.method public static zzw(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzbbn$zzan;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyk;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbv(Lcom/google/android/gms/internal/ads/zzgxv;Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    return-object p0
.end method

.method public static zzx([BLcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzbbn$zzan;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyk;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbx(Lcom/google/android/gms/internal/ads/zzgxv;[BLcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    return-object p0
.end method

.method public static zzy()Lcom/google/android/gms/internal/ads/zzgzo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzgzo<",
            "Lcom/google/android/gms/internal/ads/zzbbn$zzan;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbN()Lcom/google/android/gms/internal/ads/zzgzo;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic zzz(Lcom/google/android/gms/internal/ads/zzbbn$zzan;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzH()V

    return-void
.end method


# virtual methods
.method public zza()Lcom/google/android/gms/internal/ads/zzbbn$zzq;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzh:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zzb(I)Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zza:Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    :cond_0
    return-object v0
.end method

.method protected final zzdc(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxu;->ordinal()I

    move-result p1

    if-eqz p1, :cond_7

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-ne p1, p2, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zze:Lcom/google/android/gms/internal/ads/zzgzo;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zze:Lcom/google/android/gms/internal/ads/zzgzo;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgxq;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgxq;-><init>(Lcom/google/android/gms/internal/ads/zzgxv;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zze:Lcom/google/android/gms/internal/ads/zzgzo;

    .line 4
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 8
    :cond_2
    throw p3

    .line 2
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    return-object p1

    .line 6
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbn$zzan$zza;

    .line 7
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbbn$zzan$zza;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzan;-><init>()V

    return-object p1

    .line 2
    :cond_6
    const-string p1, "zzf"

    const-string p2, "zzg"

    const-string p3, "zzh"

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zze()Lcom/google/android/gms/internal/ads/zzgyb;

    move-result-object v0

    const-string v1, "zzi"

    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzan;

    const-string p3, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u180c\u0001\u0003\u1009\u0002"

    .line 6
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzbQ(Lcom/google/android/gms/internal/ads/zzgzg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public zzk()Lcom/google/android/gms/internal/ads/zzbbn$zzap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzi:Lcom/google/android/gms/internal/ads/zzbbn$zzap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzap;->zzi()Lcom/google/android/gms/internal/ads/zzbbn$zzap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public zzl()Lcom/google/android/gms/internal/ads/zzgwn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzg:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwn;->zzw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    return-object v0
.end method

.method public zzm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public zzn()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzf:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzo()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzf:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzp()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzan;->zzf:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
