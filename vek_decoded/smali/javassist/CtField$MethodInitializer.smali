.class Ljavassist/CtField$MethodInitializer;
.super Ljavassist/CtField$NewInitializer;
.source "CtField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/CtField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MethodInitializer"
.end annotation


# instance fields
.field methodName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1085
    invoke-direct {p0}, Ljavassist/CtField$NewInitializer;-><init>()V

    return-void
.end method

.method private getDescriptor()Ljava/lang/String;
    .locals 1

    .line 1120
    iget-object v0, p0, Ljavassist/CtField$MethodInitializer;->stringParams:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1121
    iget-boolean v0, p0, Ljavassist/CtField$MethodInitializer;->withConstructorParams:Z

    if-eqz v0, :cond_0

    const-string v0, "(Ljava/lang/Object;[Ljava/lang/Object;)"

    return-object v0

    :cond_0
    const-string v0, "(Ljava/lang/Object;)"

    return-object v0

    .line 1126
    :cond_1
    iget-boolean v0, p0, Ljavassist/CtField$MethodInitializer;->withConstructorParams:Z

    if-eqz v0, :cond_2

    const-string v0, "(Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/Object;)"

    return-object v0

    :cond_2
    const-string v0, "(Ljava/lang/Object;[Ljava/lang/String;)"

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

    .line 1097
    invoke-virtual {p3, p5}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1098
    invoke-virtual {p3, p5}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1100
    iget-object p5, p0, Ljavassist/CtField$MethodInitializer;->stringParams:[Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p5, :cond_0

    goto :goto_0

    .line 1103
    :cond_0
    invoke-virtual {p0, p3}, Ljavassist/CtField$MethodInitializer;->compileStringParameter(Ljavassist/bytecode/Bytecode;)I

    move-result p5

    add-int/2addr v0, p5

    .line 1105
    :goto_0
    iget-boolean p5, p0, Ljavassist/CtField$MethodInitializer;->withConstructorParams:Z

    if-eqz p5, :cond_1

    const/4 p5, 0x1

    .line 1106
    invoke-static {p3, p4, p5}, Ljavassist/CtNewWrappedMethod;->compileParameterList(Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;I)I

    move-result p4

    add-int/2addr v0, p4

    .line 1109
    :cond_1
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p1

    .line 1110
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Ljavassist/CtField$MethodInitializer;->getDescriptor()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1111
    iget-object p5, p0, Ljavassist/CtField$MethodInitializer;->objectType:Ljavassist/CtClass;

    iget-object v1, p0, Ljavassist/CtField$MethodInitializer;->methodName:Ljava/lang/String;

    invoke-virtual {p3, p5, v1, p4}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    sget-object p4, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-virtual {p3, p4, p2, p1}, Ljavassist/bytecode/Bytecode;->addPutfield(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method compileIfStatic(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/Javac;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1141
    iget-object p4, p0, Ljavassist/CtField$MethodInitializer;->stringParams:[Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p4, :cond_0

    const-string p4, "()"

    goto :goto_0

    .line 1145
    :cond_0
    invoke-virtual {p0, p3}, Ljavassist/CtField$MethodInitializer;->compileStringParameter(Ljavassist/bytecode/Bytecode;)I

    move-result p4

    add-int/2addr v0, p4

    const-string p4, "([Ljava/lang/String;)"

    .line 1148
    :goto_0
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p1

    .line 1149
    iget-object v1, p0, Ljavassist/CtField$MethodInitializer;->objectType:Ljavassist/CtClass;

    iget-object v2, p0, Ljavassist/CtField$MethodInitializer;->methodName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v1, v2, p4}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    sget-object p4, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-virtual {p3, p4, p2, p1}, Ljavassist/bytecode/Bytecode;->addPutstatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
