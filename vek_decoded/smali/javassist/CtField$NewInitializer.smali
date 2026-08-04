.class Ljavassist/CtField$NewInitializer;
.super Ljavassist/CtField$Initializer;
.source "CtField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/CtField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NewInitializer"
.end annotation


# instance fields
.field objectType:Ljavassist/CtClass;

.field stringParams:[Ljava/lang/String;

.field withConstructorParams:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 989
    invoke-direct {p0}, Ljavassist/CtField$Initializer;-><init>()V

    return-void
.end method

.method private getDescriptor()Ljava/lang/String;
    .locals 1

    .line 1024
    iget-object v0, p0, Ljavassist/CtField$NewInitializer;->stringParams:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1025
    iget-boolean v0, p0, Ljavassist/CtField$NewInitializer;->withConstructorParams:Z

    if-eqz v0, :cond_0

    const-string v0, "(Ljava/lang/Object;[Ljava/lang/Object;)V"

    return-object v0

    :cond_0
    const-string v0, "(Ljava/lang/Object;)V"

    return-object v0

    .line 1030
    :cond_1
    iget-boolean v0, p0, Ljavassist/CtField$NewInitializer;->withConstructorParams:Z

    if-eqz v0, :cond_2

    const-string v0, "(Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/Object;)V"

    return-object v0

    :cond_2
    const-string v0, "(Ljava/lang/Object;[Ljava/lang/String;)V"

    return-object v0
.end method


# virtual methods
.method compile(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;Ljavassist/compiler/Javac;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 p5, 0x0

    .line 1001
    invoke-virtual {p3, p5}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1002
    iget-object v0, p0, Ljavassist/CtField$NewInitializer;->objectType:Ljavassist/CtClass;

    invoke-virtual {p3, v0}, Ljavassist/bytecode/Bytecode;->addNew(Ljavassist/CtClass;)V

    const/16 v0, 0x59

    .line 1003
    invoke-virtual {p3, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1004
    invoke-virtual {p3, p5}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1006
    iget-object p5, p0, Ljavassist/CtField$NewInitializer;->stringParams:[Ljava/lang/String;

    const/4 v0, 0x4

    if-nez p5, :cond_0

    goto :goto_0

    .line 1009
    :cond_0
    invoke-virtual {p0, p3}, Ljavassist/CtField$NewInitializer;->compileStringParameter(Ljavassist/bytecode/Bytecode;)I

    move-result p5

    add-int/2addr v0, p5

    .line 1011
    :goto_0
    iget-boolean p5, p0, Ljavassist/CtField$NewInitializer;->withConstructorParams:Z

    if-eqz p5, :cond_1

    const/4 p5, 0x1

    .line 1012
    invoke-static {p3, p4, p5}, Ljavassist/CtNewWrappedMethod;->compileParameterList(Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;I)I

    move-result p4

    add-int/2addr v0, p4

    .line 1015
    :cond_1
    iget-object p4, p0, Ljavassist/CtField$NewInitializer;->objectType:Ljavassist/CtClass;

    invoke-direct {p0}, Ljavassist/CtField$NewInitializer;->getDescriptor()Ljava/lang/String;

    move-result-object p5

    const-string v1, "<init>"

    invoke-virtual {p3, p4, v1, p5}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    sget-object p4, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p4, p2, p1}, Ljavassist/bytecode/Bytecode;->addPutfield(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method compileIfStatic(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/Javac;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1044
    iget-object p4, p0, Ljavassist/CtField$NewInitializer;->objectType:Ljavassist/CtClass;

    invoke-virtual {p3, p4}, Ljavassist/bytecode/Bytecode;->addNew(Ljavassist/CtClass;)V

    const/16 p4, 0x59

    .line 1045
    invoke-virtual {p3, p4}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1048
    iget-object p4, p0, Ljavassist/CtField$NewInitializer;->stringParams:[Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p4, :cond_0

    const-string p4, "()V"

    goto :goto_0

    .line 1052
    :cond_0
    invoke-virtual {p0, p3}, Ljavassist/CtField$NewInitializer;->compileStringParameter(Ljavassist/bytecode/Bytecode;)I

    move-result p4

    add-int/2addr v0, p4

    const-string p4, "([Ljava/lang/String;)V"

    .line 1055
    :goto_0
    iget-object v1, p0, Ljavassist/CtField$NewInitializer;->objectType:Ljavassist/CtClass;

    const-string v2, "<init>"

    invoke-virtual {p3, v1, v2, p4}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    sget-object p4, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p4, p2, p1}, Ljavassist/bytecode/Bytecode;->addPutstatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method protected final compileStringParameter(Ljavassist/bytecode/Bytecode;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1063
    iget-object v0, p0, Ljavassist/CtField$NewInitializer;->stringParams:[Ljava/lang/String;

    array-length v0, v0

    .line 1064
    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    const-string v1, "java.lang.String"

    .line 1065
    invoke-virtual {p1, v1}, Ljavassist/bytecode/Bytecode;->addAnewarray(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const/16 v2, 0x59

    .line 1067
    invoke-virtual {p1, v2}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1068
    invoke-virtual {p1, v1}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1069
    iget-object v2, p0, Ljavassist/CtField$NewInitializer;->stringParams:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljavassist/bytecode/Bytecode;->addLdc(Ljava/lang/String;)V

    const/16 v2, 0x53

    .line 1070
    invoke-virtual {p1, v2}, Ljavassist/bytecode/Bytecode;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    return p1
.end method
