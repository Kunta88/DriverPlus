.class Lcom/txdriver/taximeter/Taximeter$1;
.super Ljava/util/TimerTask;
.source "Taximeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/taximeter/Taximeter;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastTime:I

.field final synthetic this$0:Lcom/txdriver/taximeter/Taximeter;


# direct methods
.method constructor <init>(Lcom/txdriver/taximeter/Taximeter;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/txdriver/taximeter/Taximeter$1;->this$0:Lcom/txdriver/taximeter/Taximeter;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 p1, 0x0

    .line 86
    iput p1, p0, Lcom/txdriver/taximeter/Taximeter$1;->lastTime:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter$1;->this$0:Lcom/txdriver/taximeter/Taximeter;

    invoke-static {v0}, Lcom/txdriver/taximeter/Taximeter;->access$000(Lcom/txdriver/taximeter/Taximeter;)V

    .line 96
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter$1;->this$0:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Taximeter;->getSecondsFromLastUpdate()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/txdriver/taximeter/Taximeter;->access$100(Lcom/txdriver/taximeter/Taximeter;D)V

    .line 97
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter$1;->this$0:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Taximeter;->setLastUpdateTime()V

    .line 98
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter$1;->this$0:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Taximeter;->getTime()I

    move-result v0

    .line 99
    iget v1, p0, Lcom/txdriver/taximeter/Taximeter$1;->lastTime:I

    if-le v0, v1, :cond_0

    rem-int/lit8 v1, v0, 0xa

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/txdriver/taximeter/Taximeter$1;->this$0:Lcom/txdriver/taximeter/Taximeter;

    invoke-static {v1}, Lcom/txdriver/taximeter/Taximeter;->access$200(Lcom/txdriver/taximeter/Taximeter;)Lcom/txdriver/App;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/taximeter/Taximeter$1;->this$0:Lcom/txdriver/taximeter/Taximeter;

    invoke-static {v1, v2}, Lcom/txdriver/taximeter/TaximeterHelper;->saveTaximeterState(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;)V

    .line 101
    iput v0, p0, Lcom/txdriver/taximeter/Taximeter$1;->lastTime:I

    :cond_0
    return-void
.end method
