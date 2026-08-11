.class public Lcom/txdriver/ui/menu/AddClientInfoMenu;
.super Ljava/lang/Object;
.source "AddClientInfoMenu.java"


# instance fields
.field private app:Lcom/txdriver/App;

.field private context:Landroid/content/Context;

.field private dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field private nameInputEditText:Landroid/widget/EditText;

.field private orderId:I

.field private phoneInputEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/txdriver/App;I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu;->app:Lcom/txdriver/App;

    .line 29
    iput p3, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu;->orderId:I

    .line 30
    invoke-direct {p0}, Lcom/txdriver/ui/menu/AddClientInfoMenu;->createDialog()V

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/menu/AddClientInfoMenu;)Z
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/txdriver/ui/menu/AddClientInfoMenu;->driverInputPhoneIsValid()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/menu/AddClientInfoMenu;)Landroid/widget/EditText;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu;->nameInputEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/txdriver/ui/menu/AddClientInfoMenu;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu;->orderId:I

    return p0
.end method

.method static synthetic access$300(Lcom/txdriver/ui/menu/AddClientInfoMenu;)Landroid/widget/EditText;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu;->phoneInputEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/txdriver/ui/menu/AddClientInfoMenu;)Lcom/txdriver/App;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu;->app:Lcom/txdriver/App;

    return-object p0
.end method

.method static synthetic access$500(Lcom/txdriver/ui/menu/AddClientInfoMenu;)Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    return-object p0
.end method

.method private createDialog()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c003b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    iget-object v2, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 36
    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 37
    iget-object v1, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    const v1, 0x7f09004f

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu;->phoneInputEditText:Landroid/widget/EditText;

    const v1, 0x7f09004d

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu;->nameInputEditText:Landroid/widget/EditText;

    const v1, 0x7f090052

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 43
    new-instance v1, Lcom/txdriver/ui/menu/AddClientInfoMenu$1;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/menu/AddClientInfoMenu$1;-><init>(Lcom/txdriver/ui/menu/AddClientInfoMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private driverInputPhoneIsValid()Z
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu;->phoneInputEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public show()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    return-void
.end method
