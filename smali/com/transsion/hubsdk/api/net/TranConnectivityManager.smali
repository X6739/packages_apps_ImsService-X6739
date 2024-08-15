.class public Lcom/transsion/hubsdk/api/net/TranConnectivityManager;
.super Ljava/lang/Object;
.source "TranConnectivityManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mService:Lcom/transsion/hubsdk/interfaces/net/ITranConnectivityManagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/transsion/hubsdk/api/net/TranConnectivityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/net/TranConnectivityManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "33111"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lcom/transsion/hubsdk/core/net/TranThubConnectivityManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/net/TranThubConnectivityManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/net/TranConnectivityManager;->mService:Lcom/transsion/hubsdk/interfaces/net/ITranConnectivityManagerAdapter;

    .line 31
    sget-object v0, Lcom/transsion/hubsdk/api/net/TranConnectivityManager;->TAG:Ljava/lang/String;

    const-string v1, "TranThubConnectivityManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/net/TranAospConnectivityManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/net/TranAospConnectivityManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/net/TranConnectivityManager;->mService:Lcom/transsion/hubsdk/interfaces/net/ITranConnectivityManagerAdapter;

    .line 34
    sget-object v0, Lcom/transsion/hubsdk/api/net/TranConnectivityManager;->TAG:Ljava/lang/String;

    const-string v1, "TranAospConnectivityManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_0
    return-void
.end method


# virtual methods
.method protected getService()Lcom/transsion/hubsdk/interfaces/net/ITranConnectivityManagerAdapter;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/transsion/hubsdk/api/net/TranConnectivityManager;->mService:Lcom/transsion/hubsdk/interfaces/net/ITranConnectivityManagerAdapter;

    return-object v0
.end method

.method public startTethering(IZLcom/transsion/hubsdk/net/ITranOnStartTetheringCallback;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "showProvisioningUi"    # Z
    .param p3, "callback"    # Lcom/transsion/hubsdk/net/ITranOnStartTetheringCallback;

    .line 48
    iget-object v0, p0, Lcom/transsion/hubsdk/api/net/TranConnectivityManager;->mService:Lcom/transsion/hubsdk/interfaces/net/ITranConnectivityManagerAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/net/ITranConnectivityManagerAdapter;->startTethering(IZLcom/transsion/hubsdk/net/ITranOnStartTetheringCallback;)V

    .line 49
    return-void
.end method

.method public stopTethering(I)V
    .locals 1
    .param p1, "type"    # I

    .line 59
    iget-object v0, p0, Lcom/transsion/hubsdk/api/net/TranConnectivityManager;->mService:Lcom/transsion/hubsdk/interfaces/net/ITranConnectivityManagerAdapter;

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/interfaces/net/ITranConnectivityManagerAdapter;->stopTethering(I)V

    .line 60
    return-void
.end method
