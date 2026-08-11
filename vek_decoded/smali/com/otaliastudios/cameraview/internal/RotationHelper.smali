.class public Lcom/otaliastudios/cameraview/internal/RotationHelper;
.super Ljava/lang/Object;
.source "RotationHelper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rotate([BLcom/otaliastudios/cameraview/size/Size;I)[B
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    if-nez v1, :cond_0

    return-object v0

    .line 26
    :cond_0
    rem-int/lit8 v2, v1, 0x5a

    if-nez v2, :cond_c

    if-ltz v1, :cond_c

    const/16 v2, 0x10e

    if-gt v1, v2, :cond_c

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v2

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v3

    .line 31
    array-length v4, v0

    new-array v4, v4, [B

    mul-int v5, v2, v3

    .line 33
    rem-int/lit16 v6, v1, 0xb4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 34
    :goto_0
    rem-int/lit16 v9, v1, 0x10e

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    const/16 v10, 0xb4

    if-lt v1, v10, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v3, :cond_b

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v2, :cond_a

    mul-int v12, v10, v2

    add-int/2addr v12, v11

    shr-int/lit8 v13, v10, 0x1

    mul-int v13, v13, v2

    add-int/2addr v13, v5

    and-int/lit8 v14, v11, -0x2

    add-int/2addr v13, v14

    add-int/lit8 v14, v13, 0x1

    if-eqz v6, :cond_4

    move v15, v3

    goto :goto_5

    :cond_4
    move v15, v2

    :goto_5
    if-eqz v6, :cond_5

    move/from16 v16, v2

    goto :goto_6

    :cond_5
    move/from16 v16, v3

    :goto_6
    if-eqz v6, :cond_6

    move/from16 v17, v10

    goto :goto_7

    :cond_6
    move/from16 v17, v11

    :goto_7
    if-eqz v6, :cond_7

    move/from16 v18, v11

    goto :goto_8

    :cond_7
    move/from16 v18, v10

    :goto_8
    if-eqz v9, :cond_8

    sub-int v17, v15, v17

    add-int/lit8 v17, v17, -0x1

    :cond_8
    if-eqz v1, :cond_9

    sub-int v16, v16, v18

    add-int/lit8 v18, v16, -0x1

    :cond_9
    mul-int v16, v18, v15

    add-int v16, v16, v17

    shr-int/lit8 v18, v18, 0x1

    mul-int v18, v18, v15

    add-int v18, v5, v18

    and-int/lit8 v15, v17, -0x2

    add-int v18, v18, v15

    add-int/lit8 v15, v18, 0x1

    .line 54
    aget-byte v12, v0, v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v4, v16

    .line 55
    aget-byte v12, v0, v13

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v4, v18

    .line 56
    aget-byte v12, v0, v14

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v4, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_b
    return-object v4

    .line 27
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "0 <= rotation < 360, rotation % 90 == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method
