.class public Lcom/txdriver/ui/menu/EditOrderExtrasMenu;
.super Ljava/lang/Object;
.source "EditOrderExtrasMenu.java"


# instance fields
.field private app:Lcom/txdriver/App;

.field private context:Landroid/content/Context;

.field private dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field private order:Lcom/txdriver/db/Order;

.field private orderCarExtras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/txdriver/db/CarExtra;",
            ">;"
        }
    .end annotation
.end field

.field private orderDriverExtras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/txdriver/db/DriverExtra;",
            ">;"
        }
    .end annotation
.end field

.field private orderTariffCarExtras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/txdriver/socket/data/OrderTariffExtra;",
            ">;"
        }
    .end annotation
.end field

.field private orderTariffDriverExtras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/txdriver/socket/data/OrderTariffExtra;",
            ">;"
        }
    .end annotation
.end field

.field private selectedOrderExtras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/GlobalOrderExtra;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/txdriver/App;Lcom/txdriver/db/Order;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/txdriver/App;",
            "Lcom/txdriver/db/Order;",
            "Ljava/util/ArrayList<",
            "Lcom/txdriver/db/CarExtra;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/txdriver/db/DriverExtra;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/txdriver/socket/data/OrderTariffExtra;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/txdriver/socket/data/OrderTariffExtra;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->app:Lcom/txdriver/App;

    .line 42
    iput-object p3, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->order:Lcom/txdriver/db/Order;

    .line 43
    iput-object p4, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->orderCarExtras:Ljava/util/ArrayList;

    .line 44
    iput-object p5, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->orderDriverExtras:Ljava/util/ArrayList;

    .line 45
    iput-object p6, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->orderTariffCarExtras:Ljava/util/ArrayList;

    .line 46
    iput-object p7, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->orderTariffDriverExtras:Ljava/util/ArrayList;

    .line 47
    invoke-direct {p0}, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->getExtrasForDisplay()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->selectedOrderExtras:Ljava/util/List;

    .line 48
    invoke-direct {p0}, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->createDialog()V

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/menu/EditOrderExtrasMenu;)Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/menu/EditOrderExtrasMenu;)Lcom/txdriver/db/Order;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->order:Lcom/txdriver/db/Order;

    return-object p0
.end method

.method static synthetic access$200(Lcom/txdriver/ui/menu/EditOrderExtrasMenu;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->getSelectedCarExtrasIdArray()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/txdriver/ui/menu/EditOrderExtrasMenu;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->getSelectedDriverExtrasIdArray()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/txdriver/ui/menu/EditOrderExtrasMenu;)Lcom/txdriver/App;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->app:Lcom/txdriver/App;

    return-object p0
.end method

