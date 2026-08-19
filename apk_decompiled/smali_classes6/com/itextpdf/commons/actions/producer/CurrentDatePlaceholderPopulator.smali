.class Lcom/itextpdf/commons/actions/producer/CurrentDatePlaceholderPopulator;
.super Lcom/itextpdf/commons/actions/producer/AbstractFormattedPlaceholderPopulator;
.source "CurrentDatePlaceholderPopulator.java"


# static fields
.field private static final ALLOWED_PATTERNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 73
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "dd"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "MM"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "MMM"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "MMMM"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "yy"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "yyyy"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "ss"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "mm"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "HH"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/itextpdf/commons/actions/producer/CurrentDatePlaceholderPopulator;->ALLOWED_PATTERNS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/itextpdf/commons/actions/producer/AbstractFormattedPlaceholderPopulator;-><init>()V

    return-void
.end method

.method private formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    const/4 v1, 0x0

    .line 109
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 110
    aget-char v2, p2, v1

    const/16 v3, 0x27

    if-ne v2, v3, :cond_0

    .line 111
    invoke-virtual {p0, v1, v0, p2}, Lcom/itextpdf/commons/actions/producer/CurrentDatePlaceholderPopulator;->attachQuotedString(ILjava/lang/StringBuilder;[C)I

    move-result v1

    goto :goto_1

    .line 112
    :cond_0
    invoke-virtual {p0, v2}, Lcom/itextpdf/commons/actions/producer/CurrentDatePlaceholderPopulator;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    invoke-direct {p0, v1, p1, v0, p2}, Lcom/itextpdf/commons/actions/producer/CurrentDatePlaceholderPopulator;->processDateComponent(ILjava/util/Date;Ljava/lang/StringBuilder;[C)I

    move-result v1

    goto :goto_1

    .line 115
    :cond_1
    aget-char v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private processDateComponent(ILjava/util/Date;Ljava/lang/StringBuilder;[C)I
    .locals 4

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    aget-char v1, p4, p1

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    add-int/lit8 v2, p1, 0x1

    .line 126
    array-length v3, p4

    if-ge v2, v3, :cond_0

    aget-char v3, p4, v2

    if-ne v1, v3, :cond_0

    .line 128
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v2

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 131
    sget-object v0, Lcom/itextpdf/commons/actions/producer/CurrentDatePlaceholderPopulator;->ALLOWED_PATTERNS:Ljava/util/Set;

    invoke-interface {v0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-static {p2, p4}, Lcom/itextpdf/commons/utils/DateTimeUtil;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return p1

    .line 134
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pattern contains unexpected component {0}"

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public populate(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/commons/actions/confirmations/ConfirmedEventWrapper;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 101
    invoke-static {}, Lcom/itextpdf/commons/utils/DateTimeUtil;->getCurrentTimeDate()Ljava/util/Date;

    move-result-object p1

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/commons/actions/producer/CurrentDatePlaceholderPopulator;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "currentDate"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Invalid usage of placeholder \"{0}\": format is required"

    invoke-static {v0, p2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
