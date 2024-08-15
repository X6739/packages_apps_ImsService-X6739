.class public final synthetic Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->lambda$writeFileByNamevec$1(Ljava/lang/String;ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