.method private createDialog()V
    .locals 6

    .line 52
    iget-object v0, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0052

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    iget-object v2, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 54
    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 55
    iget-object v1, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    const v1, 0x7f0900f5

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->context:Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 59
    new-instance v2, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter;

    iget-object v3, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->app:Lcom/txdriver/App;

    iget-object v4, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->selectedOrderExtras:Ljava/util/List;

    iget-object v5, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->order:Lcom/txdriver/db/Order;

    iget-object v5, v5, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget v5, v5, Lcom/txdriver/db/OrderType;->driverCanEditOrderExtras:I

    invoke-direct {v2, v3, v4, v5}, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter;-><init>(Lcom/txdriver/App;Ljava/util/List;I)V

    .line 60
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v1, 0x7f0900f4

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0900f6

    .line 62
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 64
    new-instance v2, Lcom/txdriver/ui/menu/EditOrderExtrasMenu$1;

    invoke-direct {v2, p0}, Lcom/txdriver/ui/menu/EditOrderExtrasMenu$1;-><init>(Lcom/txdriver/ui/menu/EditOrderExtrasMenu;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    new-instance v1, Lcom/txdriver/ui/menu/EditOrderExtrasMenu$2;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/menu/EditOrderExtrasMenu$2;-><init>(Lcom/txdriver/ui/menu/EditOrderExtrasMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getExtrasForDisplay()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/GlobalOrderExtra;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->orderTariffCarExtras:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->orderTariffCarExtras:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 87
    iget-object v3, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->orderTariffCarExtras:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/txdriver/socket/data/OrderTariffExtra;

    .line 88
    iget-object v5, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->orderCarExtras:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    .line 89
    :goto_0
    iget-object v6, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->orderCarExtras:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 90
    iget v6, v4, Lcom/txdriver/socket/data/OrderTariffExtra;->id:I

    iget-object v7, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->orderCarExtras:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/txdriver/db/CarExtra;

    iget v7, v7, Lcom/txdriver/db/CarExtra;->extraId:I

    if-ne v6, v7, :cond_1

    .line 91
    new-instance v6, Lcom/txdriver/socket/data/GlobalOrderExtra;

    const/4 v9, 0x0

    iget v10, v4, Lcom/txdriver/socket/data/OrderTariffExtra;->id:I

    iget-object v11, v4, Lcom/txdriver/socket/data/OrderTariffExtra;->name:Ljava/lang/String;

    iget v12, v4, Lcom/txdriver/socket/data/OrderTariffExtra;->price:F

    iget v13, v4, Lcom/txdriver/socket/data/OrderTariffExtra;->percent:F

    const/4 v14, 0x1

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/txdriver/socket/data/GlobalOrderExtra;-><init>(IILjava/lang/String;FFZ)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 98
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txdriver/socket/data/OrderTariffExtra;

    .line 99
    new-instance v11, Lcom/txdriver/socket/data/GlobalOrderExtra;

    const/4 v5, 0x0

    iget v6, v3, Lcom/txdriver/socket/data/OrderTariffExtra;->id:I

    iget-object v7, v3, Lcom/txdriver/socket/data/OrderTariffExtra;->name:Ljava/lang/String;

    iget v8, v3, Lcom/txdriver/socket/data/OrderTariffExtra;->price:F

    iget v9, v3, Lcom/txdriver/socket/data/OrderTariffExtra;->percent:F

    const/4 v10, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/txdriver/socket/data/GlobalOrderExtra;-><init>(IILjava/lang/String;FFZ)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->orderTariffDriverExtras:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->orderTariffDriverExtras:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 106
    iget-object v3, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->orderTariffDriverExtras:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/txdriver/socket/data/OrderTariffExtra;

    .line 107
    iget-object v5, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->orderDriverExtras:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x0

    .line 108
    :goto_2
    iget-object v6, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->orderDriverExtras:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 109
    iget v6, v4, Lcom/txdriver/socket/data/OrderTariffExtra;->id:I

    iget-object v7, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->orderDriverExtras:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/txdriver/db/DriverExtra;

    iget v7, v7, Lcom/txdriver/db/DriverExtra;->extraId:I

    if-ne v6, v7, :cond_5

    .line 110
    new-instance v6, Lcom/txdriver/socket/data/GlobalOrderExtra;

    const/4 v9, 0x1

    iget v10, v4, Lcom/txdriver/socket/data/OrderTariffExtra;->id:I

    iget-object v11, v4, Lcom/txdriver/socket/data/OrderTariffExtra;->name:Ljava/lang/String;

    iget v12, v4, Lcom/txdriver/socket/data/OrderTariffExtra;->price:F

    iget v13, v4, Lcom/txdriver/socket/data/OrderTariffExtra;->percent:F

    const/4 v14, 0x1

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/txdriver/socket/data/GlobalOrderExtra;-><init>(IILjava/lang/String;FFZ)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 116
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 117
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/socket/data/OrderTariffExtra;

    .line 118
    new-instance v10, Lcom/txdriver/socket/data/GlobalOrderExtra;

    const/4 v4, 0x1

    iget v5, v2, Lcom/txdriver/socket/data/OrderTariffExtra;->id:I

    iget-object v6, v2, Lcom/txdriver/socket/data/OrderTariffExtra;->name:Ljava/lang/String;

    iget v7, v2, Lcom/txdriver/socket/data/OrderTariffExtra;->price:F

    iget v8, v2, Lcom/txdriver/socket/data/OrderTariffExtra;->percent:F

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/txdriver/socket/data/GlobalOrderExtra;-><init>(IILjava/lang/String;FFZ)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    return-object v0
.end method

.method private getSelectedCarExtrasIdArray()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->selectedOrderExtras:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/socket/data/GlobalOrderExtra;

    .line 128
    iget-boolean v3, v2, Lcom/txdriver/socket/data/GlobalOrderExtra;->isSelected:Z

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/txdriver/socket/data/GlobalOrderExtra;->extraType:I

    if-nez v3, :cond_0

    .line 129
    iget v2, v2, Lcom/txdriver/socket/data/GlobalOrderExtra;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getSelectedDriverExtrasIdArray()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->selectedOrderExtras:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/socket/data/GlobalOrderExtra;

    .line 138
    iget-boolean v3, v2, Lcom/txdriver/socket/data/GlobalOrderExtra;->isSelected:Z

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/txdriver/socket/data/GlobalOrderExtra;->extraType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 139
    iget v2, v2, Lcom/txdriver/socket/data/GlobalOrderExtra;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public show()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    return-void
.end method
