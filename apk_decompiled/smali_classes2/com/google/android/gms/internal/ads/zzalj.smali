.class final Lcom/google/android/gms/internal/ads/zzalj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field private static final zza:Ljava/util/regex/Pattern;

.field private static final zzb:Ljava/util/regex/Pattern;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzd:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\[voice=\"([^\"]*)\"\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzalj;->zza:Ljava/util/regex/Pattern;

    const-string v0, "^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzalj;->zzb:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzek;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzek;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzc:Lcom/google/android/gms/internal/ads/zzek;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzd:Ljava/lang/StringBuilder;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzalj;->zzc(Lcom/google/android/gms/internal/ads/zzek;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzalj;->zzd(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result p0

    int-to-char p0, p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static zzc(Lcom/google/android/gms/internal/ads/zzek;)V
    .locals 8

    const/4 v0, 0x1

    :goto_0
    move v1, v0

    .line 1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v2

    if-lez v2, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v2

    .line 2
    aget-byte v1, v2, v1

    int-to-char v1, v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    const/16 v2, 0xc

    if-eq v1, v2, :cond_3

    const/16 v2, 0xd

    if-eq v1, v2, :cond_3

    const/16 v2, 0x20

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v3

    add-int/lit8 v4, v1, 0x2

    const/4 v5, 0x0

    if-gt v4, v2, :cond_2

    add-int/lit8 v4, v1, 0x1

    .line 3
    aget-byte v6, v3, v1

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_2

    add-int/lit8 v1, v1, 0x2

    aget-byte v4, v3, v4

    const/16 v6, 0x2a

    if-ne v4, v6, :cond_2

    :goto_2
    add-int/lit8 v4, v1, 0x1

    if-ge v4, v2, :cond_1

    .line 4
    aget-byte v5, v3, v1

    int-to-char v5, v5

    if-ne v5, v6, :cond_0

    .line 5
    aget-byte v5, v3, v4

    int-to-char v5, v5

    if-ne v5, v7, :cond_0

    add-int/lit8 v2, v1, 0x2

    move v1, v2

    goto :goto_2

    :cond_0
    move v1, v4

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v1

    sub-int/2addr v2, v1

    .line 6
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static zzd(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    move-result v2

    :goto_0
    move v3, v0

    :goto_1
    if-ge v1, v2, :cond_5

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v3

    .line 2
    aget-byte v3, v3, v1

    int-to-char v3, v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_0

    const/16 v4, 0x5a

    if-le v3, v4, :cond_4

    :cond_0
    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7a

    if-le v3, v4, :cond_4

    :cond_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_4

    :cond_2
    const/16 v4, 0x23

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_4

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    .line 3
    :cond_4
    :goto_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v0

    sub-int/2addr v1, v0

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzek;)Ljava/util/List;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalj;->zzd:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v3

    .line 2
    :cond_0
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzz(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzalj;->zzc:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v5

    .line 4
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzJ([BI)V

    .line 5
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    new-instance v3, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzalj;->zzc(Lcom/google/android/gms/internal/ads/zzek;)V

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v5

    const-string v6, "{"

    const/4 v7, 0x5

    const-string v8, ""

    const/4 v10, 0x1

    if-ge v5, v7, :cond_1

    :goto_1
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 34
    :cond_1
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 9
    invoke-virtual {v4, v7, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "::cue"

    .line 10
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v5

    .line 11
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzalj;->zza(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 13
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    move-object v5, v8

    goto :goto_5

    :cond_4
    const-string v5, "("

    .line 14
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    move-result v7

    move v11, v2

    :goto_2
    if-ge v5, v7, :cond_6

    if-nez v11, :cond_6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v11

    add-int/lit8 v12, v5, 0x1

    .line 15
    aget-byte v5, v11, v5

    int-to-char v5, v5

    const/16 v11, 0x29

    if-ne v5, v11, :cond_5

    move v11, v10

    goto :goto_3

    :cond_5
    move v11, v2

    :goto_3
    move v5, v12

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v7

    sub-int/2addr v5, v7

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 16
    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    .line 18
    :goto_4
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzalj;->zza(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    const-string v11, ")"

    .line 19
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_1

    :cond_8
    :goto_5
    if-eqz v5, :cond_2f

    .line 20
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzalj;->zza(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto/16 :goto_16

    :cond_9
    new-instance v6, Lcom/google/android/gms/internal/ads/zzalk;

    .line 21
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzalk;-><init>()V

    .line 22
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v11, -0x1

    if-eqz v7, :cond_b

    :cond_a
    :goto_6
    move v5, v2

    const/4 v7, 0x0

    goto :goto_8

    :cond_b
    const/16 v7, 0x5b

    .line 23
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v11, :cond_d

    sget-object v12, Lcom/google/android/gms/internal/ads/zzalj;->zza:Ljava/util/regex/Pattern;

    .line 24
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 25
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 26
    invoke-virtual {v12, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 92
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    move-object v13, v12

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/zzalk;->zzv(Ljava/lang/String;)V

    .line 27
    :cond_c
    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 28
    :cond_d
    sget v7, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const-string v7, "\\."

    .line 29
    invoke-virtual {v5, v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 30
    aget-object v7, v5, v2

    const/16 v12, 0x23

    .line 31
    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-eq v12, v11, :cond_e

    .line 32
    invoke-virtual {v7, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/google/android/gms/internal/ads/zzalk;->zzu(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    .line 33
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzalk;->zzt(Ljava/lang/String;)V

    goto :goto_7

    .line 34
    :cond_e
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzalk;->zzu(Ljava/lang/String;)V

    .line 35
    :goto_7
    array-length v7, v5

    if-le v7, v10, :cond_a

    .line 36
    invoke-static {v5, v10, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    .line 37
    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzalk;->zzs([Ljava/lang/String;)V

    goto :goto_6

    .line 22
    :goto_8
    const-string v12, "}"

    if-nez v5, :cond_2d

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v5

    .line 38
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzalj;->zza(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 39
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    goto :goto_9

    :cond_f
    move v13, v2

    goto :goto_a

    :cond_10
    :goto_9
    move v13, v10

    :goto_a
    if-nez v13, :cond_2c

    .line 40
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 41
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzalj;->zzc(Lcom/google/android/gms/internal/ads/zzek;)V

    .line 42
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzalj;->zzd(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    goto/16 :goto_15

    .line 44
    :cond_11
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzalj;->zza(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    goto/16 :goto_15

    .line 45
    :cond_12
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzalj;->zzc(Lcom/google/android/gms/internal/ads/zzek;)V

    new-instance v14, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move v15, v2

    :goto_b
    const-string v2, ";"

    if-nez v15, :cond_16

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v9

    .line 47
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzalj;->zza(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_13

    const/4 v9, 0x0

    goto :goto_e

    .line 48
    :cond_13
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_15

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_c

    .line 50
    :cond_14
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 49
    :cond_15
    :goto_c
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    move v15, v10

    :goto_d
    const/4 v11, -0x1

    goto :goto_b

    .line 50
    :cond_16
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_e
    if-eqz v9, :cond_2c

    .line 51
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    goto/16 :goto_15

    :cond_17
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v11

    .line 52
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzalj;->zza(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v14

    .line 53
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_f

    .line 54
    :cond_18
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 55
    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 53
    :goto_f
    const-string v2, "color"

    .line 56
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 57
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzdi;->zza(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzalk;->zzk(I)Lcom/google/android/gms/internal/ads/zzalk;

    goto/16 :goto_15

    :cond_19
    const-string v2, "background-color"

    .line 58
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 59
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzdi;->zza(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzalk;->zzh(I)Lcom/google/android/gms/internal/ads/zzalk;

    goto/16 :goto_15

    :cond_1a
    const-string v2, "ruby-position"

    .line 60
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v11, 0x2

    if-eqz v2, :cond_1c

    const-string v2, "over"

    .line 61
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 62
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/zzalk;->zzp(I)Lcom/google/android/gms/internal/ads/zzalk;

    goto/16 :goto_15

    :cond_1b
    const-string v2, "under"

    .line 63
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 64
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/zzalk;->zzp(I)Lcom/google/android/gms/internal/ads/zzalk;

    goto/16 :goto_15

    :cond_1c
    const-string v2, "text-combine-upright"

    .line 65
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "all"

    .line 66
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "digits"

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_10

    :cond_1d
    const/4 v2, 0x0

    goto :goto_11

    :cond_1e
    :goto_10
    move v2, v10

    :goto_11
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzalk;->zzj(Z)Lcom/google/android/gms/internal/ads/zzalk;

    goto/16 :goto_15

    :cond_1f
    const-string v2, "text-decoration"

    .line 67
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "underline"

    .line 68
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 69
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/zzalk;->zzq(Z)Lcom/google/android/gms/internal/ads/zzalk;

    goto/16 :goto_15

    :cond_20
    const-string v2, "font-family"

    .line 70
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 71
    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/ads/zzalk;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzalk;

    goto/16 :goto_15

    :cond_21
    const-string v2, "font-weight"

    .line 72
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "bold"

    .line 73
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 74
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/zzalk;->zzi(Z)Lcom/google/android/gms/internal/ads/zzalk;

    goto/16 :goto_15

    :cond_22
    const-string v2, "font-style"

    .line 75
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, "italic"

    .line 76
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 77
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/zzalk;->zzo(Z)Lcom/google/android/gms/internal/ads/zzalk;

    goto/16 :goto_15

    :cond_23
    const-string v2, "font-size"

    .line 78
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    sget-object v2, Lcom/google/android/gms/internal/ads/zzalj;->zzb:Ljava/util/regex/Pattern;

    .line 79
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzftc;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_24

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Invalid font-size: \'"

    .line 81
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "WebvttCssParser"

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 82
    :cond_24
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/16 v12, 0x25

    if-eq v9, v12, :cond_27

    const/16 v12, 0xca8

    if-eq v9, v12, :cond_26

    const/16 v12, 0xe08

    if-eq v9, v12, :cond_25

    goto :goto_12

    .line 84
    :cond_25
    const-string v9, "px"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v5, 0x0

    goto :goto_13

    :cond_26
    const-string v9, "em"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    move v5, v10

    goto :goto_13

    :cond_27
    const-string v9, "%"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    move v5, v11

    goto :goto_13

    :cond_28
    :goto_12
    const/4 v5, -0x1

    :goto_13
    if-eqz v5, :cond_2b

    if-eq v5, v10, :cond_2a

    if-ne v5, v11, :cond_29

    const/4 v5, 0x3

    .line 83
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzalk;->zzn(I)Lcom/google/android/gms/internal/ads/zzalk;

    goto :goto_14

    .line 91
    :cond_29
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 90
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 84
    :cond_2a
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/zzalk;->zzn(I)Lcom/google/android/gms/internal/ads/zzalk;

    goto :goto_14

    .line 85
    :cond_2b
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/zzalk;->zzn(I)Lcom/google/android/gms/internal/ads/zzalk;

    .line 86
    :goto_14
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzalk;->zzm(F)Lcom/google/android/gms/internal/ads/zzalk;

    :cond_2c
    :goto_15
    move v5, v13

    const/4 v2, 0x0

    const/4 v11, -0x1

    goto/16 :goto_8

    .line 87
    :cond_2d
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 88
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_2f
    :goto_16
    return-object v3
.end method
