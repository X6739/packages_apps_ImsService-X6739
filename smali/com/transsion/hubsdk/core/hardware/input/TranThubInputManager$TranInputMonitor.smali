.class public Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranInputMonitor;
.super Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub;
.source "TranThubInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranInputMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    .line 77
    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranInputMonitor;->this$0:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    invoke-static {}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->access$000()Lcom/transsion/hubsdk/view/ITranInputMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->access$000()Lcom/transsion/hubsdk/view/ITranInputMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/hubsdk/view/ITranInputMonitor;->dispose()V

    .line 85
    :cond_0
    return-void
.end method

.method public pilferPointers()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    invoke-static {}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->access$000()Lcom/transsion/hubsdk/view/ITranInputMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->access$000()Lcom/transsion/hubsdk/view/ITranInputMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/hubsdk/view/ITranInputMonitor;->pilferPointers()V

    .line 92
    :cond_0
    return-void
.end method
