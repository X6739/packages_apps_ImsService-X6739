.class public final synthetic Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda1;->f$0:I

    iget-object v1, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->lambda$getEvent$6(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
