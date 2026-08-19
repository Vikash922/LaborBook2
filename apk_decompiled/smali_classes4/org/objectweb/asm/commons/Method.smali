.class public Lorg/objectweb/asm/commons/Method;
.super Ljava/lang/Object;
.source "Method.java"


# static fields
.field private static final PRIMITIVE_TYPE_DESCRIPTORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final descriptor:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    const-string v1, "void"

    const-string v2, "V"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "byte"

    const-string v2, "B"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "char"

    const-string v2, "C"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "double"

    const-string v2, "D"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "float"

    const-string v2, "F"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "int"

    const-string v2, "I"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "long"

    const-string v2, "J"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "short"

    const-string v2, "S"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "boolean"

    const-string v2, "Z"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sput-object v0, Lorg/objectweb/asm/commons/Method;->PRIMITIVE_TYPE_DESCRIPTORS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/objectweb/asm/commons/Method;->name:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lorg/objectweb/asm/commons/Method;->descriptor:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/objectweb/asm/Type;[Lorg/objectweb/asm/Type;)V
    .locals 0

    .line 85
    invoke-static {p2, p3}, Lorg/objectweb/asm/Type;->getMethodDescriptor(Lorg/objectweb/asm/Type;[Lorg/objectweb/asm/Type;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/objectweb/asm/commons/Method;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getDescriptorInternal(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .line 179
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 185
    :goto_0
    const-string v3, "[]"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_1

    const/16 v3, 0x5b

    .line 186
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 190
    sget-object v1, Lorg/objectweb/asm/commons/Method;->PRIMITIVE_TYPE_DESCRIPTORS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const/16 v1, 0x4c

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    .line 195
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_4

    if-nez p1, :cond_3

    .line 197
    const-string p1, "java/lang/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 p1, 0x2f

    .line 201
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 p0, 0x3b

    .line 203
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMethod(Ljava/lang/String;)Lorg/objectweb/asm/commons/Method;
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-static {p0, v0}, Lorg/objectweb/asm/commons/Method;->getMethod(Ljava/lang/String;Z)Lorg/objectweb/asm/commons/Method;

    move-result-object p0

    return-object p0
.end method

.method public static getMethod(Ljava/lang/String;Z)Lorg/objectweb/asm/commons/Method;
    .locals 9

    const/16 v0, 0x20

    .line 137
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x28

    .line 138
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x29

    .line 139
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    if-eqz v2, :cond_2

    if-eq v4, v5, :cond_2

    const/4 v6, 0x0

    .line 143
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v0, v0, 0x1

    .line 145
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :cond_0
    const/16 v7, 0x2c

    .line 151
    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-ne v7, v5, :cond_1

    .line 155
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 154
    invoke-static {v8, p1}, Lorg/objectweb/asm/commons/Method;->getDescriptorInternal(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-static {v2, p1}, Lorg/objectweb/asm/commons/Method;->getDescriptorInternal(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v2, v7, 0x1

    .line 163
    :goto_0
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v7, v5, :cond_0

    .line 165
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v6, p1}, Lorg/objectweb/asm/commons/Method;->getDescriptorInternal(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    new-instance p0, Lorg/objectweb/asm/commons/Method;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/commons/Method;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 141
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getMethod(Ljava/lang/reflect/Constructor;)Lorg/objectweb/asm/commons/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lorg/objectweb/asm/commons/Method;"
        }
    .end annotation

    .line 105
    new-instance v0, Lorg/objectweb/asm/commons/Method;

    const-string v1, "<init>"

    invoke-static {p0}, Lorg/objectweb/asm/Type;->getConstructorDescriptor(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/objectweb/asm/commons/Method;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getMethod(Ljava/lang/reflect/Method;)Lorg/objectweb/asm/commons/Method;
    .locals 2

    .line 95
    new-instance v0, Lorg/objectweb/asm/commons/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lorg/objectweb/asm/Type;->getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/objectweb/asm/commons/Method;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 251
    instance-of v0, p1, Lorg/objectweb/asm/commons/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 254
    :cond_0
    check-cast p1, Lorg/objectweb/asm/commons/Method;

    .line 255
    iget-object v0, p0, Lorg/objectweb/asm/commons/Method;->name:Ljava/lang/String;

    iget-object v2, p1, Lorg/objectweb/asm/commons/Method;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/commons/Method;->descriptor:Ljava/lang/String;

    iget-object p1, p1, Lorg/objectweb/asm/commons/Method;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getArgumentTypes()[Lorg/objectweb/asm/Type;
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/objectweb/asm/commons/Method;->descriptor:Ljava/lang/String;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/objectweb/asm/commons/Method;->descriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/objectweb/asm/commons/Method;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnType()Lorg/objectweb/asm/Type;
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/objectweb/asm/commons/Method;->descriptor:Ljava/lang/String;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getReturnType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 260
    iget-object v0, p0, Lorg/objectweb/asm/commons/Method;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/objectweb/asm/commons/Method;->descriptor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/objectweb/asm/commons/Method;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/commons/Method;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
