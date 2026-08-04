.class public Lorg/osmdroid/tileprovider/tilesource/FileBasedTileSource;
.super Lorg/osmdroid/tileprovider/tilesource/XYTileSource;
.source "FileBasedTileSource.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct/range {p0 .. p6}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getSource(Ljava/lang/String;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 10

    const-string v0, "."

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    move-object v4, p0

    .line 20
    new-instance p0, Lorg/osmdroid/tileprovider/tilesource/FileBasedTileSource;

    const/4 v5, 0x0

    const/16 v6, 0x12

    const/16 v7, 0x100

    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const-string v0, "http://localhost"

    aput-object v0, v9, v2

    const-string v8, ".png"

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/osmdroid/tileprovider/tilesource/FileBasedTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method
