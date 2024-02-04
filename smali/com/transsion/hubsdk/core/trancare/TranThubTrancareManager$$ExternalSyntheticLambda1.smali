.class public final synthetic Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    invoke-static {v0}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$unregTranLogCallbackInternal$1(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
