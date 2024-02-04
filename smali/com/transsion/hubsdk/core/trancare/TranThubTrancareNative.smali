.class public Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative;
.super Ljava/lang/Object;
.source "TranThubTrancareNative.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method static synthetic lambda$localLog$0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareNative;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$localLogImmediately$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareNative;->localLogImmediately(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$localLogKeep$3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareNative;->localLogKeep(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$localRaw$2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareNative;->localRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$setNvFloat$6(Ljava/lang/String;FI)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # F
    .param p2, "op"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareNative;->setNvFloat(Ljava/lang/String;FI)V

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$setNvInt$4(Ljava/lang/String;II)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "op"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareNative;->setNvInt(Ljava/lang/String;II)V

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$setNvLong$5(Ljava/lang/String;JI)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # J
    .param p3, "op"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareNative;->setNvLong(Ljava/lang/String;JI)V

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$setNvString$7(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareNative;->setNvString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public localLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public localLogImmediately(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public localLogKeep(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public localRaw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public setNvFloat(Ljava/lang/String;FI)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "op"    # I

    .line 73
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;FI)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public setNvInt(Ljava/lang/String;II)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "op"    # I

    .line 57
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;II)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public setNvLong(Ljava/lang/String;JI)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "op"    # I

    .line 65
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;JI)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public setNvString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    return-void
.end method
