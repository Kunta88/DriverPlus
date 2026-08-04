.class Lcom/txdriver/ui/menu/AddClientInfoMenu$1;
.super Ljava/lang/Object;
.source "AddClientInfoMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/menu/AddClientInfoMenu;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/menu/AddClientInfoMenu;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/menu/AddClientInfoMenu;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu$1;->this$0:Lcom/txdriver/ui/menu/AddClientInfoMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 46
    iget-object p1, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu$1;->this$0:Lcom/txdriver/ui/menu/AddClientInfoMenu;

    invoke-static {p1}, Lcom/txdriver/ui/menu/AddClientInfoMenu;->access$000(Lcom/txdriver/ui/menu/AddClientInfoMenu;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 47
    iget-object p1, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu$1;->this$0:Lcom/txdriver/ui/menu/AddClientInfoMenu;

    invoke-static {p1}, Lcom/txdriver/ui/menu/AddClientInfoMenu;->access$100(Lcom/txdriver/ui/menu/AddClientInfoMenu;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const-string v0, ""

    if-eqz p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu$1;->this$0:Lcom/txdriver/ui/menu/AddClientInfoMenu;

    invoke-static {p1}, Lcom/txdriver/ui/menu/AddClientInfoMenu;->access$100(Lcom/txdriver/ui/menu/AddClientInfoMenu;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 48
    :goto_0
    new-instance v1, Lcom/txdriver/socket/packet/AddClientInfoPacket;

    iget-object v2, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu$1;->this$0:Lcom/txdriver/ui/menu/AddClientInfoMenu;

    invoke-static {v2}, Lcom/txdriver/ui/menu/AddClientInfoMenu;->access$200(Lcom/txdriver/ui/menu/AddClientInfoMenu;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu$1;->this$0:Lcom/txdriver/ui/menu/AddClientInfoMenu;

    invoke-static {v3}, Lcom/txdriver/ui/menu/AddClientInfoMenu;->access$300(Lcom/txdriver/ui/menu/AddClientInfoMenu;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/txdriver/socket/packet/AddClientInfoPacket;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu$1;->this$0:Lcom/txdriver/ui/menu/AddClientInfoMenu;

    invoke-static {p1}, Lcom/txdriver/ui/menu/AddClientInfoMenu;->access$400(Lcom/txdriver/ui/menu/AddClientInfoMenu;)Lcom/txdriver/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu$1;->this$0:Lcom/txdriver/ui/menu/AddClientInfoMenu;

    invoke-static {v0}, Lcom/txdriver/ui/menu/AddClientInfoMenu;->access$200(Lcom/txdriver/ui/menu/AddClientInfoMenu;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lcom/txdriver/socket/packet/AddClientInfoPacket;->getData()Lcom/txdriver/socket/packet/AddClientInfoPacket;

    move-result-object v2

    iget-object v2, v2, Lcom/txdriver/socket/packet/AddClientInfoPacket;->clientPhone:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lcom/txdriver/socket/packet/AddClientInfoPacket;->getData()Lcom/txdriver/socket/packet/AddClientInfoPacket;

    move-result-object v0

    iget-object v0, v0, Lcom/txdriver/socket/packet/AddClientInfoPacket;->clientName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ADD"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object p1, p0, Lcom/txdriver/ui/menu/AddClientInfoMenu$1;->this$0:Lcom/txdriver/ui/menu/AddClientInfoMenu;

    invoke-static {p1}, Lcom/txdriver/ui/menu/AddClientInfoMenu;->access$500(Lcom/txdriver/ui/menu/AddClientInfoMenu;)Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    :cond_1
    return-void
.end method
