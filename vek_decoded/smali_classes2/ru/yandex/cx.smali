.class public final Lru/yandex/cx;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lru/yandex/cw;Ljava/io/Reader;)V
    .locals 26

    move-object/from16 v0, p0

    const-string v1, "![CDATA"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v2, "!DOCTYP"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/16 v3, 0x64

    new-array v3, v3, [I

    const/16 v4, 0x2000

    new-array v4, v4, [C

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v6, Lru/yandex/cv;

    invoke-direct {v6}, Lru/yandex/cv;-><init>()V

    const/16 v7, 0x400

    new-array v7, v7, [C

    const/16 v15, 0xd

    const/16 v16, 0x0

    move-object/from16 v20, v16

    move-object/from16 v21, v20

    const/16 v8, 0xe

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x22

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v22, 0x0

    :goto_0
    if-lt v12, v10, :cond_1

    move-object/from16 v11, p1

    :try_start_0
    invoke-virtual {v11, v7}, Ljava/io/Reader;->read([C)I

    move-result v10

    const/4 v12, -0x1

    if-eq v10, v12, :cond_0

    const/4 v12, 0x0

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v11, p1

    :goto_1
    add-int/lit8 v23, v12, 0x1

    aget-char v12, v7, v12

    const/16 v9, 0xa

    if-ne v12, v9, :cond_2

    if-eqz v17, :cond_2

    move/from16 v12, v23

    const/16 v17, 0x0

    goto :goto_0

    :cond_2
    if-eqz v17, :cond_3

    const/16 v17, 0x0

    goto :goto_2

    :cond_3
    if-ne v12, v15, :cond_4

    const/16 v12, 0xa

    const/16 v17, 0x1

    :cond_4
    :goto_2
    const/16 v9, 0x3c

    const/16 v15, 0x26

    if-nez v8, :cond_8

    if-ne v12, v9, :cond_6

    add-int/lit8 v9, v18, 0x1

    aput v8, v3, v18

    if-lez v14, :cond_5

    invoke-virtual {v0, v4, v14}, Lru/yandex/cw;->a([CI)V

    move/from16 v18, v9

    move/from16 v12, v23

    const/4 v8, 0x5

    :goto_3
    const/4 v14, 0x0

    goto :goto_4

    :cond_5
    move/from16 v18, v9

    move/from16 v12, v23

    const/4 v8, 0x5

    :goto_4
    const/16 v15, 0xd

    goto :goto_0

    :cond_6
    if-ne v12, v15, :cond_7

    add-int/lit8 v9, v18, 0x1

    aput v8, v3, v18

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    move/from16 v18, v9

    :goto_5
    move/from16 v12, v23

    const/4 v8, 0x6

    goto :goto_4

    :cond_7
    add-int/lit8 v9, v14, 0x1

    aput-char v12, v4, v14

    move v14, v9

    :goto_6
    move/from16 v12, v23

    goto :goto_4

    :cond_8
    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    if-ne v12, v13, :cond_9

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v4, v9, v14}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v9, v21

    invoke-virtual {v6, v9, v8}, Lru/yandex/cv;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v21, v9

    move/from16 v12, v23

    :goto_7
    const/4 v8, 0x7

    goto :goto_3

    :cond_9
    move-object/from16 v9, v21

    const/16 v15, 0x20

    if-eq v12, v15, :cond_c

    const/16 v15, 0xd

    if-eq v12, v15, :cond_c

    const/16 v15, 0xa

    if-eq v12, v15, :cond_c

    const/16 v15, 0x9

    if-ne v12, v15, :cond_a

    goto :goto_8

    :cond_a
    const/16 v15, 0x26

    if-ne v12, v15, :cond_b

    add-int/lit8 v12, v18, 0x1

    aput v8, v3, v18

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v21, v9

    move/from16 v18, v12

    goto :goto_5

    :cond_b
    add-int/lit8 v15, v14, 0x1

    aput-char v12, v4, v14

    goto :goto_9

    :cond_c
    :goto_8
    add-int/lit8 v12, v14, 0x1

    const/16 v15, 0x20

    aput-char v15, v4, v14

    move-object/from16 v21, v9

    move v14, v12

    goto :goto_6

    :cond_d
    move-object/from16 v9, v21

    const/4 v15, 0x2

    if-ne v8, v15, :cond_10

    invoke-static {v12}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v15

    if-eqz v15, :cond_e

    new-instance v8, Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v8, v4, v15, v14}, Ljava/lang/String;-><init>([CII)V

    const/16 v9, 0x8

    move-object/from16 v21, v8

    move/from16 v12, v23

    const/16 v8, 0x8

    goto/16 :goto_3

    :cond_e
    const/16 v15, 0x3d

    if-ne v12, v15, :cond_f

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v4, v9, v14}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v21, v8

    move/from16 v12, v23

    const/16 v8, 0x9

    goto/16 :goto_3

    :cond_f
    add-int/lit8 v15, v14, 0x1

    aput-char v12, v4, v14

    :goto_9
    move-object/from16 v21, v9

    move v14, v15

    goto/16 :goto_6

    :cond_10
    const/16 v15, 0x3e

    move-object/from16 v25, v7

    const/4 v7, 0x3

    if-ne v8, v7, :cond_19

    if-ne v12, v15, :cond_13

    move-object/from16 v15, v20

    if-nez v15, :cond_11

    new-instance v8, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v8, v4, v12, v14}, Ljava/lang/String;-><init>([CII)V

    move-object v15, v8

    :cond_11
    add-int/lit8 v22, v22, 0x1

    invoke-virtual {v0, v15, v6}, Lru/yandex/cw;->a(Ljava/lang/String;Lru/yandex/cv;)V

    invoke-virtual {v6}, Lru/yandex/cv;->a()V

    if-nez v18, :cond_12

    const/16 v8, 0xe

    goto :goto_a

    :cond_12
    add-int/lit8 v18, v18, -0x1

    aget v8, v3, v18

    :goto_a
    move-object/from16 v21, v9

    move-object/from16 v20, v16

    goto :goto_b

    :cond_13
    move-object/from16 v15, v20

    const/16 v7, 0x2f

    if-ne v12, v7, :cond_14

    move-object/from16 v21, v9

    move-object/from16 v20, v15

    move/from16 v12, v23

    move-object/from16 v7, v25

    const/16 v8, 0xb

    goto/16 :goto_4

    :cond_14
    invoke-static {v12}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_15

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8, v14}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    move/from16 v12, v23

    move-object/from16 v7, v25

    goto/16 :goto_7

    :cond_15
    const/16 v7, 0x3a

    if-ne v12, v7, :cond_16

    move-object/from16 v21, v9

    move-object/from16 v20, v15

    :goto_b
    move/from16 v12, v23

    move-object/from16 v7, v25

    goto/16 :goto_3

    :cond_16
    invoke-static {v12}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-nez v7, :cond_18

    const/16 v7, 0x5f

    if-eq v12, v7, :cond_18

    const/16 v7, 0x2d

    if-eq v12, v7, :cond_18

    const/16 v7, 0x2e

    if-ne v12, v7, :cond_17

    goto :goto_c

    :cond_17
    move-object/from16 v21, v1

    move-object/from16 v20, v9

    move-object v7, v15

    goto/16 :goto_18

    :cond_18
    :goto_c
    add-int/lit8 v7, v14, 0x1

    aput-char v12, v4, v14

    move v14, v7

    move-object/from16 v21, v9

    move-object/from16 v20, v15

    move/from16 v12, v23

    move-object/from16 v7, v25

    goto/16 :goto_4

    :cond_19
    move-object/from16 v7, v20

    move-object/from16 v20, v9

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1e

    if-ne v12, v15, :cond_1c

    if-nez v18, :cond_1a

    const/16 v8, 0xe

    goto :goto_d

    :cond_1a
    add-int/lit8 v18, v18, -0x1

    aget v7, v3, v18

    move v8, v7

    :goto_d
    new-instance v7, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v7, v4, v9, v14}, Ljava/lang/String;-><init>([CII)V

    add-int/lit8 v22, v22, -0x1

    invoke-virtual {v0, v7}, Lru/yandex/cw;->a(Ljava/lang/String;)V

    if-nez v22, :cond_1b

    return-void

    :cond_1b
    :goto_e
    move-object/from16 v21, v20

    move/from16 v12, v23

    const/4 v14, 0x0

    goto :goto_11

    :cond_1c
    add-int/lit8 v9, v14, 0x1

    aput-char v12, v4, v14

    :goto_f
    move v14, v9

    :cond_1d
    :goto_10
    move-object/from16 v21, v20

    move/from16 v12, v23

    :goto_11
    const/16 v15, 0xd

    :goto_12
    move-object/from16 v20, v7

    move-object/from16 v7, v25

    goto/16 :goto_0

    :cond_1e
    const/4 v9, 0x7

    if-ne v8, v9, :cond_22

    if-ne v12, v15, :cond_20

    if-nez v18, :cond_1f

    const/16 v8, 0xe

    goto :goto_13

    :cond_1f
    add-int/lit8 v18, v18, -0x1

    aget v8, v3, v18

    :goto_13
    invoke-virtual {v0, v7, v6}, Lru/yandex/cw;->a(Ljava/lang/String;Lru/yandex/cv;)V

    add-int/lit8 v22, v22, 0x1

    invoke-virtual {v6}, Lru/yandex/cv;->a()V

    move-object/from16 v21, v20

    move/from16 v12, v23

    move-object/from16 v7, v25

    :goto_14
    const/16 v15, 0xd

    :goto_15
    move-object/from16 v20, v16

    goto/16 :goto_0

    :cond_20
    const/16 v9, 0x2f

    if-ne v12, v9, :cond_21

    move-object/from16 v21, v20

    move/from16 v12, v23

    const/16 v8, 0xb

    goto :goto_11

    :cond_21
    invoke-static {v12}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_2b

    add-int/lit8 v8, v14, 0x1

    aput-char v12, v4, v14

    move v14, v8

    move-object/from16 v21, v20

    move/from16 v12, v23

    const/4 v8, 0x2

    goto :goto_11

    :cond_22
    const/4 v9, 0x5

    if-ne v8, v9, :cond_27

    if-nez v18, :cond_23

    const/16 v8, 0xe

    goto :goto_16

    :cond_23
    add-int/lit8 v18, v18, -0x1

    aget v8, v3, v18

    :goto_16
    const/16 v15, 0x2f

    if-ne v12, v15, :cond_24

    add-int/lit8 v12, v18, 0x1

    aput v8, v3, v18

    const/4 v8, 0x4

    move/from16 v18, v12

    goto :goto_10

    :cond_24
    const/16 v15, 0x3f

    if-ne v12, v15, :cond_25

    move-object/from16 v21, v20

    move/from16 v12, v23

    const/16 v8, 0xd

    goto :goto_11

    :cond_25
    const/16 v7, 0x21

    if-ne v12, v7, :cond_26

    add-int/lit8 v7, v18, 0x1

    aput v8, v3, v18

    invoke-virtual {v6}, Lru/yandex/cv;->a()V

    add-int/lit8 v8, v14, 0x1

    aput-char v12, v4, v14

    move/from16 v18, v7

    move v14, v8

    move-object/from16 v21, v20

    move/from16 v12, v23

    move-object/from16 v7, v25

    const/16 v8, 0x10

    goto :goto_14

    :cond_26
    add-int/lit8 v7, v18, 0x1

    aput v8, v3, v18

    invoke-virtual {v6}, Lru/yandex/cv;->a()V

    add-int/lit8 v8, v14, 0x1

    aput-char v12, v4, v14

    move/from16 v18, v7

    move v14, v8

    move-object/from16 v21, v20

    move/from16 v12, v23

    move-object/from16 v7, v25

    const/4 v8, 0x3

    goto :goto_14

    :cond_27
    const/16 v9, 0xc

    if-ne v8, v9, :cond_2a

    if-ne v12, v15, :cond_29

    const/4 v9, 0x1

    if-le v14, v9, :cond_29

    add-int/lit8 v9, v14, -0x1

    aget-char v9, v4, v9

    const/16 v15, 0x2d

    if-ne v9, v15, :cond_29

    add-int/lit8 v9, v14, -0x2

    aget-char v9, v4, v9

    if-ne v9, v15, :cond_29

    if-nez v18, :cond_28

    const/16 v8, 0xe

    goto/16 :goto_e

    :cond_28
    add-int/lit8 v18, v18, -0x1

    aget v8, v3, v18

    goto/16 :goto_e

    :cond_29
    add-int/lit8 v9, v14, 0x1

    aput-char v12, v4, v14

    goto/16 :goto_f

    :cond_2a
    const/16 v9, 0xe

    if-ne v8, v9, :cond_2c

    const/16 v9, 0x3c

    if-ne v12, v9, :cond_2b

    add-int/lit8 v8, v18, 0x1

    const/4 v9, 0x0

    aput v9, v3, v18

    move/from16 v18, v8

    move-object/from16 v21, v20

    move/from16 v12, v23

    const/4 v8, 0x5

    goto/16 :goto_11

    :cond_2b
    :goto_17
    move-object/from16 v21, v1

    :goto_18
    const/16 v19, 0x0

    goto/16 :goto_23

    :cond_2c
    const/16 v9, 0xd

    if-ne v8, v9, :cond_2e

    if-ne v12, v15, :cond_2b

    if-nez v18, :cond_2d

    const/16 v8, 0xe

    goto :goto_19

    :cond_2d
    add-int/lit8 v18, v18, -0x1

    aget v8, v3, v18

    :goto_19
    if-nez v8, :cond_1d

    move-object/from16 v21, v20

    move/from16 v12, v23

    const/16 v8, 0xe

    goto/16 :goto_11

    :cond_2e
    const/16 v9, 0x10

    if-ne v8, v9, :cond_33

    const/16 v9, 0x2d

    if-ne v12, v9, :cond_2f

    const/4 v15, 0x1

    if-le v14, v15, :cond_2f

    add-int/lit8 v15, v14, -0x1

    aget-char v15, v4, v15

    if-ne v15, v9, :cond_2f

    add-int/lit8 v9, v14, -0x2

    aget-char v9, v4, v9

    const/16 v15, 0x21

    if-ne v9, v15, :cond_2f

    const/16 v8, 0xc

    goto/16 :goto_10

    :cond_2f
    const/16 v9, 0x5b

    if-ne v12, v9, :cond_30

    const/4 v9, 0x7

    if-ne v14, v9, :cond_30

    invoke-static {v1, v4}, Lru/yandex/cx;->a([C[C)Z

    move-result v9

    if-eqz v9, :cond_30

    const/16 v8, 0xf

    goto/16 :goto_e

    :cond_30
    const/16 v9, 0x45

    if-ne v12, v9, :cond_31

    const/4 v9, 0x7

    if-ne v14, v9, :cond_32

    invoke-static {v2, v4}, Lru/yandex/cx;->a([C[C)Z

    move-result v15

    if-eqz v15, :cond_32

    const/16 v8, 0x11

    goto/16 :goto_e

    :cond_31
    const/4 v9, 0x7

    :cond_32
    add-int/lit8 v15, v14, 0x1

    aput-char v12, v4, v14

    move v14, v15

    goto/16 :goto_10

    :cond_33
    const/4 v9, 0x6

    if-ne v8, v9, :cond_3e

    const/16 v9, 0x3b

    if-ne v12, v9, :cond_3d

    if-nez v18, :cond_34

    const/16 v8, 0xe

    goto :goto_1a

    :cond_34
    add-int/lit8 v18, v18, -0x1

    aget v8, v3, v18

    :goto_1a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v12, "lt"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_35

    add-int/lit8 v9, v14, 0x1

    const/16 v12, 0x3c

    aput-char v12, v4, v14

    goto/16 :goto_f

    :cond_35
    const-string v12, "gt"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_36

    add-int/lit8 v9, v14, 0x1

    aput-char v15, v4, v14

    goto/16 :goto_f

    :cond_36
    const-string v12, "amp"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_37

    add-int/lit8 v9, v14, 0x1

    const/16 v12, 0x26

    aput-char v12, v4, v14

    goto/16 :goto_f

    :cond_37
    const-string v12, "quot"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_38

    add-int/lit8 v9, v14, 0x1

    const/16 v12, 0x22

    aput-char v12, v4, v14

    goto/16 :goto_f

    :cond_38
    const-string v12, "apos"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_39

    add-int/lit8 v9, v14, 0x1

    const/16 v12, 0x27

    aput-char v12, v4, v14

    goto/16 :goto_f

    :cond_39
    const-string v12, "#x"

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3a

    add-int/lit8 v12, v14, 0x1

    const/4 v15, 0x2

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const/16 v15, 0x10

    invoke-static {v9, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    int-to-char v9, v9

    aput-char v9, v4, v14

    :goto_1b
    move v14, v12

    goto/16 :goto_10

    :cond_3a
    const/16 v15, 0x10

    const-string v12, "#"

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3b

    add-int/lit8 v12, v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-char v9, v9

    aput-char v9, v4, v14

    goto :goto_1b

    :cond_3b
    add-int/lit8 v12, v14, 0x1

    const/16 v15, 0x26

    aput-char v15, v4, v14

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    move v15, v12

    const/4 v12, 0x0

    :goto_1c
    if-ge v12, v14, :cond_3c

    add-int/lit8 v21, v15, 0x1

    invoke-virtual {v9, v12}, Ljava/lang/String;->charAt(I)C

    move-result v24

    aput-char v24, v4, v15

    add-int/lit8 v12, v12, 0x1

    move/from16 v15, v21

    goto :goto_1c

    :cond_3c
    add-int/lit8 v14, v15, 0x1

    const/16 v9, 0x3b

    aput-char v9, v4, v15

    goto/16 :goto_10

    :cond_3d
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_17

    :cond_3e
    const/16 v9, 0xf

    move-object/from16 v21, v1

    const/16 v1, 0x5d

    if-ne v8, v9, :cond_42

    const/4 v9, 0x1

    if-ne v12, v15, :cond_41

    if-le v14, v9, :cond_41

    add-int/lit8 v15, v14, -0x1

    aget-char v15, v4, v15

    if-ne v15, v1, :cond_41

    add-int/lit8 v15, v14, -0x2

    aget-char v15, v4, v15

    if-ne v15, v1, :cond_41

    add-int/lit8 v14, v14, -0x2

    invoke-virtual {v0, v4, v14}, Lru/yandex/cw;->a([CI)V

    if-nez v18, :cond_3f

    const/16 v8, 0xe

    goto :goto_1d

    :cond_3f
    add-int/lit8 v18, v18, -0x1

    aget v1, v3, v18

    move v8, v1

    :cond_40
    :goto_1d
    move-object/from16 v1, v21

    move/from16 v12, v23

    :goto_1e
    const/4 v14, 0x0

    goto/16 :goto_24

    :cond_41
    add-int/lit8 v1, v14, 0x1

    aput-char v12, v4, v14

    :goto_1f
    move v14, v1

    goto/16 :goto_23

    :cond_42
    const/16 v9, 0xb

    if-ne v8, v9, :cond_46

    if-nez v7, :cond_43

    new-instance v1, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v1, v4, v8, v14}, Ljava/lang/String;-><init>([CII)V

    goto :goto_20

    :cond_43
    const/4 v8, 0x0

    move-object v1, v7

    :goto_20
    invoke-virtual {v0, v1, v6}, Lru/yandex/cw;->a(Ljava/lang/String;Lru/yandex/cv;)V

    invoke-virtual {v0, v1}, Lru/yandex/cw;->a(Ljava/lang/String;)V

    if-nez v22, :cond_44

    return-void

    :cond_44
    invoke-virtual {v6}, Lru/yandex/cv;->a()V

    if-nez v18, :cond_45

    const/16 v1, 0xe

    goto :goto_21

    :cond_45
    add-int/lit8 v18, v18, -0x1

    aget v1, v3, v18

    :goto_21
    move v8, v1

    move-object/from16 v1, v21

    move/from16 v12, v23

    move-object/from16 v7, v25

    const/4 v14, 0x0

    const/16 v15, 0xd

    move-object/from16 v21, v20

    goto/16 :goto_15

    :cond_46
    const/16 v9, 0x9

    const/16 v19, 0x0

    if-ne v8, v9, :cond_48

    const/16 v9, 0x22

    if-eq v12, v9, :cond_47

    const/16 v1, 0x27

    if-ne v12, v1, :cond_4c

    :cond_47
    move v13, v12

    move-object/from16 v1, v21

    move/from16 v12, v23

    const/4 v8, 0x1

    goto :goto_24

    :cond_48
    const/16 v9, 0x8

    if-ne v8, v9, :cond_49

    const/16 v1, 0x3d

    if-ne v12, v1, :cond_4c

    move-object/from16 v1, v21

    move/from16 v12, v23

    const/16 v8, 0x9

    goto :goto_24

    :cond_49
    const/16 v9, 0x11

    if-ne v8, v9, :cond_4c

    if-ne v12, v15, :cond_4b

    if-lez v14, :cond_4b

    add-int/lit8 v9, v14, -0x1

    aget-char v9, v4, v9

    if-ne v9, v1, :cond_4b

    if-nez v18, :cond_4a

    const/16 v8, 0xe

    goto :goto_22

    :cond_4a
    add-int/lit8 v18, v18, -0x1

    aget v1, v3, v18

    move v8, v1

    :goto_22
    if-nez v8, :cond_40

    move-object/from16 v1, v21

    move/from16 v12, v23

    const/16 v8, 0xe

    goto/16 :goto_1e

    :cond_4b
    add-int/lit8 v1, v14, 0x1

    aput-char v12, v4, v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1f

    :cond_4c
    :goto_23
    move-object/from16 v1, v21

    move/from16 v12, v23

    :goto_24
    const/16 v15, 0xd

    move-object/from16 v21, v20

    goto/16 :goto_12

    :catch_0
    return-void
.end method

.method private static a([C[C)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    aget-char v2, p0, v0

    aget-char v3, p1, v0

    if-eq v2, v3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method
