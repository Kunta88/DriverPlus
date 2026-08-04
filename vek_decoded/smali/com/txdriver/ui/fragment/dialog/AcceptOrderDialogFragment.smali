.class public Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;
.super Lcom/txdriver/ui/fragment/dialog/BaseOrderDialogFragment;
.source "AcceptOrderDialogFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/ui/fragment/dialog/BaseOrderDialogFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/txdriver/db/Order;",
        ">;>;",
        "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
        "Lorg/osmdroid/bonuspack/routing/Road;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_ARG:Ljava/lang/String; = "id_arg"

.field private static final LOADER_ORDER:I = 0xca


# instance fields
.field private acceptPackets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/txdriver/db/Order$Source;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/txdriver/socket/packet/AbstractAcceptOrderPacket;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mOrder:Lcom/txdriver/db/Order;

.field private mOrderId:J

.field private roadToClientRequest:Lcom/txdriver/http/request/RoadToClientRequest;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 44
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseOrderDialogFragment;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->acceptPackets:Ljava/util/Map;

    .line 56
    sget-object v1, Lcom/txdriver/db/Order$Source;->OWN:Lcom/txdriver/db/Order$Source;

    const-class v2, Lcom/txdriver/socket/packet/AcceptOrderPacket;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->acceptPackets:Ljava/util/Map;

    sget-object v1, Lcom/txdriver/db/Order$Source;->UPUP:Lcom/txdriver/db/Order$Source;

    const-class v2, Lcom/txdriver/socket/packet/AcceptUpUpOrderPacket;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->acceptPackets:Ljava/util/Map;

    sget-object v1, Lcom/txdriver/db/Order$Source;->MULTI_TAXI:Lcom/txdriver/db/Order$Source;

    const-class v2, Lcom/txdriver/socket/packet/AcceptMultiTaxiOrderPacket;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->acceptPackets:Ljava/util/Map;

    sget-object v1, Lcom/txdriver/db/Order$Source;->RBT:Lcom/txdriver/db/Order$Source;

    const-class v2, Lcom/txdriver/socket/packet/AcceptRbtOrderPacket;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->acceptPackets:Ljava/util/Map;

    sget-object v1, Lcom/txdriver/db/Order$Source;->EXCHANGE:Lcom/txdriver/db/Order$Source;

    const-class v2, Lcom/txdriver/socket/packet/AcceptExchangeOrderPacket;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;)Lcom/txdriver/db/Order;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->mOrder:Lcom/txdriver/db/Order;

    return-object p0
.end method

.method private dismissDialog()V
    .locals 1

    .line 198
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static newInstance(J)Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;
    .locals 3

    .line 71
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;-><init>()V

    .line 72
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id_arg"

    .line 73
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 74
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private requestDriverOrderDistance()V
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->roadToClientRequest:Lcom/txdriver/http/request/RoadToClientRequest;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 183
    invoke-virtual {v1, v2}, Lcom/txdriver/http/request/RoadToClientRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 185
    :cond_0
    new-instance v1, Lcom/txdriver/http/request/RoadToClientRequest;

    iget-object v2, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->app:Lcom/txdriver/App;

    iget-object v3, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->mOrder:Lcom/txdriver/db/Order;

    invoke-direct {v1, v2, v0, v3}, Lcom/txdriver/http/request/RoadToClientRequest;-><init>(Lcom/txdriver/App;Landroid/location/Location;Lcom/txdriver/db/Order;)V

    iput-object v1, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->roadToClientRequest:Lcom/txdriver/http/request/RoadToClientRequest;

    .line 186
    invoke-virtual {v1, p0}, Lcom/txdriver/http/request/RoadToClientRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 187
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getRequestManager()Lcom/txdriver/http/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->roadToClientRequest:Lcom/txdriver/http/request/RoadToClientRequest;

    invoke-virtual {v0, v1}, Lcom/txdriver/http/RequestManager;->execute(Lcom/txdriver/http/request/HttpRequest;)V

    return-void
.end method

.method private setupDialog()V
    .locals 3

    const/high16 v0, 0x1040000

    .line 192
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 194
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static show(JLandroidx/fragment/app/FragmentActivity;)Landroidx/fragment/app/DialogFragment;
    .locals 0

    .line 64
    invoke-static {p0, p1}, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->newInstance(J)Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;

    move-result-object p0

    const/4 p1, 0x0

    .line 65
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->setCancelable(Z)V

    .line 66
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/txdriver/utils/Utils;->showDialog(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;)V

    return-object p0
.end method


# virtual methods
.method public acceptOrder(Lcom/txdriver/db/Order;)V
    .locals 5

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->acceptPackets:Ljava/util/Map;

    iget-object v1, p1, Lcom/txdriver/db/Order;->source:Lcom/txdriver/db/Order$Source;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 108
    iget p1, p1, Lcom/txdriver/db/Order;->orderId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/socket/packet/AbstractAcceptOrderPacket;

    .line 109
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 117
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseOrderDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/16 v0, 0xca

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 80
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseOrderDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "id_arg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->mOrderId:J

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 86
    new-instance p1, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment$1;

    invoke-direct {p1, p0}, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment$1;-><init>(Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;)V

    .line 96
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 97
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->contentView:Landroid/view/View;

    .line 98
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100022

    .line 99
    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1001fa

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Order;",
            ">;>;"
        }
    .end annotation

    .line 156
    new-instance p1, Lcom/txdriver/ui/loader/OrdersLoader;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Order;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->mOrderId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "id = ?"

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/txdriver/ui/loader/OrdersLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 136
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseOrderDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Order;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Order;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 162
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 163
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->mOrder:Lcom/txdriver/db/Order;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 166
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/Order;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->mOrder:Lcom/txdriver/db/Order;

    .line 167
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->showOrder(Lcom/txdriver/db/Order;)V

    .line 168
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->requestDriverOrderDistance()V

    .line 169
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->setupDialog()V

    goto :goto_0

    .line 171
    :cond_1
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->dismissDialog()V

    :goto_0
    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Order;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p1, Lorg/osmdroid/bonuspack/routing/Road;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->onResponse(Lorg/osmdroid/bonuspack/routing/Road;)V

    return-void
.end method

.method public onResponse(Lorg/osmdroid/bonuspack/routing/Road;)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->mOrder:Lcom/txdriver/db/Order;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-wide v0, p1, Lorg/osmdroid/bonuspack/routing/Road;->mLength:D

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 123
    invoke-super {p0}, Lcom/txdriver/ui/fragment/dialog/BaseOrderDialogFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 128
    invoke-super {p0}, Lcom/txdriver/ui/fragment/dialog/BaseOrderDialogFragment;->onStop()V

    .line 129
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->roadToClientRequest:Lcom/txdriver/http/request/RoadToClientRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 130
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/RoadToClientRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    :cond_0
    return-void
.end method
