.class public final synthetic Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda3;->f$1:Landroid/content/ComponentName;

    iput p3, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda3;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda3;->f$1:Landroid/content/ComponentName;

    iget v2, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda3;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->lambda$setHomeActivity$0$com-transsion-hubsdk-core-content-pm-TranThubPackageManager(Landroid/content/ComponentName;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
