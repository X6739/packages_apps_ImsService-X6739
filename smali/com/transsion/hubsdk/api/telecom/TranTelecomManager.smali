.class public Lcom/transsion/hubsdk/api/telecom/TranTelecomManager;
.super Ljava/lang/Object;
.source "TranTelecomManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/transsion/hubsdk/interfaces/telecom/ITranTelecomManagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/transsion/hubsdk/api/telecom/TranTelecomManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/telecom/TranTelecomManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "33111"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lcom/transsion/hubsdk/core/telecom/TranThubTelecomManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/telecom/TranThubTelecomManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/telecom/TranTelecomManager;->mService:Lcom/transsion/hubsdk/interfaces/telecom/ITranTelecomManagerAdapter;

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/telecom/TranAospTelecomManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/telecom/TranAospTelecomManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/telecom/TranTelecomManager;->mService:Lcom/transsion/hubsdk/interfaces/telecom/ITranTelecomManagerAdapter;

    .line 40
    sget-object v0, Lcom/transsion/hubsdk/api/telecom/TranTelecomManager;->TAG:Ljava/lang/String;

    const-string v1, "TranAospTelecomManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_0
    return-void
.end method


# virtual methods
.method protected getService()Lcom/transsion/hubsdk/interfaces/telecom/ITranTelecomManagerAdapter;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/transsion/hubsdk/api/telecom/TranTelecomManager;->mService:Lcom/transsion/hubsdk/interfaces/telecom/ITranTelecomManagerAdapter;

    return-object v0
.end method

.method public isRinging()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/transsion/hubsdk/api/telecom/TranTelecomManager;->mService:Lcom/transsion/hubsdk/interfaces/telecom/ITranTelecomManagerAdapter;

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/telecom/ITranTelecomManagerAdapter;->isRinging()Z

    move-result v0

    return v0
.end method
