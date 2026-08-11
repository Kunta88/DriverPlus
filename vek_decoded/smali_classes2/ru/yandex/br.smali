.class public Lru/yandex/br;
.super Lru/yandex/cw;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public d:Ljava/lang/String;

.field public final e:Ljava/util/Hashtable;

.field public final f:Ljava/util/Map;

.field public g:Z

.field public final h:Ljava/util/List;

.field public i:Lru/yandex/yandexmapkit/map/MapLayer;

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tiles"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "search"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "userpoicats"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "userpoiget"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "userpoiiconget"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "userpoisend"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "trafficget"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "trafficsend"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "userreport"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "auth"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "clublist"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "clubusers"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "userprefs"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "cellid"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "gpsstat"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sessionlogs"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "geocode"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "userpoivote"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "megafon"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "mts"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "trafficcollect"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "wifipool"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "tinyurl"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x19

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v3, "streetview"

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    const-string v3, "router"

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "agreement"

    aput-object v2, v0, v1

    sput-object v0, Lru/yandex/br;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lru/yandex/cw;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/yandex/br;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/yandex/br;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/yandex/br;->h:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/yandex/br;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lru/yandex/br;->e:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/br;->g:Z

    return-void
.end method


# virtual methods
.method a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lru/yandex/br;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lru/yandex/br;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "maps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "query_hosts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "objectshowintervals"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "features"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lru/yandex/br;->k:I

    :cond_1
    iget v0, p0, Lru/yandex/br;->k:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    const-string v0, "l"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lru/yandex/br;->i:Lru/yandex/yandexmapkit/map/MapLayer;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lru/yandex/br;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v1, p0, Lru/yandex/br;->k:I

    :cond_2
    return-void
.end method

