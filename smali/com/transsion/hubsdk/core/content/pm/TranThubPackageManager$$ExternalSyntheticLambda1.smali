.class public final synthetic Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$getHomeActivities$2$com-transsion-hubsdk-core-content-pm-TranThubPackageManager(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
