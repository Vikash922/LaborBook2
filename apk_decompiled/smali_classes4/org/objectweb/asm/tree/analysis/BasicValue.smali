.class public Lorg/objectweb/asm/tree/analysis/BasicValue;
.super Ljava/lang/Object;
.source "BasicValue.java"

# interfaces
.implements Lorg/objectweb/asm/tree/analysis/Value;


# static fields
.field public static final DOUBLE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

.field public static final FLOAT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

.field public static final INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

.field public static final LONG_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

.field public static final REFERENCE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

.field public static final RETURNADDRESS_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

.field public static final UNINITIALIZED_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;


# instance fields
.field private final type:Lorg/objectweb/asm/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lorg/objectweb/asm/tree/analysis/BasicValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/analysis/BasicValue;-><init>(Lorg/objectweb/asm/Type;)V

    sput-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->UNINITIALIZED_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    .line 44
    new-instance v0, Lorg/objectweb/asm/tree/analysis/BasicValue;

    sget-object v1, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/analysis/BasicValue;-><init>(Lorg/objectweb/asm/Type;)V

    sput-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    .line 47
    new-instance v0, Lorg/objectweb/asm/tree/analysis/BasicValue;

    sget-object v1, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/analysis/BasicValue;-><init>(Lorg/objectweb/asm/Type;)V

    sput-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->FLOAT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    .line 50
    new-instance v0, Lorg/objectweb/asm/tree/analysis/BasicValue;

    sget-object v1, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/analysis/BasicValue;-><init>(Lorg/objectweb/asm/Type;)V

    sput-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->LONG_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    .line 53
    new-instance v0, Lorg/objectweb/asm/tree/analysis/BasicValue;

    sget-object v1, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/analysis/BasicValue;-><init>(Lorg/objectweb/asm/Type;)V

    sput-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->DOUBLE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    .line 56
    new-instance v0, Lorg/objectweb/asm/tree/analysis/BasicValue;

    const-string v1, "java/lang/Object"

    .line 57
    invoke-static {v1}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/analysis/BasicValue;-><init>(Lorg/objectweb/asm/Type;)V

    sput-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->REFERENCE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    .line 60
    new-instance v0, Lorg/objectweb/asm/tree/analysis/BasicValue;

    sget-object v1, Lorg/objectweb/asm/Type;->VOID_TYPE:Lorg/objectweb/asm/Type;

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/analysis/BasicValue;-><init>(Lorg/objectweb/asm/Type;)V

    sput-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->RETURNADDRESS_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/Type;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 101
    :cond_0
    instance-of v1, p1, Lorg/objectweb/asm/tree/analysis/BasicValue;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 102
    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    if-nez v1, :cond_2

    .line 103
    check-cast p1, Lorg/objectweb/asm/tree/analysis/BasicValue;

    iget-object p1, p1, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 105
    :cond_2
    check-cast p1, Lorg/objectweb/asm/tree/analysis/BasicValue;

    iget-object p1, p1, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v2
.end method

.method public getSize()I
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    :goto_1
    return v0
.end method

.method public getType()Lorg/objectweb/asm/Type;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isReference()Z
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 119
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->UNINITIALIZED_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    if-ne p0, v0, :cond_0

    .line 120
    const-string v0, "."

    return-object v0

    .line 121
    :cond_0
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->RETURNADDRESS_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    if-ne p0, v0, :cond_1

    .line 122
    const-string v0, "A"

    return-object v0

    .line 123
    :cond_1
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->REFERENCE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    if-ne p0, v0, :cond_2

    .line 124
    const-string v0, "R"

    return-object v0

    .line 126
    :cond_2
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/BasicValue;->type:Lorg/objectweb/asm/Type;

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
