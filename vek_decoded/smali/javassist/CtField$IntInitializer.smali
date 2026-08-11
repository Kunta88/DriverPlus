.class Ljavassist/CtField$IntInitializer;
.super Ljavassist/CtField$Initializer;
.source "CtField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/CtField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntInitializer"
.end annotation


# instance fields
.field value:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1158
    invoke-direct {p0}, Ljavassist/CtField$Initializer;-><init>()V

    iput p1, p0, Ljavassist/CtField$IntInitializer;->value:I

    return-void
.end method


# virtual methods
.method check(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1161
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x49

    if-eq p1, v0, :cond_1

    const/16 v0, 0x53

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x43

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1163
    :cond_0
    new-instance p1, Ljavassist/CannotCompileException;

    const-string v0, "type mismatch"

    invoke-direct {p1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method compile(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;Ljavassist/compiler/Javac;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 p4, 0x0

    .line 1170
    invoke-virtual {p3, p4}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1171
    iget p4, p0, Ljavassist/CtField$IntInitializer;->value:I

    invoke-virtual {p3, p4}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1172
    sget-object p4, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p4, p2, p1}, Ljavassist/bytecode/Bytecode;->addPutfield(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    return p1
.end method

.method compileIfStatic(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/Javac;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1179
    iget p4, p0, Ljavassist/CtField$IntInitializer;->value:I

    invoke-virtual {p3, p4}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1180
    sget-object p4, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p4, p2, p1}, Ljavassist/bytecode/Bytecode;->addPutstatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method getConstantValue(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;)I
    .locals 0

    .line 1185
    iget p2, p0, Ljavassist/CtField$IntInitializer;->value:I

    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->addIntegerInfo(I)I

    move-result p1

    return p1
.end method
