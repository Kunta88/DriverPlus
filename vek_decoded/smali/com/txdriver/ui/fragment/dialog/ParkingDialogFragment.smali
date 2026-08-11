.class public Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;
.super Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;
.source "ParkingDialogFragment.java"


# static fields
.field private static final ID_ARG:Ljava/lang/String; = "id_arg"


# instance fields
.field private mDriverId:I

.field private mMaxParks:I

.field private mNumParked:I

.field private mParking:Lcom/txdriver/db/Parking;

.field private mParkings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/db/Parking;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;)Lcom/txdriver/db/Parking;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->mParking:Lcom/txdriver/db/Parking;

    return-object p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->updateDriverParks(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->mNumParked:I

    return p0
.end method

.method static synthetic access$300(Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->mMaxParks:I

    return p0
.end method

.method public static newInstance(J)Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;
    .locals 3

    .line 38
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;-><init>()V

    .line 39
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id_arg"

    .line 40
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static show(Landroidx/fragment/app/FragmentActivity;J)V
    .locals 0

    .line 33
    invoke-static {p1, p2}, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->newInstance(J)Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;

    move-result-object p1

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/txdriver/utils/Utils;->showDialog(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method private updateDriverParks(I)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object v0

    new-instance v1, Lcom/txdriver/socket/packet/TakeParkingPacket;

    invoke-direct {v1, p1}, Lcom/txdriver/socket/packet/TakeParkingPacket;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "id_arg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/txdriver/db/Parking;->getById(J)Lcom/txdriver/db/Parking;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->mParking:Lcom/txdriver/db/Parking;

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getLogin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->mDriverId:I

    .line 51
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getMaxAllowedParks()I

    move-result p1

    iput p1, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->mMaxParks:I

    .line 52
    iget p1, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->mDriverId:I

    invoke-static {p1}, Lcom/txdriver/db/Parking;->getParkings(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->mParkings:Ljava/util/List;

    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->mNumParked:I

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 59
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->mParking:Lcom/txdriver/db/Parking;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, v0, Lcom/txdriver/db/Parking;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_0
    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 64
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->mParking:Lcom/txdriver/db/Parking;

    if-eqz v0, :cond_2

    .line 65
    iget v1, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->mDriverId:I

    invoke-virtual {v0, v1}, Lcom/txdriver/db/Parking;->getDriver(I)Lcom/txdriver/db/DriverParking;

    move-result-object v0

    const v1, 0x1040013

    if-eqz v0, :cond_1

    const v0, 0x7f100100

    .line 66
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 67
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment$1;-><init>(Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;)V

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 73
    :cond_1
    iget v0, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->mNumParked:I

    iget v2, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->mMaxParks:I

    if-gt v0, v2, :cond_2

    const v0, 0x7f100252

    .line 74
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 75
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment$2;-><init>(Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;)V

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 87
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
