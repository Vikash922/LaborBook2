.class final Lorg/objectweb/asm/tree/analysis/SmallSet;
.super Ljava/util/AbstractSet;
.source "SmallSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/objectweb/asm/tree/analysis/SmallSet$IteratorImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final element1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final element2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->element1:Ljava/lang/Object;

    .line 60
    iput-object v0, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->element2:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->element1:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->element2:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->element1:Ljava/lang/Object;

    .line 81
    iput-object p2, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->element2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 90
    new-instance v0, Lorg/objectweb/asm/tree/analysis/SmallSet$IteratorImpl;

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->element1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->element2:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/tree/analysis/SmallSet$IteratorImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->element1:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->element2:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method union(Lorg/objectweb/asm/tree/analysis/SmallSet;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/objectweb/asm/tree/analysis/SmallSet<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 116
    iget-object v0, p1, Lorg/objectweb/asm/tree/analysis/SmallSet;->element1:Ljava/lang/Object;

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->element1:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget-object v2, p1, Lorg/objectweb/asm/tree/analysis/SmallSet;->element2:Ljava/lang/Object;

    iget-object v3, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->element2:Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->element2:Ljava/lang/Object;

    if-ne v0, v2, :cond_2

    iget-object v3, p1, Lorg/objectweb/asm/tree/analysis/SmallSet;->element2:Ljava/lang/Object;

    if-ne v3, v1, :cond_2

    :cond_1
    return-object p0

    :cond_2
    if-nez v0, :cond_3

    return-object p0

    :cond_3
    if-nez v1, :cond_4

    return-object p1

    .line 130
    :cond_4
    iget-object v3, p1, Lorg/objectweb/asm/tree/analysis/SmallSet;->element2:Ljava/lang/Object;

    if-nez v3, :cond_7

    if-nez v2, :cond_5

    .line 133
    new-instance p1, Lorg/objectweb/asm/tree/analysis/SmallSet;

    invoke-direct {p1, v1, v0}, Lorg/objectweb/asm/tree/analysis/SmallSet;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_5
    if-eq v0, v1, :cond_6

    if-ne v0, v2, :cond_7

    :cond_6
    return-object p0

    :cond_7
    if-nez v2, :cond_9

    if-eq v1, v0, :cond_8

    if-ne v1, v3, :cond_9

    :cond_8
    return-object p1

    .line 148
    :cond_9
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 149
    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->element1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->element2:Ljava/lang/Object;

    if-eqz v1, :cond_a

    .line 151
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_a
    iget-object v1, p1, Lorg/objectweb/asm/tree/analysis/SmallSet;->element1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object p1, p1, Lorg/objectweb/asm/tree/analysis/SmallSet;->element2:Ljava/lang/Object;

    if-eqz p1, :cond_b

    .line 155
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    return-object v0
.end method
