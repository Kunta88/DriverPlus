.class final Ljavassist/JarDirClassPath;
.super Ljava/lang/Object;
.source "ClassPoolTail.java"

# interfaces
.implements Ljavassist/ClassPath;


# instance fields
.field jars:[Ljavassist/JarClassPath;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljavassist/JarDirClassPath$1;

    invoke-direct {p1, p0}, Ljavassist/JarDirClassPath$1;-><init>(Ljavassist/JarDirClassPath;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    array-length v0, p1

    new-array v0, v0, [Ljavassist/JarClassPath;

    iput-object v0, p0, Ljavassist/JarDirClassPath;->jars:[Ljavassist/JarClassPath;

    const/4 v0, 0x0

    .line 89
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 90
    iget-object v1, p0, Ljavassist/JarDirClassPath;->jars:[Ljavassist/JarClassPath;

    new-instance v2, Ljavassist/JarClassPath;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavassist/JarClassPath;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 117
    iget-object v0, p0, Ljavassist/JarDirClassPath;->jars:[Ljavassist/JarClassPath;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 118
    :goto_0
    iget-object v1, p0, Ljavassist/JarDirClassPath;->jars:[Ljavassist/JarClassPath;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 119
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljavassist/JarClassPath;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public find(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    .line 106
    iget-object v0, p0, Ljavassist/JarDirClassPath;->jars:[Ljavassist/JarClassPath;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 107
    :goto_0
    iget-object v1, p0, Ljavassist/JarDirClassPath;->jars:[Ljavassist/JarClassPath;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 108
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljavassist/JarClassPath;->find(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public openClassfile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Ljavassist/JarDirClassPath;->jars:[Ljavassist/JarClassPath;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 96
    :goto_0
    iget-object v1, p0, Ljavassist/JarDirClassPath;->jars:[Ljavassist/JarClassPath;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 97
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljavassist/JarClassPath;->openClassfile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
