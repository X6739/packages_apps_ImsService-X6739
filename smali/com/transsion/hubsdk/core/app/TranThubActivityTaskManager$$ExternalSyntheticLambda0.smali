.class public final synthetic Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda0;->f$0:[I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda0;->f$0:[I

    invoke-static {v0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->lambda$removeRootTasksInWindowingModes$0([I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
