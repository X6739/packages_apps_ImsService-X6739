.class Lcom/mediatek/ims/ril/ImsATController$MyHandler;
.super Landroid/os/Handler;
.source "ImsATController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ril/ImsATController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ril/ImsATController;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ril/ImsATController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/ril/ImsATController;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 61
    iput-object p1, p0, Lcom/mediatek/ims/ril/ImsATController$MyHandler;->this$0:Lcom/mediatek/ims/ril/ImsATController;

    .line 62
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 63
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleMessage] Not supported message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/ril/ImsATController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :pswitch_0
    invoke-static {}, Lcom/mediatek/ims/ril/ImsATController;->access$000()Lcom/transsion/telephony/TranTelephonyManagerEx;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsATController$MyHandler;->this$0:Lcom/mediatek/ims/ril/ImsATController;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsATController;->mModemEeImsATInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 70
    return-void

    .line 72
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/ril/ImsATController;->access$000()Lcom/transsion/telephony/TranTelephonyManagerEx;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsATController$MyHandler;->this$0:Lcom/mediatek/ims/ril/ImsATController;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsATController;->mModemEeImsATInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/transsion/telephony/TranTelephonyManagerEx;->sendImsCommandToTele(Ljava/util/List;)V

    .line 73
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsATController$MyHandler;->this$0:Lcom/mediatek/ims/ril/ImsATController;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsATController;->mModemEeImsATInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 75
    :cond_1
    const-string v0, "mTranTelephonyManagerEx = null "

    invoke-static {v0}, Lcom/mediatek/ims/ril/ImsATController;->log(Ljava/lang/String;)V

    .line 78
    nop

    .line 83
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
    .end packed-switch
.end method
