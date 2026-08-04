.class public Lcom/otaliastudios/cameraview/filter/MultiFilter;
.super Ljava/lang/Object;
.source "MultiFilter.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/filter/Filter;
.implements Lcom/otaliastudios/cameraview/filter/OneParameterFilter;
.implements Lcom/otaliastudios/cameraview/filter/TwoParameterFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/filter/MultiFilter$State;
    }
.end annotation


# instance fields
.field final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/cameraview/filter/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private parameter1:F

.field private parameter2:F

.field private size:Lcom/otaliastudios/cameraview/size/Size;

.field final states:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/otaliastudios/cameraview/filter/Filter;",
            "Lcom/otaliastudios/cameraview/filter/MultiFilter$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/otaliastudios/cameraview/filter/Filter;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->filters:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->states:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->size:Lcom/otaliastudios/cameraview/size/Size;

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->parameter1:F

    .line 63
    iput v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->parameter2:F

    .line 79
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/filter/Filter;

    .line 80
    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/filter/MultiFilter;->addFilter(Lcom/otaliastudios/cameraview/filter/Filter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lcom/otaliastudios/cameraview/filter/Filter;)V
    .locals 0

    .line 70
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/filter/MultiFilter;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method private maybeCreateFramebuffer(Lcom/otaliastudios/cameraview/filter/Filter;ZZ)V
    .locals 3

    .line 138
    iget-object p2, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->states:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 141
    invoke-static {p2, v0}, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->access$102(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;Z)Z

    return-void

    .line 145
    :cond_0
    invoke-static {p2}, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->access$100(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 146
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/filter/MultiFilter;->maybeDestroyFramebuffer(Lcom/otaliastudios/cameraview/filter/Filter;)V

    .line 147
    invoke-static {p2, v0}, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->access$102(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;Z)Z

    .line 149
    :cond_1
    iget-boolean p1, p2, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->isFramebufferCreated:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 150
    iput-boolean p1, p2, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->isFramebufferCreated:Z

    .line 151
    new-instance p1, Lcom/otaliastudios/opengl/texture/GlTexture;

    const p3, 0x84c0

    const/16 v0, 0xde1

    iget-object v1, p2, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->size:Lcom/otaliastudios/cameraview/size/Size;

    .line 153
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v1

    iget-object v2, p2, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->size:Lcom/otaliastudios/cameraview/size/Size;

    .line 154
    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v2

    invoke-direct {p1, p3, v0, v1, v2}, Lcom/otaliastudios/opengl/texture/GlTexture;-><init>(IIII)V

    .line 151
    invoke-static {p2, p1}, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->access$202(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;Lcom/otaliastudios/opengl/texture/GlTexture;)Lcom/otaliastudios/opengl/texture/GlTexture;

    .line 155
    new-instance p1, Lcom/otaliastudios/opengl/texture/GlFramebuffer;

    invoke-direct {p1}, Lcom/otaliastudios/opengl/texture/GlFramebuffer;-><init>()V

    invoke-static {p2, p1}, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->access$302(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;Lcom/otaliastudios/opengl/texture/GlFramebuffer;)Lcom/otaliastudios/opengl/texture/GlFramebuffer;

    .line 156
    invoke-static {p2}, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->access$300(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;)Lcom/otaliastudios/opengl/texture/GlFramebuffer;

    move-result-object p1

    invoke-static {p2}, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->access$200(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;)Lcom/otaliastudios/opengl/texture/GlTexture;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/otaliastudios/opengl/texture/GlFramebuffer;->attach(Lcom/otaliastudios/opengl/texture/GlTexture;)V

    :cond_2
    return-void
.end method

.method private maybeCreateProgram(Lcom/otaliastudios/cameraview/filter/Filter;ZZ)V
    .locals 2

    .line 112
    iget-object p3, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->states:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;

    .line 114
    iget-boolean v0, p3, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->isProgramCreated:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p3, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->isProgramCreated:Z

    if-eqz p2, :cond_1

    .line 120
    invoke-interface {p1}, Lcom/otaliastudios/cameraview/filter/Filter;->getFragmentShader()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 121
    :cond_1
    invoke-interface {p1}, Lcom/otaliastudios/cameraview/filter/Filter;->getFragmentShader()Ljava/lang/String;

    move-result-object p2

    const-string v0, "samplerExternalOES "

    const-string v1, "sampler2D "

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 122
    :goto_0
    invoke-interface {p1}, Lcom/otaliastudios/cameraview/filter/Filter;->getVertexShader()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0, p2}, Lcom/otaliastudios/opengl/program/GlProgram;->create(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-static {p3, p2}, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->access$002(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;I)I

    .line 124
    invoke-static {p3}, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->access$000(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/otaliastudios/cameraview/filter/Filter;->onCreate(I)V

    return-void
.end method

.method private maybeDestroyFramebuffer(Lcom/otaliastudios/cameraview/filter/Filter;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->states:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;

    .line 163
    iget-boolean v0, p1, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->isFramebufferCreated:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p1, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->isFramebufferCreated:Z

    .line 165
    invoke-static {p1}, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->access$300(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;)Lcom/otaliastudios/opengl/texture/GlFramebuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/texture/GlFramebuffer;->release()V

    const/4 v0, 0x0

    .line 166
    invoke-static {p1, v0}, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->access$302(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;Lcom/otaliastudios/opengl/texture/GlFramebuffer;)Lcom/otaliastudios/opengl/texture/GlFramebuffer;

    .line 167
    invoke-static {p1}, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->access$200(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;)Lcom/otaliastudios/opengl/texture/GlTexture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/otaliastudios/opengl/texture/GlTexture;->release()V

    .line 168
    invoke-static {p1, v0}, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->access$202(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;Lcom/otaliastudios/opengl/texture/GlTexture;)Lcom/otaliastudios/opengl/texture/GlTexture;

    return-void
.end method

.method private maybeDestroyProgram(Lcom/otaliastudios/cameraview/filter/Filter;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->states:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;

    .line 130
    iget-boolean v1, v0, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->isProgramCreated:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 131
    iput-boolean v1, v0, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->isProgramCreated:Z

    .line 132
    invoke-interface {p1}, Lcom/otaliastudios/cameraview/filter/Filter;->onDestroy()V

    .line 133
    invoke-static {v0}, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->access$000(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;)I

    move-result p1

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 p1, -0x1

    .line 134
    invoke-static {v0, p1}, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->access$002(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;I)I

    return-void
.end method

.method private maybeSetSize(Lcom/otaliastudios/cameraview/filter/Filter;)V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->states:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;

    .line 175
    iget-object v1, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->size:Lcom/otaliastudios/cameraview/size/Size;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->size:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v1, v2}, Lcom/otaliastudios/cameraview/size/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->size:Lcom/otaliastudios/cameraview/size/Size;

    iput-object v1, v0, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->size:Lcom/otaliastudios/cameraview/size/Size;

    const/4 v1, 0x1

    .line 177
    invoke-static {v0, v1}, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->access$102(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;Z)Z

    .line 178
    iget-object v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->size:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->size:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/otaliastudios/cameraview/filter/Filter;->setSize(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addFilter(Lcom/otaliastudios/cameraview/filter/Filter;)V
    .locals 3

    .line 92
    instance-of v0, p1, Lcom/otaliastudios/cameraview/filter/MultiFilter;

    if-eqz v0, :cond_1

    .line 93
    check-cast p1, Lcom/otaliastudios/cameraview/filter/MultiFilter;

    .line 94
    iget-object p1, p1, Lcom/otaliastudios/cameraview/filter/MultiFilter;->filters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/filter/Filter;

    .line 95
    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/filter/MultiFilter;->addFilter(Lcom/otaliastudios/cameraview/filter/Filter;)V

    goto :goto_0

    :cond_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->filters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->filters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->states:Ljava/util/Map;

    new-instance v2, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;

    invoke-direct {v2}, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public copy()Lcom/otaliastudios/cameraview/filter/Filter;
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    new-instance v1, Lcom/otaliastudios/cameraview/filter/MultiFilter;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/otaliastudios/cameraview/filter/Filter;

    invoke-direct {v1, v2}, Lcom/otaliastudios/cameraview/filter/MultiFilter;-><init>([Lcom/otaliastudios/cameraview/filter/Filter;)V

    .line 277
    iget-object v2, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->size:Lcom/otaliastudios/cameraview/size/Size;

    if-eqz v2, :cond_0

    .line 278
    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->size:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/otaliastudios/cameraview/filter/MultiFilter;->setSize(II)V

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->filters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/otaliastudios/cameraview/filter/Filter;

    .line 281
    invoke-interface {v3}, Lcom/otaliastudios/cameraview/filter/Filter;->copy()Lcom/otaliastudios/cameraview/filter/Filter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/otaliastudios/cameraview/filter/MultiFilter;->addFilter(Lcom/otaliastudios/cameraview/filter/Filter;)V

    goto :goto_0

    .line 283
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 284
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public draw(J[F)V
    .locals 8

    .line 224
    iget-object v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 225
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->filters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 227
    :goto_1
    iget-object v5, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->filters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-ne v2, v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 228
    :goto_2
    iget-object v5, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->filters:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/otaliastudios/cameraview/filter/Filter;

    .line 229
    iget-object v6, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->states:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;

    .line 231
    invoke-direct {p0, v5}, Lcom/otaliastudios/cameraview/filter/MultiFilter;->maybeSetSize(Lcom/otaliastudios/cameraview/filter/Filter;)V

    .line 232
    invoke-direct {p0, v5, v4, v3}, Lcom/otaliastudios/cameraview/filter/MultiFilter;->maybeCreateProgram(Lcom/otaliastudios/cameraview/filter/Filter;ZZ)V

    .line 233
    invoke-direct {p0, v5, v4, v3}, Lcom/otaliastudios/cameraview/filter/MultiFilter;->maybeCreateFramebuffer(Lcom/otaliastudios/cameraview/filter/Filter;ZZ)V

    .line 236
    invoke-static {v6}, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->access$000(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;)I

    move-result v7

    invoke-static {v7}, Landroid/opengl/GLES20;->glUseProgram(I)V

    if-nez v3, :cond_2

    .line 242
    invoke-static {v6}, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->access$300(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;)Lcom/otaliastudios/opengl/texture/GlFramebuffer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/otaliastudios/opengl/texture/GlFramebuffer;->bind()V

    const/4 v7, 0x0

    .line 243
    invoke-static {v7, v7, v7, v7}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    goto :goto_3

    :cond_2
    const v7, 0x8d40

    .line 245
    invoke-static {v7, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    :goto_3
    if-eqz v4, :cond_3

    .line 252
    invoke-interface {v5, p1, p2, p3}, Lcom/otaliastudios/cameraview/filter/Filter;->draw(J[F)V

    goto :goto_4

    .line 254
    :cond_3
    sget-object v4, Lcom/otaliastudios/opengl/core/Egloo;->IDENTITY_MATRIX:[F

    invoke-interface {v5, p1, p2, v4}, Lcom/otaliastudios/cameraview/filter/Filter;->draw(J[F)V

    :goto_4
    if-nez v3, :cond_4

    .line 261
    invoke-static {v6}, Lcom/otaliastudios/cameraview/filter/MultiFilter$State;->access$200(Lcom/otaliastudios/cameraview/filter/MultiFilter$State;)Lcom/otaliastudios/opengl/texture/GlTexture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/otaliastudios/opengl/texture/GlTexture;->bind()V

    goto :goto_5

    :cond_4
    const/16 v3, 0xde1

    .line 263
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v3, 0x84c0

    .line 264
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 267
    :goto_5
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public getFragmentShader()Ljava/lang/String;
    .locals 1

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    return-object v0
.end method

.method public getParameter1()F
    .locals 1

    .line 313
    iget v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->parameter1:F

    return v0
.end method

.method public getParameter2()F
    .locals 1

    .line 318
    iget v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->parameter2:F

    return v0
.end method

.method public getVertexShader()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    return-object v0
.end method

.method public onCreate(I)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/otaliastudios/cameraview/filter/Filter;

    .line 206
    invoke-direct {p0, v2}, Lcom/otaliastudios/cameraview/filter/MultiFilter;->maybeDestroyFramebuffer(Lcom/otaliastudios/cameraview/filter/Filter;)V

    .line 207
    invoke-direct {p0, v2}, Lcom/otaliastudios/cameraview/filter/MultiFilter;->maybeDestroyProgram(Lcom/otaliastudios/cameraview/filter/Filter;)V

    goto :goto_0

    .line 209
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public setParameter1(F)V
    .locals 4

    .line 289
    iput p1, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->parameter1:F

    .line 290
    iget-object v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/otaliastudios/cameraview/filter/Filter;

    .line 292
    instance-of v3, v2, Lcom/otaliastudios/cameraview/filter/OneParameterFilter;

    if-eqz v3, :cond_0

    .line 293
    check-cast v2, Lcom/otaliastudios/cameraview/filter/OneParameterFilter;

    invoke-interface {v2, p1}, Lcom/otaliastudios/cameraview/filter/OneParameterFilter;->setParameter1(F)V

    goto :goto_0

    .line 296
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setParameter2(F)V
    .locals 4

    .line 301
    iput p1, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->parameter2:F

    .line 302
    iget-object v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/otaliastudios/cameraview/filter/Filter;

    .line 304
    instance-of v3, v2, Lcom/otaliastudios/cameraview/filter/TwoParameterFilter;

    if-eqz v3, :cond_0

    .line 305
    check-cast v2, Lcom/otaliastudios/cameraview/filter/TwoParameterFilter;

    invoke-interface {v2, p1}, Lcom/otaliastudios/cameraview/filter/TwoParameterFilter;->setParameter2(F)V

    goto :goto_0

    .line 308
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setSize(II)V
    .locals 1

    .line 214
    new-instance v0, Lcom/otaliastudios/cameraview/size/Size;

    invoke-direct {v0, p1, p2}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->size:Lcom/otaliastudios/cameraview/size/Size;

    .line 215
    iget-object p1, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 216
    :try_start_0
    iget-object p2, p0, Lcom/otaliastudios/cameraview/filter/MultiFilter;->filters:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/filter/Filter;

    .line 217
    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/filter/MultiFilter;->maybeSetSize(Lcom/otaliastudios/cameraview/filter/Filter;)V

    goto :goto_0

    .line 219
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method
