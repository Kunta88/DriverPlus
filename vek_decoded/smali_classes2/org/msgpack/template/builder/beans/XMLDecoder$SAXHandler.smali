.class Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XMLDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/msgpack/template/builder/beans/XMLDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SAXHandler"
.end annotation


# instance fields
.field idObjMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field inJavaElem:Z

.field final synthetic this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;


# direct methods
.method private constructor <init>(Lorg/msgpack/template/builder/beans/XMLDecoder;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->inJavaElem:Z

    .line 61
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->idObjMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lorg/msgpack/template/builder/beans/XMLDecoder;Lorg/msgpack/template/builder/beans/XMLDecoder$1;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;-><init>(Lorg/msgpack/template/builder/beans/XMLDecoder;)V

    return-void
.end method

.method private capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 468
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 469
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private classForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "boolean"

    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object p1

    :cond_0
    const-string v0, "byte"

    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object p1

    :cond_1
    const-string v0, "char"

    .line 183
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object p1

    :cond_2
    const-string v0, "double"

    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object p1

    :cond_3
    const-string v0, "float"

    .line 187
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p1

    :cond_4
    const-string v0, "int"

    .line 189
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 190
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p1

    :cond_5
    const-string v0, "long"

    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 192
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object p1

    :cond_6
    const-string v0, "short"

    .line 193
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 194
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object p1

    :cond_7
    const/4 v0, 0x1

    .line 196
    iget-object v1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {v1}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$400(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {v1}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$400(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/lang/ClassLoader;

    move-result-object v1

    :goto_0
    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method private execute(Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;)Ljava/lang/Object;
    .locals 3

    .line 307
    iget-boolean v0, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->isExecuted:Z

    if-eqz v0, :cond_0

    .line 308
    iget-object p1, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->result:Ljava/lang/Object;

    return-object p1

    .line 313
    :cond_0
    :try_start_0
    iget-object v0, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->idref:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->idObjMap:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->idref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->result:Ljava/lang/Object;

    goto :goto_0

    .line 315
    :cond_1
    iget-boolean v0, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->isBasicType:Z

    if-eqz v0, :cond_2

    .line 316
    invoke-direct {p0, p1}, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->executeBasic(Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->result:Ljava/lang/Object;

    goto :goto_0

    .line 318
    :cond_2
    invoke-direct {p0, p1}, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->executeCommon(Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 321
    iget-object v1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {v1}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$100(Lorg/msgpack/template/builder/beans/XMLDecoder;)Lorg/msgpack/template/builder/beans/ExceptionListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/msgpack/template/builder/beans/ExceptionListener;->exceptionThrown(Ljava/lang/Exception;)V

    .line 325
    :goto_0
    iget-object v0, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->id:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 326
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->idObjMap:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->id:Ljava/lang/String;

    iget-object v2, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v0, 0x1

    .line 329
    iput-boolean v0, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->isExecuted:Z

    .line 330
    iget-object p1, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->result:Ljava/lang/Object;

    return-object p1
.end method

.method private executeBasic(Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 474
    iget-object v0, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 475
    iget-object v1, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->methodName:Ljava/lang/String;

    const-string v2, "null"

    .line 477
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v2, "string"

    .line 479
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    return-object v1

    :cond_2
    const-string v2, "class"

    .line 481
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 482
    invoke-direct {p0, v1}, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v2, "boolean"

    .line 483
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 484
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v2, "byte"

    .line 485
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 486
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v2, "char"

    .line 487
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v1, :cond_6

    .line 488
    iget-object v0, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->attributes:Lorg/xml/sax/Attributes;

    if-eqz v0, :cond_6

    .line 489
    iget-object v0, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->attributes:Lorg/xml/sax/Attributes;

    const-string v2, "code"

    invoke-interface {v0, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 491
    new-instance v1, Ljava/lang/Character;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-char v0, v0

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    .line 493
    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->methodName:Ljava/lang/String;

    return-object v1

    :cond_6
    const/4 p1, 0x0

    .line 497
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    :cond_7
    const-string p1, "double"

    .line 498
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 499
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_8
    const-string p1, "float"

    .line 500
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 501
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_9
    const-string p1, "int"

    .line 502
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 503
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_a
    const-string p1, "long"

    .line 504
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 505
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_b
    const-string p1, "short"

    .line 506
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 507
    invoke-static {v1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 509
    :cond_c
    new-instance p1, Ljava/lang/Exception;

    const-string v1, "custom.beans.71"

    invoke-static {v1, v0}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private executeCommon(Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 337
    :goto_0
    iget-object v1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {v1}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$000(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v1, p1, :cond_0

    .line 338
    iget-object v1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {v1}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$000(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;

    .line 339
    iget-object v1, v1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->result:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 342
    :cond_0
    iget-object v1, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->methodName:Ljava/lang/String;

    .line 343
    iget-boolean v3, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->fromProperty:Z

    const-string v4, "set"

    const-string v5, "get"

    if-eqz v3, :cond_2

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v5

    goto :goto_1

    :cond_1
    move-object v6, v4

    :goto_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 347
    :cond_2
    iget-boolean v3, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->fromIndex:Z

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    .line 348
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 349
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 350
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v6, :cond_3

    move-object v4, v5

    :cond_3
    move-object v1, v4

    .line 352
    :cond_4
    iget-boolean v3, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->fromField:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 353
    iget-object p1, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->target:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 354
    new-instance v0, Lorg/msgpack/template/builder/beans/Expression;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-direct {v0, p1, v5, v1}, Lorg/msgpack/template/builder/beans/Expression;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/msgpack/template/builder/beans/Expression;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 357
    :cond_5
    iget-boolean v3, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->fromOwner:Z

    if-eqz v3, :cond_6

    .line 358
    iget-object p1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {p1}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$300(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 361
    :cond_6
    iget-object v3, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->target:Ljava/lang/Object;

    iget-object v5, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {v5}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$300(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_b

    const-string p1, "getOwner"

    .line 362
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 363
    iget-object p1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {p1}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$300(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 365
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Class;

    .line 366
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 367
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_8

    move-object v3, v4

    goto :goto_3

    .line 368
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    :goto_3
    aput-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 373
    :cond_9
    :try_start_0
    iget-object v2, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {v2}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$300(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 374
    iget-object v3, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {v3}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$300(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    .line 380
    iget-object v2, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {v2}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$300(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {v2}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$300(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    goto :goto_4

    :cond_a
    iget-object v2, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {v2}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$300(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_4
    invoke-direct {p0, v2, v1, p1}, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 384
    iget-object v1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {v1}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$300(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 388
    :cond_b
    new-instance v2, Lorg/msgpack/template/builder/beans/Expression;

    iget-object p1, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->target:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, p1, v1, v0}, Lorg/msgpack/template/builder/beans/Expression;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    invoke-virtual {v2}, Lorg/msgpack/template/builder/beans/Expression;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 394
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 395
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 398
    array-length v4, v2

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v4, :cond_8

    aget-object v8, v2, v6

    .line 399
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    :goto_1
    move-object/from16 v15, p0

    goto :goto_6

    .line 402
    :cond_0
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 403
    array-length v10, v9

    array-length v11, v1

    if-eq v10, v11, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 407
    :goto_2
    array-length v12, v9

    if-ge v10, v12, :cond_6

    .line 408
    aget-object v12, v1, v10

    if-nez v12, :cond_2

    const/4 v12, 0x1

    goto :goto_3

    :cond_2
    const/4 v12, 0x0

    .line 409
    :goto_3
    aget-object v13, v1, v10

    aget-object v14, v9, v10

    move-object/from16 v15, p0

    invoke-direct {v15, v13, v14}, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->isPrimitiveWrapper(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v13

    if-eqz v12, :cond_3

    const/4 v5, 0x0

    goto :goto_4

    .line 410
    :cond_3
    aget-object v14, v9, v10

    aget-object v5, v1, v10

    invoke-virtual {v14, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    :goto_4
    if-nez v12, :cond_5

    if-nez v13, :cond_5

    if-eqz v5, :cond_4

    goto :goto_5

    :cond_4
    const/4 v11, 0x0

    :cond_5
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v15, p0

    if-eqz v11, :cond_7

    .line 417
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_8
    move-object/from16 v15, p0

    .line 421
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v7, :cond_9

    const/4 v4, 0x0

    .line 424
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0

    :cond_9
    const/4 v4, 0x0

    if-eqz v2, :cond_e

    .line 433
    new-instance v2, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;

    invoke-direct {v2, v0, v1}, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 435
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 436
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 438
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    const/4 v4, 0x1

    :cond_a
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;

    .line 439
    invoke-virtual {v2, v1, v5}, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I

    move-result v6

    if-lez v6, :cond_b

    move-object v1, v5

    goto :goto_7

    :cond_b
    if-nez v6, :cond_a

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_c
    if-gt v4, v7, :cond_d

    return-object v1

    .line 449
    :cond_d
    new-instance v1, Ljava/lang/NoSuchMethodException;

    const-string v2, "custom.beans.62"

    invoke-static {v2, v0}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 427
    :cond_e
    new-instance v1, Ljava/lang/NoSuchMethodException;

    const-string v2, "custom.beans.41"

    invoke-static {v2, v0}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v1

    :goto_a
    goto :goto_9
.end method

.method private isPrimitiveWrapper(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 456
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-eq p1, v0, :cond_7

    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_1

    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_7

    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_2

    const-class v0, Ljava/lang/Character;

    if-eq p1, v0, :cond_7

    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_3

    const-class v0, Ljava/lang/Short;

    if-eq p1, v0, :cond_7

    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_4

    const-class v0, Ljava/lang/Integer;

    if-eq p1, v0, :cond_7

    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_5

    const-class v0, Ljava/lang/Long;

    if-eq p1, v0, :cond_7

    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_6

    const-class v0, Ljava/lang/Float;

    if-eq p1, v0, :cond_7

    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_8

    const-class p2, Ljava/lang/Double;

    if-ne p1, p2, :cond_8

    :cond_7
    const/4 p1, 0x1

    goto :goto_0

    :cond_8
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private latestUnclosedElem()Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;
    .locals 3

    .line 297
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {v0}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$000(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 298
    iget-object v1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {v1}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$000(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;

    .line 299
    iget-boolean v2, v1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->isClosed:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private obtainMethod(Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;Lorg/xml/sax/Attributes;)V
    .locals 2

    const-string v0, "method"

    .line 144
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->methodName:Ljava/lang/String;

    .line 145
    iget-object v0, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->methodName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "property"

    .line 149
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->methodName:Ljava/lang/String;

    .line 150
    iget-object v0, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->methodName:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 151
    iput-boolean v1, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->fromProperty:Z

    return-void

    :cond_1
    const-string v0, "index"

    .line 155
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->methodName:Ljava/lang/String;

    .line 156
    iget-object v0, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->methodName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 157
    iput-boolean v1, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->fromIndex:Z

    return-void

    :cond_2
    const-string v0, "field"

    .line 161
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->methodName:Ljava/lang/String;

    .line 162
    iget-object v0, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->methodName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 163
    iput-boolean v1, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->fromField:Z

    return-void

    :cond_3
    const-string v0, "owner"

    .line 167
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->methodName:Ljava/lang/String;

    .line 168
    iget-object p2, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->methodName:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 169
    iput-boolean v1, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->fromOwner:Z

    return-void

    :cond_4
    const-string p2, "new"

    .line 173
    iput-object p2, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->methodName:Ljava/lang/String;

    return-void
.end method

.method private obtainTarget(Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;Lorg/xml/sax/Attributes;)V
    .locals 1

    const-string v0, "class"

    .line 125
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 128
    :try_start_0
    invoke-direct {p0, p2}, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->target:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 130
    iget-object p2, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {p2}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$100(Lorg/msgpack/template/builder/beans/XMLDecoder;)Lorg/msgpack/template/builder/beans/ExceptionListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/msgpack/template/builder/beans/ExceptionListener;->exceptionThrown(Ljava/lang/Exception;)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-direct {p0}, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->latestUnclosedElem()Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;

    move-result-object p2

    if-nez p2, :cond_1

    .line 135
    iget-object p2, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {p2}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$300(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->target:Ljava/lang/Object;

    return-void

    .line 138
    :cond_1
    invoke-direct {p0, p2}, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->execute(Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->target:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private startArrayElem(Lorg/xml/sax/Attributes;)V
    .locals 5

    const-string v0, "length"

    .line 203
    new-instance v1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;-><init>(Lorg/msgpack/template/builder/beans/XMLDecoder$1;)V

    const/4 v2, 0x1

    .line 204
    iput-boolean v2, v1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->isExpression:Z

    const-string v3, "id"

    .line 205
    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->id:Ljava/lang/String;

    .line 206
    iput-object p1, v1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->attributes:Lorg/xml/sax/Attributes;

    :try_start_0
    const-string v3, "class"

    .line 209
    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 210
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 213
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 216
    invoke-static {v3, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->result:Ljava/lang/Object;

    .line 217
    iput-boolean v2, v1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->isExecuted:Z

    goto :goto_0

    .line 222
    :cond_0
    iput-object v3, v1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->target:Ljava/lang/Object;

    const-string p1, "newArray"

    .line 223
    iput-object p1, v1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->methodName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 224
    iput-boolean p1, v1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->isExecuted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 227
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {v0}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$100(Lorg/msgpack/template/builder/beans/XMLDecoder;)Lorg/msgpack/template/builder/beans/ExceptionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/msgpack/template/builder/beans/ExceptionListener;->exceptionThrown(Ljava/lang/Exception;)V

    .line 229
    :goto_0
    iget-object p1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {p1}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$000(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private startBasicElem(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .line 244
    new-instance v0, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;-><init>(Lorg/msgpack/template/builder/beans/XMLDecoder$1;)V

    const/4 v1, 0x1

    .line 245
    iput-boolean v1, v0, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->isBasicType:Z

    .line 246
    iput-boolean v1, v0, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->isExpression:Z

    const-string v1, "id"

    .line 247
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->id:Ljava/lang/String;

    const-string v1, "idref"

    .line 248
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->idref:Ljava/lang/String;

    .line 249
    iput-object p2, v0, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->attributes:Lorg/xml/sax/Attributes;

    .line 250
    iput-object p1, v0, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->target:Ljava/lang/Object;

    .line 251
    iget-object p1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {p1}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$000(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private startObjectElem(Lorg/xml/sax/Attributes;)V
    .locals 2

    .line 111
    new-instance v0, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;-><init>(Lorg/msgpack/template/builder/beans/XMLDecoder$1;)V

    const/4 v1, 0x1

    .line 112
    iput-boolean v1, v0, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->isExpression:Z

    const-string v1, "id"

    .line 113
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->id:Ljava/lang/String;

    const-string v1, "idref"

    .line 114
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->idref:Ljava/lang/String;

    .line 115
    iput-object p1, v0, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->attributes:Lorg/xml/sax/Attributes;

    .line 116
    iget-object v1, v0, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->idref:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 117
    invoke-direct {p0, v0, p1}, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->obtainTarget(Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;Lorg/xml/sax/Attributes;)V

    .line 118
    invoke-direct {p0, v0, p1}, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->obtainMethod(Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;Lorg/xml/sax/Attributes;)V

    .line 121
    :cond_0
    iget-object p1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {p1}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$000(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private startVoidElem(Lorg/xml/sax/Attributes;)V
    .locals 2

    .line 234
    new-instance v0, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;-><init>(Lorg/msgpack/template/builder/beans/XMLDecoder$1;)V

    const-string v1, "id"

    .line 235
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->id:Ljava/lang/String;

    .line 236
    iput-object p1, v0, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->attributes:Lorg/xml/sax/Attributes;

    .line 237
    invoke-direct {p0, v0, p1}, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->obtainTarget(Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;Lorg/xml/sax/Attributes;)V

    .line 238
    invoke-direct {p0, v0, p1}, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->obtainMethod(Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;Lorg/xml/sax/Attributes;)V

    .line 239
    iget-object p1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {p1}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$000(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 66
    iget-boolean v0, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->inJavaElem:Z

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {v0}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$000(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 70
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {v0}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$000(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;

    .line 71
    iget-boolean v1, v0, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->isBasicType:Z

    if-eqz v1, :cond_2

    .line 72
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 73
    iget-object p1, v0, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->methodName:Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, v0, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->methodName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->methodName:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 257
    iget-boolean p1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->inJavaElem:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "java"

    .line 260
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 261
    iput-boolean p2, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->inJavaElem:Z

    return-void

    .line 265
    :cond_1
    invoke-direct {p0}, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->latestUnclosedElem()Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;

    move-result-object p1

    .line 266
    iget-object p3, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->target:Ljava/lang/Object;

    const-string v0, "string"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_6

    .line 267
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    iget-object v1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {v1}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$000(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_4

    .line 269
    iget-object v2, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {v2}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$000(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;

    if-ne p1, v2, :cond_2

    goto :goto_1

    .line 273
    :cond_2
    iget-object v3, v2, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->target:Ljava/lang/Object;

    const-string v4, "char"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 274
    iget-object v2, v2, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->methodName:Ljava/lang/String;

    invoke-virtual {p3, p2, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 277
    :cond_4
    :goto_1
    iget-object p2, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->methodName:Ljava/lang/String;

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->methodName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_5
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    iput-object p2, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->methodName:Ljava/lang/String;

    .line 282
    :cond_6
    invoke-direct {p0, p1}, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->execute(Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;)Ljava/lang/Object;

    .line 284
    iput-boolean v0, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->isClosed:Z

    .line 286
    :goto_3
    iget-object p2, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {p2}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$000(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/util/Stack;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p2

    if-eq p2, p1, :cond_7

    goto :goto_3

    .line 290
    :cond_7
    iget-boolean p2, p1, Lorg/msgpack/template/builder/beans/XMLDecoder$Elem;->isExpression:Z

    if-eqz p2, :cond_8

    .line 292
    iget-object p2, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {p2}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$000(Lorg/msgpack/template/builder/beans/XMLDecoder;)Ljava/util/Stack;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {v0}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$100(Lorg/msgpack/template/builder/beans/XMLDecoder;)Lorg/msgpack/template/builder/beans/ExceptionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/msgpack/template/builder/beans/ExceptionListener;->exceptionThrown(Ljava/lang/Exception;)V

    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {v0}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$100(Lorg/msgpack/template/builder/beans/XMLDecoder;)Lorg/msgpack/template/builder/beans/ExceptionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/msgpack/template/builder/beans/ExceptionListener;->exceptionThrown(Ljava/lang/Exception;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 83
    iget-boolean p1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->inJavaElem:Z

    if-nez p1, :cond_1

    const-string p1, "java"

    .line 84
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->inJavaElem:Z

    goto :goto_0

    .line 87
    :cond_0
    iget-object p1, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {p1}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$100(Lorg/msgpack/template/builder/beans/XMLDecoder;)Lorg/msgpack/template/builder/beans/ExceptionListener;

    move-result-object p1

    new-instance p2, Ljava/lang/Exception;

    const-string p4, "custom.beans.72"

    invoke-static {p4, p3}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lorg/msgpack/template/builder/beans/ExceptionListener;->exceptionThrown(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_1
    const-string p1, "object"

    .line 93
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 94
    invoke-direct {p0, p4}, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->startObjectElem(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_2
    const-string p1, "array"

    .line 95
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 96
    invoke-direct {p0, p4}, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->startArrayElem(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :cond_3
    const-string p1, "void"

    .line 97
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 98
    invoke-direct {p0, p4}, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->startVoidElem(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :cond_4
    const-string p1, "boolean"

    .line 99
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "byte"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "char"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "class"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "double"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "float"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "int"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "long"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "short"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "string"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "null"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 105
    :cond_5
    invoke-direct {p0, p3, p4}, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->startBasicElem(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 525
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/XMLDecoder$SAXHandler;->this$0:Lorg/msgpack/template/builder/beans/XMLDecoder;

    invoke-static {v0}, Lorg/msgpack/template/builder/beans/XMLDecoder;->access$100(Lorg/msgpack/template/builder/beans/XMLDecoder;)Lorg/msgpack/template/builder/beans/ExceptionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/msgpack/template/builder/beans/ExceptionListener;->exceptionThrown(Ljava/lang/Exception;)V

    return-void
.end method
