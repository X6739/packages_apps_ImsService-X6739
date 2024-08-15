.class public final synthetic Lcom/transsion/hubsdk/core/net/TranThubNetworkPolicyManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/net/TranThubNetworkPolicyManager;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/net/TranThubNetworkPolicyManager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/net/TranThubNetworkPolicyManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/core/net/TranThubNetworkPolicyManager;

    iput-boolean p2, p0, Lcom/transsion/hubsdk/core/net/TranThubNetworkPolicyManager$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/core/net/TranThubNetworkPolicyManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/core/net/TranThubNetworkPolicyManager;

    iget-boolean v1, p0, Lcom/transsion/hubsdk/core/net/TranThubNetworkPolicyManager$$ExternalSyntheticLambda0;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/transsion/hubsdk/core/net/TranThubNetworkPolicyManager;->lambda$setRestrictBackground$0$com-transsion-hubsdk-core-net-TranThubNetworkPolicyManager(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
