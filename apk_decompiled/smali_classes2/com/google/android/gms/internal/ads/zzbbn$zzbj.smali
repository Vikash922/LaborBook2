.class public final Lcom/google/android/gms/internal/ads/zzbbn$zzbj;
.super Lcom/google/android/gms/internal/ads/zzgxv;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbn$zzbk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgxv<",
        "Lcom/google/android/gms/internal/ads/zzbbn$zzbj;",
        "Lcom/google/android/gms/internal/ads/zzbbn$zzbj$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbbn$zzbk;"
    }
.end annotation


# static fields
.field public static final zza:I = 0x1

.field public static final zzb:I = 0x2

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

.field private static volatile zzd:Lcom/google/android/gms/internal/ads/zzgzo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgzo<",
            "Lcom/google/android/gms/internal/ads/zzbbn$zzbj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/ads/zzbbn$zzaw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbZ(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgxv;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgxv;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzf:I

    return-void
.end method

.method static bridge synthetic zzA(Lcom/google/android/gms/internal/ads/zzbbn$zzbj;Lcom/google/android/gms/internal/ads/zzbbn$zzq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzF(Lcom/google/android/gms/internal/ads/zzbbn$zzq;)V

    return-void
.end method

.method private zzB()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzg:Lcom/google/android/gms/internal/ads/zzbbn$zzaw;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zze:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zze:I

    return-void
.end method

.method private zzC()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zze:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zze:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzf:I

    return-void
.end method

.method private zzD(Lcom/google/android/gms/internal/ads/zzbbn$zzaw;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzg:Lcom/google/android/gms/internal/ads/zzbbn$zzaw;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzaw;->zzg()Lcom/google/android/gms/internal/ads/zzbbn$zzaw;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzaw;->zzb(Lcom/google/android/gms/internal/ads/zzbbn$zzaw;)Lcom/google/android/gms/internal/ads/zzbbn$zzaw$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbj(Lcom/google/android/gms/internal/ads/zzgxv;)Lcom/google/android/gms/internal/ads/zzgxp;

    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbn$zzaw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbo()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbn$zzaw;

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzg:Lcom/google/android/gms/internal/ads/zzbbn$zzaw;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zze:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zze:I

    return-void
.end method

.method private zzE(Lcom/google/android/gms/internal/ads/zzbbn$zzaw;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzg:Lcom/google/android/gms/internal/ads/zzbbn$zzaw;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zze:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zze:I

    return-void
.end method

.method private zzF(Lcom/google/android/gms/internal/ads/zzbbn$zzq;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzf:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zze:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zze:I

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzbbn$zzbj$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzaZ()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj$zza;

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzbbn$zzbj;)Lcom/google/android/gms/internal/ads/zzbbn$zzbj$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzba(Lcom/google/android/gms/internal/ads/zzgxv;)Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj$zza;

    return-object p0
.end method

.method static bridge synthetic zzf()Lcom/google/android/gms/internal/ads/zzbbn$zzbj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    return-object v0
.end method

.method public static zzg()Lcom/google/android/gms/internal/ads/zzbbn$zzbj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    return-object v0
.end method

.method public static zzh(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzbbn$zzbj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzbk(Lcom/google/android/gms/internal/ads/zzgxv;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    return-object p0
.end method

.method public static zzk(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzbbn$zzbj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzbl(Lcom/google/android/gms/internal/ads/zzgxv;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    return-object p0
.end method

.method public static zzl(Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzbbn$zzbj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyk;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbm(Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    return-object p0
.end method

.method public static zzm(Lcom/google/android/gms/internal/ads/zzgwt;)Lcom/google/android/gms/internal/ads/zzbbn$zzbj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbn(Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgwt;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    return-object p0
.end method

.method public static zzn(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzbbn$zzbj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbo(Lcom/google/android/gms/internal/ads/zzgxv;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    return-object p0
.end method

.method public static zzo(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzbbn$zzbj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyk;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbp(Lcom/google/android/gms/internal/ads/zzgxv;Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    return-object p0
.end method

.method public static zzp([B)Lcom/google/android/gms/internal/ads/zzbbn$zzbj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyk;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbq(Lcom/google/android/gms/internal/ads/zzgxv;[B)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    return-object p0
.end method

.method public static zzq(Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzbbn$zzbj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyk;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbr(Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    return-object p0
.end method

.method public static zzr(Lcom/google/android/gms/internal/ads/zzgwt;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzbbn$zzbj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbs(Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgwt;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    return-object p0
.end method

.method public static zzs(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzbbn$zzbj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbu(Lcom/google/android/gms/internal/ads/zzgxv;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    return-object p0
.end method

.method public static zzt(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzbbn$zzbj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyk;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbv(Lcom/google/android/gms/internal/ads/zzgxv;Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    return-object p0
.end method

.method public static zzu([BLcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzbbn$zzbj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyk;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbx(Lcom/google/android/gms/internal/ads/zzgxv;[BLcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    return-object p0
.end method

.method public static zzv()Lcom/google/android/gms/internal/ads/zzgzo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzgzo<",
            "Lcom/google/android/gms/internal/ads/zzbbn$zzbj;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbN()Lcom/google/android/gms/internal/ads/zzgzo;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic zzw(Lcom/google/android/gms/internal/ads/zzbbn$zzbj;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzB()V

    return-void
.end method

.method static bridge synthetic zzx(Lcom/google/android/gms/internal/ads/zzbbn$zzbj;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzC()V

    return-void
.end method

.method static bridge synthetic zzy(Lcom/google/android/gms/internal/ads/zzbbn$zzbj;Lcom/google/android/gms/internal/ads/zzbbn$zzaw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzD(Lcom/google/android/gms/internal/ads/zzbbn$zzaw;)V

    return-void
.end method

.method static bridge synthetic zzz(Lcom/google/android/gms/internal/ads/zzbbn$zzbj;Lcom/google/android/gms/internal/ads/zzbbn$zzaw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzE(Lcom/google/android/gms/internal/ads/zzbbn$zzaw;)V

    return-void
.end method


# virtual methods
.method public zza()Lcom/google/android/gms/internal/ads/zzbbn$zzq;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzf:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zzb(I)Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    :cond_0
    return-object v0
.end method

.method public zzb()Lcom/google/android/gms/internal/ads/zzbbn$zzaw;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzg:Lcom/google/android/gms/internal/ads/zzbbn$zzaw;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzaw;->zzg()Lcom/google/android/gms/internal/ads/zzbbn$zzaw;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final zzdc(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

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

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzd:Lcom/google/android/gms/internal/ads/zzgzo;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzd:Lcom/google/android/gms/internal/ads/zzgzo;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgxq;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgxq;-><init>(Lcom/google/android/gms/internal/ads/zzgxv;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzd:Lcom/google/android/gms/internal/ads/zzgzo;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    return-object p1

    .line 6
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbn$zzbj$zza;

    .line 7
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbbn$zzbj$zza;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;-><init>()V

    return-object p1

    .line 2
    :cond_6
    const-string p1, "zze"

    const-string p2, "zzf"

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zze()Lcom/google/android/gms/internal/ads/zzgyb;

    move-result-object p3

    const-string v0, "zzg"

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzbj;

    const-string p3, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1009\u0001"

    .line 6
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zzbQ(Lcom/google/android/gms/internal/ads/zzgzg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public zzi()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzj()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzbj;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
