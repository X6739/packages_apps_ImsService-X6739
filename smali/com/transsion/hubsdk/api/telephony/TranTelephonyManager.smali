.class public Lcom/transsion/hubsdk/api/telephony/TranTelephonyManager;
.super Ljava/lang/Object;
.source "TranTelephonyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mService:Lcom/transsion/hubsdk/interfaces/telephony/ITranTelephonyManagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/transsion/hubsdk/api/telephony/TranTelephonyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/telephony/TranTelephonyManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "33101"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lcom/transsion/hubsdk/core/telephony/TranThubTelephonyManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/telephony/TranThubTelephonyManager;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/telephony/TranTelephonyManager;->mService:Lcom/transsion/hubsdk/interfaces/telephony/ITranTelephonyManagerAdapter;

    .line 31
    sget-object v0, Lcom/transsion/hubsdk/api/telephony/TranTelephonyManager;->TAG:Ljava/lang/String;

    const-string v1, "TranThubTelephonyManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/telephony/TranAospTelephonyManager;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/telephony/TranTelephonyManager;->mService:Lcom/transsion/hubsdk/interfaces/telephony/ITranTelephonyManagerAdapter;

    .line 34
    sget-object v0, Lcom/transsion/hubsdk/api/telephony/TranTelephonyManager;->TAG:Ljava/lang/String;

    const-string v1, "TranAospTelephonyManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_0
    return-void
.end method


# virtual methods
.method public getDataEnabled()Z
    .locals 1

    .line 60
    sget-object v0, Lcom/transsion/hubsdk/api/telephony/TranTelephonyManager;->mService:Lcom/transsion/hubsdk/interfaces/telephony/ITranTelephonyManagerAdapter;

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    return v0

    .line 63
    :cond_0
    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/telephony/ITranTelephonyManagerAdapter;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method public getRadioPowerState()I
    .locals 1

    .line 75
    sget-object v0, Lcom/transsion/hubsdk/api/telephony/TranTelephonyManager;->mService:Lcom/transsion/hubsdk/interfaces/telephony/ITranTelephonyManagerAdapter;

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/telephony/ITranTelephonyManagerAdapter;->getRadioPowerState()I

    move-result v0

    return v0
.end method

.method public getService()Lcom/transsion/hubsdk/interfaces/telephony/ITranTelephonyManagerAdapter;
    .locals 1

    .line 81
    sget-object v0, Lcom/transsion/hubsdk/api/telephony/TranTelephonyManager;->mService:Lcom/transsion/hubsdk/interfaces/telephony/ITranTelephonyManagerAdapter;

    return-object v0
.end method

.method public getServiceState()Lcom/transsion/hubsdk/api/telephony/TranServiceState;
    .locals 1

    .line 45
    sget-object v0, Lcom/transsion/hubsdk/api/telephony/TranTelephonyManager;->mService:Lcom/transsion/hubsdk/interfaces/telephony/ITranTelephonyManagerAdapter;

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/telephony/ITranTelephonyManagerAdapter;->getServiceState()Lcom/transsion/hubsdk/api/telephony/TranServiceState;

    move-result-object v0

    return-object v0
.end method