.method a(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lru/yandex/br;->f:Ljava/util/Map;

    new-instance v1, Lru/yandex/at;

    invoke-direct {v1, p2, p3}, Lru/yandex/at;-><init>(II)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lru/yandex/br;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Lru/yandex/cv;)V
    .locals 12

    const/4 v0, 0x0

    iput v0, p0, Lru/yandex/br;->j:I

    const-string v1, "error"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lru/yandex/br;->g:Z

    return-void

    :cond_0
    const-string v1, "app"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "cur_app_version"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "min_app_version"

    invoke-virtual {p2, v0}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_1
    const-string v1, "changelog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v2, p0, Lru/yandex/br;->j:I

    return-void

    :cond_2
    const-string v1, "news"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "id"

    if-eqz v1, :cond_3

    const/4 p1, 0x2

    iput p1, p0, Lru/yandex/br;->j:I

    :try_start_1
    invoke-virtual {p2, v3}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-string p1, "url"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_3
    const-string v1, "ui_actions_log"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "events"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_4
    const-string v1, "uuid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p1, 0x3

    iput p1, p0, Lru/yandex/br;->j:I

    return-void

    :cond_5
    const-string v1, "features"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0xa

    if-eqz v1, :cond_6

    iput v4, p0, Lru/yandex/br;->k:I

    return-void

    :cond_6
    iget v1, p0, Lru/yandex/br;->k:I

    const-string v5, "error_timeout"

    const-string v6, "send_timeout"

    const-string v7, "scan_timeout"

    const-string v8, "enabled"

    if-ne v1, v4, :cond_7

    const-string v1, "network_scanner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :try_start_2
    invoke-virtual {p2, v8}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    invoke-virtual {p2, v7}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    invoke-virtual {p2, v6}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    invoke-virtual {p2, v5}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void

    :cond_7
    iget v1, p0, Lru/yandex/br;->k:I

    if-ne v1, v4, :cond_8

    const-string v1, "traffic_collect"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :try_start_6
    invoke-virtual {p2, v8}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    invoke-virtual {p2, v7}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    invoke-virtual {p2, v6}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    invoke-virtual {p2, v5}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    return-void

    :cond_8
    iget v1, p0, Lru/yandex/br;->k:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_9

    const-string v1, "changes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 p1, 0x5

    iput p1, p0, Lru/yandex/br;->j:I

    :try_start_a
    const-string p1, "version"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lru/yandex/br;->l:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    return-void

    :cond_9
    const-string v1, "openpos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :try_start_b
    const-string p1, "lat"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    const-string p1, "lon"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    const-string p1, "zoomid"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    const-string p1, "success"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    return-void

    :cond_a
    const-string v1, "query_hosts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x6

    if-eqz v1, :cond_b

    iput v4, p0, Lru/yandex/br;->k:I

    return-void

    :cond_b
    iget v1, p0, Lru/yandex/br;->k:I

    if-ne v1, v4, :cond_c

    const-string v1, "host"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 p1, 0x7

    iput p1, p0, Lru/yandex/br;->j:I

    const-string p1, "type"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/yandex/br;->m:Ljava/lang/String;

    return-void

    :cond_c
    const-string v1, "objectshowintervals"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0x8

    if-eqz v1, :cond_d

    iput v4, p0, Lru/yandex/br;->k:I

    return-void

    :cond_d
    iget v1, p0, Lru/yandex/br;->k:I

    if-ne v1, v4, :cond_e

    const-string v1, "interval"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string p1, "object"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_d
    const-string v0, "min_zoom"

    invoke-virtual {p2, v0}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "max_zoom"

    invoke-virtual {p2, v1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lru/yandex/br;->a(Ljava/lang/String;II)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    return-void

    :cond_e
    const-string v1, "map_layers"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0xb

    if-eqz v1, :cond_f

    iput v4, p0, Lru/yandex/br;->k:I

    return-void

    :cond_f
    iget v1, p0, Lru/yandex/br;->k:I

    if-ne v1, v4, :cond_14

    const-string v1, "l"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    :try_start_e
    const-string p1, "request"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v3}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string p1, "name"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_11

    const/4 p1, -0x1

    :try_start_f
    const-string v1, "ver"

    invoke-virtual {p2, v1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_11

    move v8, p1

    goto :goto_0

    :catch_e
    const/4 v8, -0x1

    :goto_0
    :try_start_10
    const-string p1, "service"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_11

    if-ne p1, v2, :cond_10

    const/4 p1, 0x1

    goto :goto_1

    :cond_10
    const/4 p1, 0x0

    :goto_1
    move v9, p1

    goto :goto_2

    :catch_f
    const/4 v9, 0x0

    :goto_2
    :try_start_11
    const-string p1, "size_in_pixels"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_10
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    move v10, p1

    goto :goto_3

    :catch_10
    const/4 v10, 0x0

    :goto_3
    :try_start_12
    const-string p1, "allows_night_mode"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_13

    const-string p2, "no"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    const-string p2, "0"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    goto :goto_4

    :cond_11
    const-string p2, "yes"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    const-string p2, "1"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_5

    :cond_12
    :goto_4
    const/4 v11, 0x0

    goto :goto_6

    :cond_13
    :goto_5
    const/4 v11, 0x1

    :goto_6
    new-instance p1, Lru/yandex/yandexmapkit/map/MapLayer;

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lru/yandex/yandexmapkit/map/MapLayer;-><init>(Ljava/lang/String;ILjava/lang/String;IZIZ)V

    iput-object p1, p0, Lru/yandex/br;->i:Lru/yandex/yandexmapkit/map/MapLayer;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_11

    return-void

    :catch_11
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t parse map layers tag layer"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_14
    return-void
.end method

.method public a([CI)V
    .locals 3

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    iget p1, p0, Lru/yandex/br;->j:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    const/4 p2, 0x7

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lru/yandex/br;->m:Ljava/lang/String;

    const-string p2, "http://"

    const-string v2, "https://"

    invoke-virtual {v0, p2, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lru/yandex/br;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lru/yandex/br;->l:I

    invoke-virtual {p0, p1, v0}, Lru/yandex/br;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lru/yandex/br;->d:Ljava/lang/String;

    :goto_0
    iput v1, p0, Lru/yandex/br;->j:I

    return-void
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 2

    iget-object v0, p0, Lru/yandex/br;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/yandex/at;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p1, Lru/yandex/at;->a:I

    if-lt p2, v1, :cond_1

    iget p1, p1, Lru/yandex/at;->b:I

    if-gt p2, p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
