.class public final synthetic Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda3;->f$0:I

    iput-object p2, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda3;->f$2:Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda3;->f$0:I

    iget-object v1, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda3;->f$2:Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    invoke-static {v0, v1, v2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->lambda$getEventAsyncStatic$13(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
