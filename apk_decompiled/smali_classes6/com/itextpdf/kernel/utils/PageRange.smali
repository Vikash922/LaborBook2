.class public Lcom/itextpdf/kernel/utils/PageRange;
.super Ljava/lang/Object;
.source "PageRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAnd;,
        Lcom/itextpdf/kernel/utils/PageRange$PageRangePartOddEven;,
        Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAfter;,
        Lcom/itextpdf/kernel/utils/PageRange$PageRangePartSequence;,
        Lcom/itextpdf/kernel/utils/PageRange$PageRangePartSingle;,
        Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;
    }
.end annotation


# static fields
.field private static final SEQUENCE_PATTERN:Ljava/util/regex/Pattern;

.field private static final SINGLE_PAGE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private sequences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-string v0, "(\\d+)-(\\d+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/utils/PageRange;->SEQUENCE_PATTERN:Ljava/util/regex/Pattern;

    .line 60
    const-string v0, "(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/utils/PageRange;->SINGLE_PAGE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/PageRange;->sequences:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/PageRange;->sequences:Ljava/util/List;

    .line 85
    const-string v0, "\\s+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 87
    invoke-static {v2}, Lcom/itextpdf/kernel/utils/PageRange;->getRangeObject(Ljava/lang/String;)Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 89
    iget-object v3, p0, Lcom/itextpdf/kernel/utils/PageRange;->sequences:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static getRangeObject(Ljava/lang/String;)Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;
    .locals 6

    .line 95
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    aget-object v5, p0, v4

    .line 98
    invoke-static {v5}, Lcom/itextpdf/kernel/utils/PageRange;->getRangeObject(Ljava/lang/String;)Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 100
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 104
    new-instance p0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAnd;

    new-array v0, v3, [Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAnd;-><init>([Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;)V

    return-object p0

    :cond_2
    return-object v2

    .line 110
    :cond_3
    sget-object v0, Lcom/itextpdf/kernel/utils/PageRange;->SEQUENCE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 111
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x2

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 113
    new-instance v2, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartSequence;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v2, p0, v0}, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartSequence;-><init>(II)V

    return-object v2

    .line 115
    :cond_4
    new-instance v0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAfter;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAfter;-><init>(I)V

    return-object v0

    .line 117
    :cond_5
    sget-object v0, Lcom/itextpdf/kernel/utils/PageRange;->SINGLE_PAGE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 118
    new-instance p0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartSingle;

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartSingle;-><init>(I)V

    return-object p0

    .line 119
    :cond_6
    const-string v0, "odd"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 120
    sget-object p0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartOddEven;->ODD:Lcom/itextpdf/kernel/utils/PageRange$PageRangePartOddEven;

    return-object p0

    .line 121
    :cond_7
    const-string v0, "even"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 122
    sget-object p0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartOddEven;->EVEN:Lcom/itextpdf/kernel/utils/PageRange$PageRangePartOddEven;

    return-object p0

    :cond_8
    return-object v2
.end method


# virtual methods
.method public addPageRangePart(Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;)Lcom/itextpdf/kernel/utils/PageRange;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/PageRange;->sequences:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPageSequence(II)Lcom/itextpdf/kernel/utils/PageRange;
    .locals 1

    .line 148
    new-instance v0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartSequence;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartSequence;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/utils/PageRange;->addPageRangePart(Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;)Lcom/itextpdf/kernel/utils/PageRange;

    move-result-object p1

    return-object p1
.end method

.method public addSinglePage(I)Lcom/itextpdf/kernel/utils/PageRange;
    .locals 1

    .line 158
    new-instance v0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartSingle;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartSingle;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/utils/PageRange;->addPageRangePart(Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;)Lcom/itextpdf/kernel/utils/PageRange;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 198
    instance-of v0, p1, Lcom/itextpdf/kernel/utils/PageRange;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 202
    :cond_0
    check-cast p1, Lcom/itextpdf/kernel/utils/PageRange;

    .line 203
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/PageRange;->sequences:Ljava/util/List;

    iget-object p1, p1, Lcom/itextpdf/kernel/utils/PageRange;->sequences:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getQualifyingPageNums(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/PageRange;->sequences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;

    .line 172
    invoke-interface {v2, p1}, Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;->getAllPagesInRange(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/PageRange;->sequences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;

    .line 213
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isPageInRange(I)Z
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/PageRange;->sequences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;

    .line 186
    invoke-interface {v1, p1}, Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;->isPageInRange(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
