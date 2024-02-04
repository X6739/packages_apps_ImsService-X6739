.class public final synthetic Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Landroid/os/Bundle;

.field public final synthetic f$1:Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda14;->f$0:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda14;->f$1:Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda14;->f$0:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda14;->f$1:Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->lambda$getEventBundleAsync$16(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
