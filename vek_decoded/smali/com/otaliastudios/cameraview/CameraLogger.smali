.class public final Lcom/otaliastudios/cameraview/CameraLogger;
.super Ljava/lang/Object;
.source "CameraLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/CameraLogger$Logger;,
        Lcom/otaliastudios/cameraview/CameraLogger$LogLevel;
    }
.end annotation


# static fields
.field public static final LEVEL_ERROR:I = 0x3

.field public static final LEVEL_INFO:I = 0x1

.field public static final LEVEL_VERBOSE:I = 0x0

.field public static final LEVEL_WARNING:I = 0x2

.field static lastMessage:Ljava/lang/String;

.field static lastTag:Ljava/lang/String;

.field static sAndroidLogger:Lcom/otaliastudios/cameraview/CameraLogger$Logger;

.field private static sLevel:I

.field private static sLoggers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/otaliastudios/cameraview/CameraLogger$Logger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/otaliastudios/cameraview/CameraLogger;->sLoggers:Ljava/util/Set;

    .line 64
    new-instance v0, Lcom/otaliastudios/cameraview/CameraLogger$1;

    invoke-direct {v0}, Lcom/otaliastudios/cameraview/CameraLogger$1;-><init>()V

    sput-object v0, Lcom/otaliastudios/cameraview/CameraLogger;->sAndroidLogger:Lcom/otaliastudios/cameraview/CameraLogger$Logger;

    const/4 v0, 0x3

    .line 80
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->setLogLevel(I)V

    .line 81
    sget-object v0, Lcom/otaliastudios/cameraview/CameraLogger;->sLoggers:Ljava/util/Set;

    sget-object v1, Lcom/otaliastudios/cameraview/CameraLogger;->sAndroidLogger:Lcom/otaliastudios/cameraview/CameraLogger$Logger;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraLogger;->mTag:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;
    .locals 1

    .line 92
    new-instance v0, Lcom/otaliastudios/cameraview/CameraLogger;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/CameraLogger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private varargs log(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 183
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/CameraLogger;->should(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 188
    instance-of v5, v4, Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 189
    move-object v1, v4

    check-cast v1, Ljava/lang/Throwable;

    .line 191
    :cond_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    .line 192
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 195
    sget-object v0, Lcom/otaliastudios/cameraview/CameraLogger;->sLoggers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/otaliastudios/cameraview/CameraLogger$Logger;

    .line 196
    iget-object v3, p0, Lcom/otaliastudios/cameraview/CameraLogger;->mTag:Ljava/lang/String;

    invoke-interface {v2, p1, v3, p2, v1}, Lcom/otaliastudios/cameraview/CameraLogger$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 198
    :cond_3
    sput-object p2, Lcom/otaliastudios/cameraview/CameraLogger;->lastMessage:Ljava/lang/String;

    .line 199
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraLogger;->mTag:Ljava/lang/String;

    sput-object p1, Lcom/otaliastudios/cameraview/CameraLogger;->lastTag:Ljava/lang/String;

    return-object p2
.end method

.method public static registerLogger(Lcom/otaliastudios/cameraview/CameraLogger$Logger;)V
    .locals 1

    .line 116
    sget-object v0, Lcom/otaliastudios/cameraview/CameraLogger;->sLoggers:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    .line 105
    sput p0, Lcom/otaliastudios/cameraview/CameraLogger;->sLevel:I

    return-void
.end method

.method private should(I)Z
    .locals 1

    .line 138
    sget v0, Lcom/otaliastudios/cameraview/CameraLogger;->sLevel:I

    if-gt v0, p1, :cond_0

    sget-object p1, Lcom/otaliastudios/cameraview/CameraLogger;->sLoggers:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static unregisterLogger(Lcom/otaliastudios/cameraview/CameraLogger$Logger;)V
    .locals 1

    .line 127
    sget-object v0, Lcom/otaliastudios/cameraview/CameraLogger;->sLoggers:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public varargs e([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    .line 178
    invoke-direct {p0, v0, p1}, Lcom/otaliastudios/cameraview/CameraLogger;->log(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs i([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 158
    invoke-direct {p0, v0, p1}, Lcom/otaliastudios/cameraview/CameraLogger;->log(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs v([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, v0, p1}, Lcom/otaliastudios/cameraview/CameraLogger;->log(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs w([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 168
    invoke-direct {p0, v0, p1}, Lcom/otaliastudios/cameraview/CameraLogger;->log(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
