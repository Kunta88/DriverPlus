.class public Lcom/txdriver/ui/view/DriverParkingsView;
.super Landroid/widget/LinearLayout;
.source "DriverParkingsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/view/DriverParkingsView$InternalOnClickListener;,
        Lcom/txdriver/ui/view/DriverParkingsView$OnParkingClickListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/txdriver/ui/adapter/ParkingsAdapter;

.field private clickListener:Lcom/txdriver/ui/view/DriverParkingsView$OnParkingClickListener;

.field private dataObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance p1, Lcom/txdriver/ui/view/DriverParkingsView$1;

    invoke-direct {p1, p0}, Lcom/txdriver/ui/view/DriverParkingsView$1;-><init>(Lcom/txdriver/ui/view/DriverParkingsView;)V

    iput-object p1, p0, Lcom/txdriver/ui/view/DriverParkingsView;->dataObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p1, Lcom/txdriver/ui/view/DriverParkingsView$1;

    invoke-direct {p1, p0}, Lcom/txdriver/ui/view/DriverParkingsView$1;-><init>(Lcom/txdriver/ui/view/DriverParkingsView;)V

    iput-object p1, p0, Lcom/txdriver/ui/view/DriverParkingsView;->dataObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/view/DriverParkingsView;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/txdriver/ui/view/DriverParkingsView;->setupChildren()V

    return-void
.end method

.method static synthetic access$100(Lcom/txdriver/ui/view/DriverParkingsView;)Lcom/txdriver/ui/view/DriverParkingsView$OnParkingClickListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/txdriver/ui/view/DriverParkingsView;->clickListener:Lcom/txdriver/ui/view/DriverParkingsView$OnParkingClickListener;

    return-object p0
.end method

.method private setupChildren()V
    .locals 5

    .line 55
    invoke-virtual {p0}, Lcom/txdriver/ui/view/DriverParkingsView;->removeAllViews()V

    .line 56
    iget-object v0, p0, Lcom/txdriver/ui/view/DriverParkingsView;->adapter:Lcom/txdriver/ui/adapter/ParkingsAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/txdriver/ui/view/DriverParkingsView;->adapter:Lcom/txdriver/ui/adapter/ParkingsAdapter;

    invoke-virtual {v1}, Lcom/txdriver/ui/adapter/ParkingsAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/txdriver/ui/view/DriverParkingsView;->adapter:Lcom/txdriver/ui/adapter/ParkingsAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Lcom/txdriver/ui/adapter/ParkingsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 62
    new-instance v2, Lcom/txdriver/ui/view/DriverParkingsView$InternalOnClickListener;

    iget-object v3, p0, Lcom/txdriver/ui/view/DriverParkingsView;->adapter:Lcom/txdriver/ui/adapter/ParkingsAdapter;

    invoke-virtual {v3, v0}, Lcom/txdriver/ui/adapter/ParkingsAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-direct {v2, p0, v3, v4}, Lcom/txdriver/ui/view/DriverParkingsView$InternalOnClickListener;-><init>(Lcom/txdriver/ui/view/DriverParkingsView;J)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/view/DriverParkingsView;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public setAdapter(Lcom/txdriver/ui/adapter/ParkingsAdapter;)V
    .locals 1

    .line 45
    iput-object p1, p0, Lcom/txdriver/ui/view/DriverParkingsView;->adapter:Lcom/txdriver/ui/adapter/ParkingsAdapter;

    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/txdriver/ui/view/DriverParkingsView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/adapter/ParkingsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/txdriver/ui/view/DriverParkingsView;->setupChildren()V

    return-void
.end method

.method public setClickListener(Lcom/txdriver/ui/view/DriverParkingsView$OnParkingClickListener;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/txdriver/ui/view/DriverParkingsView;->clickListener:Lcom/txdriver/ui/view/DriverParkingsView$OnParkingClickListener;

    return-void
.end method
