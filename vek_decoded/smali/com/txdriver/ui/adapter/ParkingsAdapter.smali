.class public Lcom/txdriver/ui/adapter/ParkingsAdapter;
.super Lcom/activeandroid/widget/ModelAdapter;
.source "ParkingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/adapter/ParkingsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/activeandroid/widget/ModelAdapter<",
        "Lcom/txdriver/db/Parking;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field mParkingDriversMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/txdriver/db/Parking$Info;",
            ">;"
        }
    .end annotation
.end field

.field private mParkings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/db/Parking;",
            ">;"
        }
    .end annotation
.end field

.field private final mResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Parking;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0c006f

    .line 32
    invoke-direct {p0, p1, v0, p2}, Lcom/activeandroid/widget/ModelAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 33
    iput-object p1, p0, Lcom/txdriver/ui/adapter/ParkingsAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput v0, p0, Lcom/txdriver/ui/adapter/ParkingsAdapter;->mResourceId:I

    .line 35
    iput-object p2, p0, Lcom/txdriver/ui/adapter/ParkingsAdapter;->mParkings:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/txdriver/ui/adapter/ParkingsAdapter;->mParkings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/Parking;

    invoke-virtual {p1}, Lcom/txdriver/db/Parking;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    .line 52
    iget-object p2, p0, Lcom/txdriver/ui/adapter/ParkingsAdapter;->mContext:Landroid/content/Context;

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 53
    iget p3, p0, Lcom/txdriver/ui/adapter/ParkingsAdapter;->mResourceId:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 54
    new-instance p3, Lcom/txdriver/ui/adapter/ParkingsAdapter$ViewHolder;

    invoke-direct {p3}, Lcom/txdriver/ui/adapter/ParkingsAdapter$ViewHolder;-><init>()V

    const v0, 0x7f09021b

    .line 55
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/txdriver/ui/adapter/ParkingsAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    const v0, 0x7f09021d

    .line 56
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/txdriver/ui/adapter/ParkingsAdapter$ViewHolder;->queueTextView:Landroid/widget/TextView;

    const v0, 0x7f09021c

    .line 57
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/txdriver/ui/adapter/ParkingsAdapter$ViewHolder;->positionTextView:Landroid/widget/TextView;

    const v0, 0x7f09021a

    .line 58
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/txdriver/ui/adapter/ParkingsAdapter$ViewHolder;->countTextView:Landroid/widget/TextView;

    .line 59
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/txdriver/ui/adapter/ParkingsAdapter$ViewHolder;

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/txdriver/ui/adapter/ParkingsAdapter;->mParkings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/Parking;

    .line 64
    iget-object v0, p3, Lcom/txdriver/ui/adapter/ParkingsAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/txdriver/db/Parking;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/txdriver/ui/adapter/ParkingsAdapter;->mParkingDriversMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/txdriver/db/Parking;->parkingId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/Parking$Info;

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/txdriver/db/Parking$Info;

    invoke-virtual {p0}, Lcom/txdriver/ui/adapter/ParkingsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/txdriver/db/Parking$Info;-><init>(Landroid/content/Context;)V

    :goto_1
    if-nez p1, :cond_2

    .line 66
    new-instance p1, Lcom/txdriver/db/Parking$Info;

    invoke-direct {p1}, Lcom/txdriver/db/Parking$Info;-><init>()V

    .line 67
    :cond_2
    iget-object v0, p3, Lcom/txdriver/ui/adapter/ParkingsAdapter$ViewHolder;->queueTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/txdriver/db/Parking$Info;->getDriversString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p1}, Lcom/txdriver/db/Parking$Info;->getCount()I

    move-result v0

    .line 69
    iget-object v1, p3, Lcom/txdriver/ui/adapter/ParkingsAdapter$ViewHolder;->countTextView:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, ""

    if-lez v0, :cond_3

    const-string v0, ": "

    goto :goto_2

    :cond_3
    move-object v0, v5

    :goto_2
    aput-object v0, v3, v4

    const-string v0, "%d%s"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object p3, p3, Lcom/txdriver/ui/adapter/ParkingsAdapter$ViewHolder;->positionTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/txdriver/db/Parking$Info;->isParked()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/txdriver/db/Parking$Info;->getPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    :cond_4
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public setParkingDriversMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/txdriver/db/Parking$Info;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/txdriver/ui/adapter/ParkingsAdapter;->mParkingDriversMap:Ljava/util/Map;

    return-void
.end method
