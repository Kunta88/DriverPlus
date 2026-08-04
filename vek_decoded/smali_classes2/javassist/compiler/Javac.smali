.class public Ljavassist/compiler/Javac;
.super Ljava/lang/Object;
.source "Javac.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/compiler/Javac$CtFieldWithInit;
    }
.end annotation


# static fields
.field public static final param0Name:Ljava/lang/String; = "$0"

.field public static final proceedName:Ljava/lang/String; = "$proceed"

.field public static final resultVarName:Ljava/lang/String; = "$_"


# instance fields
.field private bytecode:Ljavassist/bytecode/Bytecode;

.field gen:Ljavassist/compiler/JvstCodeGen;

.field stable:Ljavassist/compiler/SymbolTable;


# direct methods
.method public constructor <init>(Ljavassist/CtClass;)V
    .locals 3

    .line 53
    new-instance v0, Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    invoke-direct {p0, v0, p1}, Ljavassist/compiler/Javac;-><init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {p2}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Ljavassist/compiler/JvstCodeGen;-><init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;Ljavassist/ClassPool;)V

    iput-object v0, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    .line 67
    new-instance p2, Ljavassist/compiler/SymbolTable;

    invoke-direct {p2}, Ljavassist/compiler/SymbolTable;-><init>()V

    iput-object p2, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    .line 68
    iput-object p1, p0, Ljavassist/compiler/Javac;->bytecode:Ljavassist/bytecode/Bytecode;

    return-void
.end method

.method private compileField(Ljavassist/compiler/ast/FieldDecl;)Ljavassist/CtField;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 132
    invoke-virtual {p1}, Ljavassist/compiler/ast/FieldDecl;->getDeclarator()Ljavassist/compiler/ast/Declarator;

    move-result-object v0

    .line 133
    new-instance v1, Ljavassist/compiler/Javac$CtFieldWithInit;

    iget-object v2, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    iget-object v2, v2, Ljavassist/compiler/JvstCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v2, v0}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljavassist/compiler/ast/Declarator;)Ljavassist/CtClass;

    move-result-object v2

    invoke-virtual {v0}, Ljavassist/compiler/ast/Declarator;->getVariable()Ljavassist/compiler/ast/Symbol;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {v3}, Ljavassist/compiler/JvstCodeGen;->getThisClass()Ljavassist/CtClass;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Ljavassist/compiler/Javac$CtFieldWithInit;-><init>(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)V

    .line 135
    invoke-virtual {p1}, Ljavassist/compiler/ast/FieldDecl;->getModifiers()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->getModifiers(Ljavassist/compiler/ast/ASTList;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljavassist/compiler/Javac$CtFieldWithInit;->setModifiers(I)V

    .line 136
    invoke-virtual {p1}, Ljavassist/compiler/ast/FieldDecl;->getInit()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p1}, Ljavassist/compiler/ast/FieldDecl;->getInit()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavassist/compiler/Javac$CtFieldWithInit;->setInit(Ljavassist/compiler/ast/ASTree;)V

    :cond_0
    return-object v1
.end method

