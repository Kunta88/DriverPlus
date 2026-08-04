.class Ljavassist/CtNewNestedClass;
.super Ljavassist/CtNewClass;
.source "CtNewNestedClass.java"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavassist/ClassPool;ZLjavassist/CtClass;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/CtNewClass;-><init>(Ljava/lang/String;Ljavassist/ClassPool;ZLjavassist/CtClass;)V

    return-void
.end method

.method private static updateInnerEntry(ILjava/lang/String;Ljavassist/CtClass;Z)V
    .locals 5

    .line 42
    invoke-virtual {p2}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    const-string v1, "InnerClasses"

    .line 43
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/InnerClassesAttribute;

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/InnerClassesAttribute;->tableLength()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 50
    invoke-virtual {v0, v3}, Ljavassist/bytecode/InnerClassesAttribute;->innerClass(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 51
    invoke-virtual {v0, v3}, Ljavassist/bytecode/InnerClassesAttribute;->accessFlags(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    or-int/2addr v1, p0

    .line 52
    invoke-virtual {v0, v3, v1}, Ljavassist/bytecode/InnerClassesAttribute;->setAccessFlags(II)V

    .line 53
    invoke-virtual {v0, v3}, Ljavassist/bytecode/InnerClassesAttribute;->outerClass(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 56
    :try_start_0
    invoke-virtual {p2}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p2

    .line 57
    invoke-static {p0, p1, p2, v2}, Ljavassist/CtNewNestedClass;->updateInnerEntry(ILjava/lang/String;Ljavassist/CtClass;Z)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 60
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot find the declaring class: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public setModifiers(I)V
    .locals 2

    and-int/lit8 p1, p1, -0x9

    .line 37
    invoke-super {p0, p1}, Ljavassist/CtNewClass;->setModifiers(I)V

    .line 38
    invoke-virtual {p0}, Ljavassist/CtNewNestedClass;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Ljavassist/CtNewNestedClass;->updateInnerEntry(ILjava/lang/String;Ljavassist/CtClass;Z)V

    return-void
.end method
