.class Lcom/txdriver/compat/Installer$1;
.super Ljava/lang/Object;
.source "Installer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/compat/Installer;->install(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$app:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/txdriver/compat/Installer$1;->val$address:Ljava/lang/String;

    iput-object p2, p0, Lcom/txdriver/compat/Installer$1;->val$app:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/txdriver/compat/Installer$1;->val$address:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 22
    const-string v1, "content"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/txdriver/compat/Installer$1;->val$app:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_38

    .line 23
    :cond_1d
    const-string v1, "file"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11c

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 25
    :goto_38
    if-eqz v0, :cond_114

    .line 26
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/txdriver/compat/Installer$1;->val$app:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "updates"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5c

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_54

    goto :goto_5c

    :cond_54
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cache unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_5c
    :goto_5c
    new-instance v2, Ljava/io/File;

    const-string v3, "driverplus-update.apk"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_63} :catch_124

    .line 28
    :try_start_63
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_10f

    .line 29
    const/16 v3, 0x4000

    :try_start_6a
    new-array v3, v3, [B

    const-wide/16 v4, 0x0

    .line 30
    :goto_6e
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8b

    int-to-long v7, v6

    add-long/2addr v4, v7

    const-wide/32 v7, 0xc800000

    cmp-long v9, v4, v7

    if-gtz v9, :cond_83

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_6e

    :cond_83
    new-instance v2, Ljava/io/IOException;

    const-string v3, "APK too large"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8b
    .catchall {:try_start_6a .. :try_end_8b} :catchall_10a

    .line 31
    :cond_8b
    :try_start_8b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_10f

    :try_start_8e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 32
    iget-object v0, p0, Lcom/txdriver/compat/Installer$1;->val$app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 33
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 34
    iget-object v4, p0, Lcom/txdriver/compat/Installer$1;->val$app:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 35
    if-eqz v1, :cond_102

    iget-object v3, p0, Lcom/txdriver/compat/Installer$1;->val$app:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_102

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_102

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 36
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_102

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v1, v0, :cond_102

    .line 38
    iget-object v0, p0, Lcom/txdriver/compat/Installer$1;->val$app:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txdriver/compat/Installer$1;->val$app:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".updates"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 39
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/txdriver/compat/Installer$1$1;

    iget-object v3, p0, Lcom/txdriver/compat/Installer$1;->val$app:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v0}, Lcom/txdriver/compat/Installer$1$1;-><init>(Lcom/txdriver/compat/Installer$1;Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    goto :goto_138

    .line 37
    :cond_102
    new-instance v0, Ljava/io/IOException;

    const-string v1, "APK package, version or signature mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_10a} :catch_124

    .line 31
    :catchall_10a
    move-exception v2

    :try_start_10b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v2
    :try_end_10f
    .catchall {:try_start_10b .. :try_end_10f} :catchall_10f

    :catchall_10f
    move-exception v1

    :try_start_110
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1

    .line 25
    :cond_114
    new-instance v0, Ljava/io/IOException;

    const-string v1, "APK unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_11c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported APK URI"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_124} :catch_124

    .line 44
    :catch_124
    move-exception v0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/txdriver/compat/Installer$1$2;

    iget-object v2, p0, Lcom/txdriver/compat/Installer$1;->val$app:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/txdriver/compat/Installer$1$2;-><init>(Lcom/txdriver/compat/Installer$1;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    :goto_138
    return-void
.end method