.method private compileMethod(Ljavassist/compiler/Parser;Ljavassist/compiler/ast/MethodDecl;)Ljavassist/CtBehavior;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 145
    invoke-virtual {p2}, Ljavassist/compiler/ast/MethodDecl;->getModifiers()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->getModifiers(Ljavassist/compiler/ast/ASTList;)I

    move-result v0

    .line 146
    iget-object v1, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {v1, p2}, Ljavassist/compiler/JvstCodeGen;->makeParamList(Ljavassist/compiler/ast/MethodDecl;)[Ljavassist/CtClass;

    move-result-object v1

    .line 147
    iget-object v2, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {v2, p2}, Ljavassist/compiler/JvstCodeGen;->makeThrowsList(Ljavassist/compiler/ast/MethodDecl;)[Ljavassist/CtClass;

    move-result-object v2

    .line 148
    invoke-static {v0}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v3

    invoke-virtual {p0, v1, v3}, Ljavassist/compiler/Javac;->recordParams([Ljavassist/CtClass;Z)I

    .line 149
    iget-object v3, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    invoke-virtual {p1, v3, p2}, Ljavassist/compiler/Parser;->parseMethod2(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/MethodDecl;)Ljavassist/compiler/ast/MethodDecl;

    move-result-object p1

    .line 151
    :try_start_0
    invoke-virtual {p1}, Ljavassist/compiler/ast/MethodDecl;->isConstructor()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 152
    new-instance p2, Ljavassist/CtConstructor;

    iget-object v3, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {v3}, Ljavassist/compiler/JvstCodeGen;->getThisClass()Ljavassist/CtClass;

    move-result-object v3

    invoke-direct {p2, v1, v3}, Ljavassist/CtConstructor;-><init>([Ljavassist/CtClass;Ljavassist/CtClass;)V

    .line 154
    invoke-virtual {p2, v0}, Ljavassist/CtConstructor;->setModifiers(I)V

    .line 155
    iget-object v0, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {p1, v0}, Ljavassist/compiler/ast/MethodDecl;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 156
    invoke-virtual {p2}, Ljavassist/CtConstructor;->getMethodInfo()Ljavassist/bytecode/MethodInfo;

    move-result-object p1

    iget-object v0, p0, Ljavassist/compiler/Javac;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 158
    invoke-virtual {p2, v2}, Ljavassist/CtConstructor;->setExceptionTypes([Ljavassist/CtClass;)V

    return-object p2

    .line 162
    :cond_0
    invoke-virtual {p1}, Ljavassist/compiler/ast/MethodDecl;->getReturn()Ljavassist/compiler/ast/Declarator;

    move-result-object p2

    .line 163
    iget-object v3, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    iget-object v3, v3, Ljavassist/compiler/JvstCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v3, p2}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljavassist/compiler/ast/Declarator;)Ljavassist/CtClass;

    move-result-object v3

    const/4 v4, 0x0

    .line 164
    invoke-virtual {p0, v3, v4}, Ljavassist/compiler/Javac;->recordReturnType(Ljavassist/CtClass;Z)I

    .line 165
    new-instance v4, Ljavassist/CtMethod;

    invoke-virtual {p2}, Ljavassist/compiler/ast/Declarator;->getVariable()Ljavassist/compiler/ast/Symbol;

    move-result-object p2

    invoke-virtual {p2}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object p2

    iget-object v5, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {v5}, Ljavassist/compiler/JvstCodeGen;->getThisClass()Ljavassist/CtClass;

    move-result-object v5

    invoke-direct {v4, v3, p2, v1, v5}, Ljavassist/CtMethod;-><init>(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;Ljavassist/CtClass;)V

    .line 167
    invoke-virtual {v4, v0}, Ljavassist/CtMethod;->setModifiers(I)V

    .line 168
    iget-object p2, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {p2, v4}, Ljavassist/compiler/JvstCodeGen;->setThisMethod(Ljavassist/CtMethod;)V

    .line 169
    iget-object p2, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {p1, p2}, Ljavassist/compiler/ast/MethodDecl;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 170
    invoke-virtual {p1}, Ljavassist/compiler/ast/MethodDecl;->getBody()Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 171
    invoke-virtual {v4}, Ljavassist/CtMethod;->getMethodInfo()Ljavassist/bytecode/MethodInfo;

    move-result-object p1

    iget-object p2, p0, Ljavassist/compiler/Javac;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    goto :goto_0

    :cond_1
    or-int/lit16 p1, v0, 0x400

    .line 174
    invoke-virtual {v4, p1}, Ljavassist/CtMethod;->setModifiers(I)V

    .line 176
    :goto_0
    invoke-virtual {v4, v2}, Ljavassist/CtMethod;->setExceptionTypes([Ljavassist/CtClass;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception p1

    .line 181
    new-instance p2, Ljavassist/compiler/CompileError;

    invoke-virtual {p1}, Ljavassist/NotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static makeDefaultBody(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V
    .locals 1

    .line 236
    instance-of v0, p1, Ljavassist/CtPrimitiveType;

    if-eqz v0, :cond_4

    .line 237
    check-cast p1, Ljavassist/CtPrimitiveType;

    .line 238
    invoke-virtual {p1}, Ljavassist/CtPrimitiveType;->getReturnOp()I

    move-result p1

    const/16 v0, 0xaf

    if-ne p1, v0, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    :cond_0
    const/16 v0, 0xae

    if-ne p1, v0, :cond_1

    const/16 v0, 0xb

    goto :goto_0

    :cond_1
    const/16 v0, 0xad

    if-ne p1, v0, :cond_2

    const/16 v0, 0x9

    goto :goto_0

    :cond_2
    const/16 v0, 0xb1

    if-ne p1, v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const/16 p1, 0xb0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_5

    .line 256
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 258
    :cond_5
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    return-void
.end method

.method public static parseExpr(Ljava/lang/String;Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 593
    new-instance v0, Ljavassist/compiler/Parser;

    new-instance v1, Ljavassist/compiler/Lex;

    invoke-direct {v1, p0}, Ljavassist/compiler/Lex;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavassist/compiler/Parser;-><init>(Ljavassist/compiler/Lex;)V

    .line 594
    invoke-virtual {v0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compile(Ljava/lang/String;)Ljavassist/CtMember;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 89
    new-instance v0, Ljavassist/compiler/Parser;

    new-instance v1, Ljavassist/compiler/Lex;

    invoke-direct {v1, p1}, Ljavassist/compiler/Lex;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavassist/compiler/Parser;-><init>(Ljavassist/compiler/Lex;)V

    .line 90
    iget-object p1, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    invoke-virtual {v0, p1}, Ljavassist/compiler/Parser;->parseMember1(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    .line 92
    :try_start_0
    instance-of v1, p1, Ljavassist/compiler/ast/FieldDecl;

    if-eqz v1, :cond_0

    .line 93
    check-cast p1, Ljavassist/compiler/ast/FieldDecl;

    invoke-direct {p0, p1}, Ljavassist/compiler/Javac;->compileField(Ljavassist/compiler/ast/FieldDecl;)Ljavassist/CtField;

    move-result-object p1

    return-object p1

    .line 95
    :cond_0
    check-cast p1, Ljavassist/compiler/ast/MethodDecl;

    invoke-direct {p0, v0, p1}, Ljavassist/compiler/Javac;->compileMethod(Ljavassist/compiler/Parser;Ljavassist/compiler/ast/MethodDecl;)Ljavassist/CtBehavior;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Ljavassist/CtBehavior;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Ljavassist/CtBehavior;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v1

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v2

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/CannotCompileException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 107
    new-instance v0, Ljavassist/compiler/CompileError;

    invoke-virtual {p1}, Ljavassist/CannotCompileException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p1

    .line 104
    new-instance v0, Ljavassist/compiler/CompileError;

    invoke-virtual {p1}, Ljavassist/bytecode/BadBytecode;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compileBody(Ljavassist/CtBehavior;Ljava/lang/String;)Ljavassist/bytecode/Bytecode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 195
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtBehavior;->getModifiers()I

    move-result v0

    .line 196
    invoke-virtual {p1}, Ljavassist/CtBehavior;->getParameterTypes()[Ljavassist/CtClass;

    move-result-object v1

    invoke-static {v0}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljavassist/compiler/Javac;->recordParams([Ljavassist/CtClass;Z)I

    .line 199
    instance-of v0, p1, Ljavassist/CtMethod;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    move-object v1, p1

    check-cast v1, Ljavassist/CtMethod;

    invoke-virtual {v0, v1}, Ljavassist/compiler/JvstCodeGen;->setThisMethod(Ljavassist/CtMethod;)V

    .line 201
    move-object v0, p1

    check-cast v0, Ljavassist/CtMethod;

    invoke-virtual {v0}, Ljavassist/CtMethod;->getReturnType()Ljavassist/CtClass;

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_0
    sget-object v0, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    :goto_0
    const/4 v1, 0x0

    .line 206
    invoke-virtual {p0, v0, v1}, Ljavassist/compiler/Javac;->recordReturnType(Ljavassist/CtClass;Z)I

    .line 207
    sget-object v2, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez p2, :cond_2

    .line 210
    iget-object p1, p0, Ljavassist/compiler/Javac;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-static {p1, v0}, Ljavassist/compiler/Javac;->makeDefaultBody(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V

    goto :goto_2

    .line 212
    :cond_2
    new-instance v0, Ljavassist/compiler/Parser;

    new-instance v4, Ljavassist/compiler/Lex;

    invoke-direct {v4, p2}, Ljavassist/compiler/Lex;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljavassist/compiler/Parser;-><init>(Ljavassist/compiler/Lex;)V

    .line 213
    new-instance p2, Ljavassist/compiler/SymbolTable;

    iget-object v4, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    invoke-direct {p2, v4}, Ljavassist/compiler/SymbolTable;-><init>(Ljavassist/compiler/SymbolTable;)V

    .line 214
    invoke-virtual {v0, p2}, Ljavassist/compiler/Parser;->parseStatement(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p2

    .line 215
    invoke-virtual {v0}, Ljavassist/compiler/Parser;->hasMore()Z

    move-result v0

    if-nez v0, :cond_4

    .line 220
    instance-of v0, p1, Ljavassist/CtConstructor;

    if-eqz v0, :cond_3

    .line 221
    check-cast p1, Ljavassist/CtConstructor;

    invoke-virtual {p1}, Ljavassist/CtConstructor;->isClassInitializer()Z

    move-result p1

    xor-int/lit8 v1, p1, 0x1

    .line 223
    :cond_3
    iget-object p1, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {p1, p2, v1, v2}, Ljavassist/compiler/JvstCodeGen;->atMethodBody(Ljavassist/compiler/ast/Stmnt;ZZ)V

    .line 226
    :goto_2
    iget-object p1, p0, Ljavassist/compiler/Javac;->bytecode:Ljavassist/bytecode/Bytecode;

    return-object p1

    .line 216
    :cond_4
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string p2, "the method/constructor body must be surrounded by {}"

    invoke-direct {p1, p2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 229
    new-instance p2, Ljavassist/compiler/CompileError;

    invoke-virtual {p1}, Ljavassist/NotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public compileExpr(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 583
    iget-object v0, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    invoke-static {p1, v0}, Ljavassist/compiler/Javac;->parseExpr(Ljava/lang/String;Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    .line 584
    invoke-virtual {p0, p1}, Ljavassist/compiler/Javac;->compileExpr(Ljavassist/compiler/ast/ASTree;)V

    return-void
.end method

.method public compileExpr(Ljavassist/compiler/ast/ASTree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 608
    iget-object v0, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {v0, p1}, Ljavassist/compiler/JvstCodeGen;->compileExpr(Ljavassist/compiler/ast/ASTree;)V

    :cond_0
    return-void
.end method

.method public compileStmnt(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 564
    new-instance v0, Ljavassist/compiler/Parser;

    new-instance v1, Ljavassist/compiler/Lex;

    invoke-direct {v1, p1}, Ljavassist/compiler/Lex;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavassist/compiler/Parser;-><init>(Ljavassist/compiler/Lex;)V

    .line 565
    new-instance p1, Ljavassist/compiler/SymbolTable;

    iget-object v1, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    invoke-direct {p1, v1}, Ljavassist/compiler/SymbolTable;-><init>(Ljavassist/compiler/SymbolTable;)V

    .line 566
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljavassist/compiler/Parser;->hasMore()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 567
    invoke-virtual {v0, p1}, Ljavassist/compiler/Parser;->parseStatement(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 569
    iget-object v2, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {v1, v2}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getBytecode()Ljavassist/bytecode/Bytecode;
    .locals 1

    .line 74
    iget-object v0, p0, Ljavassist/compiler/Javac;->bytecode:Ljavassist/bytecode/Bytecode;

    return-object v0
.end method

.method public recordLocalVariables(Ljavassist/bytecode/CodeAttribute;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const-string v0, "LocalVariableTable"

    .line 273
    invoke-virtual {p1, v0}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/LocalVariableAttribute;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 279
    :cond_0
    invoke-virtual {p1}, Ljavassist/bytecode/LocalVariableAttribute;->tableLength()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 281
    invoke-virtual {p1, v0}, Ljavassist/bytecode/LocalVariableAttribute;->startPc(I)I

    move-result v2

    .line 282
    invoke-virtual {p1, v0}, Ljavassist/bytecode/LocalVariableAttribute;->codeLength(I)I

    move-result v3

    if-gt v2, p2, :cond_1

    add-int/2addr v2, v3

    if-ge p2, v2, :cond_1

    .line 284
    iget-object v2, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {p1, v0}, Ljavassist/bytecode/LocalVariableAttribute;->descriptor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljavassist/bytecode/LocalVariableAttribute;->variableName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0}, Ljavassist/bytecode/LocalVariableAttribute;->index(I)I

    move-result v5

    iget-object v6, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    invoke-virtual {v2, v3, v4, v5, v6}, Ljavassist/compiler/JvstCodeGen;->recordVariable(Ljava/lang/String;Ljava/lang/String;ILjavassist/compiler/SymbolTable;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public recordParamNames(Ljavassist/bytecode/CodeAttribute;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const-string v0, "LocalVariableTable"

    .line 303
    invoke-virtual {p1, v0}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/LocalVariableAttribute;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 309
    :cond_0
    invoke-virtual {p1}, Ljavassist/bytecode/LocalVariableAttribute;->tableLength()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 311
    invoke-virtual {p1, v0}, Ljavassist/bytecode/LocalVariableAttribute;->index(I)I

    move-result v2

    if-ge v2, p2, :cond_1

    .line 313
    iget-object v3, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {p1, v0}, Ljavassist/bytecode/LocalVariableAttribute;->descriptor(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0}, Ljavassist/bytecode/LocalVariableAttribute;->variableName(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    invoke-virtual {v3, v4, v5, v2, v6}, Ljavassist/compiler/JvstCodeGen;->recordVariable(Ljava/lang/String;Ljava/lang/String;ILjavassist/compiler/SymbolTable;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public recordParams(Ljava/lang/String;[Ljavassist/CtClass;ZIZ)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 362
    iget-object v0, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    iget-object v9, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    const-string v3, "$"

    const-string v4, "$args"

    const-string v5, "$$"

    move-object v1, p2

    move v2, p5

    move v6, p3

    move v7, p4

    move-object v8, p1

    invoke-virtual/range {v0 .. v9}, Ljavassist/compiler/JvstCodeGen;->recordParams([Ljavassist/CtClass;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljavassist/compiler/SymbolTable;)I

    move-result p1

    return p1
.end method

.method public recordParams([Ljavassist/CtClass;Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    iget-object v6, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    const-string v3, "$"

    const-string v4, "$args"

    const-string v5, "$$"

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Ljavassist/compiler/JvstCodeGen;->recordParams([Ljavassist/CtClass;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavassist/compiler/SymbolTable;)I

    move-result p1

    return p1
.end method

.method public recordProceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 435
    new-instance v0, Ljavassist/compiler/Parser;

    new-instance v1, Ljavassist/compiler/Lex;

    invoke-direct {v1, p1}, Ljavassist/compiler/Lex;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavassist/compiler/Parser;-><init>(Ljavassist/compiler/Lex;)V

    .line 436
    iget-object p1, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    invoke-virtual {v0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    .line 439
    new-instance v0, Ljavassist/compiler/Javac$1;

    invoke-direct {v0, p0, p2, p1}, Ljavassist/compiler/Javac$1;-><init>(Ljavassist/compiler/Javac;Ljava/lang/String;Ljavassist/compiler/ast/ASTree;)V

    .line 465
    iget-object p1, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    const-string p2, "$proceed"

    invoke-virtual {p1, v0, p2}, Ljavassist/compiler/JvstCodeGen;->setProceedHandler(Ljavassist/compiler/ProceedHandler;Ljava/lang/String;)V

    return-void
.end method

.method public recordProceed(Ljavassist/compiler/ProceedHandler;)V
    .locals 2

    .line 551
    iget-object v0, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    const-string v1, "$proceed"

    invoke-virtual {v0, p1, v1}, Ljavassist/compiler/JvstCodeGen;->setProceedHandler(Ljavassist/compiler/ProceedHandler;Ljava/lang/String;)V

    return-void
.end method

.method public recordReturnType(Ljavassist/CtClass;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 396
    iget-object v0, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {v0, p1}, Ljavassist/compiler/JvstCodeGen;->recordType(Ljavassist/CtClass;)V

    .line 397
    iget-object v0, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    if-eqz p2, :cond_0

    const-string p2, "$_"

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v1, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    const-string v2, "$r"

    invoke-virtual {v0, p1, v2, p2, v1}, Ljavassist/compiler/JvstCodeGen;->recordReturnType(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;Ljavassist/compiler/SymbolTable;)I

    move-result p1

    return p1
.end method

.method public recordSpecialProceed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 523
    new-instance v0, Ljavassist/compiler/Parser;

    new-instance v1, Ljavassist/compiler/Lex;

    invoke-direct {v1, p1}, Ljavassist/compiler/Lex;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavassist/compiler/Parser;-><init>(Ljavassist/compiler/Lex;)V

    .line 524
    iget-object p1, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    invoke-virtual {v0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    .line 529
    new-instance p1, Ljavassist/compiler/Javac$3;

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ljavassist/compiler/Javac$3;-><init>(Ljavassist/compiler/Javac;Ljavassist/compiler/ast/ASTree;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object p2, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    const-string p3, "$proceed"

    invoke-virtual {p2, p1, p3}, Ljavassist/compiler/JvstCodeGen;->setProceedHandler(Ljavassist/compiler/ProceedHandler;Ljava/lang/String;)V

    return-void
.end method

.method public recordStaticProceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 483
    new-instance v0, Ljavassist/compiler/Javac$2;

    invoke-direct {v0, p0, p1, p2}, Ljavassist/compiler/Javac$2;-><init>(Ljavassist/compiler/Javac;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object p1, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    const-string p2, "$proceed"

    invoke-virtual {p1, v0, p2}, Ljavassist/compiler/JvstCodeGen;->setProceedHandler(Ljavassist/compiler/ProceedHandler;Ljava/lang/String;)V

    return-void
.end method

.method public recordType(Ljavassist/CtClass;)V
    .locals 1

    .line 408
    iget-object v0, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {v0, p1}, Ljavassist/compiler/JvstCodeGen;->recordType(Ljavassist/CtClass;)V

    return-void
.end method

.method public recordVariable(Ljavassist/CtClass;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 420
    iget-object v0, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    iget-object v1, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    invoke-virtual {v0, p1, p2, v1}, Ljavassist/compiler/JvstCodeGen;->recordVariable(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/compiler/SymbolTable;)I

    move-result p1

    return p1
.end method

.method public setMaxLocals(I)V
    .locals 1

    .line 376
    iget-object v0, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {v0, p1}, Ljavassist/compiler/JvstCodeGen;->setMaxLocals(I)V

    return-void
.end method
