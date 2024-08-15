.class public final synthetic Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative;->lambda$setNvInt$4(Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
