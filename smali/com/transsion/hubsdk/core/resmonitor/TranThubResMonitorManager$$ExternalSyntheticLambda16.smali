.class public final synthetic Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Landroid/os/Bundle;

.field public final synthetic f$1:[Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;[Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda16;->f$0:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda16;->f$1:[Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda16;->f$0:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda16;->f$1:[Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->lambda$getEventBundle$10(Landroid/os/Bundle;[Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
