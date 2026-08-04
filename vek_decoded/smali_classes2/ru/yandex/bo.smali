.class public Lru/yandex/bo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/yandex/bo;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a([B)Lru/yandex/bm;
    .locals 18

    new-instance v0, Lru/yandex/bm;

    invoke-direct {v0}, Lru/yandex/bm;-><init>()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static/range {p1 .. p1}, Lru/yandex/yandexmapkit/utils/Utils;->a([B)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    :cond_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-eq v4, v3, :cond_1f

    const-string v8, "description"

    const-string v10, "name"

    const-string v12, "id"

    const-string v14, "catid"

    const-string v15, "type"

    const-string v7, "routeguidance"

    const-string v9, "routing"

    const-string v11, "features"

    const-string v5, "AnyMetaData"

    const/4 v13, 0x2

    if-ne v4, v13, :cond_d

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    if-nez v6, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    :goto_1
    const/4 v6, 0x1

    goto/16 :goto_9

    :cond_1
    if-ne v6, v3, :cond_2

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_2
    const/4 v6, 0x2

    goto/16 :goto_9

    :cond_2
    if-ne v6, v13, :cond_3

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v6, 0x3

    goto/16 :goto_9

    :cond_3
    if-ne v6, v13, :cond_4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v6, 0x1b

    goto/16 :goto_9

    :cond_4
    const/4 v7, 0x6

    if-ne v6, v7, :cond_5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_3
    const/4 v6, 0x7

    goto/16 :goto_9

    :cond_5
    const/4 v5, 0x7

    if-ne v6, v5, :cond_6

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v6, 0x8

    goto/16 :goto_9

    :cond_6
    if-ne v6, v5, :cond_7

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v6, 0x9

    goto/16 :goto_9

    :cond_7
    if-ne v6, v5, :cond_8

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v6, 0xa

    goto/16 :goto_9

    :cond_8
    const/4 v5, 0x6

    if-ne v6, v5, :cond_9

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/16 v6, 0xb

    goto/16 :goto_9

    :cond_9
    if-ne v6, v5, :cond_a

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v6, 0xc

    goto/16 :goto_9

    :cond_a
    if-ne v6, v5, :cond_b

    const-string v5, "Point"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    :goto_4
    const/16 v6, 0xd

    goto/16 :goto_9

    :cond_b
    const/16 v5, 0xd

    if-ne v6, v5, :cond_c

    const-string v5, "pos"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v6, 0xe

    goto/16 :goto_9

    :cond_c
    if-ne v6, v13, :cond_1e

    const-string v5, "routing_public_transport"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/16 v6, 0x17

    goto/16 :goto_9

    :cond_d
    const/4 v13, 0x3

    if-ne v4, v13, :cond_1e

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    if-ne v6, v3, :cond_e

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    :goto_5
    const/4 v6, 0x0

    goto/16 :goto_9

    :cond_e
    const/4 v3, 0x2

    if-ne v6, v3, :cond_f

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    goto/16 :goto_1

    :cond_f
    const/4 v11, 0x3

    if-ne v6, v11, :cond_10

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    goto/16 :goto_2

    :cond_10
    const/16 v9, 0x18

    if-ne v6, v9, :cond_11

    const-string v9, "semaphore"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    goto/16 :goto_2

    :cond_11
    const/16 v9, 0x1b

    if-ne v6, v9, :cond_12

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    goto/16 :goto_2

    :cond_12
    const/4 v7, 0x6

    if-ne v6, v7, :cond_13

    const-string v9, "GeoObject"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    goto :goto_5

    :cond_13
    const/4 v9, 0x7

    if-ne v6, v9, :cond_14

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    :goto_6
    const/4 v6, 0x6

    goto/16 :goto_9

    :cond_14
    const/16 v5, 0x8

    if-ne v6, v5, :cond_15

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    :goto_7
    goto/16 :goto_3

    :cond_15
    const/16 v5, 0x9

    if-ne v6, v5, :cond_16

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_7

    :cond_16
    const/16 v5, 0xa

    if-ne v6, v5, :cond_17

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_7

    :cond_17
    const/16 v5, 0xb

    if-ne v6, v5, :cond_18

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    goto :goto_6

    :cond_18
    const/16 v5, 0xc

    if-ne v6, v5, :cond_19

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_6

    :cond_19
    const/16 v5, 0xd

    if-ne v6, v5, :cond_1a

    const-string v8, "Point"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    goto :goto_6

    :cond_1a
    const/16 v7, 0xe

    if-ne v6, v7, :cond_1b

    const-string v7, "pos"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    goto/16 :goto_4

    :cond_1b
    const/16 v5, 0x17

    if-ne v6, v5, :cond_1c

    const-string v5, "routing_public_transport"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    goto/16 :goto_2

    :cond_1c
    const/4 v3, 0x4

    if-ne v4, v3, :cond_1e

    const/4 v3, 0x3

    if-ne v6, v3, :cond_1d

    :goto_8
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    const/16 v3, 0x17

    if-ne v6, v3, :cond_1e

    goto :goto_8

    :cond_1e
    :goto_9
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_1f
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lru/yandex/bo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
