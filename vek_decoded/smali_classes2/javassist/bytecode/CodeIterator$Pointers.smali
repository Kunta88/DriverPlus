.class Ljavassist/bytecode/CodeIterator$Pointers;
.super Ljava/lang/Object;
.source "CodeIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/CodeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Pointers"
.end annotation


# instance fields
.field cursor:I

.field etable:Ljavassist/bytecode/ExceptionTable;

.field line:Ljavassist/bytecode/LineNumberAttribute;

.field mark:I

.field mark0:I

.field stack:Ljavassist/bytecode/StackMapTable;

.field stack2:Ljavassist/bytecode/StackMap;

.field types:Ljavassist/bytecode/LocalVariableAttribute;

.field vars:Ljavassist/bytecode/LocalVariableAttribute;


# direct methods
.method constructor <init>(IIILjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)V
    .locals 0

    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1004
    iput p1, p0, Ljavassist/bytecode/CodeIterator$Pointers;->cursor:I

    .line 1005
    iput p2, p0, Ljavassist/bytecode/CodeIterator$Pointers;->mark:I

    .line 1006
    iput p3, p0, Ljavassist/bytecode/CodeIterator$Pointers;->mark0:I

    .line 1007
    iput-object p4, p0, Ljavassist/bytecode/CodeIterator$Pointers;->etable:Ljavassist/bytecode/ExceptionTable;

    const-string p1, "LineNumberTable"

    .line 1008
    invoke-virtual {p5, p1}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/LineNumberAttribute;

    iput-object p1, p0, Ljavassist/bytecode/CodeIterator$Pointers;->line:Ljavassist/bytecode/LineNumberAttribute;

    const-string p1, "LocalVariableTable"

    .line 1009
    invoke-virtual {p5, p1}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/LocalVariableAttribute;

    iput-object p1, p0, Ljavassist/bytecode/CodeIterator$Pointers;->vars:Ljavassist/bytecode/LocalVariableAttribute;

    const-string p1, "LocalVariableTypeTable"

    .line 1010
    invoke-virtual {p5, p1}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/LocalVariableAttribute;

    iput-object p1, p0, Ljavassist/bytecode/CodeIterator$Pointers;->types:Ljavassist/bytecode/LocalVariableAttribute;

    const-string p1, "StackMapTable"

    .line 1011
    invoke-virtual {p5, p1}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/StackMapTable;

    iput-object p1, p0, Ljavassist/bytecode/CodeIterator$Pointers;->stack:Ljavassist/bytecode/StackMapTable;

    const-string p1, "StackMap"

    .line 1012
    invoke-virtual {p5, p1}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/StackMap;

    iput-object p1, p0, Ljavassist/bytecode/CodeIterator$Pointers;->stack2:Ljavassist/bytecode/StackMap;

    return-void
.end method


# virtual methods
.method shiftPc(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1016
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->cursor:I

    if-lt p1, v0, :cond_0

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_1

    :cond_0
    add-int/2addr v0, p2

    .line 1017
    iput v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->cursor:I

    .line 1019
    :cond_1
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->mark:I

    if-lt p1, v0, :cond_2

    if-ne p1, v0, :cond_3

    if-eqz p3, :cond_3

    :cond_2
    add-int/2addr v0, p2

    .line 1020
    iput v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->mark:I

    .line 1022
    :cond_3
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->mark0:I

    if-lt p1, v0, :cond_4

    if-ne p1, v0, :cond_5

    if-eqz p3, :cond_5

    :cond_4
    add-int/2addr v0, p2

    .line 1023
    iput v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->mark0:I

    .line 1025
    :cond_5
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->etable:Ljavassist/bytecode/ExceptionTable;

    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/ExceptionTable;->shiftPc(IIZ)V

    .line 1026
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->line:Ljavassist/bytecode/LineNumberAttribute;

    if-eqz v0, :cond_6

    .line 1027
    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/LineNumberAttribute;->shiftPc(IIZ)V

    .line 1029
    :cond_6
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->vars:Ljavassist/bytecode/LocalVariableAttribute;

    if-eqz v0, :cond_7

    .line 1030
    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/LocalVariableAttribute;->shiftPc(IIZ)V

    .line 1032
    :cond_7
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->types:Ljavassist/bytecode/LocalVariableAttribute;

    if-eqz v0, :cond_8

    .line 1033
    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/LocalVariableAttribute;->shiftPc(IIZ)V

    .line 1035
    :cond_8
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->stack:Ljavassist/bytecode/StackMapTable;

    if-eqz v0, :cond_9

    .line 1036
    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/StackMapTable;->shiftPc(IIZ)V

    .line 1038
    :cond_9
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator$Pointers;->stack2:Ljavassist/bytecode/StackMap;

    if-eqz v0, :cond_a

    .line 1039
    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/StackMap;->shiftPc(IIZ)V

    :cond_a
    return-void
.end method
