.class public final synthetic Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda1;->f$0:J

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda1;->f$0:J

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;->lambda$traceEnd$2(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
