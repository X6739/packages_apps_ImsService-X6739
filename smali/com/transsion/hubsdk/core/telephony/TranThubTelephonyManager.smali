.class public Lcom/transsion/hubsdk/core/telephony/TranThubTelephonyManager;
.super Ljava/lang/Object;
.source "TranThubTelephonyManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/telephony/ITranTelephonyManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mService:Lcom/transsion/hubsdk/telephony/ITranTelephony;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/transsion/hubsdk/core/telephony/TranThubTelephonyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/telephony/TranThubTelephonyManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "telephony"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 28
    .local v0, "serviceIBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/transsion/hubsdk/telephony/ITranTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/telephony/ITranTelephony;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/core/telephony/TranThubTelephonyManager;->mService:Lcom/transsion/hubsdk/telephony/ITranTelephony;

    .line 29
    return-void
.end method

.method static synthetic lambda$getRadioPowerState$0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/transsion/hubsdk/core/telephony/TranThubTelephonyManager;->mService:Lcom/transsion/hubsdk/telephony/ITranTelephony;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0}, Lcom/transsion/hubsdk/telephony/ITranTelephony;->getRadioPowerState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDataEnabled()Z
    .locals 2

    .line 50
    sget-object v0, Lcom/transsion/hubsdk/core/telephony/TranThubTelephonyManager;->mService:Lcom/transsion/hubsdk/telephony/ITranTelephony;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 51
    return v1

    .line 54
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/transsion/hubsdk/telephony/ITranTelephony;->getDataEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 58
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getRadioPowerState()I
    .locals 4

    .line 64
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/telephony/TranThubTelephonyManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/hubsdk/core/telephony/TranThubTelephonyManager$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "telephony"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->exceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 70
    .local v0, "state":I
    sget-object v1, Lcom/transsion/hubsdk/core/telephony/TranThubTelephonyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRadioPowerState state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return v0
.end method

.method public getServiceState()Lcom/transsion/hubsdk/api/telephony/TranServiceState;
    .locals 6

    .line 33
    sget-object v0, Lcom/transsion/hubsdk/core/telephony/TranThubTelephonyManager;->mService:Lcom/transsion/hubsdk/telephony/ITranTelephony;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 34
    return-object v1

    .line 36
    :cond_0
    const/4 v2, 0x0

    .line 38
    .local v2, "serviceState":Lcom/transsion/hubsdk/telephony/TranServiceState;
    :try_start_0
    invoke-interface {v0}, Lcom/transsion/hubsdk/telephony/ITranTelephony;->getServiceState()Lcom/transsion/hubsdk/telephony/TranServiceState;

    move-result-object v0

    move-object v2, v0

    .line 39
    if-eqz v2, :cond_1

    .line 40
    new-instance v0, Lcom/transsion/hubsdk/api/telephony/TranServiceState;

    invoke-virtual {v2}, Lcom/transsion/hubsdk/telephony/TranServiceState;->getState()I

    move-result v3

    invoke-virtual {v2}, Lcom/transsion/hubsdk/telephony/TranServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/transsion/hubsdk/telephony/TranServiceState;->getDataRoamingType()I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Lcom/transsion/hubsdk/api/telephony/TranServiceState;-><init>(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 44
    :cond_1
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 45
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1
.end method
