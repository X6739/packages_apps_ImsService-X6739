.class public Lcom/transsion/hubsdk/core/os/TranThubNvramManager;
.super Ljava/lang/Object;
.source "TranThubNvramManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranNvramServiceAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mService:Lcom/transsion/hubsdk/os/ITranNvramService;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/transsion/hubsdk/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->mContext:Landroid/content/Context;

    .line 29
    const-string v0, "nvram"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 30
    .local v0, "iBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/transsion/hubsdk/os/ITranNvramService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/os/ITranNvramService;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->mService:Lcom/transsion/hubsdk/os/ITranNvramService;

    .line 31
    return-void
.end method

.method static synthetic lambda$readFileByName$0(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "i3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    sget-object v0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->mService:Lcom/transsion/hubsdk/os/ITranNvramService;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/os/ITranNvramService;->readFileByName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 39
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$writeFileByNamevec$1(Ljava/lang/String;ILjava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "i3"    # I
    .param p2, "arrayList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->mService:Lcom/transsion/hubsdk/os/ITranNvramService;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/os/ITranNvramService;->writeFileByNamevec(Ljava/lang/String;ILjava/util/List;)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public readFileByName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i3"    # I

    .line 35
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    const-string v2, "nvram"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readFileByName result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-object v0
.end method

.method public writeFileByNamevec(Ljava/lang/String;ILjava/util/List;)B
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i3"    # I
    .param p3, "arrayList"    # Ljava/util/List;

    .line 47
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;ILjava/util/List;)V

    const-string v2, "nvram"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 53
    .local v0, "mByteData":B
    sget-object v1, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFileByNamevec mByteData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return v0
.end method
