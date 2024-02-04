.class public final synthetic Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->lambda$addRoleHolderAsUser$0(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
