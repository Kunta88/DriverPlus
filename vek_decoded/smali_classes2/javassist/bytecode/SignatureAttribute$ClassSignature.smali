.class public Ljavassist/bytecode/SignatureAttribute$ClassSignature;
.super Ljava/lang/Object;
.source "SignatureAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/SignatureAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassSignature"
.end annotation


# instance fields
.field interfaces:[Ljavassist/bytecode/SignatureAttribute$ClassType;

.field params:[Ljavassist/bytecode/SignatureAttribute$TypeParameter;

.field superClass:Ljavassist/bytecode/SignatureAttribute$ClassType;


# direct methods
.method constructor <init>([Ljavassist/bytecode/SignatureAttribute$TypeParameter;Ljavassist/bytecode/SignatureAttribute$ClassType;[Ljavassist/bytecode/SignatureAttribute$ClassType;)V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->params:[Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    .line 182
    iput-object p2, p0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->superClass:Ljavassist/bytecode/SignatureAttribute$ClassType;

    .line 183
    iput-object p3, p0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->interfaces:[Ljavassist/bytecode/SignatureAttribute$ClassType;

    return-void
.end method


# virtual methods
.method public getInterfaces()[Ljavassist/bytecode/SignatureAttribute$ClassType;
    .locals 1

    .line 205
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->interfaces:[Ljavassist/bytecode/SignatureAttribute$ClassType;

    return-object v0
.end method

.method public getParameters()[Ljavassist/bytecode/SignatureAttribute$TypeParameter;
    .locals 1

    .line 192
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->params:[Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    return-object v0
.end method

.method public getSuperClass()Ljavassist/bytecode/SignatureAttribute$ClassType;
    .locals 1

    .line 198
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->superClass:Ljavassist/bytecode/SignatureAttribute$ClassType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 211
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 213
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->params:[Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    invoke-static {v0, v1}, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->toString(Ljava/lang/StringBuffer;[Ljavassist/bytecode/SignatureAttribute$TypeParameter;)V

    const-string v1, " extends "

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->superClass:Ljavassist/bytecode/SignatureAttribute$ClassType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 215
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->interfaces:[Ljavassist/bytecode/SignatureAttribute$ClassType;

    array-length v1, v1

    if-lez v1, :cond_0

    const-string v1, " implements "

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->interfaces:[Ljavassist/bytecode/SignatureAttribute$ClassType;

    invoke-static {v0, v1}, Ljavassist/bytecode/SignatureAttribute$Type;->toString(Ljava/lang/StringBuffer;[Ljavassist/bytecode/SignatureAttribute$Type;)V

    .line 220
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
