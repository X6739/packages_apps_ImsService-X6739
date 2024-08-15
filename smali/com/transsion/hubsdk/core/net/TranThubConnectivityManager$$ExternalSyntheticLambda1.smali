.class public final synthetic Lcom/transsion/hubsdk/core/net/TranThubConnectivityManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/transsion/hubsdk/net/ITranOnStartTetheringCallback;


# direct methods
.method public synthetic constructor <init>(IZLcom/transsion/hubsdk/net/ITranOnStartTetheringCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/hubsdk/core/net/TranThubConnectivityManager$$ExternalSyntheticLambda1;->f$0:I

    iput-boolean p2, p0, Lcom/transsion/hubsdk/core/net/TranThubConnectivityManager$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Lcom/transsion/hubsdk/core/net/TranThubConnectivityManager$$ExternalSyntheticLambda1;->f$2:Lcom/transsion/hubsdk/net/ITranOnStartTetheringCallback;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/transsion/hubsdk/core/net/TranThubConnectivityManager$$ExternalSyntheticLambda1;->f$0:I

    iget-boolean v1, p0, Lcom/transsion/hubsdk/core/net/TranThubConnectivityManager$$ExternalSyntheticLambda1;->f$1:Z

    iget-object v2, p0, Lcom/transsion/hubsdk/core/net/TranThubConnectivityManager$$ExternalSyntheticLambda1;->f$2:Lcom/transsion/hubsdk/net/ITranOnStartTetheringCallback;

    invoke-static {v0, v1, v2}, Lcom/transsion/hubsdk/core/net/TranThubConnectivityManager;->lambda$startTethering$0(IZLcom/transsion/hubsdk/net/ITranOnStartTetheringCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
